SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'winning')   AND t.create_at between '2016-07-30 05:57:52' and '2018-06-24 05:57:52'   AND t.coordinate <@ box '((-97.16406744953125,32.65656528578125),(-97.05065241046876,32.70469243421875))'