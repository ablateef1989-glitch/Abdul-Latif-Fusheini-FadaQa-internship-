CREATE TABLE "Nigeria states" (
    state TEXT NOT NULL,
    state_abbreviation TEXT NOT NULL,
    capital TEXT NOT NULL,
    slogan TEXT,
    date_created DATE,
    geopolitical_zone TEXT
);

INSERT INTO "Nigeria states"
(state, state_abbreviation, capital, slogan, date_created, geopolitical_zone)
VALUES
('Ekiti', 'EKI', 'Ado-Ekiti', 'Fountain of Knowledge', '1996-10-01', 'South West'),
('Lagos', 'LAG', 'Ikeja', 'Centre of Excellence', '1967-05-27', 'South West'),
('Ogun', 'OGU', 'Abeokuta', 'Gateway State', '1976-02-03', 'South West'),
('Ondo', 'OND', 'Akure', 'Sunshine State', '1976-02-03', 'South West'),
('Osun', 'OSU', 'Osogbo', 'State of the Living Spring', '1991-08-27', 'South West'),
('Oyo', 'OYO', 'Ibadan', 'Pacesetter', '1976-02-03', 'South West');

UPDATE "Nigeria states"
SET slogan = 'Land of Virtue'
WHERE state = 'Osun';

UPDATE "Nigeria states"
SET slogan = 'Land of Honour and Integrity'
WHERE state = 'Ekiti';

ALTER TABLE "Nigeria states"
ADD COLUMN number_of_local_governments INTEGER;

ALTER TABLE "Nigeria states"
ADD COLUMN governor_political_party TEXT;

INSERT INTO "Nigeria states"
(state, state_abbreviation, capital, slogan, date_created, geopolitical_zone,
 number_of_local_governments, governor_political_party)
VALUES
('Abuja', 'FCT', 'Federal Capital Territory', 'Centre of Unity', '1976-02-03',
 'North Central', 6, 'APC'),
('Rivers', 'RIV', 'Port Harcourt', 'Treasure Base of the Nation', '1976-02-03',
 'South South', 23, 'APC');


CREATE TABLE Nigeria_State_Assignment (
    state TEXT NOT NULL,
    state_abbreviation TEXT NOT NULL,
    capital TEXT NOT NULL,
    slogan TEXT,
    date_created DATE,
    geopolitical_zone TEXT,
    number_of_local_governments INTEGER,
    governor_political_party TEXT
);

INSERT INTO Nigeria_State_Assignment
(state, state_abbreviation, capital, slogan, date_created, geopolitical_zone,
 number_of_local_governments, governor_political_party)
VALUES
('Jigawa', 'JIG', 'Dutse', 'Liberal State', '1991-08-27', 'North West', 27, 'APC'),
('Delta', 'DEL', 'Asaba', 'The Big Heart', '1991-08-27', 'South South', 25, 'APC'),
('Yobe', 'YOB', 'Damaturu', 'The Young Shall Grow', '1991-08-27', 'North East', 17, 'APC'),
('Zamfara', 'ZAM', 'Gusau', 'Home of Agricultural Products', '1976-02-03', 'North West', 14, 'APC'),
('Ebonyi', 'EBO', 'Abakaliki', 'Salt of the Nation', '1996-10-01', 'South East', 13, 'APC'),
('Gombe', 'GOM', 'Gombe', 'Land of Hope', '1996-10-01', 'North East', 11, 'APC'),
('Akwa-Ibom', 'AKW', 'Uyo', 'Home of All', '1987-09-23', 'South South', 31, 'APC'),
('Taraba', 'TAR', 'Jalingo', 'Nature''s Gift to the Nation', '1992-08-01', 'North East', 17, 'APC');

UPDATE Nigeria_State_Assignment
SET slogan = 'The New World'
WHERE state = 'Jigawa';

UPDATE Nigeria_State_Assignment
SET slogan = 'Pride of the Sahel'
WHERE state = 'Yobe';

UPDATE Nigeria_State_Assignment
SET slogan = 'Land of Promise'
WHERE state = 'Akwa-Ibom';

UPDATE Nigeria_State_Assignment
SET slogan = 'Farming is Our Pride'
WHERE state = 'Zamfara';

UPDATE Nigeria_State_Assignment
SET slogan = 'Jewel of Savannah'
WHERE state = 'Gombe';

ALTER TABLE Nigeria_State_Assignment
ADD COLUMN governor_name TEXT;

INSERT INTO Nigeria_State_Assignment
(state, state_abbreviation, capital, slogan, date_created, geopolitical_zone,
 number_of_local_governments, governor_political_party, governor_name)
VALUES
('Sokoto', 'SOK', 'Sokoto', 'Seat of the Caliphate', '1976-02-03',
 'North West', 23, 'APC', NULL),
('Niger', 'NIG', 'Minna', 'The Power State', '1976-02-03',
 'North Central', 25, 'APC', NULL);
