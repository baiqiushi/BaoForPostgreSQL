import psycopg2
import os
import sys
import random
from time import time, sleep

USE_BAO = True
PG_CONNECTION_STR = "dbname=twitter user=postgres host=localhost password=postgres"

def run_query(sql, bao_select=False, bao_reward=False):
    start = time()
    try:
        conn = psycopg2.connect(PG_CONNECTION_STR)
        cur = conn.cursor()
        cur.execute(f"SET enable_bao TO {bao_select or bao_reward}")
        cur.execute(f"SET enable_bao_selection TO {bao_select}")
        cur.execute(f"SET enable_bao_rewards TO {bao_reward}")
        cur.execute("SET bao_num_arms TO 5")
        cur.execute("SET statement_timeout TO 10000")
        cur.execute(q)
        cur.fetchall()
        conn.close()
    except Exception as e:
        sleep(1)
    stop = time()
    return stop - start

query_paths = sys.argv[1:]
queries = []
for fp in query_paths:
    with open(fp) as f:
        query = f.read()
    queries.append((fp, query))
print("Read", len(queries), "queries.")
print("Using Bao:", USE_BAO)

for fp, q in queries:
    q_time = run_query(q, bao_reward=False)
    # get query file name
    f = fp.split('/')[-1]
    # get query id from query file name 'bao_12.sql'
    qid = f.split('.')[0].split('_')[-1]
    print(qid, q_time, flush=True)
