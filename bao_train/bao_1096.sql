SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'snoopster')   AND t.create_at between '2019-05-19 22:34:16' and '2019-05-20 22:34:16'   AND t.coordinate <@ box '((-74.5445884399414,40.56449205322266),(-74.53041156005858,40.57050794677735))'