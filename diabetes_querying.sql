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

LOAD DATA INFILE 'diabetes_binary_5050split_health_indicators_BRFSS2015.csv' INTO TABLE diabetes_data
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

ALTER TABLE diabetes_data
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

ALTER TABLE diabetes_data
DROP COLUMN Education,
DROP COLUMN Income;