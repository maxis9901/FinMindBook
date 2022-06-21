CREATE TABLE `financialdata`.`taiwan_stock_price`(
    `StockID` VARCHAR(10) NOT NULL,
    `TradeVolume` BIGINT NOT NULL,
    `Transaction` INT NOT NULL,
    `TradeValue` BIGINT NOT NULL,
    `Open` FLOAT NOT NULL,
    `Max` FLOAT NOT NULL,
    `Min` FLOAT NOT NULL,
    `Close` FLOAT NOT NULL,
    `Change` FLOAT NOT NULL,
    `Date` DATE NOT NULL,
    PRIMARY KEY(`StockID`, `Date`)
)
PARTITION BY RANGE(YEAR(Date)) (
    PARTITION p2005 VALUES LESS THAN (2006),
    PARTITION p2006 VALUES LESS THAN (2007),
    PARTITION p2007 VALUES LESS THAN (2008),
    PARTITION p2008 VALUES LESS THAN (2009),
    PARTITION p2009 VALUES LESS THAN (2010),
    PARTITION p2010 VALUES LESS THAN (2011),
    PARTITION p2011 VALUES LESS THAN (2012),
    PARTITION p2012 VALUES LESS THAN (2013),
    PARTITION p2013 VALUES LESS THAN (2014),
    PARTITION p2014 VALUES LESS THAN (2015),
    PARTITION p2015 VALUES LESS THAN (2016),
    PARTITION p2016 VALUES LESS THAN (2017),
    PARTITION p2017 VALUES LESS THAN (2018),
    PARTITION p2018 VALUES LESS THAN (2019),
    PARTITION p2019 VALUES LESS THAN (2020),
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2022 VALUES LESS THAN (2022),
    PARTITION p2021 VALUES LESS THAN (2023)
);

CREATE TABLE `financialdata`.`taiwan_futures_daily`(
    `Date` DATE NOT NULL,
    `FuturesID` VARCHAR(10) NOT NULL,
    `ContractDate` VARCHAR(30) NOT NULL,
    `Open` FLOAT NOT NULL,
    `Max` FLOAT NOT NULL,
    `Min` FLOAT NOT NULL,
    `Close` FLOAT NOT NULL,
    `Change` FLOAT NOT NULL,
    `ChangePer` FLOAT NOT NULL,
    `Volume` FLOAT NOT NULL,
    `SettlementPrice` FLOAT NOT NULL,
    `OpenInterest` INT NOT NULL,
    `TradingSession` VARCHAR(11) NOT NULL,
    PRIMARY KEY(`FuturesID`, `Date`)
)
PARTITION BY RANGE(YEAR(Date)) (
    PARTITION p2005 VALUES LESS THAN (2006),
    PARTITION p2006 VALUES LESS THAN (2007),
    PARTITION p2007 VALUES LESS THAN (2008),
    PARTITION p2008 VALUES LESS THAN (2009),
    PARTITION p2009 VALUES LESS THAN (2010),
    PARTITION p2010 VALUES LESS THAN (2011),
    PARTITION p2011 VALUES LESS THAN (2012),
    PARTITION p2012 VALUES LESS THAN (2013),
    PARTITION p2013 VALUES LESS THAN (2014),
    PARTITION p2014 VALUES LESS THAN (2015),
    PARTITION p2015 VALUES LESS THAN (2016),
    PARTITION p2016 VALUES LESS THAN (2017),
    PARTITION p2017 VALUES LESS THAN (2018),
    PARTITION p2018 VALUES LESS THAN (2019),
    PARTITION p2019 VALUES LESS THAN (2020),
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2022 VALUES LESS THAN (2022),
    PARTITION p2021 VALUES LESS THAN (2023)
);
