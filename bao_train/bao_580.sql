SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'oheycaseface')   AND t.create_at between '2016-12-13 01:14:54' and '2016-12-23 01:14:54'   AND t.coordinate <@ box '((-87.8768952199707,41.153134026611326),(-87.8698067800293,41.15614197338867))'