SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wrecked')   AND t.create_at between '2016-01-20 02:03:09' and '2016-07-11 02:03:09'   AND t.coordinate <@ box '((-121.18863175976563,40.24074621289063),(-121.13192424023438,40.26480978710937))'