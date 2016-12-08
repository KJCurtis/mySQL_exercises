
use codeup_test_db;

CREATE TABLE albums (
  id  INt UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(100) NOT NULL,
  album VARCHAR(100) NOT NULL,
  genre VARCHAR(100) not null,
  release_date YEAR,
  sales_in_millions DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (id)clear

);

describe albums;
