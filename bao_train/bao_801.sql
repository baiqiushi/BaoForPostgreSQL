SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'houston')   AND t.create_at between '2018-01-20 21:54:16' and '2018-01-21 21:54:16'   AND t.coordinate <@ box '((-124.69215694,17.42480751),(-66.62365694,42.06590751))'