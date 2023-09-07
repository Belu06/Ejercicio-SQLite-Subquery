--3) Update de usuario y/o post
--USER
UPDATE user SET username = "abrilArteaga"
WHERE id = 1;
--POST
UPDATE post SET body = "2000"
WHERE author_id >= 3;