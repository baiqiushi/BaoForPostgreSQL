SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'truck')   AND t.create_at between '2015-12-10 15:20:25' and '2015-12-11 15:20:25'   AND t.coordinate <@ box '((-84.40178922749634,42.24568100332642),(-84.40090317250367,42.24605699667358))'