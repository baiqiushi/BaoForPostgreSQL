SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2017-04-25 21:36:45' and '2017-05-16 21:36:45'   AND t.coordinate <@ box '((-81.03120795000001,35.687859149999994),(-73.77264545,38.76799665))'