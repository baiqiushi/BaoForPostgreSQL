SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'costco')   AND t.create_at between '2018-11-09 20:16:09' and '2018-11-11 20:16:09'   AND t.coordinate <@ box '((-122.50041676976562,45.610509462890626),(-122.44370925023438,45.63457303710937))'