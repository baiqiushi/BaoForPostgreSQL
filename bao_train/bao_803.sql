SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cafe')   AND t.create_at between '2017-04-30 22:45:06' and '2017-10-20 22:45:06'   AND t.coordinate <@ box '((-71.11111001997071,42.30462892661133),(-71.1040215800293,42.307636873388674))'