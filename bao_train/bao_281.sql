SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'way')   AND t.create_at between '2016-08-24 01:31:41' and '2016-08-25 01:31:41'   AND t.coordinate <@ box '((-103.3425442199707,34.18069602661133),(-103.33545578002929,34.183703973388674))'