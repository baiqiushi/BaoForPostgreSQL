SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'georgia')   AND t.create_at between '2017-03-22 20:33:50' and '2017-03-23 20:33:50'   AND t.coordinate <@ box '((-84.19974264976562,33.793245992890625),(-84.14303513023438,33.81730956710937))'