SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'kirkland')   AND t.create_at between '2016-06-01 18:08:41' and '2016-08-26 18:08:41'   AND t.coordinate <@ box '((-122.21044302749632,47.67981200332642),(-122.20955697250366,47.68018799667358))'