SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'marketing')   AND t.create_at between '2016-04-02 22:51:45' and '2016-04-04 22:51:45'   AND t.coordinate <@ box '((-77.59195525976563,39.10362971289063),(-77.53524774023438,39.12769328710937))'