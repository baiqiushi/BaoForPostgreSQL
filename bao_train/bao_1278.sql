SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'coachella')   AND t.create_at between '2016-04-24 08:23:46' and '2016-10-14 08:23:46'   AND t.coordinate <@ box '((-116.23990720499268,33.68342898665283),(-116.23813509500732,33.68418097334717))'