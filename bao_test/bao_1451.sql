SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'today')   AND t.create_at between '2018-12-12 20:13:54' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-118.34108843994142,34.080492053222656),(-118.32691156005859,34.086507946777346))'