SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'eb')   AND t.create_at between '2017-12-09 01:06:35' and '2017-12-30 01:06:35'   AND t.coordinate <@ box '((-117.19874302749633,33.14978200332642),(-117.19785697250367,33.150157996673585))'