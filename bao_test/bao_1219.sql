SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'insurance')   AND t.create_at between '2018-03-21 19:32:57' and '2018-05-03 19:32:57'   AND t.coordinate <@ box '((-121.9815595199707,37.778423326611325),(-121.97447108002929,37.78143127338867))'