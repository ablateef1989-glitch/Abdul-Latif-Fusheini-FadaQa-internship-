# Abdul-Latif-Fusheini-FadaQa-internship-
Abdul-Latif Fusheini.sql

CREATE TABLE nigeria_states (
    state TEXT,
    state_abbreviation TEXT,
    capital TEXT,
    slogan TEXT,
    date_created TEXT,
    geopolitical_zone TEXT
);

INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone)
VALUES ('Ekiti', 'EKI', 'Ado-Ekiti', 'Fountain of Knowledge', '1996-10-01', 'South West');
INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone)
VALUES ('Lagos', 'LAG', 'Ikeja', 'Centre of Excellence', '1967-05-27', 'South West');
INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone)
VALUES ('Ogun', 'OGU', 'Abeokuta', 'Gateway State', '1976-02-03', 'South West');
INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone)
VALUES ('Ondo', 'OND', 'Akure', 'Sunshine State', '1976-02-03', 'South West');
INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone)
VALUES ('Osun', 'OSU', 'Osogbo', 'State of the Living Spring', '1991-08-27', 'South West');
INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone)
VALUES ('Oyo', 'OYO', 'Ibadan', 'Pacesetter', '1976-02-03', 'South West');

UPDATE nigeria_states
SET slogan = 'Land of Virtue'
WHERE state = 'Osun';

UPDATE nigeria_states
SET slogan = 'Land of Honour and Integrity'
WHERE state = 'Ekiti';

ALTER TABLE nigeria_states
ADD COLUMN number_of_local_governments INTEGER;

ALTER TABLE nigeria_states
ADD COLUMN governor_political_party TEXT;

INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Abuja', 'FCT', 'Federal Capital Territory', 'Centre of Unity', '1976-02-03', 'North Central', 6, 'APC');
INSERT INTO nigeria_states (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Rivers', 'RIV', 'Port Harcourt', 'Treasure Base of the Nation', '1976-02-03', 'South South', 23, 'APC');

ALTER TABLE nigeria_states
ADD COLUMN governor_name TEXT;

UPDATE nigeria_states SET governor_name = 'Biodun Oyebanji' WHERE state = 'Ekiti';
UPDATE nigeria_states SET governor_name = 'Babajide Sanwo-Olu' WHERE state = 'Lagos';
UPDATE nigeria_states SET governor_name = 'Dapo Abiodun' WHERE state = 'Ogun';
UPDATE nigeria_states SET governor_name = 'Lucky Aiyedatiwa' WHERE state = 'Ondo';
UPDATE nigeria_states SET governor_name = 'Ademola Adeleke' WHERE state = 'Osun';
UPDATE nigeria_states SET governor_name = 'Seyi Makinde' WHERE state = 'Oyo';
UPDATE nigeria_states SET governor_name = 'Nyesom Wike' WHERE state = 'Abuja';
UPDATE nigeria_states SET governor_name = 'Siminalayi Fubara' WHERE state = 'Rivers';

CREATE TABLE ng_states_info (
    state TEXT,
    state_abbreviation TEXT,
    capital TEXT,
    slogan TEXT,
    date_created TEXT,
    geopolitical_zone TEXT,
    number_of_local_governments INTEGER,
    governor_political_party TEXT
);

INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Jigawa', 'JIG', 'Duste', 'Liberal State', '1991-08-27', 'North West', 27, 'APC');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Delta', 'DEL', 'Asaba', 'The Big Heart', '1991-08-27', 'South South', 25, 'APC');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Yobe', 'YOB', 'Damaturu', 'The Young Shall Grow', '1991-08-27', 'North East', 17, 'APC');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Zamfara', 'ZAM', 'Gusau', 'Home of Agricultural Products', '1996-10-01', 'North West', 14, 'APC');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Ebonyi', 'EBO', 'Abakaliki', 'Salt of the Nation', '1996-10-01', 'South East', 13, 'APC');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Gombe', 'GOM', 'Gombe', 'Land of Hope', '1996-10-01', 'North East', 11, 'APC');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Akwa-Ibom', 'AKW', 'Uyo', 'Home of All', '1987-09-23', 'South South', 31, 'APC');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party)
VALUES ('Taraba', 'TAR', 'Jalingo', 'Nature''s Gift to the Nation', '1992-08-01', 'North East', 17, 'APC');

UPDATE ng_states_info
SET slogan = 'The New World'
WHERE state = 'Jigawa';

UPDATE ng_states_info
SET slogan = 'Pride of the Sahel'
WHERE state = 'Yobe';

UPDATE ng_states_info
SET slogan = 'Land of Promise'
WHERE state = 'Akwa-Ibom';

UPDATE ng_states_info
SET slogan = 'Farming is Our Pride'
WHERE state = 'Zamfara';

UPDATE ng_states_info
SET slogan = 'Jewel of Savannah'
WHERE state = 'Gombe';

ALTER TABLE ng_states_info
ADD COLUMN governor_name TEXT;

UPDATE ng_states_info SET governor_name = 'Umar Namadi' WHERE state = 'Jigawa';
UPDATE ng_states_info SET governor_name = 'Sheriff Oborevwori' WHERE state = 'Delta';
UPDATE ng_states_info SET governor_name = 'Mai Mala Buni' WHERE state = 'Yobe';
UPDATE ng_states_info SET governor_name = 'Dauda Lawal' WHERE state = 'Zamfara';
UPDATE ng_states_info SET governor_name = 'Francis Nwifuru' WHERE state = 'Ebonyi';
UPDATE ng_states_info SET governor_name = 'Muhammadu Inuwa Yahaya' WHERE state = 'Gombe';
UPDATE ng_states_info SET governor_name = 'Umo Eno' WHERE state = 'Akwa-Ibom';
UPDATE ng_states_info SET governor_name = 'Agbu Kefas' WHERE state = 'Taraba';

INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party, governor_name)
VALUES ('Sokoto', 'SOK', 'Sokoto', 'Seat of the Caliphate', '1976-02-03', 'North West', 23, 'APC', 'Ahmed Aliyu');
INSERT INTO ng_states_info (state, state_abbreviation, capital, slogan, date_created, geopolitical_zone, number_of_local_governments, governor_political_party, governor_name)
VALUES ('Niger', 'NIG', 'Minna', 'The Power State', '1976-02-03', 'North Central', 25, 'APC', 'Mohammed Umaru Bago');
