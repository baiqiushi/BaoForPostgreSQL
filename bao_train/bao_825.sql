SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'latest')   AND t.create_at between '2018-02-23 20:26:35' and '2018-02-24 20:26:35'   AND t.coordinate <@ box '((-87.94612790998535,42.031405513305664),(-87.94258369001464,42.03290948669433))'