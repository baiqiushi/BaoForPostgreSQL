SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'contact')   AND t.create_at between '2017-07-25 18:50:46' and '2017-08-04 18:50:46'   AND t.coordinate <@ box '((-84.24711034997071,42.065694356611324),(-84.2400219100293,42.06870230338867))'