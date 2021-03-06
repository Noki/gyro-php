CREATE TABLE IF NOT EXISTS `continents` (
  `id` char(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `continents`
--
INSERT IGNORE INTO `continents` (`id`,`name`) VALUES 
 ('AF','Africa'),
 ('AN','Antartica'),
 ('AS','Asia'),
 ('EU','Europe'),
 ('NA','North America'),
 ('OC','Oceania'),
 ('SA','South America');

--
-- Definition of table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` char(2) NOT NULL,
  `id_continent` char(2) default NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_countries_continent` (`id_continent`),
  CONSTRAINT `fk_countries_continent` FOREIGN KEY (`id_continent`) REFERENCES `continents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--
INSERT IGNORE INTO `countries` (`id`,`id_continent`,`name`) VALUES 
 ('AD','EU','Andorra'),
 ('AE','AS','United Arab Emirates'),
 ('AF','AS','Afghanistan'),
 ('AG','NA','Antigua & Barbuda'),
 ('AI','NA','Anguilla'),
 ('AL','EU','Albania'),
 ('AM','AS','Armenia'),
 ('AN','NA','Netherlands Antilles'),
 ('AO','AF','Angola'),
 ('AQ','AN','Antarctica'),
 ('AR','SA','Argentina'),
 ('AS','OC','American Samoa'),
 ('AT','EU','Austria'),
 ('AU','OC','Australia'),
 ('AW','NA','Aruba'),
 ('AX','EU','Åland Islands'),
 ('AZ','AS','Azerbaijan'),
 ('BA','EU','Bosnia and Herzegovina'),
 ('BB','NA','Barbados'),
 ('BD','AS','Bangladesh'),
 ('BE','EU','Belgium'),
 ('BF','AF','Burkina Faso'),
 ('BG','EU','Bulgaria'),
 ('BH','AS','Bahrain'),
 ('BI','AF','Burundi'),
 ('BJ','AF','Benin'),
 ('BM','NA','Bermuda'),
 ('BN','AS','Brunei Darussalam'),
 ('BO','SA','Bolivia'),
 ('BR','SA','Brazil'),
 ('BS','NA','Bahama'),
 ('BT','AS','Bhutan'),
 ('BV','AN','Bouvet Island'),
 ('BW','AF','Botswana'),
 ('BY','EU','Belarus'),
 ('BZ','NA','Belize'),
 ('CA','NA','Canada'),
 ('CC','AS','Cocos (Keeling) Islands'),
 ('CD','AF','Congo, Democratic Republic'),
 ('CF','AF','Central African Republic'),
 ('CG','AF','Congo'),
 ('CH','EU','Switzerland'),
 ('CI','AF','Côte D''ivoire (Ivory Coast)'),
 ('CK','OC','Cook Iislands'),
 ('CL','SA','Chile'),
 ('CM','AF','Cameroon'),
 ('CN','AS','China'),
 ('CO','SA','Colombia'),
 ('CR','NA','Costa Rica'),
 ('CU','NA','Cuba'),
 ('CV','AF','Cape Verde'),
 ('CX','AS','Christmas Island'),
 ('CY','AS','Cyprus'),
 ('CZ','EU','Czech Republic'),
 ('DE','EU','Germany'),
 ('DJ','AF','Djibouti'),
 ('DK','EU','Denmark'),
 ('DM','NA','Dominica'),
 ('DO','NA','Dominican Republic'),
 ('DZ','AF','Algeria'),
 ('EC','SA','Ecuador'),
 ('EE','EU','Estonia'),
 ('EG','AF','Egypt'),
 ('EH','AF','Western Sahara'),
 ('ER','AF','Eritrea'),
 ('ES','EU','Spain'),
 ('ET','AF','Ethiopia'),
 ('FI','EU','Finland'),
 ('FJ','OC','Fiji'),
 ('FK','SA','Falkland Islands (Malvinas)'),
 ('FM','OC','Micronesia'),
 ('FO','EU','Faroe Islands'),
 ('FR','EU','France'),
 ('GA','AF','Gabon'),
 ('GB','EU','United Kingdom (Great Britain)'),
 ('GD','NA','Grenada'),
 ('GE','AS','Georgia'),
 ('GF','SA','French Guiana'),
 ('GH','AF','Ghana'),
 ('GI','EU','Gibraltar'),
 ('GL','NA','Greenland'),
 ('GM','AF','Gambia'),
 ('GN','AF','Guinea'),
 ('GP','NA','Guadeloupe'),
 ('GQ','AF','Equatorial Guinea'),
 ('GR','EU','Greece'),
 ('GS','AN','South Georgia and the South Sandwich Islands'),
 ('GT','NA','Guatemala'),
 ('GU','OC','Guam'),
 ('GW','AF','Guinea-Bissau'),
 ('GY','SA','Guyana'),
 ('HK','AS','Hong Kong'),
 ('HM','AN','Heard & McDonald Islands'),
 ('HN','NA','Honduras'),
 ('HR','EU','Croatia'),
 ('HT','NA','Haiti'),
 ('HU','EU','Hungary'),
 ('ID','AS','Indonesia'),
 ('IE','EU','Ireland'),
 ('IL','AS','Israel'),
 ('IN','AS','India'),
 ('IO','AS','British Indian Ocean Territory'),
 ('IQ','AS','Iraq'),
 ('IR','AS','Islamic Republic of Iran'),
 ('IS','EU','Iceland'),
 ('IT','EU','Italy'),
 ('JM','NA','Jamaica'),
 ('JO','AS','Jordan'),
 ('JP','AS','Japan'),
 ('KE','AF','Kenya'),
 ('KG','AS','Kyrgyzstan'),
 ('KH','AS','Cambodia'),
 ('KI','OC','Kiribati'),
 ('KM','AF','Comoros'),
 ('KN','NA','St. Kitts and Nevis'),
 ('KP','AS','Korea, Democratic People''s Republic of'),
 ('KR','AS','Korea, Republic of'),
 ('KW','AS','Kuwait'),
 ('KY','NA','Cayman Islands'),
 ('KZ','AS','Kazakhstan'),
 ('LA','AS','Lao People''s Democratic Republic'),
 ('LB','AS','Lebanon'),
 ('LC','NA','Saint Lucia'),
 ('LI','EU','Liechtenstein'),
 ('LK','AS','Sri Lanka'),
 ('LR','AF','Liberia'),
 ('LS','AF','Lesotho'),
 ('LT','EU','Lithuania'),
 ('LU','EU','Luxembourg'),
 ('LV','EU','Latvia'),
 ('LY','AF','Libyan Arab Jamahiriya'),
 ('MA','AF','Morocco'),
 ('MC','EU','Monaco'),
 ('MD','EU','Moldova, Republic of'),
 ('ME','EU','Montenegro'),
 ('MG','AF','Madagascar'),
 ('MH','OC','Marshall Islands'),
 ('MK','EU','Macedonia, the former Yugoslav Republic of'),
 ('ML','AF','Mali'),
 ('MM','AS','Myanmar'),
 ('MN','AS','Mongolia'),
 ('MO','AS','Macau'),
 ('MP','OC','Northern Mariana Islands'),
 ('MQ','NA','Martinique'),
 ('MR','AF','Mauritania'),
 ('MS','NA','Monserrat'),
 ('MT','EU','Malta'),
 ('MU','AF','Mauritius'),
 ('MV','AS','Maldives'),
 ('MW','AF','Malawi'),
 ('MX','NA','Mexico'),
 ('MY','AS','Malaysia'),
 ('MZ','AF','Mozambique'),
 ('NA','AF','Namibia'),
 ('NC','OC','New Caledonia'),
 ('NE','AF','Niger'),
 ('NF','OC','Norfolk Island'),
 ('NG','AF','Nigeria'),
 ('NI','NA','Nicaragua'),
 ('NL','EU','Netherlands'),
 ('NO','EU','Norway'),
 ('NP','AS','Nepal'),
 ('NR','OC','Nauru'),
 ('NU','OC','Niue'),
 ('NZ','OC','New Zealand'),
 ('OM','AS','Oman'),
 ('PA','NA','Panama'),
 ('PE','SA','Peru'),
 ('PF','OC','French Polynesia'),
 ('PG','OC','Papua New Guinea'),
 ('PH','AS','Philippines'),
 ('PK','AS','Pakistan'),
 ('PL','EU','Poland'),
 ('PM','NA','St. Pierre & Miquelon'),
 ('PN','OC','Pitcairn'),
 ('PR','NA','Puerto Rico'),
 ('PS','AS','Palestinian Territory, Occupied'),
 ('PT','EU','Portugal'),
 ('PW','OC','Palau'),
 ('PY','SA','Paraguay'),
 ('QA','AS','Qatar'),
 ('RE','AF','Réunion'),
 ('RO','EU','Romania'),
 ('RS','EU','Serbia'),
 ('RU','EU','Russian Federation'),
 ('RW','AF','Rwanda'),
 ('SA','AS','Saudi Arabia'),
 ('SB','OC','Solomon Islands'),
 ('SC','AF','Seychelles'),
 ('SD','AF','Sudan'),
 ('SE','EU','Sweden'),
 ('SG','AS','Singapore'),
 ('SH','AF','St. Helena'),
 ('SI','EU','Slovenia'),
 ('SJ','EU','Svalbard & Jan Mayen Islands'),
 ('SK','EU','Slovakia'),
 ('SL','AF','Sierra Leone'),
 ('SM','EU','San Marino'),
 ('SN','AF','Senegal'),
 ('SO','AF','Somalia'),
 ('SR','SA','Suriname'),
 ('ST','AF','Sao Tome & Principe'),
 ('SV','NA','El Salvador'),
 ('SY','AS','Syrian Arab Republic'),
 ('SZ','AF','Swaziland'),
 ('TC','NA','Turks & Caicos Islands'),
 ('TD','AF','Chad'),
 ('TF','AN','French Southern Territories'),
 ('TG','AF','Togo'),
 ('TH','AS','Thailand'),
 ('TJ','AS','Tajikistan'),
 ('TK','OC','Tokelau'),
 ('TL','AS','Timor-Leste'),
 ('TM','AS','Turkmenistan'),
 ('TN','AF','Tunisia'),
 ('TO','OC','Tonga'),
 ('TR','AS','Turkey'),
 ('TT','NA','Trinidad & Tobago'),
 ('TV','OC','Tuvalu'),
 ('TW','AS','Taiwan, Province of China'),
 ('TZ','AF','Tanzania, United Republic of'),
 ('UA','EU','Ukraine'),
 ('UG','AF','Uganda'),
 ('UM','OC','United States Minor Outlying Islands'),
 ('US','NA','United States of America'),
 ('UY','SA','Uruguay'),
 ('UZ','AS','Uzbekistan'),
 ('VA','EU','Vatican City State (Holy See)'),
 ('VC','NA','St. Vincent & the Grenadines'),
 ('VE','SA','Venezuela'),
 ('VG','NA','British Virgin Islands'),
 ('VI','NA','United States Virgin Islands'),
 ('VN','AS','Viet Nam'),
 ('VU','OC','Vanuatu'),
 ('WF','OC','Wallis & Futuna Islands'),
 ('WS','OC','Samoa'),
 ('YE','AS','Yemen'),
 ('YT','AF','Mayotte'),
 ('ZA','AF','South Africa'),
 ('ZM','AF','Zambia'),
 ('ZW','AF','Zimbabwe');

--
-- Definition of table `countriestranslations`
--
CREATE TABLE IF NOT EXISTS `countriestranslations` (
  `id_country` char(2) NOT NULL,
  `lang` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_country`, `lang`),
  CONSTRAINT `fk_countriestranslations_country` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countriestranslations`
--
INSERT IGNORE INTO `countriestranslations` (`id_country`,`lang`,`name`) VALUES 
 ('AD','de','Andorra'),
 ('AE','de','Vereinigte Arabische Emirate'),
 ('AF','de','Afghanistan'),
 ('AG','de','Antigua und Barbuda'),
 ('AI','de','Anguilla'),
 ('AL','de','Albanien'),
 ('AM','de','Armenien'),
 ('AN','de','Niederländische Antillen'),
 ('AO','de','Angola'),
 ('AQ','de','Antarktik'),
 ('AR','de','Argentinien'),
 ('AS','de','Amerikanisch Samoa'),
 ('AT','de','Österreich'),
 ('AU','de','Australien'),
 ('AW','de','Aruba'),
 ('AX','de','Åland Islands'),
 ('AZ','de','Aserbaidzhan'),
 ('BA','de','Bosnien-Herzegowina'),
 ('BB','de','Barbados'),
 ('BD','de','Bangladesch'),
 ('BE','de','Belgien'),
 ('BF','de','Burkina Faso'),
 ('BG','de','Bulgarien'),
 ('BH','de','Bahrain'),
 ('BI','de','Burundi'),
 ('BJ','de','Benin'),
 ('BM','de','Bermuda Inseln'),
 ('BN','de','Brunei'),
 ('BO','de','Bolivien'),
 ('BR','de','Brasilien'),
 ('BS','de','Bahamas'),
 ('BT','de','Bhutan'),
 ('BV','de','Bouvet Insel'),
 ('BW','de','Botsuana'),
 ('BY','de','Weißrußland'),
 ('BZ','de','Belize'),
 ('CA','de','Kanada'),
 ('CC','de','Cocos (Keeling) Inseln'),
 ('CD','de','Kongo, Demokratische Republik'),
 ('CF','de','Zentralafrikanische Republik'),
 ('CG','de','Kongo, Republik'),
 ('CH','de','Schweiz'),
 ('CI','de','Côte d´Ivoire'),
 ('CK','de','Cook Inseln'),
 ('CL','de','Chile'),
 ('CM','de','Kamerun'),
 ('CN','de','China'),
 ('CO','de','Kolumbien'),
 ('CR','de','Costa Rica'),
 ('CU','de','Kuba'),
 ('CV','de','Kap Verde'),
 ('CX','de','Weihnachts Inseln'),
 ('CY','de','Zypern'),
 ('CZ','de','Tschechische Republik'),
 ('DE','de','Deutschland'),
 ('DJ','de','Dschibuti'),
 ('DK','de','Dänemark'),
 ('DM','de','Dominica'),
 ('DO','de','Dominikanische Republik'),
 ('DZ','de','Algerien'),
 ('EC','de','Ecuador'),
 ('EE','de','Estland'),
 ('EG','de','Ägypten'),
 ('EH','de','Westsahara'),
 ('ER','de','Eritrea'),
 ('ES','de','Spanien'),
 ('ET','de','Äthiopien'),
 ('FI','de','Finnland'),
 ('FJ','de','Fidschi'),
 ('FK','de','Falklandinseln'),
 ('FM','de','Mikronesien, Föderierte Staaten von'),
 ('FO','de','Färöer'),
 ('FR','de','Frankreich'),
 ('GA','de','Gabun'),
 ('GB','de','Grossbritannien'),
 ('GD','de','Grenada'),
 ('GE','de','Georgien'),
 ('GF','de','Französisch Guiana'),
 ('GH','de','Ghana'),
 ('GI','de','Gibraltar'),
 ('GL','de','Grönland'),
 ('GM','de','Gambia'),
 ('GN','de','Guinea'),
 ('GP','de','Guadeloupe'),
 ('GQ','de','Äquatorialguinea'),
 ('GR','de','Griechenland'),
 ('GS','de','Süd Georgia und die South Sandwich Inseln'),
 ('GT','de','Guatemala'),
 ('GU','de','Guam'),
 ('GW','de','Guinea-Bissau'),
 ('GY','de','Guyana'),
 ('HK','de','Hong Kong'),
 ('HM','de','Heard Insel und McDonald Inseln'),
 ('HN','de','Honduras'),
 ('HR','de','Kroatien'),
 ('HT','de','Haiti'),
 ('HU','de','Ungarn'),
 ('ID','de','Indonesien'),
 ('IE','de','Irland'),
 ('IL','de','Israel'),
 ('IN','de','Indien'),
 ('IO','de','Brit. Terretorium im Indischen Ozean'),
 ('IQ','de','Irak'),
 ('IR','de','Iran'),
 ('IS','de','Island'),
 ('IT','de','Italien'),
 ('JM','de','Jamaika'),
 ('JO','de','Jordanien'),
 ('JP','de','Japan'),
 ('KE','de','Kenia'),
 ('KG','de','Kirgisistan'),
 ('KH','de','Kambodscha'),
 ('KI','de','Kiribati'),
 ('KM','de','Komoren'),
 ('KN','de','St. Christoph (St. Kitts) und Nevis'),
 ('KP','de','Korea, Demokratische Volksrepublik'),
 ('KR','de','Korea, Republik'),
 ('KW','de','Kuwait'),
 ('KY','de','Cayman Inseln'),
 ('KZ','de','Kasachstan'),
 ('LA','de','Laos'),
 ('LB','de','Libanon'),
 ('LC','de','St. Lucia'),
 ('LI','de','Liechtenstein'),
 ('LK','de','Sri Lanka'),
 ('LR','de','Liberia'),
 ('LS','de','Lesotho'),
 ('LT','de','Litauen'),
 ('LU','de','Luxemburg'),
 ('LV','de','Lettland'),
 ('LY','de','Libysche Dschamahirija'),
 ('MA','de','Marokko'),
 ('MC','de','Monaco'),
 ('MD','de','Moldau'),
 ('ME','de','Montenegro'),
 ('MG','de','Madagaskar'),
 ('MH','de','Marshall Inseln'),
 ('MK','de','Ehemalige jugoslawische Republik Mazedonien'),
 ('ML','de','Mali'),
 ('MM','de','Myanmar'),
 ('MN','de','Mongolei'),
 ('MO','de','Macau'),
 ('MP','de','Nördliche Mariannen'),
 ('MQ','de','Martinique'),
 ('MR','de','Mauretanien'),
 ('MS','de','Montserrat'),
 ('MT','de','Malta'),
 ('MU','de','Mauritius'),
 ('MV','de','Malediven'),
 ('MW','de','Malawi'),
 ('MX','de','Mexiko'),
 ('MY','de','Malaysia'),
 ('MZ','de','Mosambik'),
 ('NA','de','Namibia'),
 ('NC','de','Neukaledonien'),
 ('NE','de','Niger'),
 ('NF','de','Norfolk Insel'),
 ('NG','de','Nigeria'),
 ('NI','de','Nicaragua'),
 ('NL','de','Niederlande'),
 ('NO','de','Norwegen'),
 ('NP','de','Nepal'),
 ('NR','de','Nauru'),
 ('NU','de','Niue'),
 ('NZ','de','Neuseeland'),
 ('OM','de','Oman'),
 ('PA','de','Panama'),
 ('PE','de','Peru'),
 ('PF','de','Französisch Polinesien'),
 ('PG','de','Papua-Neuguinea'),
 ('PH','de','Philippinen'),
 ('PK','de','Pakistan'),
 ('PL','de','Polen (Rep.)'),
 ('PM','de','Saint Pierre und Miquelon'),
 ('PN','de','Pitcairn'),
 ('PR','de','Puerto Rico'),
 ('PS','de','Palästinensische Autonomiegebiete'),
 ('PT','de','Portugal'),
 ('PW','de','Palau'),
 ('PY','de','Paraguay'),
 ('QA','de','Katar'),
 ('RE','de','Réunion'),
 ('RO','de','Rumänien'),
 ('RS','de','Serbien'),
 ('RU','de','Russische Föderation'),
 ('RW','de','Ruanda'),
 ('SA','de','Saudi-Arabien'),
 ('SB','de','Salomonen'),
 ('SC','de','Seychellen'),
 ('SD','de','Sudan'),
 ('SE','de','Schweden'),
 ('SG','de','Singapur'),
 ('SH','de','Sankt Helena'),
 ('SI','de','Slowenien'),
 ('SJ','de','Svalbard und Jan Mayen'),
 ('SK','de','Slowakei'),
 ('SL','de','Sierra Leone'),
 ('SM','de','San Marino'),
 ('SN','de','Senegal'),
 ('SO','de','Somalia'),
 ('SR','de','Suriname'),
 ('ST','de','Sao Tomé und Príncipe'),
 ('SV','de','El Salvador'),
 ('SY','de','Syrien'),
 ('SZ','de','Swasiland'),
 ('TC','de','Turks und Caicos Inseln'),
 ('TD','de','Tschad'),
 ('TF','de','Franz. südliche Terretorien'),
 ('TG','de','Togo'),
 ('TH','de','Thailand'),
 ('TJ','de','Tadschikistan'),
 ('TK','de','Tokelau'),
 ('TL','de','Timor-Leste'),
 ('TM','de','Turkmenistan'),
 ('TN','de','Tunesien'),
 ('TO','de','Tonga'),
 ('TR','de','Türkei'),
 ('TT','de','Trinidad und Tobago'),
 ('TV','de','Tuvalu'),
 ('TW','de','Taiwan'),
 ('TZ','de','Tansania'),
 ('UA','de','Ukraine'),
 ('UG','de','Uganda'),
 ('UM','de','United Stated Minor Outlying Islands'),
 ('US','de','Vereinigte Staaten von Amerika'),
 ('UY','de','Uruguay'),
 ('UZ','de','Usbekistan'),
 ('VA','de','Vatikan'),
 ('VC','de','St. Vincent und die Grenadinen'),
 ('VE','de','Venezuela'),
 ('VG','de','Britische Jungferninseln'),
 ('VI','de','Amerikanische Jungferninseln'),
 ('VN','de','Vietnam'),
 ('VU','de','Vanuatu'),
 ('WF','de','Wallis und Fortuna'),
 ('WS','de','Samoa'),
 ('YE','de','Jemen'),
 ('YT','de','Mayotte'),
 ('ZA','de','Südafrika'),
 ('ZM','de','Sambia'),
 ('ZW','de','Simbabwe');

CREATE TABLE IF NOT EXISTS `countriesgroups` (
  `id` INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `abbrevation` VARCHAR(10),
  `type` ENUM('NONE','POLITICAL','GEOGRAPHICAL','CULTURAL') NOT NULL DEFAULT 'NONE',
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci AUTO_INCREMENT = 1000;

INSERT IGNORE INTO countriesgroups (id, name, abbrevation, type) 
	VALUES (1, 'European Union', 'EU', 'POLITICAL');
	
CREATE TABLE IF NOT EXISTS `countries2countriesgroups` (
  `id_country` CHAR(2) NOT NULL,
  `id_group` INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY (`id_country`, `id_group`),
  CONSTRAINT `fk_countries2countriesgroups_country` FOREIGN KEY `fk_countries2countriesgroups_country` (`id_country`)
    REFERENCES `countries` (`id`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT,
  CONSTRAINT `fk_countries2countriesgroups_group` FOREIGN KEY `fk_countries2countriesgroups_group` (`id_group`)
    REFERENCES `countriesgroups` (`id`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
)
ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

INSERT IGNORE INTO `countries2countriesgroups` (`id_country`,`id_group`) VALUES 
 ('AT',1),
 ('BE',1),
 ('BG',1),
 ('CY',1),
 ('CZ',1),
 ('DE',1),
 ('DK',1),
 ('EE',1),
 ('ES',1),
 ('FI',1),
 ('FR',1),
 ('GR',1),
 ('HU',1),
 ('IE',1),
 ('IT',1),
 ('LT',1),
 ('LU',1),
 ('LV',1),
 ('MT',1),
 ('NL',1),
 ('PL',1),
 ('PT',1),
 ('RO',1),
 ('SE',1),
 ('SI',1),
 ('SK',1);
 