SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'careerarc')   AND t.create_at between '2018-11-18 22:25:56' and '2018-11-19 22:25:56'   AND t.coordinate <@ box '((-122.59354665976562,37.969187912890625),(-122.53683914023438,37.99325148710937))'