USE test;

-- 중복과 NULL 가능한 피하기

-- 예제
-- https://ko.wikipedia.org/wiki/%EC%A0%9C1%EC%A0%95%EA%B7%9C%ED%98%95
CREATE TABLE mytable21Customer  (
	customerID INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(255) NOT NULL,
    surName VARCHAR(255) NOT NULL
  --  tel1 VARCHAR(255),
  --  tel2 VARCHAR(255),
  --  tel3 VARCHAR(255)
);

CREATE TABLe mytabe22Tel (
CHECKid INT PRIMARY KEY AUTO_INCREMENT,
	customerID INT NOT NULL,
	tel VARCHAR(255) NOT NULL

);




















