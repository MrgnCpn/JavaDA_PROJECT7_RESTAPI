DROP DATABASE IF EXISTS poseidon_prod_oc_mc;

/** PRODUCTION DB **/

-- CREATE Database
    CREATE DATABASE IF NOT EXISTS poseidon_prod_oc_mc;
    USE poseidon_prod_oc_mc;
    SET autocommit=1;


    CREATE TABLE bidlist (
      bid_list_id tinyint(4) NOT NULL AUTO_INCREMENT,
      account VARCHAR(30) NOT NULL,
      type VARCHAR(30) NOT NULL,
      bid_quantity DOUBLE,
      ask_quantity DOUBLE,
      bid DOUBLE,
      ask DOUBLE,
      benchmark VARCHAR(125),
      bid_list_date DATE,
      commentary VARCHAR(125),
      security VARCHAR(125),
      status VARCHAR(10),
      trader VARCHAR(125),
      book VARCHAR(125),
      creation_name VARCHAR(125),
      creation_date DATE,
      revision_name VARCHAR(125),
      revision_date DATE,
      deal_name VARCHAR(125),
      deal_type VARCHAR(125),
      source_list_id VARCHAR(125),
      side VARCHAR(125),
      PRIMARY KEY (bid_list_id)
    );

    CREATE TABLE trade (
      trade_id tinyint(4) NOT NULL AUTO_INCREMENT,
      account VARCHAR(30) NOT NULL,
      type VARCHAR(30) NOT NULL,
      buy_quantity DOUBLE,
      sell_quantity DOUBLE,
      buy_price DOUBLE,
      sell_price DOUBLE,
      trade_date DATE,
      security VARCHAR(125),
      status VARCHAR(10),
      trader VARCHAR(125),
      benchmark VARCHAR(125),
      book VARCHAR(125),
      creation_name VARCHAR(125),
      creation_date DATE,
      revision_name VARCHAR(125),
      revision_date DATE,
      deal_name VARCHAR(125),
      deal_type VARCHAR(125),
      source_list_d VARCHAR(125),
      side VARCHAR(125),
      PRIMARY KEY (trade_id)
    );

    CREATE TABLE curvepoint (
      id tinyint(4) NOT NULL AUTO_INCREMENT,
      curve_id tinyint,
      as_of_date DATE,
      term DOUBLE,
      value DOUBLE,
      creation_date DATE,
      PRIMARY KEY (id)
    );

    CREATE TABLE rating (
      id tinyint(4) NOT NULL AUTO_INCREMENT,
      moodys_rating VARCHAR(125),
      sand_rating VARCHAR(125),
      fitch_ating VARCHAR(125),
      order_number tinyint,
      PRIMARY KEY (id)
    );

    CREATE TABLE rulename (
      id tinyint(4) NOT NULL AUTO_INCREMENT,
      name VARCHAR(125),
      description VARCHAR(125),
      json VARCHAR(125),
      template VARCHAR(512),
      sql_str VARCHAR(125),
      sql_part VARCHAR(125),
      PRIMARY KEY (id)
    );

    CREATE TABLE users (
      id tinyint(4) NOT NULL AUTO_INCREMENT,
      username VARCHAR(125),
      password VARCHAR(125),
      fullname VARCHAR(125),
      role VARCHAR(125),
      PRIMARY KEY (id)
    );

    LOCK TABLES users WRITE;

    insert into users(fullname, username, password, role) values('Administrator', 'admin', '$2a$10$.NyqixZc.5Hm2JMXfUP/NuS31iapJCj87QXwu111qlJ.pvFJVC.8S', 'ADMIN');
    insert into users(fullname, username, password, role) values('User', 'user', '$2a$10$KWuAijcGolOVxqX1Zy33Pu57TLASW4K.oqQjagRRlr5SxF/gTIkXW', 'USER');

    UNLOCK TABLES;