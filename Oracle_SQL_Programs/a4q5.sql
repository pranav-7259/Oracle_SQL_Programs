-------------------------------------------------------------------------------
--Creating tables and indexes
-------------------------------------------------------------------------------
---Creating Table
create table Actors_tmp as
select * from IMDB.actors;
---Creating Index
create index actors_name_ix ON Actors_tmp (last_name,first_name);
-------------------------------------------------------------------------------
--Collecting statistics after creating index
-------------------------------------------------------------------------------
---Statistics for the table
begin
DBMS_STATS.GATHER_TABLE_STATS (
ownname => '""',
tabname => '"ACTORS_TMP"',
estimate_percent => 1
);
end;
---Statistics for the index
begin DBMS_STATS.GATHER_INDEX_STATS(ownname => 'PXS190078', indname =>
'ACTORS_NAME_IX'); end;
-------------------------------------------------------------------------------
--Querying on First Name and Last Name
-------------------------------------------------------------------------------
---Query with Index from Actors_tmp table - First Name and Last Name
select * from Actors_tmp
where first_name = '2' and last_name = 'Toff';
---Query without Index from imdb.actors table- First Name and Last Name
select * from imdb.actors
where first_name = '2' and last_name = 'Toff';
-------------------------------------------------------------------------------
--Querying on Last Name Only
-------------------------------------------------------------------------------
---Query with Index from Actors_tmp table - Last Name Only
select * from Actors_tmp
where last_name = 'Toff';
---Query without Index from imdb.actors table - Last Name Only
select * from imdb.actors
where last_name = 'Toff';
-------------------------------------------------------------------------------