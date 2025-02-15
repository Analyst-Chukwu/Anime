
SELECT*
FROM Anime
	

-----Moving all appropriate data to Type column
Select Distinct(Type)
From Anime

Alter table Anime
Add Type2 Varchar(250)

SELECT Status
from Anime
where Status LIKE 'OVA' OR
    Status LIKE 'ONA' OR
	Status Like 'Movie' OR
	Status Like '%TV%' OR
	Status Like '%Original%'

UPDATE Anime
Set Type2 = Status
from Anime
where Status LIKE 'OVA' OR
	Status Like 'Movie' OR
	Status Like 'TV' OR
	Status LIKE 'ONA' OR
	Status Like '%Original%'

SELECT DISTINCT Type2
FROM Anime

 ---------repeat same for all columns to get the appropriate data for type column and populate it


----Moving all appropriate data to Eps column

Alter table Anime
Add Eps2 Varchar(250)

SELECT Premiered
from Anime
where Premiered LIKE '0%' or
		Premiered LIKE '1%' or
		Premiered LIKE '2%' or
		Premiered LIKE '3%' or
		Premiered LIKE '4%' or
		Premiered LIKE '5%' or
		Premiered LIKE '6%' or
		Premiered LIKE '7%' or
		Premiered LIKE '8%' or
		Premiered LIKE '9%' 


UPDATE Anime
Set Eps2 = Premiered
from Anime
where Premiered LIKE '0%' or
		Premiered LIKE '1%' or
		Premiered LIKE '2%' or
		Premiered LIKE '3%' or
		Premiered LIKE '4%' or
		Premiered LIKE '5%' or
		Premiered LIKE '6%' or
		Premiered LIKE '7%' or
		Premiered LIKE '8%' or
		Premiered LIKE '9%' 
------repeat same for all columns to get the appropriate data for type column and populate it
----Standardizing the Eps2 table
--replacing unmatching values with ''
SELECT Eps2,
REPLACE(Eps2, '5pb.', '')
FROM Anime
WHERE Eps2 = '5pb.'

UPDATE Anime
SET EPs2= REPLACE(Eps2, '5pb.', '')
FROM Anime
WHERE Eps2 = '5pb.'
--Altering EPS2 data type from varchar to int

ALTER TABLE Anime
ALTER COLUMN Eps2 INT



----Moving all appropriate data to STATUS column and standardizing the column
Alter table Anime
Add Status2 Varchar(250)

SELECT Producers
from Anime
where  Producers LIKE '%Finished%' or
		Producers LIKE '%Currently%'
		

UPDATE Anime
Set Status2 = Broadcast
from Anime
where Broadcast LIKE '%Finished%' or
		Broadcast LIKE '%Currently%' 
  --------------repeat same for all columns to get the appropriate data for type column and populate it

----Moving all appropriate data to PRODUCER column and standardizing it
Alter table Anime
Add Producer3 Varchar(250)

SELECT Producers
from Anime
where  Producers LIKE '4-%' or Producers LIKE 'A-%' or Producers LIKE 'Aji%' or Producers LIKE 'Ani%' or Producers LIKE 'Art%' or Producers LIKE 'Asa%'
       or Producers LIKE 'AT-%' or Producers LIKE 'B.C%' or Producers LIKE 'Band%' or Producers LIKE 'bili%' or Producers LIKE 'Bone%' or Producers LIKE 'Brain%' 
	   or Producers LIKE 'Bibury%' or Producers LIKE 'Central%' or Producers LIKE 'Kitty%' or Producers LIKE 'Kyoto%' or Producers LIKE 'lerche%' or Producers LIKE 'M.S.C%'
	   or Producers LIKE 'Koda%' or Producers LIKE 'lan%' or Producers LIKE 'lide%' or Producers LIKE 'mad%' or Producers LIKE 'maiden%' or Producers LIKE 'clover%' or Producers LIKE 'colored%'
	   or Producers LIKE 'comico%'or Producers LIKE 'crunchy%' or Producers LIKE 'c-%' or Producers LIKE 'Dentsu%' or Producers LIKE 'Frontier%' or Producers LIKE 'Gonzo%' or Producers LIKE 'Magic%'
	   or Producers LIKE 'Direction%' or Producers LIKE 'Fuji%' or Producers LIKE 'Haku%' or Producers LIKE 'Mainichi%' or Producers LIKE 'Disco%' or Producers LIKE 'Funimation%' or Producers LIKE 'Haoli%'
	   or Producers LIKE 'mem%' or Producers LIKE 'd-%' or Producers LIKE 'Gainax%' or Producers LIKE 'Holo%' or Producers LIKE 'mixed%' or Producers LIKE 'E&G%' or Producers LIKE 'Genco%' or Producers LIKE 'Kado%'
	   or Producers LIKE 'motion%' or Producers LIKE 'Feel%' or Producers LIKE 'Geneon%' or Producers LIKE 'K-%' or Producers LIKE 'movic%' or Producers LIKE 'David%' or Producers LIKE 'Fenz%' or Producers LIKE 'Gkids%'
	   or Producers LIKE 'Khara%' or Producers LIKE 'NHK%' or Producers LIKE 'Nihon%' or Producers LIKE 'Orange%' or Producers LIKE 'Sams%' or Producers LIKE 'Shoch%' or Producers LIKE 'Sunrise%' or Producers LIKE 'Nippon%'
	   or Producers LIKE 'P.A%' or Producers LIKE 'SANZ%' or Producers LIKE 'shog%' or Producers LIKE 'synergy%' or Producers LIKE 'NIS%' or Producers LIKE 'Pied%' or Producers LIKE 'Sate%' or Producers LIKE 'Shue%'
	   or Producers LIKE 'Tats%' or Producers LIKE 'TV T%' or Producers LIKE 'TV A%' or Producers LIKE 'Poly%' or Producers LIKE 'Sentai%' or Producers LIKE 'Shuka%' or Producers LIKE 'TBS%' or Producers LIKE 'Nozomi%'
	   or Producers LIKE 'Pony%' or Producers LIKE 'Shaft%' or Producers LIKE 'Silver%' or Producers LIKE 'TMS%' or Producers LIKE 'NYAV%' or Producers LIKE 'pro%' or Producers LIKE 'Share%' or Producers LIKE 'SME%'
	   or Producers LIKE 'Toei%' or Producers LIKE 'Oh%' or Producers LIKE 'Red%' or Producers LIKE 'Shenman%' or Producers LIKE 'Sotsu%' or Producers LIKE 'toho%' or Producers LIKE 'Starchild%' or Producers LIKE 'Studio%'
	   or Producers LIKE 'Shin%' or Producers LIKE 'Sparkly%' or Producers LIKE 'White%' or Producers LIKE 'Wit%' or Producers LIKE 'Twin%' or Producers LIKE 'WOW%' or Producers LIKE 'ufot%' or Producers LIKE 'Yom%'
	   or Producers LIKE 'Ultra%' or Producers LIKE 'YTV%' or Producers LIKE 'VAP%' or Producers LIKE 'Victor%' or Producers LIKE 'VIZ%' or Producers LIKE 'Warner%' or Producers LIKE 'MAPPA%' or Producers LIKE 'ADV%'
	   or Producers LIKE 'CLAP%' or Producers LIKE 'COMIX%' or Producers LIKE 'Note%' or Producers LIKE 'Pierrot%' or Producers LIKE 'Square Enix%' or Producers LIKE 'Manga' or Studios LIKE 'Streamline%' or Studios LIKE 'Tele%'
	   or Studios LIKE 'The Answer%' or Studios LIKE 'Toku%' or Studios LIKE 'Tokyo%' or Studios LIKE 'Tria%' or Studios LIKE 'Troy%' or Studios LIKE 'J.C%' or Studios LIKE 'Kinema%' or Studios LIKE 'Lantis%' or Studios LIKE 'Lapin%' 
	   or Studios LIKE 'Lay%' or Studios LIKE 'Manglobe%' or Studios LIKE 'Mah%' or Studios LIKE 'Muse%' or Studios LIKE 'AHA%' or Studios LIKE 'AIC%' or Studios LIKE 'Bee%' or Studios LIKE 'Disney%' or Studios LIKE 'Drive%'
	   or Studios LIKE 'Eleven%' or Studios LIKE 'Enoki%' or Studios LIKE 'Gallop%' or Studios LIKE 'Group%' or Studios LIKE 'HMCH%' or Studios LIKE 'Naz%' or Studios LIKE 'NBC%' or Studios LIKE 'Nelv%' or Studios LIKE 'Nichion%'
	   or Studios LIKE 'OB%' or Studios LIKE 'OLM%' or Studios LIKE 'Picture%' or Studios LIKE 'Science%' or Studios LIKE 'Sein%'

SELECT Studios
from Anime
where  Studios LIKE '4-%' or Studios LIKE 'A-%' or Studios LIKE 'Aji%' or Studios LIKE 'Ani%' or Studios LIKE 'Art%' or Studios LIKE 'Asa%'
       or Studios LIKE 'AT-%' or Studios LIKE 'B.C%' or Studios LIKE 'Band%' or Studios LIKE 'bili%' or Studios LIKE 'Bone%' or Studios LIKE 'Brain%' 
	   or Studios LIKE 'Bibury%' or Studios LIKE 'Central%' or Studios LIKE 'Kitty%' or Studios LIKE 'Kyoto%' or Studios LIKE 'lerche%' or Studios LIKE 'M.S.C%'
	   or Studios LIKE 'Koda%' or Studios LIKE 'lan%' or Studios LIKE 'lide%' or Studios LIKE 'mad%' or Studios LIKE 'maiden%' or Studios LIKE 'clover%' or Studios LIKE 'colored%'
	   or Studios LIKE 'comico%'or Studios LIKE 'crunchy%' or Studios LIKE 'c-%' or Studios LIKE 'Dentsu%' or Studios LIKE 'Frontier%' or Studios LIKE 'Gonzo%' or Studios LIKE 'Magic%'
	   or Studios LIKE 'Direction%' or Studios LIKE 'Fuji%' or Studios LIKE 'Haku%' or Studios LIKE 'Mainichi%' or Studios LIKE 'Disco%' or Studios LIKE 'Funimation%' or Studios LIKE 'Haoli%'
	   or Studios LIKE 'mem%' or Studios LIKE 'd-%' or Studios LIKE 'Gainax%' or Studios LIKE 'Holo%' or Studios LIKE 'mixed%' or Studios LIKE 'E&G%' or Studios LIKE 'Genco%' or Studios LIKE 'Kado%'
	   or Studios LIKE 'motion%' or Studios LIKE 'Feel%' or Studios LIKE 'Geneon%' or Studios LIKE 'K-%' or Studios LIKE 'movic%' or Studios LIKE 'David%' or Studios LIKE 'Fenz%' or Studios LIKE 'Gkids%'
	   or Studios LIKE 'Khara%' or Studios LIKE 'NHK%' or Studios LIKE 'Nihon%' or Studios LIKE 'Orange%' or Studios LIKE 'Sams%' or Studios LIKE 'Shoch%' or Studios LIKE 'Sunrise%' or Studios LIKE 'Nippon%'
	   or Studios LIKE 'P.A%' or Studios LIKE 'SANZ%' or Studios LIKE 'shog%' or Studios LIKE 'synergy%' or Studios LIKE 'NIS%' or Studios LIKE 'Pied%' or Studios LIKE 'Sate%' or Studios LIKE 'Shue%'
	   or Studios LIKE 'Tats%' or Studios LIKE 'TV T%' or Studios LIKE 'TV A%' or Studios LIKE 'Poly%' or Studios LIKE 'Sentai%' or Studios LIKE 'Shuka%' or Studios LIKE 'TBS%' or Studios LIKE 'Nozomi%'
	   or Studios LIKE 'Pony%' or Studios LIKE 'Shaft%' or Studios LIKE 'Silver%' or Studios LIKE 'TMS%' or Studios LIKE 'NYAV%' or Studios LIKE 'pro%' or Studios LIKE 'Share%' or Studios LIKE 'SME%'
	   or Studios LIKE 'Toei%' or Studios LIKE 'Oh%' or Studios LIKE 'Red%' or Studios LIKE 'Shenman%' or Studios LIKE 'Sotsu%' or Studios LIKE 'toho%' or Studios LIKE 'Starchild%' or Studios LIKE 'Studio%'
	   or Studios LIKE 'Shin%' or Studios LIKE 'Sparkly%' or Studios LIKE 'White%' or Studios LIKE 'Wit%' or Studios LIKE 'Twin%' or Studios LIKE 'WOW%' or Studios LIKE 'ufot%' or Studios LIKE 'Yom%'
	   or Studios LIKE 'Ultra%' or Studios LIKE 'YTV%' or Studios LIKE 'VAP%' or Studios LIKE 'Victor%' or Studios LIKE 'VIZ%' or Studios LIKE 'Warner%' or Studios LIKE 'MAPPA%' or Studios LIKE 'ADV F%'
	   or Studios LIKE 'CLAP%' or Studios LIKE 'COMIX%' or Studios LIKE 'Note%' or Studios LIKE 'Pierrot%' or Studios LIKE 'Square Enix%' or Studios LIKE 'Manga' or Studios LIKE 'Streamline%' or Studios LIKE 'Tele%'
	   or Studios LIKE 'The Answer%' or Studios LIKE 'Toku%' or Studios LIKE 'Tokyo%' or Studios LIKE 'Tria%' or Studios LIKE 'Troy%' or Studios LIKE 'J.C%' or Studios LIKE 'Kinema%' or Studios LIKE 'Lantis%' or Studios LIKE 'Lapin%' 
	   or Studios LIKE 'Lay%' or Studios LIKE 'Manglobe%' or Studios LIKE 'Mah%' or Studios LIKE 'Muse%' or Studios LIKE 'AHA%' or Studios LIKE 'AIC%' or Studios LIKE 'Bee%' or Studios LIKE 'Disney%' or Studios LIKE 'Drive%'
	   or Studios LIKE 'Eleven%' or Studios LIKE 'Enoki%' or Studios LIKE 'Gallop%' or Studios LIKE 'Group%' or Studios LIKE 'HMCH%' or Studios LIKE 'Naz%' or Studios LIKE 'NBC%' or Studios LIKE 'Nelv%' or Studios LIKE 'Nichion%'
	   or Studios LIKE 'OB%' or Studios LIKE 'OLM%' or Studios LIKE 'Picture%' or Studios LIKE 'Science%' or Studios LIKE 'Sein%'
ORDER BY Studios
 

UPDATE Anime
Set Producer2 = Producers
from Anime
where  Producers LIKE '4-%' or Producers LIKE 'A-%' or Producers LIKE 'Aji%' or Producers LIKE 'Ani%' or Producers LIKE 'Art%' or Producers LIKE 'Asa%'
       or Producers LIKE 'AT-%' or Producers LIKE 'B.C%' or Producers LIKE 'Band%' or Producers LIKE 'bili%' or Producers LIKE 'Bone%' or Producers LIKE 'Brain%' 
	   or Producers LIKE 'Bibury%' or Producers LIKE 'Central%' or Producers LIKE 'Kitty%' or Producers LIKE 'Kyoto%' or Producers LIKE 'lerche%' or Producers LIKE 'M.S.C%'
	   or Producers LIKE 'Koda%' or Producers LIKE 'lan%' or Producers LIKE 'lide%' or Producers LIKE 'mad%' or Producers LIKE 'maiden%' or Producers LIKE 'clover%' or Producers LIKE 'colored%'
	   or Producers LIKE 'comico%'or Producers LIKE 'crunchy%' or Producers LIKE 'c-%' or Producers LIKE 'Dentsu%' or Producers LIKE 'Frontier%' or Producers LIKE 'Gonzo%' or Producers LIKE 'Magic%'
	   or Producers LIKE 'Direction%' or Producers LIKE 'Fuji%' or Producers LIKE 'Haku%' or Producers LIKE 'Mainichi%' or Producers LIKE 'Disco%' or Producers LIKE 'Funimation%' or Producers LIKE 'Haoli%'
	   or Producers LIKE 'mem%' or Producers LIKE 'd-%' or Producers LIKE 'Gainax%' or Producers LIKE 'Holo%' or Producers LIKE 'mixed%' or Producers LIKE 'E&G%' or Producers LIKE 'Genco%' or Producers LIKE 'Kado%'
	   or Producers LIKE 'motion%' or Producers LIKE 'Feel%' or Producers LIKE 'Geneon%' or Producers LIKE 'K-%' or Producers LIKE 'movic%' or Producers LIKE 'David%' or Producers LIKE 'Fenz%' or Producers LIKE 'Gkids%'
	   or Producers LIKE 'Khara%' or Producers LIKE 'NHK%' or Producers LIKE 'Nihon%' or Producers LIKE 'Orange%' or Producers LIKE 'Sams%' or Producers LIKE 'Shoch%' or Producers LIKE 'Sunrise%' or Producers LIKE 'Nippon%'
	   or Producers LIKE 'P.A%' or Producers LIKE 'SANZ%' or Producers LIKE 'shog%' or Producers LIKE 'synergy%' or Producers LIKE 'NIS%' or Producers LIKE 'Pied%' or Producers LIKE 'Sate%' or Producers LIKE 'Shue%'
	   or Producers LIKE 'Tats%' or Producers LIKE 'TV T%' or Producers LIKE 'TV A%' or Producers LIKE 'Poly%' or Producers LIKE 'Sentai%' or Producers LIKE 'Shuka%' or Producers LIKE 'TBS%' or Producers LIKE 'Nozomi%'
	   or Producers LIKE 'Pony%' or Producers LIKE 'Shaft%' or Producers LIKE 'Silver%' or Producers LIKE 'TMS%' or Producers LIKE 'NYAV%' or Producers LIKE 'pro%' or Producers LIKE 'Share%' or Producers LIKE 'SME%'
	   or Producers LIKE 'Toei%' or Producers LIKE 'Oh%' or Producers LIKE 'Red%' or Producers LIKE 'Shenman%' or Producers LIKE 'Sotsu%' or Producers LIKE 'toho%' or Producers LIKE 'Starchild%' or Producers LIKE 'Studio%'
	   or Producers LIKE 'Shin%' or Producers LIKE 'Sparkly%' or Producers LIKE 'White%' or Producers LIKE 'Wit%' or Producers LIKE 'Twin%' or Producers LIKE 'WOW%' or Producers LIKE 'ufot%' or Producers LIKE 'Yom%'
	   or Producers LIKE 'Ultra%' or Producers LIKE 'YTV%' or Producers LIKE 'VAP%' or Producers LIKE 'Victor%' or Producers LIKE 'VIZ%' or Producers LIKE 'Warner%' or Producers LIKE 'MAPPA%' or Producers LIKE 'ADV%'
	   or Producers LIKE 'CLAP%' or Producers LIKE 'COMIX%' or Producers LIKE 'Note%' or Producers LIKE 'Pierrot%' or Producers LIKE 'Square Enix%' or Producers LIKE 'Manga'
 
 


UPDATE Anime
Set Producer3 = Studios
from Anime
where  Studios LIKE '4-%' or Studios LIKE 'A-%' or Studios LIKE 'Aji%' or Studios LIKE 'Ani%' or Studios LIKE 'Art%' or Studios LIKE 'Asa%'
       or Studios LIKE 'AT-%' or Studios LIKE 'B.C%' or Studios LIKE 'Band%' or Studios LIKE 'bili%' or Studios LIKE 'Bone%' or Studios LIKE 'Brain%' 
	   or Studios LIKE 'Bibury%' or Studios LIKE 'Central%' or Studios LIKE 'Kitty%' or Studios LIKE 'Kyoto%' or Studios LIKE 'lerche%' or Studios LIKE 'M.S.C%'
	   or Studios LIKE 'Koda%' or Studios LIKE 'lan%' or Studios LIKE 'lide%' or Studios LIKE 'mad%' or Studios LIKE 'maiden%' or Studios LIKE 'clover%' or Studios LIKE 'colored%'
	   or Studios LIKE 'comico%'or Studios LIKE 'crunchy%' or Studios LIKE 'c-%' or Studios LIKE 'Dentsu%' or Studios LIKE 'Frontier%' or Studios LIKE 'Gonzo%' or Studios LIKE 'Magic%'
	   or Studios LIKE 'Direction%' or Studios LIKE 'Fuji%' or Studios LIKE 'Haku%' or Studios LIKE 'Mainichi%' or Studios LIKE 'Disco%' or Studios LIKE 'Funimation%' or Studios LIKE 'Haoli%'
	   or Studios LIKE 'mem%' or Studios LIKE 'd-%' or Studios LIKE 'Gainax%' or Studios LIKE 'Holo%' or Studios LIKE 'mixed%' or Studios LIKE 'E&G%' or Studios LIKE 'Genco%' or Studios LIKE 'Kado%'
	   or Studios LIKE 'motion%' or Studios LIKE 'Feel%' or Studios LIKE 'Geneon%' or Studios LIKE 'K-%' or Studios LIKE 'movic%' or Studios LIKE 'David%' or Studios LIKE 'Fenz%' or Studios LIKE 'Gkids%'
	   or Studios LIKE 'Khara%' or Studios LIKE 'NHK%' or Studios LIKE 'Nihon%' or Studios LIKE 'Orange%' or Studios LIKE 'Sams%' or Studios LIKE 'Shoch%' or Studios LIKE 'Sunrise%' or Studios LIKE 'Nippon%'
	   or Studios LIKE 'P.A%' or Studios LIKE 'SANZ%' or Studios LIKE 'shog%' or Studios LIKE 'synergy%' or Studios LIKE 'NIS%' or Studios LIKE 'Pied%' or Studios LIKE 'Sate%' or Studios LIKE 'Shue%'
	   or Studios LIKE 'Tats%' or Studios LIKE 'TV T%' or Studios LIKE 'TV A%' or Studios LIKE 'Poly%' or Studios LIKE 'Sentai%' or Studios LIKE 'Shuka%' or Studios LIKE 'TBS%' or Studios LIKE 'Nozomi%'
	   or Studios LIKE 'Pony%' or Studios LIKE 'Shaft%' or Studios LIKE 'Silver%' or Studios LIKE 'TMS%' or Studios LIKE 'NYAV%' or Studios LIKE 'pro%' or Studios LIKE 'Share%' or Studios LIKE 'SME%'
	   or Studios LIKE 'Toei%' or Studios LIKE 'Oh%' or Studios LIKE 'Red%' or Studios LIKE 'Shenman%' or Studios LIKE 'Sotsu%' or Studios LIKE 'toho%' or Studios LIKE 'Starchild%' or Studios LIKE 'Studio%'
	   or Studios LIKE 'Shin%' or Studios LIKE 'Sparkly%' or Studios LIKE 'White%' or Studios LIKE 'Wit%' or Studios LIKE 'Twin%' or Studios LIKE 'WOW%' or Studios LIKE 'ufot%' or Studios LIKE 'Yom%'
	   or Studios LIKE 'Ultra%' or Studios LIKE 'YTV%' or Studios LIKE 'VAP%' or Studios LIKE 'Victor%' or Studios LIKE 'VIZ%' or Studios LIKE 'Warner%' or Studios LIKE 'MAPPA%' or Studios LIKE 'ADV F%'
	   or Studios LIKE 'CLAP%' or Studios LIKE 'COMIX%' or Studios LIKE 'Note%' or Studios LIKE 'Pierrot%' or Studios LIKE 'Square Enix%' or Studios LIKE 'Manga' or Studios LIKE 'Streamline%' or Studios LIKE 'Tele%'
	   or Studios LIKE 'The Answer%' or Studios LIKE 'Toku%' or Studios LIKE 'Tokyo%' or Studios LIKE 'Tria%' or Studios LIKE 'Troy%' or Studios LIKE 'J.C%' or Studios LIKE 'Kinema%' or Studios LIKE 'Lantis%' or Studios LIKE 'Lapin%' 
	   or Studios LIKE 'Lay%' or Studios LIKE 'Manglobe%' or Studios LIKE 'Mah%' or Studios LIKE 'Muse%' or Studios LIKE 'AHA%' or Studios LIKE 'AIC%' or Studios LIKE 'Bee%' or Studios LIKE 'Disney%' or Studios LIKE 'Drive%'
	   or Studios LIKE 'Eleven%' or Studios LIKE 'Enoki%' or Studios LIKE 'Gallop%' or Studios LIKE 'Group%' or Studios LIKE 'HMCH%' or Studios LIKE 'Naz%' or Studios LIKE 'NBC%' or Studios LIKE 'Nelv%' or Studios LIKE 'Nichion%'
	   or Studios LIKE 'OB%' or Studios LIKE 'OLM%' or Studios LIKE 'Picture%' or Studios LIKE 'Science%' or Studios LIKE 'Sein%'

Exec sp_rename
'Anime.Producer3', 'Studios2', 'COLUMN'

SELECT Studios
	from Anime
	where  Studios LIKE 'BUG%' or Studios LIKE 'Manga%' or Studios LIKE 'Media%' or Studios LIKE 'Doga%'  or Studios LIKE 'Mushi%' or Studios LIKE 'Rondo%' 
		   or Studios LIKE 'Seven%' or Studios LIKE 'Shout!%' or Studios LIKE 'Sony%' or Studios LIKE '8bit%' or Studios LIKE 'Imagin%' or Studios LIKE 'Annapuru%'   
		   or Studios LIKE 'Avex%' or Studios LIKE 'Marve%' or Studios LIKE 'Geno%' or Studios LIKE 'Hal%' or Studios LIKE 'Nexus%' or Studios LIKE 'Pass%' or Studios LIKE 'Trigger%' 
		   or Studios LIKE 'Yoko%' or Studios LIKE 'Geek%' 

UPDATE Anime
Set Studios2 = Studios
from Anime
where Studios LIKE 'BUG%' or Studios LIKE 'Manga%' or Studios LIKE 'Media%' or Studios LIKE 'Doga%'  or Studios LIKE 'Mushi%' or Studios LIKE 'Rondo%' 
		   or Studios LIKE 'Seven%' or Studios LIKE 'Shout!%' or Studios LIKE 'Sony%' or Studios LIKE '8bit%' or Studios LIKE 'Imagin%' or Studios LIKE 'Annapuru%'   
		   or Studios LIKE 'Avex%' or Studios LIKE 'Marve%' or Studios LIKE 'Geno%' or Studios LIKE 'Hal%' or Studios LIKE 'Nexus%' or Studios LIKE 'Pass%' or Studios LIKE 'Trigger%' 
		   or Studios LIKE 'Yoko%' or Studios LIKE 'Geek%' 


UPDATE Anime
SET Studios2 = REPLACE( Studios2, 'SeinenSeinen', '')
FROM Anime
--ORDER BY Studios2

--merging studio data with producer since both can pass for one and same where producer is null
UPDATE A
SET A.Producer2 = ISNULL(A.Producer2, B.Studios2)
FROM Anime AS A 
JOIN Anime AS B
on A.English_Title = B.English_Title
WHERE A.Producer2 is null AND
B.Studios2 is not null

ALTER TABLE Anime
DROP COLUMN Studios2

--Moving all appropriate data to English column and standadizing it.

Alter table Anime
Add English_Title Varchar(250)

SELECT English
from Anime
where English LIKE 'A%' OR English LIKE 'B%' OR English LIKE 'C%' OR English LIKE 'D%' OR English LIKE 'E%' OR English LIKE 'F%' OR English LIKE 'G%'
   OR English LIKE 'H%' OR English LIKE 'I%' OR English LIKE 'J%' OR English LIKE 'K%' OR English LIKE 'L%' OR English LIKE 'M%' OR English LIKE 'N%'
   OR English LIKE 'O%' OR English LIKE 'P%' OR English LIKE 'Q%' OR English LIKE 'R%' OR English LIKE 'S%' OR English LIKE 'T%' OR English LIKE 'U%'
   OR English LIKE 'V%' OR English LIKE 'W%' OR English LIKE 'X%' OR English LIKE 'Y%' OR English LIKE 'Z%'
ORDER BY English
	

UPDATE Anime
Set English_Title = English
from Anime
where English LIKE 'A%' OR English LIKE 'B%' OR English LIKE 'C%' OR English LIKE 'D%' OR English LIKE 'E%' OR English LIKE 'F%' OR English LIKE 'G%'
   OR English LIKE 'H%' OR English LIKE 'I%' OR English LIKE 'J%' OR English LIKE 'K%' OR English LIKE 'L%' OR English LIKE 'M%' OR English LIKE 'N%'
   OR English LIKE 'O%' OR English LIKE 'P%' OR English LIKE 'Q%' OR English LIKE 'R%' OR English LIKE 'S%' OR English LIKE 'T%' OR English LIKE 'U%'
   OR English LIKE 'V%' OR English LIKE 'W%' OR English LIKE 'X%' OR English LIKE 'Y%' OR English LIKE 'Z%'

UPDATE Anime
Set English_Title =CASE
						 WHEN English_Title LIKE 'TV%' THEN NULL
						 WHEN English_Title LIKE 'OVA%' THEN NULL
						 WHEN English_Title LIKE 'Movie%' THEN NULL
						 WHEN English_Title LIKE 'ONA%' THEN NULL
						 WHEN English_Title LIKE 'N/A%' THEN NULL
	                     ELSE English_Title
	                END
FROM Anime..Anime


----Moving all appropriate data to SOURCES column and standardizing it
Alter table Anime
Add Sources2 Varchar(250)

SELECT Producers
from Anime
where  Producers LIKE '%Web%' or
		Producers LIKE '%Novel%' or
		Producers LIKE '%Original%'
		

UPDATE Anime
Set Sources2 = Rating
from Anime
where Rating LIKE '%Web%' or
		Rating LIKE '%Novel%' or
		Rating LIKE '%Original%'

Select DISTINCT(Sources2)
FROM Anime
--WHERE Sources2 IS NOT NULL

 ----repeat same for all columns to get the appropriate data for type column and populate it

--Moving all appropriate data to DEMOGRAPHIC column and standardizing it
Alter table Anime
Add Demographic2 Varchar(250)


SELECT Genres
from Anime
where  Genres LIKE 'Shounen%' or
		Genres LIKE 'Shoujo%' or
		Genres LIKE 'Seinen%' or
		Genres LIKE 'Josei%' or
		Genres LIKE 'Adult%' or
		Genres LIKE 'Children%' or
		Genres LIKE 'Teen%'
		

UPDATE Anime
Set Demographic2 = Rating
from Anime
where Rating LIKE 'Shounen%' or
		Rating LIKE 'Shoujo%' or
		Rating LIKE 'Seinen%' or
		Rating LIKE 'Josei%' or
		Rating LIKE 'Adult%' or
		Rating LIKE 'Children%' or
		Rating LIKE 'Teen%'
-------repeat same for all columns to get the appropriate data for demographic column and populate it

SELECT DISTINCT Demographic2, CASE WHEN Demographic2 LIKE '%Adult%' THEN 'Adult'
						 WHEN Demographic2 = 'SeinenSeinen' THEN 'Seinen(Male Youth/Adult)'
						 WHEN Demographic2 = 'ShoujoShoujo' THEN 'Shoujo(Girls)'
						 WHEN Demographic2 = 'ShounenShounen' THEN 'Shounen(Boys)'
						 WHEN Demographic2 = 'JoseiJosei' THEN 'Josei(Female Youth/Adult)'
	                ELSE Demographic2
	                END
FROM Anime

UPDATE Anime
SET Demographic2 = CASE WHEN Demographic2 LIKE '%Adult%' THEN 'Adult'
						 WHEN Demographic2 = 'SeinenSeinen' THEN 'Seinen(Male Youth/Adult)'
						 WHEN Demographic2 = 'ShoujoShoujo' THEN 'Shoujo(Girls)'
						 WHEN Demographic2 = 'ShounenShounen' THEN 'Shounen(Boys)'
						 WHEN Demographic2 = 'JoseiJosei' THEN 'Josei(Female Youth/Adult)'
	                ELSE Demographic2
	                END
FROM Anime

----Moving all appropriate data to RATING column and standardizing it
Alter table Anime
Add Rating2 Varchar(250)


SELECT DISTINCT(Rating)
from Anime
where  Rating LIKE 'PG%' or
		Rating LIKE 'G - %' or
		Rating LIKE 'R+%' or
		Rating LIKE 'R-%' or
		Rating LIKE 'R+%' or
		Rating LIKE 'R -%'
		
		
	
UPDATE Anime
Set Rating2 = Licensors
from Anime
where Licensors LIKE 'PG%' or
		Licensors LIKE 'G - %' or
		Licensors LIKE 'R+%' or
		Licensors LIKE 'R-%' or
		Licensors LIKE 'R+%' or
		Licensors LIKE 'R -%'


-- Duplicating Table before droping columns
SELECT*
INTO Anime2
FROM (Select *
From Anime) A
		
-----Dropping Columns
Alter table Anime
drop column Rank,Description,Status,Premiered,Broadcast,Synonyms,English,Type,Eps,Aired,
Producers,Licensors,Studios,Source, Genres,Demographic,Duration,Rating

--Spliting Genre2 column to into 3 or 4 columns and Standardizing them

SELECT Genre2, SUBSTRING(Genre2,1, CHARINDEX(',', Genre2)) a,
SUBSTRING(Genre2, CHARINDEX(',', Genre2)+1,LEN(Genre2))  b
FROM Anime

ALTER TABLE Anime
ADD Genre3 Varchar(255),
Genre4 Varchar(255)

UPDATE Anime
SET Genre3 = SUBSTRING(Genre2,1, CHARINDEX(',', Genre2)) 

UPDATE Anime
SET Genre4 = SUBSTRING(Genre2, CHARINDEX(',', Genre2)+1,LEN(Genre2))

 
SELECT Genre4, PARSENAME(REPLACE (Genre4,',','.'),4) 
,PARSENAME(REPLACE (Genre4,',','.'),3)
,PARSENAME(REPLACE (Genre4,',','.'),2)
,PARSENAME(REPLACE (Genre4,',','.'),1)
From Anime

ALTER TABLE Anime
ADD Genre5 Varchar(255),
    Genre6 Varchar(255),
	Genre7 Varchar(255),
	Genre8 Varchar(255)

UPDATE Anime
SET Genre5 = PARSENAME(REPLACE (Genre4,',','.'),4),
    Genre6 = PARSENAME(REPLACE (Genre4,',','.'),3),
	Genre7 = PARSENAME(REPLACE (Genre4,',','.'),2),
	Genre8 = PARSENAME(REPLACE (Genre4,',','.'),1)

ALTER TABLE Anime
DROP COLUMN Genre2, Genre4
--Rename Genre3,5,6,7,8 to 1,2,3,4,5 in the columns for Anime in Object Explorer

ALTER TABLE Anime
ADD Gen1 VARCHAR(250),
    Gen2 VARCHAR(250),
	Gen3 VARCHAR(250),
	Gen4 VARCHAR(250),
	Gen5 VARCHAR(250)



SELECT Genre1, CASE
			WHEN Genre1 LIKE 'Drama%' THEN 'Drama'
			WHEN Genre1 LIKE 'Horror%' THEN 'Horror'
			WHEN Genre1 LIKE 'Action%' THEN 'Action'
			WHEN Genre1 LIKE 'Historical%' THEN 'Historical'
			WHEN Genre1 LIKE 'Gag%' THEN 'Humour'
			WHEN Genre1 LIKE 'Adventure%' THEN 'Adventure'
	   END
FROM Anime

UPDATE Anime
SET Gen1 = CASE
			WHEN Genre1 LIKE 'Drama%' THEN 'Drama'
			WHEN Genre1 LIKE 'Horror%' THEN 'Horror'
			WHEN Genre1 LIKE 'Action%' THEN 'Action'
			WHEN Genre1 LIKE 'Historical%' THEN 'Historical'
			WHEN Genre1 LIKE 'Gag%' THEN 'Humour'
			WHEN Genre1 LIKE 'Adventure%' THEN 'Adventure'
	   END

SELECT Genre2, CASE
			WHEN Genre2 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre2 LIKE ' Award%' THEN ''
			WHEN Genre2 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre2 LIKE ' Avant%' THEN 'Others '
			WHEN Genre2 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre2 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre2 LIKE ' Historical%' THEN 'Historical'
			END
FROM Anime

UPDATE Anime
SET Gen2 = CASE
			WHEN Genre2 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre2 LIKE ' Award%' THEN ''
			WHEN Genre2 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre2 LIKE ' Avant%' THEN 'Others'
			WHEN Genre2 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre2 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre2 LIKE ' Historical%' THEN 'Historical'
			END


SELECT Genre3, CASE
			WHEN Genre3 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre3 LIKE ' Award%' THEN ''
			WHEN Genre3 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre3 LIKE ' Avant%' THEN 'Others '
			WHEN Genre3 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre3 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre3 LIKE ' Historical%' THEN 'Historical'
			WHEN Genre3 LIKE ' Fantasy%' THEN 'Fantasy'
			WHEN Genre3 LIKE ' Love%' THEN 'Romance'
			WHEN Genre3 LIKE ' Mecha%' THEN 'Others '
			WHEN Genre3 LIKE ' Parody%' THEN 'Comedy'
			WHEN Genre3 LIKE ' Romance%' THEN 'Romance'
			WHEN Genre3 LIKE ' Horror%' THEN 'Horror'
			--ELSE 'Not Found'
			END

FROM Anime

UPDATE Anime
SET Gen3 = CASE
			WHEN Genre3 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre3 LIKE ' Award%' THEN ''
			WHEN Genre3 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre3 LIKE ' Avant%' THEN 'Others'
			WHEN Genre3 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre3 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre3 LIKE ' Historical%' THEN 'Historical'
			WHEN Genre3 LIKE ' Fantasy%' THEN 'Fantasy'
			WHEN Genre3 LIKE ' Love%' THEN 'Romance'
			WHEN Genre3 LIKE ' Mecha%' THEN 'Others'
			WHEN Genre3 LIKE ' Parody%' THEN 'Comedy'
			WHEN Genre3 LIKE ' Romance%' THEN 'Romance'
			WHEN Genre3 LIKE ' Horror%' THEN 'Horror'
			--ELSE 'Not Found'
			END		
			
SELECT Genre4, CASE
			WHEN Genre4 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre4 LIKE ' Award%' THEN ''
			WHEN Genre4 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre4 LIKE ' Avant%' THEN 'Others'
			WHEN Genre4 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre4 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre4 LIKE ' Historical%' THEN 'Historical'
			WHEN Genre4 LIKE ' Fantasy%' THEN 'Fantasy'
			WHEN Genre4 LIKE ' Love%' THEN 'Romance'
			WHEN Genre4 LIKE ' Mecha%' THEN 'Others'
			WHEN Genre4 LIKE ' Parody%' THEN 'Comedy'
			WHEN Genre4 LIKE ' Romance%' THEN 'Romance'
			WHEN Genre4 LIKE ' Horror%' THEN 'Horror'
			WHEN Genre4 LIKE ' Martial%' THEN 'Action'
			WHEN Genre4 LIKE ' Music%' THEN 'Others'
			WHEN Genre4 LIKE ' Mythology%' THEN 'Mystery'
			WHEN Genre4 LIKE ' Pets%' THEN 'Others'
			WHEN Genre4 LIKE ' Samurai%' THEN 'Action'
			WHEN Genre4 LIKE ' School%' THEN 'Others'
			WHEN Genre4 LIKE ' Sci-%' THEN 'Action'
			WHEN Genre4 LIKE ' Slice%' THEN 'Others'
			WHEN Genre4 LIKE ' Supernatural%' THEN 'Mystery'
			END

FROM Anime

UPDATE Anime
SET Gen4 = CASE
            WHEN Genre4 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre4 LIKE ' Award%' THEN ''
			WHEN Genre4 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre4 LIKE ' Avant%' THEN 'Others'
			WHEN Genre4 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre4 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre4 LIKE ' Historical%' THEN 'Historical'
			WHEN Genre4 LIKE ' Fantasy%' THEN 'Fantasy'
			WHEN Genre4 LIKE ' Love%' THEN 'Romance'
			WHEN Genre4 LIKE ' Mecha%' THEN 'Others'
			WHEN Genre4 LIKE ' Parody%' THEN 'Comedy'
			WHEN Genre4 LIKE ' Romance%' THEN 'Romance'
			WHEN Genre4 LIKE ' Horror%' THEN 'Horror'
			WHEN Genre4 LIKE ' Martial%' THEN 'Action'
			WHEN Genre4 LIKE ' Music%' THEN 'Others'
			WHEN Genre4 LIKE ' Mythology%' THEN 'Mystery'
			WHEN Genre4 LIKE ' Pets%' THEN 'Others'
			WHEN Genre4 LIKE ' Samurai%' THEN 'Action'
			WHEN Genre4 LIKE ' School%' THEN 'Others'
			WHEN Genre4 LIKE ' Sci-%' THEN 'Action'
			WHEN Genre4 LIKE ' Slice%' THEN 'Others'
			WHEN Genre4 LIKE ' Supernatural%' THEN 'Mystery'
			END

SELECT Genre5, CASE
			WHEN Genre5 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre5 LIKE 'Drama%' THEN 'Drama'
			WHEN Genre5 LIKE ' Award%' THEN ''
			WHEN Genre5 LIKE ' Action%' THEN 'Action'
			WHEN Genre5 LIKE 'Action%' THEN 'Action'
			WHEN Genre5 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Avant%' THEN ' '
			WHEN Genre5 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre5 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre5 LIKE 'Adventure%' THEN 'Adventure'
			WHEN Genre5 LIKE ' Historical%' THEN 'Historical'
			WHEN Genre5 LIKE 'Historical%' THEN 'Historical'
			WHEN Genre5 LIKE ' Fantasy%' THEN 'Fantasy'
			WHEN Genre5 LIKE ' Love%' THEN 'Romance'
			WHEN Genre5 LIKE ' Mecha%' THEN ' '
			WHEN Genre5 LIKE ' Parody%' THEN 'Comedy'
			WHEN Genre5 LIKE ' Romance%' THEN 'Romance'
			WHEN Genre5 LIKE ' Horror%' THEN 'Horror'
			WHEN Genre5 LIKE ' Martial%' THEN 'Action'
			WHEN Genre5 LIKE ' Music%' THEN 'Others'
			WHEN Genre5 LIKE ' Mythology%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Pets%' THEN 'Others'
			WHEN Genre5 LIKE ' Samurai%' THEN 'Action'
			WHEN Genre5 LIKE ' School%' THEN 'Others'
			WHEN Genre5 LIKE ' Sci-%' THEN 'Action'
			WHEN Genre5 LIKE ' Slice%' THEN 'Others'
			WHEN Genre5 LIKE ' Supernatural%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Ecchi%' THEN 'Others'
			WHEN Genre5 LIKE ' Girls%' THEN 'Others'
			WHEN Genre5 LIKE ' Military%' THEN 'Action'
			WHEN Genre5 LIKE ' Organized%' THEN 'Action'
			WHEN Genre5 LIKE ' Performing%' THEN 'Drama'
			WHEN Genre5 LIKE ' Reinca%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Sports%' THEN 'Sports'
			WHEN Genre5 LIKE ' Super Power%' THEN 'Action'
			WHEN Genre5 LIKE ' Suspense%' THEN 'Adventure'
			WHEN Genre5 LIKE ' Time%' THEN 'Aventure'
			WHEN Genre5 LIKE ' Visual%' THEN 'Drama'
			WHEN Genre5 LIKE ' Gag%' THEN 'Comedy'
			WHEN Genre5 LIKE 'Gag%' THEN 'Comedy'

			END

FROM Anime

UPDATE Anime
SET Gen5 = CASE
			WHEN Genre5 LIKE ' Drama%' THEN 'Drama'
			WHEN Genre5 LIKE 'Drama%' THEN 'Drama'
			WHEN Genre5 LIKE ' Award%' THEN ''
			WHEN Genre5 LIKE ' Action%' THEN 'Action'
			WHEN Genre5 LIKE 'Action%' THEN 'Action'
			WHEN Genre5 LIKE ' Mystery%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Avant%' THEN ' '
			WHEN Genre5 LIKE ' Comedy%' THEN 'Comedy'
			WHEN Genre5 LIKE ' Adventure%' THEN 'Adventure'
			WHEN Genre5 LIKE 'Adventure%' THEN 'Adventure'
			WHEN Genre5 LIKE ' Historical%' THEN 'Historical'
			WHEN Genre5 LIKE 'Historical%' THEN 'Historical'
			WHEN Genre5 LIKE ' Fantasy%' THEN 'Fantasy'
			WHEN Genre5 LIKE ' Love%' THEN 'Romance'
			WHEN Genre5 LIKE ' Mecha%' THEN ' '
			WHEN Genre5 LIKE ' Parody%' THEN 'Comedy'
			WHEN Genre5 LIKE ' Romance%' THEN 'Romance'
			WHEN Genre5 LIKE ' Horror%' THEN 'Horror'
			WHEN Genre5 LIKE ' Martial%' THEN 'Action'
			WHEN Genre5 LIKE ' Music%' THEN 'Others'
			WHEN Genre5 LIKE ' Mythology%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Pets%' THEN 'Others'
			WHEN Genre5 LIKE ' Samurai%' THEN 'Action'
			WHEN Genre5 LIKE ' School%' THEN 'Others'
			WHEN Genre5 LIKE ' Sci-%' THEN 'Action'
			WHEN Genre5 LIKE ' Slice%' THEN 'Others'
			WHEN Genre5 LIKE ' Supernatural%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Ecchi%' THEN 'Others'
			WHEN Genre5 LIKE ' Girls%' THEN 'Others'
			WHEN Genre5 LIKE ' Military%' THEN 'Action'
			WHEN Genre5 LIKE ' Organized%' THEN 'Action'
			WHEN Genre5 LIKE ' Performing%' THEN 'Drama'
			WHEN Genre5 LIKE ' Reinca%' THEN 'Mystery'
			WHEN Genre5 LIKE ' Sports%' THEN 'Sports'
			WHEN Genre5 LIKE ' Super Power%' THEN 'Action'
			WHEN Genre5 LIKE ' Suspense%' THEN 'Adventure'
			WHEN Genre5 LIKE ' Time%' THEN 'Adventure'
			WHEN Genre5 LIKE ' Visual%' THEN 'Drama'
			WHEN Genre5 LIKE ' Gag%' THEN 'Comedy'
			WHEN Genre5 LIKE 'Gag%' THEN 'Comedy'
			END

ALTER TABLE Anime
ADD Genre VARCHAR(500)

UPDATE Anime
SET Genre = CONCAT(Gen1,' '+Gen2, ', '+Gen3, ', '+Gen4, ', '+Gen5)

SELECT DISTINCT Genre
FROM Anime
WHERE Gen1 IS NOT NULL
	  OR Gen2 IS NOT NULL
	  OR Gen3 IS NOT NULL
	  OR Gen4 IS NOT NULL
	  OR Gen5 IS NOT NULL

SELECT CASE
			    WHEN Genre = ', Action' THEN 'Action'
			    WHEN Genre = ', Adventure' THEN 'Adventure'
			    WHEN Genre = ', Comedy' THEN 'Comedy'
	            WHEN Genre = ', Drama' THEN 'Drama'
				WHEN Genre = ', Historical' THEN 'Historical'
				WHEN Genre = 'Action' THEN 'Action'
				WHEN Genre = 'Action , Comedy, Drama, Action' THEN 'Action, Comedy, Drama'
				WHEN Genre = 'Action , Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action , Drama, Mystery, Action' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action , Mystery, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action Adventure, , Comedy, Mystery' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action Adventure, , Drama, Fantasy' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Action Adventure, Comedy, Drama, Mystery' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action Adventure, Drama, Fantasy, Horror' THEN 'Action, Adventure, Fantasy, Horror'
				WHEN Genre = 'Action Adventure, Drama, Fantasy, Romance' THEN 'Action, Adventure, Drama, Romance'
				WHEN Genre = 'Action Adventure, Drama, Romance, Action' THEN 'Action, Adventure, Drama, Romance'
				WHEN Genre = 'Action Adventure, Fantasy, Romance, Mystery' THEN 'Action, Adventure, Fantasy, Romance'
				WHEN Genre = 'Action Adventure, Horror, Action, Mystery' THEN 'Action, Adventure, Horror'
				WHEN Genre = 'Action Comedy, Drama, Mystery, Romance' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action Comedy, Horror, Mystery, Adventure' THEN 'Action, Adventure, Comedy, Horror'
				WHEN Genre = 'Action Drama, Fantasy, Mystery, Adventure' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Action Drama, Mystery, Mystery, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action Mystery, Romance, Mystery, Adventure' THEN 'Action, Adventure, Romance'
				WHEN Genre = 'Action Others, Comedy, Action, Adventure' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action Others, Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, ' THEN 'Action'
				WHEN Genre = 'Action, , Action' THEN 'Action'
				WHEN Genre = 'Action, , Comedy' THEN 'Action, Comedy'
				WHEN Genre = 'Action, , Drama, Action' THEN 'Action, Drama'
				WHEN Genre = 'Action, , Drama, Adventure' THEN 'Action, Drama, Adventure'
				WHEN Genre = 'Action, , Drama, Mystery' THEN 'Action, Drama, Adventure'
				WHEN Genre = 'Action, , Fantasy' THEN 'Action, Fantasy'
				WHEN Genre = 'Action, , Mystery, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, , Romance, Action' THEN 'Action, Romance'
				WHEN Genre = 'Action, Action' THEN 'Action'
				WHEN Genre = 'Action, Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, , Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, , Fantasy' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Adventure, , Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, Comedy' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Adventure, Comedy, Action' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Adventure, Comedy, Drama' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action, Adventure, Comedy, Fantasy' THEN 'Action, Adventure, Comedy, Fantasy'
				WHEN Genre = 'Action, Adventure, Comedy, Mystery' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Adventure, Comedy, Romance' THEN 'Action, Adventure, Comedy, Romance'
				WHEN Genre = 'Action, Adventure, Drama' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Adventure, Drama, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Adventure, Drama, Fantasy' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Action, Adventure, Fantasy' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Adventure, Fantasy, Action' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Adventure, Fantasy, Romance' THEN 'Action, Adventure, Fantasy, Romance'
				WHEN Genre = 'Action, Adventure, Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, Romance' THEN 'Action, Adventure, Romance'
				WHEN Genre = 'Action, Comedy' THEN 'Action, Comedy'
				WHEN Genre = 'Action, Comedy, Action' THEN 'Action, Comedy'
				WHEN Genre = 'Action, Comedy, Drama, Action' THEN 'Action, Comedy, Drama'
				WHEN Genre = 'Action, Comedy, Drama, Fantasy' THEN 'Action, Comedy, Drama, Fantasy'
				WHEN Genre = 'Action, Comedy, Drama, Mystery' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action, Comedy, Fantasy' THEN 'Action, Comedy, Fantasy'
				WHEN Genre = 'Action, Comedy, Fantasy, Horror' THEN 'Action, Comedy, Fantasy, Horror'
				WHEN Genre = 'Action, Comedy, Fantasy, Others' THEN 'Action, Comedy, Fantasy'
				WHEN Genre = 'Action, Comedy, Mystery' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Comedy, Mystery, Action' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Comedy, Romance' THEN 'Action, Comedy, Romance'
				WHEN Genre = 'Action, Drama' THEN 'Action, Drama'
				WHEN Genre = 'Action, Drama, Action' THEN 'Action, Drama'
				WHEN Genre = 'Action, Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Drama, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Drama, Fantasy' THEN 'Action, Drama, Fantasy'
				WHEN Genre = 'Action, Drama, Fantasy, Mystery' THEN 'Action, Adventure,Drama, Fantasy'
				WHEN Genre = 'Action, Drama, Mystery' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Drama, Romance' THEN 'Action, Drama, Romance'
				WHEN Genre = 'Action, Drama, Romance, Action' THEN 'Action, Drama, Romance'
				WHEN Genre = 'Action, Fantasy' THEN 'Action, Fantasy'
				WHEN Genre = 'Action, Fantasy, Action' THEN 'Action, Fantasy'
				WHEN Genre = 'Action, Fantasy, Mystery' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Fantasy, Romance' THEN 'Action, Fantasy, Romance'
				WHEN Genre = 'Action, Fantasy, Romance, Action' THEN 'Action, Fantasy, Romance'
				WHEN Genre = 'Action, Horror, Action, Adventure' THEN 'Action, Adventure, Horror'
				WHEN Genre = 'Action, Horror, Mystery' THEN 'Action, Adventure, Horror'
				WHEN Genre = 'Action, Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Mystery, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Romance, Action' THEN 'Action, Romance'
				WHEN Genre = 'Adventure' THEN 'Adventure'
				WHEN Genre = 'Adventure, Comedy, Drama, Fantasy' THEN 'Adventure, Comedy, Drama, Fantasy'
				WHEN Genre = 'Adventure , Drama, Fantasy, Romance' THEN 'Adventure, Drama, Fantasy, Romance'
				WHEN Genre = 'Adventure , Drama, Mystery, Action' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Adventure , Fantasy, Romance, Action' THEN 'Action, Adventure, Fantasy, Romance'
				WHEN Genre = 'Adventure , Mystery, Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure Comedy, Drama, Fantasy, Romance' THEN 'Adventure, Comedy, Drama, Fantasy, Romance'
				WHEN Genre = 'Adventure Drama, Fantasy, Mystery, Action' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Adventure, , Action' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure, , Comedy' THEN 'Adventure, Comedy'
				WHEN Genre = 'Adventure, , Fantasy' THEN 'Adventure, Fantasy'
				WHEN Genre = 'Adventure, , Mystery' THEN 'Adventure'
				WHEN Genre = 'Adventure, Comedy, Action' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Adventure, Comedy, Drama' THEN 'Adventure, Comedy, Drama'
				WHEN Genre = 'Adventure, Comedy, Fantasy' THEN 'Adventure, Comedy, Fantasy'
				WHEN Genre = 'Adventure, Comedy, Fantasy, Action' THEN 'Action, Adventure, Comedy, Fantasy'
				WHEN Genre = 'Adventure, Comedy, Mystery' THEN 'Adventure, Comedy'
				WHEN Genre = 'Adventure, Comedy, Others' THEN 'Adventure, Comedy'
				WHEN Genre = 'Adventure, Comedy, Romance' THEN 'Adventure, Comedy, Romance'
				WHEN Genre = 'Adventure, Drama' THEN 'Adventure, Drama'
				WHEN Genre = 'Adventure, Drama, Action' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Adventure, Drama, Action, Mystery' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Adventure, Drama, Fantasy' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Adventure, Drama, Fantasy, Others' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Adventure, Drama, Fantasy, Romance' THEN 'Adventure, Drama, Fantasy, Romance'
				WHEN Genre = 'Adventure, Drama, Mystery' THEN 'Adventure, Drama'
				WHEN Genre = 'Adventure, Fantasy' THEN 'Adventure, Fantasy'
				WHEN Genre = 'Adventure, Fantasy, Others' THEN 'Adventure, Fantasy'
				WHEN Genre = 'Adventure, Fantasy, Romance' THEN 'Adventure, Fantasy, Romance'
				WHEN Genre = 'Adventure, Mystery' THEN 'Adventure'
				WHEN Genre = 'Adventure, Mystery, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure, Mystery, Action, Others' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure, Mystery, Others, Mystery' THEN 'Adventure'
				WHEN Genre = 'Adventure, Romance, Action' THEN 'Action, Adventure, Romance'
				WHEN Genre = 'Drama' THEN 'Drama'
				WHEN Genre = 'Drama, Action' THEN 'Action, Drama'
				WHEN Genre = 'Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Drama, Adventure' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Fantasy' THEN 'Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Adventure' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Mystery, Adventure' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Mystery, Romance' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Others' THEN 'Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Romance' THEN 'Drama, Fantasy, Romance'
				WHEN Genre = 'Drama, Mystery' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Adventure' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Mystery' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Mystery, Adventure' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Romance' THEN 'Adventure, Drama, Romance'
				WHEN Genre = 'Drama, Mystery, Romance, Action' THEN 'Action, Adventure, Romance, Drama'
				WHEN Genre = 'Drama, Mystery, Romance, Mystery' THEN 'Adventure, Drama, Romance'
				WHEN Genre = 'Drama, Others' THEN 'Drama'
				WHEN Genre = 'Drama, Romance' THEN 'Drama, Romance'
				WHEN Genre = 'Drama, Romance, Action' THEN 'Action, Drama, Romance'
				WHEN Genre = 'Drama, Romance, Mystery' THEN 'Adventure, Drama, Romance'
				WHEN Genre = 'Drama, Romance, Sports' THEN 'Drama, Romance, Sports'
				WHEN Genre = 'Drama, Sports' THEN 'Drama, Sports'
				WHEN Genre = 'Historical, Action' THEN 'Historical, Action'
				WHEN Genre = 'Historical, Action, Mystery' THEN 'Historical, Action, Adventure'
				WHEN Genre = 'Historical, Comedy' THEN 'Historical, Comedy'
				WHEN Genre = 'Historical, Comedy, Action' THEN 'Historical, Comedy, Action'
				WHEN Genre = 'Historical, Mystery' THEN 'Historical, Adventure'
				WHEN Genre = 'Historical, Mystery, Action' THEN 'Historical, Action, Adventure'
				WHEN Genre = 'Historical, Mystery, Mystery' THEN 'Historical, Adventure'
				WHEN Genre = 'Historical, Others, Comedy, Action' THEN 'Historical, Comedy, Action'
				WHEN Genre = 'Historical, Others, Drama' THEN 'Historical, Drama'
				WHEN Genre = 'Historical, Romance, Drama' THEN 'Historical, Romance, Drama'
				WHEN Genre = 'Historical, Romance, Mystery, Adventure' THEN 'Historical, Romance, Adventure'
				WHEN Genre = 'Horror, Mystery' THEN 'Horror, Adventure'
				WHEN Genre = 'Horror, Mystery, Mystery' THEN 'Horror, Adventure'
				WHEN Genre = 'Horror, Mystery, Mystery, Adventure' THEN 'Horror, Adventure'
				WHEN Genre = 'Horror, Mystery, Romance, Mystery' THEN 'Horror, Adventure, Romance'
				WHEN Genre = 'Humour Historical, Comedy, Action, Adventure' THEN 'Historical, Comedy, Action, Adventure'
				WHEN Genre = 'Humour, Comedy' THEN 'Comedy'
				WHEN Genre = 'Humour, Comedy, Action' THEN 'Action, Comedy'
				WHEN Genre = 'Humour, Comedy, Others' THEN 'Comedy'
				WHEN Genre = 'Humour, Historical, Comedy, Action' THEN 'Historical, Comedy, Action'
				WHEN Genre = 'Humour, Others' THEN 'Comedy'
				WHEN Genre = 'Humour, Others, Action' THEN 'Action, Comedy'
				WHEN Genre = 'Humour, Romance, Others' THEN 'Comedy, Romance'
	            END
FROM Anime

UPDATE Anime
SET Types = CASE
			    WHEN Genre = ', Action' THEN 'Action'
			    WHEN Genre = ', Adventure' THEN 'Adventure'
			    WHEN Genre = ', Comedy' THEN 'Comedy'
	            WHEN Genre = ', Drama' THEN 'Drama'
				WHEN Genre = ', Historical' THEN 'Historical'
				WHEN Genre = 'Action' THEN 'Action'
				WHEN Genre = 'Action , Comedy, Drama, Action' THEN 'Action, Comedy, Drama'
				WHEN Genre = 'Action , Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action , Drama, Mystery, Action' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action , Mystery, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action Adventure, , Comedy, Mystery' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action Adventure, , Drama, Fantasy' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Action Adventure, Comedy, Drama, Mystery' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action Adventure, Drama, Fantasy, Horror' THEN 'Action, Adventure, Fantasy, Horror'
				WHEN Genre = 'Action Adventure, Drama, Fantasy, Romance' THEN 'Action, Adventure, Drama, Romance'
				WHEN Genre = 'Action Adventure, Drama, Romance, Action' THEN 'Action, Adventure, Drama, Romance'
				WHEN Genre = 'Action Adventure, Fantasy, Romance, Mystery' THEN 'Action, Adventure, Fantasy, Romance'
				WHEN Genre = 'Action Adventure, Horror, Action, Mystery' THEN 'Action, Adventure, Horror'
				WHEN Genre = 'Action Comedy, Drama, Mystery, Romance' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action Comedy, Horror, Mystery, Adventure' THEN 'Action, Adventure, Comedy, Horror'
				WHEN Genre = 'Action Drama, Fantasy, Mystery, Adventure' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Action Drama, Mystery, Mystery, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action Mystery, Romance, Mystery, Adventure' THEN 'Action, Adventure, Romance'
				WHEN Genre = 'Action Others, Comedy, Action, Adventure' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action Others, Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, ' THEN 'Action'
				WHEN Genre = 'Action, , Action' THEN 'Action'
				WHEN Genre = 'Action, , Comedy' THEN 'Action, Comedy'
				WHEN Genre = 'Action, , Drama, Action' THEN 'Action, Drama'
				WHEN Genre = 'Action, , Drama, Adventure' THEN 'Action, Drama, Adventure'
				WHEN Genre = 'Action, , Drama, Mystery' THEN 'Action, Drama, Adventure'
				WHEN Genre = 'Action, , Fantasy' THEN 'Action, Fantasy'
				WHEN Genre = 'Action, , Mystery, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, , Romance, Action' THEN 'Action, Romance'
				WHEN Genre = 'Action, Action' THEN 'Action'
				WHEN Genre = 'Action, Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, , Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, , Fantasy' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Adventure, , Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, Comedy' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Adventure, Comedy, Action' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Adventure, Comedy, Drama' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action, Adventure, Comedy, Fantasy' THEN 'Action, Adventure, Comedy, Fantasy'
				WHEN Genre = 'Action, Adventure, Comedy, Mystery' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Adventure, Comedy, Romance' THEN 'Action, Adventure, Comedy, Romance'
				WHEN Genre = 'Action, Adventure, Drama' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Adventure, Drama, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Adventure, Drama, Fantasy' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Action, Adventure, Fantasy' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Adventure, Fantasy, Action' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Adventure, Fantasy, Romance' THEN 'Action, Adventure, Fantasy, Romance'
				WHEN Genre = 'Action, Adventure, Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Adventure, Romance' THEN 'Action, Adventure, Romance'
				WHEN Genre = 'Action, Comedy' THEN 'Action, Comedy'
				WHEN Genre = 'Action, Comedy, Action' THEN 'Action, Comedy'
				WHEN Genre = 'Action, Comedy, Drama, Action' THEN 'Action, Comedy, Drama'
				WHEN Genre = 'Action, Comedy, Drama, Fantasy' THEN 'Action, Comedy, Drama, Fantasy'
				WHEN Genre = 'Action, Comedy, Drama, Mystery' THEN 'Action, Adventure, Comedy, Drama'
				WHEN Genre = 'Action, Comedy, Fantasy' THEN 'Action, Comedy, Fantasy'
				WHEN Genre = 'Action, Comedy, Fantasy, Horror' THEN 'Action, Comedy, Fantasy, Horror'
				WHEN Genre = 'Action, Comedy, Fantasy, Others' THEN 'Action, Comedy, Fantasy'
				WHEN Genre = 'Action, Comedy, Mystery' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Comedy, Mystery, Action' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Action, Comedy, Romance' THEN 'Action, Comedy, Romance'
				WHEN Genre = 'Action, Drama' THEN 'Action, Drama'
				WHEN Genre = 'Action, Drama, Action' THEN 'Action, Drama'
				WHEN Genre = 'Action, Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Drama, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Drama, Fantasy' THEN 'Action, Drama, Fantasy'
				WHEN Genre = 'Action, Drama, Fantasy, Mystery' THEN 'Action, Adventure,Drama, Fantasy'
				WHEN Genre = 'Action, Drama, Mystery' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Action, Drama, Romance' THEN 'Action, Drama, Romance'
				WHEN Genre = 'Action, Drama, Romance, Action' THEN 'Action, Drama, Romance'
				WHEN Genre = 'Action, Fantasy' THEN 'Action, Fantasy'
				WHEN Genre = 'Action, Fantasy, Action' THEN 'Action, Fantasy'
				WHEN Genre = 'Action, Fantasy, Mystery' THEN 'Action, Adventure, Fantasy'
				WHEN Genre = 'Action, Fantasy, Romance' THEN 'Action, Fantasy, Romance'
				WHEN Genre = 'Action, Fantasy, Romance, Action' THEN 'Action, Fantasy, Romance'
				WHEN Genre = 'Action, Horror, Action, Adventure' THEN 'Action, Adventure, Horror'
				WHEN Genre = 'Action, Horror, Mystery' THEN 'Action, Adventure, Horror'
				WHEN Genre = 'Action, Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Mystery' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Mystery, Mystery, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Action, Romance, Action' THEN 'Action, Romance'
				WHEN Genre = 'Adventure' THEN 'Adventure'
				WHEN Genre = 'Adventure, Comedy, Drama, Fantasy' THEN 'Adventure, Comedy, Drama, Fantasy'
				WHEN Genre = 'Adventure , Drama, Fantasy, Romance' THEN 'Adventure, Drama, Fantasy, Romance'
				WHEN Genre = 'Adventure , Drama, Mystery, Action' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Adventure , Fantasy, Romance, Action' THEN 'Action, Adventure, Fantasy, Romance'
				WHEN Genre = 'Adventure , Mystery, Action, Adventure' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure Comedy, Drama, Fantasy, Romance' THEN 'Adventure, Comedy, Drama, Fantasy, Romance'
				WHEN Genre = 'Adventure Drama, Fantasy, Mystery, Action' THEN 'Action, Adventure, Drama, Fantasy'
				WHEN Genre = 'Adventure, , Action' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure, , Comedy' THEN 'Adventure, Comedy'
				WHEN Genre = 'Adventure, , Fantasy' THEN 'Adventure, Fantasy'
				WHEN Genre = 'Adventure, , Mystery' THEN 'Adventure'
				WHEN Genre = 'Adventure, Comedy, Action' THEN 'Action, Adventure, Comedy'
				WHEN Genre = 'Adventure, Comedy, Drama' THEN 'Adventure, Comedy, Drama'
				WHEN Genre = 'Adventure, Comedy, Fantasy' THEN 'Adventure, Comedy, Fantasy'
				WHEN Genre = 'Adventure, Comedy, Fantasy, Action' THEN 'Action, Adventure, Comedy, Fantasy'
				WHEN Genre = 'Adventure, Comedy, Mystery' THEN 'Adventure, Comedy'
				WHEN Genre = 'Adventure, Comedy, Others' THEN 'Adventure, Comedy'
				WHEN Genre = 'Adventure, Comedy, Romance' THEN 'Adventure, Comedy, Romance'
				WHEN Genre = 'Adventure, Drama' THEN 'Adventure, Drama'
				WHEN Genre = 'Adventure, Drama, Action' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Adventure, Drama, Action, Mystery' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Adventure, Drama, Fantasy' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Adventure, Drama, Fantasy, Others' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Adventure, Drama, Fantasy, Romance' THEN 'Adventure, Drama, Fantasy, Romance'
				WHEN Genre = 'Adventure, Drama, Mystery' THEN 'Adventure, Drama'
				WHEN Genre = 'Adventure, Fantasy' THEN 'Adventure, Fantasy'
				WHEN Genre = 'Adventure, Fantasy, Others' THEN 'Adventure, Fantasy'
				WHEN Genre = 'Adventure, Fantasy, Romance' THEN 'Adventure, Fantasy, Romance'
				WHEN Genre = 'Adventure, Mystery' THEN 'Adventure'
				WHEN Genre = 'Adventure, Mystery, Action' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure, Mystery, Action, Others' THEN 'Action, Adventure'
				WHEN Genre = 'Adventure, Mystery, Others, Mystery' THEN 'Adventure'
				WHEN Genre = 'Adventure, Romance, Action' THEN 'Action, Adventure, Romance'
				WHEN Genre = 'Drama' THEN 'Drama'
				WHEN Genre = 'Drama, Action' THEN 'Action, Drama'
				WHEN Genre = 'Drama, Action, Adventure' THEN 'Action, Adventure, Drama'
				WHEN Genre = 'Drama, Adventure' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Fantasy' THEN 'Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Adventure' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Mystery, Adventure' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Mystery, Romance' THEN 'Adventure, Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Others' THEN 'Drama, Fantasy'
				WHEN Genre = 'Drama, Fantasy, Romance' THEN 'Drama, Fantasy, Romance'
				WHEN Genre = 'Drama, Mystery' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Adventure' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Mystery' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Mystery, Adventure' THEN 'Adventure, Drama'
				WHEN Genre = 'Drama, Mystery, Romance' THEN 'Adventure, Drama, Romance'
				WHEN Genre = 'Drama, Mystery, Romance, Action' THEN 'Action, Adventure, Romance, Drama'
				WHEN Genre = 'Drama, Mystery, Romance, Mystery' THEN 'Adventure, Drama, Romance'
				WHEN Genre = 'Drama, Others' THEN 'Drama'
				WHEN Genre = 'Drama, Romance' THEN 'Drama, Romance'
				WHEN Genre = 'Drama, Romance, Action' THEN 'Action, Drama, Romance'
				WHEN Genre = 'Drama, Romance, Mystery' THEN 'Adventure, Drama, Romance'
				WHEN Genre = 'Drama, Romance, Sports' THEN 'Drama, Romance, Sports'
				WHEN Genre = 'Drama, Sports' THEN 'Drama, Sports'
				WHEN Genre = 'Historical, Action' THEN 'Historical, Action'
				WHEN Genre = 'Historical, Action, Mystery' THEN 'Historical, Action, Adventure'
				WHEN Genre = 'Historical, Comedy' THEN 'Historical, Comedy'
				WHEN Genre = 'Historical, Comedy, Action' THEN 'Historical, Comedy, Action'
				WHEN Genre = 'Historical, Mystery' THEN 'Historical, Adventure'
				WHEN Genre = 'Historical, Mystery, Action' THEN 'Historical, Action, Adventure'
				WHEN Genre = 'Historical, Mystery, Mystery' THEN 'Historical, Adventure'
				WHEN Genre = 'Historical, Others, Comedy, Action' THEN 'Historical, Comedy, Action'
				WHEN Genre = 'Historical, Others, Drama' THEN 'Historical, Drama'
				WHEN Genre = 'Historical, Romance, Drama' THEN 'Historical, Romance, Drama'
				WHEN Genre = 'Historical, Romance, Mystery, Adventure' THEN 'Historical, Romance, Adventure'
				WHEN Genre = 'Horror, Mystery' THEN 'Horror, Adventure'
				WHEN Genre = 'Horror, Mystery, Mystery' THEN 'Horror, Adventure'
				WHEN Genre = 'Horror, Mystery, Mystery, Adventure' THEN 'Horror, Adventure'
				WHEN Genre = 'Horror, Mystery, Romance, Mystery' THEN 'Horror, Adventure, Romance'
				WHEN Genre = 'Humour Historical, Comedy, Action, Adventure' THEN 'Historical, Comedy, Action, Adventure'
				WHEN Genre = 'Humour, Comedy' THEN 'Comedy'
				WHEN Genre = 'Humour, Comedy, Action' THEN 'Action, Comedy'
				WHEN Genre = 'Humour, Comedy, Others' THEN 'Comedy'
				WHEN Genre = 'Humour, Historical, Comedy, Action' THEN 'Historical, Comedy, Action'
				WHEN Genre = 'Humour, Others' THEN 'Comedy'
				WHEN Genre = 'Humour, Others, Action' THEN 'Action, Comedy'
				WHEN Genre = 'Humour, Romance, Others' THEN 'Comedy, Romance'
	            END
FROM Anime

ALTER TABLE Anime
DROP COLUMN Genre,Genre1,Genre2,Genre3,Genre4,Genre5,Gen1,Gen2,Gen3,Gen4,Gen5


--STANDARDIZING Type column
SELECT DISTINCT Type2, CASE
	          WHEN Type2 = 'Shochiku, Fuji TV, Pioneer LDC'THEN ''
			  WHEN Type2 = 'テニスの王子様 Original Video Animation 全国大会編'THEN ''
			  WHEN Type2 = 'TV Tokyo, Dentsu'THEN ''
			  WHEN Type2 = 'TV Tokyo, TV Osaka, Funimation, Nihon Ad Systems, Hakusensha, Avex Pictures, 8PAN'THEN ''
			  WHEN Type2 = 'HUNTER×HUNTER Original Video Animation'THEN ''
			  WHEN Type2 = 'Dentsu, TV Asahi, TOHO, Shueisha, Nagoya Broadcasting Network, Asahi Broadcasting, Shogakukan, Abe Shuuji Jimusho, Shizuoka Asahi Television'THEN ''
			  WHEN Type2 = 'TV Tokyo, Media Factory, Shochiku, AT-X'THEN ''
			  END
FROM Anime

SELECT*
FROM Anime

--Renaming Columna Types to Genre, Type2 to Type, Eps2 to Eps, Status2 to Status, Sources2 to Source,Demographic2 to Demographic, Rating2 to Rating, Types to Genre, Producer2 to Producer in the columns of Anime in Object explorer

--Removing duplicate data

WITH Anoda as (SELECT English_Title, Genre, --Producer2,
ROW_NUMBER() OVER (PARTITION BY English_Title ORDER BY English_Title )  DUPLICATE
FROM Anime
WHERE English_Title IS NOT NULL
--ORDER BY 
)
DELETE
FROM Anoda
WHERE Duplicate >1

--Deleting Columns where English_Title is null

DELETE
FROM Anime
WHERE English_Title is null

SELECT * --Demographic --COUNT(Demographic)
from Anime
WHERE Demographic is null or
	 Genre IS NULL

--updating NULL rows in Demographic with 'Others' and NULL rows in Genre with 'General'
SELECT Demographic, Genre, CASE WHEN Demographic IS NULL THEN 'Others' ELSE Demographic END AS Demo1,
						   CASE WHEN Genre IS NULL THEN 'General' ELSE Genre END as Genre1

FROM Anime

UPDATE Anime
SET Demographic = CASE WHEN Demographic IS NULL THEN 'Others' ELSE Demographic END FROM Anime

UPDATE Anime
SET Genre = CASE WHEN Genre IS NULL THEN 'General' ELSE Genre END FROM Anime

--DROPPING Japanese column
ALTER TABLE ANIME
DROP column Viewers, status, Japanese

--FINALLY
SELECT*
FROM Anime




