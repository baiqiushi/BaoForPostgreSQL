SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'read')   AND t.create_at between '2019-07-02 18:56:21' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-111.67965575976562,35.18625181289063),(-111.62294824023438,35.210315387109375))'