SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fish')   AND t.create_at between '2017-09-15 14:19:32' and '2018-08-28 14:19:32'   AND t.coordinate <@ box '((-87.66075545976562,41.73107219289063),(-87.60404794023438,41.75513576710937))'