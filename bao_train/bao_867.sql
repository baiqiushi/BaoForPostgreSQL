SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'shirts')   AND t.create_at between '2018-04-24 20:48:12' and '2018-10-14 20:48:12'   AND t.coordinate <@ box '((-95.69701075687408,29.968853000831604),(-95.69678924312592,29.9689469991684))'