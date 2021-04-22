-- select mov_title, mov_year
-- from movie;

-- 	select mov_title, mov_year
-- 	from movie
-- 	where mov_title = 'American Beauty';

-- select mov_title
-- from movie
-- where mov_year = 1999;

-- select mov_title
-- from movie
-- where mov_year < 1998;

-- select mov_title
-- from movie
-- where mov_year = 1999;

-- select rev_name, mov_title
-- from movie, reviewer; 

select rev_name
from reviewer
where rev_id in(
select rev_id
from rating
where rev_stars >= 7);

select mov_title
from movie
where mov_id not in(
select mov_id 
from rating);

select rev_name
from reviewer
where rev_id in(
select rev_id
from rating
where rev_stars = null);
