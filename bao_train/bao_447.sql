SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'laughter')   AND t.create_at between '2017-02-02 00:38:59' and '2018-01-15 00:38:59'   AND t.coordinate <@ box '((-75.18270687988282,40.03896410644531),(-75.1543531201172,40.05099589355469))'