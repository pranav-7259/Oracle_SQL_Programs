4. Preparation Create table Movie_tmp_asign3q4 . Look at the source table /tables in the IMDB
schema or use appropriate data type for the field according to the task:


--Preperation
DROP TABLE Movie_tmp_asign3q4;
CREATE TABLE Movie_tmp_asign3q4(
Movie_Genre VARCHAR2(100),
Year_Movie NUMBER(11,0),
Rank_average FLOAT,
Rank_stdev FLOAT
);


--Task
INSERT INTO Movie_tmp_asign3q4
select mg.genre,m.year,avg(m.rank),STDDEV(m.rank) from IMDB.movies_genres mg
INNER JOIN IMDB.movies m
ON mg.movie_id = m.id
WHERE m.rank IS NOT NULL
group by mg.genre,m.year;


--Display Output
select * from Movie_tmp_asign3q4 mt
where mt.year_movie = 2004
order by rank_average DESC;