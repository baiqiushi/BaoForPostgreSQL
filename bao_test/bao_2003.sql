SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lovers')   AND t.create_at between '2016-08-17 20:24:56' and '2016-08-18 20:24:56'   AND t.coordinate <@ box '((-78.51178022976562,42.53934620289063),(-78.45507271023438,42.56340977710937))'