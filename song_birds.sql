-- the names dont have to be the same
-- but the structure (no and type of cols) do

CREATE TABLE bird_Song (
  englishname VARCHAR, 
	country VARCHAR, 
	latitude DEC,
	longitude DEC
);
--dont need public if its the only schema
select * from public.bird_Song