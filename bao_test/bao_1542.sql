SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sales')   AND t.create_at between '2019-04-30 15:00:54' and '2019-05-05 15:00:54'   AND t.coordinate <@ box '((-79.83095031374818,32.82898340166321),(-79.83050728625183,32.8291713983368))'