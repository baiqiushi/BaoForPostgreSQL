SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'junkfood')   AND t.create_at between '2017-05-20 22:28:27' and '2017-07-02 22:28:27'   AND t.coordinate <@ box '((-77.05610287988281,38.90049710644531),(-77.02774912011719,38.912528893554686))'