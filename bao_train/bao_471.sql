SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'socal')   AND t.create_at between '2017-02-20 01:02:34' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-117.20857121374817,34.05640542166321),(-117.20812818625183,34.056593418336796))'