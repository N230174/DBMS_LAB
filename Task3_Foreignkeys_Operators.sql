USE PlayStoreDB;

-- level 0
ALTER TABLE Apps
ADD CONSTRAINT fk_developer
FOREIGN KEY (DeveloperID)
REFERENCES
Developers(DeveloperID);

ALTER TABLE Apps
ADD CONSTRAINT fk_publisher
FOREIGN KEY (PublisherID)
REFERENCES
Publishers(PublisherID);

ALTER TABLE Apps
ADD CONSTRAINT fk_category
FOREIGN KEY (CategoryID)
REFERENCES
categories(CategoryID);
SELECT * FROM Apps WHERE Rating>4.5;
SELECT * FROM Apps WHERE Price=0;
SELECT * FROM Apps WHERE CategoryID=305;

-- level 1
SELECT * FROM Apps WHERE Downloads>500000000;
SELECT * FROM Apps WHERE Rating BETWEEN 4.3 AND 4.7;
SELECT * FROM Apps WHERE Price IN (0,299);
SELECT * FROM Apps WHERE AppName LIKE 'G%';
SELECT * FROM Apps WHERE AppName LIKE '%GOOGLE%';
SELECT * FROM Apps WHERE Rating>4.0 AND Downloads>50000000;
SELECT * FROM Apps WHERE categoryID=301 OR CategoryID=305;

-- level 2

SELECT * FROM Apps WHERE AppName NOT LIKE 'G%';
SELECT * FROM Apps WHERE Rating<4.5 AND Downloads>100000000;
SELECT * FROM Developers WHERE DeveloperName LIKE '%a%';
SELECT * FROM APps WHERE Price BETWEEN 0 AND 300;
SELECT * FROM Apps WHERE publisherID IN (201,204);
INSERT INTO Apps (AppID,AppName,Rating,Downloads,Price,DeveloperID,publisherID,CategoryID)
VALUES(9999,'trying',4.6,10000000,0,99999,201,301);
SELECT * FROM Apps WHERE CategoryID<>305;


