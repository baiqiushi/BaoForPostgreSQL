SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'bodyguard')   AND t.create_at between '2019-07-12 23:49:00' and '2019-07-13 23:49:00'   AND t.coordinate <@ box '((-81.7506536425,34.8419272525),(-79.93601301749999,35.611961627499994))'