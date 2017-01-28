CREATE TABLE region(
REGION_ID INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY (REGION_ID),
PARENT_REGION_ID INT NOT NULL,
FOREIGN KEY (PARENT_REGION_ID)
REFERENCES region(REGION_ID)
ON UPDATE NO ACTION ON DELETE NO ACTION,
REGION_LEVEL INT NOT NULL,
PROVINCE_ID INT NOT NULL,
FOREIGN KEY (PROVINCE_ID)
REFERENCES province(PROVINCE_ID)
ON UPDATE NO ACTION ON DELETE NO ACTION,
REGION_UNIQUE_NAME VARCHAR(100) NOT NULL,
REGION_FRENCH_NAME VARCHAR(100) NOT NULL,
REGION_ENGLISH_NAME VARCHAR(100) NOT NULL,
SCHOOL_BOARD VARCHAR(100),
TV VARCHAR(100),
NEWSPAPER VARCHAR(100),
REGION_TYPE VARCHAR(50));

CREATE TABLE region_districts(
REGION_ID INT NOT NULL,
FOREIGN KEY (REGION_ID)
REFERENCES region(REGION_ID)
ON UPDATE NO ACTION ON DELETE NO ACTION,
DISTRICT_ID INT NOT NULL,
FOREIGN KEY (DISTRICT_ID)
REFERENCES districts(DISTRICT_ID)
ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE region_parliament(
REGION_ID INT NOT NULL,
FOREIGN KEY (REGION_ID)
REFERENCES region(REGION_ID)
ON UPDATE NO ACTION ON DELETE NO ACTION,
PARLIAMENT_ID INT NOT NULL,
FOREIGN KEY (PARLIAMENT_ID)
REFERENCES parliament(PARLIAMENT_ID)
ON UPDATE NO ACTION ON DELETE NO ACTION
);