SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'us')   AND t.create_at between '2015-12-31 15:34:27' and '2016-01-05 15:34:27'   AND t.coordinate <@ box '((-73.93554527749633,40.801462283326416),(-73.93465922250367,40.80183827667358))'