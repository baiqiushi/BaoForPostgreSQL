SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sunday')   AND t.create_at between '2018-02-26 01:43:39' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-72.87798605499268,41.24420400665283),(-72.87621394500732,41.24495599334717))'