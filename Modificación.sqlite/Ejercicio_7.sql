DELETE FROM post
WHERE author_id = (SELECT id FROM user WHERE usernam like "adrii")

DELETE FROM user WHERE username like "adrii;"