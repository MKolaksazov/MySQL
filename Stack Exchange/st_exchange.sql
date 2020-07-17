use Stack_Exchange;



CREATE TABLE Users(
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Reputation INTEGER,
    CreationDate DATE,
    DisplayName VARCHAR(40),
    LastAccessDate DATE,
    WebsiteUrl VARCHAR(128),
    Location VARCHAR(128),
    Age INTEGER,
    AboutMe mediumtext,
    Views INTEGER,
    UpVotes INTEGER,
    DownVotes INTEGER
);



CREATE TABLE Posts(
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CreationDate DATE,
    Score INTEGER,
    ViewCount INTEGER,
    Body MEDIUMTEXT,
    OwnerUserId INTEGER,
    LastEditorUserId INTEGER,
    LastEditDate DATE,
    Title VARCHAR(256),
    Tags VARCHAR(256),
    ClosedDate DATE,
    FOREIGN KEY(OwnerUserId) REFERENCES Users(Id),
    FOREIGN KEY(LastEditorUserId) REFERENCES Users(Id)
);



CREATE TABLE Comments(
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PostId INTEGER,
    Text MEDIUMTEXT,
    CreationDate DATE,
    UserId INTEGER,
    FOREIGN KEY(PostId) REFERENCES Posts(Id),
    FOREIGN KEY(UserId) REFERENCES Users(Id)
);



CREATE TABLE Votes(
    Id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    PostId INTEGER,
    CreationDate DATE,
    UserId INTEGER,
    FOREIGN KEY(PostId) REFERENCES Posts(Id),
    FOREIGN KEY(UserId) REFERENCES Users(Id)
);