SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'upper')   AND t.create_at between '2018-10-13 02:01:32' and '2018-10-15 02:01:32'   AND t.coordinate <@ box '((-89.355548,34.095974),(-60.321298000000006,46.416523999999995))'