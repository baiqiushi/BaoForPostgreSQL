SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'blessed')   AND t.create_at between '2016-03-13 16:21:24' and '2016-09-02 16:21:24'   AND t.coordinate <@ box '((-84.16848961994141,33.84407373322266),(-84.15431274005859,33.85008962677735))'