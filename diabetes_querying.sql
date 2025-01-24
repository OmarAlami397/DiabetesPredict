-- This is the SQL code used to create the datatable and preprocess the dataset.
-- This was done using the MySQL Workbench


-- First I created the table without a primary key to easily load all the data from the original csv file.

CREATE TABLE diabetes_data (
	Diabetes_binary INT NOT NULL,
    HighBP INT NOT NULL,
    HighChol INT NOT NULL,
    CholCheck INT NOT NULL,
    BMI INT NOT NULL,
    Smoker INT NOT NULL,
    Stroke INT NOT NULL,
    HeartDiseaseorAttack INT NOT NULL,
    PhysActivity INT NOT NULL,
    Fruits INT NOT NULL,
    Veggies INT NOT NULL,
    HvyAlcoholConsump INT NOT NULL,
    AnyHealthcare INT NOT NULL,
    NoDocbcCost INT NOT NULL,
    GenHlth INT NOT NULL,
    MentHlth INT NOT NULL,
    PhysHlth INT NOT NULL,
    DiffWalk INT NOT NULL,
    Sex INT NOT NULL,
    Age INT NOT NULL,
    Education INT NOT NULL,
    Income INT NOT NULL
);


-- Loading the data from the csv file.

LOAD DATA INFILE 'diabetes_binary_5050split_health_indicators_BRFSS2015.csv' INTO TABLE diabetes_data
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

-- Creating a primary key using auto increment.

ALTER TABLE diabetes_data
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

-- Here I dropped the education and income features because they are simply irrelevant demographic data.
ALTER TABLE diabetes_data
DROP COLUMN Education,
DROP COLUMN Income;
