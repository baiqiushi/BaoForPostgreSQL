SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', '𝘪𝘯')   AND t.create_at between '2019-06-29 20:16:37' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-75.2364000390625,39.7797578515625),(-75.0095699609375,39.8760121484375))'