

//for calculators

DROP DATABASE IF EXISTS umy2v16j1tx9hhhu;
CREATE DATABASE umy2v16j1tx9hhhu;
USE umy2v16j1tx9hhhu;


CREATE TABLE ip_log (
    log_id INT NOT NULL AUTO_INCREMENT,
    time_str VARCHAR(19),
    ip_addr VARCHAR(16),
    ip_query VARCHAR(16),
    as_field VARCHAR(40),
    country VARCHAR(15),
    countryCode VARCHAR(5),
    city VARCHAR(15),
    region VARCHAR(5),
    regionName VARCHAR(15),
    zip VARCHAR(5),
    timezone VARCHAR(20),
    action_done VARCHAR(20),
    PRIMARY KEY (log_id)
);


CREATE TABLE user_log (
    user_log_id INT NOT NULL AUTO_INCREMENT,
    time_str VARCHAR(19),
    ip_addr VARCHAR(16),
    action_done VARCHAR(20),
    rollDiam VARCHAR(20),
    dimXdir VARCHAR(20),
    cavityDepth VARCHAR(20),
    calcXval VARCHAR(20),
    calcYmin VARCHAR(20),
    calcYmax VARCHAR(20),
    calcScaleMin VARCHAR(20),
    calcScaleMax VARCHAR(20),
    PRIMARY KEY (user_log_id)
);




