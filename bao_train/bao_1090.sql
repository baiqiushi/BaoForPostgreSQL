SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'twiggy')   AND t.create_at between '2019-05-05 18:55:54' and '2019-05-07 18:55:54'   AND t.coordinate <@ box '((-118.05687210998535,34.16085801330567),(-118.05332789001464,34.162361986694336))'