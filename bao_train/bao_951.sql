SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'marketing')   AND t.create_at between '2018-09-08 00:15:14' and '2018-12-03 00:15:14'   AND t.coordinate <@ box '((-122.21528521953124,38.02530142578125),(-122.10187018046875,38.07342857421875))'