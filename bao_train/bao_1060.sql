SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'recommend')   AND t.create_at between '2019-03-13 20:00:00' and '2019-03-18 20:00:00'   AND t.coordinate <@ box '((-106.43709677988281,31.763886006445315),(-106.40874302011719,31.775917793554687))'