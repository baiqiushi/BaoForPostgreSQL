SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'donate')   AND t.create_at between '2017-02-13 15:00:49' and '2019-01-08 15:00:49'   AND t.coordinate <@ box '((-81.19214105499267,28.581457006652833),(-81.19036894500732,28.582208993347166))'