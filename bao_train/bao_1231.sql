SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'california')   AND t.create_at between '2016-03-01 17:41:05' and '2016-03-02 17:41:05'   AND t.coordinate <@ box '((-117.88481668749633,33.87835140332642),(-117.88393063250366,33.87872739667358))'