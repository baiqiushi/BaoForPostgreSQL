SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'gopenskecareers')   AND t.create_at between '2017-11-26 20:37:43' and '2018-11-08 20:37:43'   AND t.coordinate <@ box '((-97.32041075687408,32.7658510008316),(-97.32018924312592,32.7659449991684))'