SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wb')   AND t.create_at between '2016-01-28 13:20:32' and '2016-07-19 13:20:32'   AND t.coordinate <@ box '((-98.33735375976562,56.94266821289063),(-98.28064624023438,56.966731787109374))'