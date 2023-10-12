USE DoctorWho CREATE TABLE tblEnemy (
    EnemyId INT IDENTITY NOT NULL PRIMARY KEY,
    EnemyName VARCHAR(150) NOT NULL,
    Description TEXT,
)
GO
    CREATE TABLE tblAuthor (
        AuthorId INT IDENTITY NOT NULL PRIMARY KEY,
        AuthorName VARCHAR(150) NOT NULL,
    )
GO
    CREATE TABLE tblCompanion (
        CompanionId INT NOT NULL IDENTITY PRIMARY KEY,
        CompanionName VARCHAR(150) NOT NULL,
        WhoPlayed VARCHAR(250),
    )
GO
    CREATE TABLE tblDoctor (
        DoctorId INT NOT NULL PRIMARY KEY,
        DoctorNumber INT NOT NULL,
        DoctorName VARCHAR(350) NOT NULL,
        BirthDate Date,
        FirstEpisodeDate Date,
        LastEpisodeDate Date
    );

GO
    CREATE TABLE tblEpisode (
        EpisodeId INT NOT NULL IDENTITY PRIMARY KEY,
        SeriesNumber INT DEFAULT 0,
        EpisodeNumber INT DEFAULT 0,
        EpisodeType VARCHAR(150),
        Title Text NOT NULL,
        EpisodeDate Date,
        AuthorId INT NOT NULL REFERENCES tblAuthor (AuthorId),
        DoctorId INT REFERENCES tblDoctor (DoctorId),
        Notes Text,
    )
GO
    CREATE TABLE tblEpisodeEnemy (
        EpisodeEnemyId INT NOT NULL IDENTITY PRIMARY KEY,
        EpisodeId INT NOT NULL REFERENCES tblEpisode (EpisodeId),
        AuthorId INT NOT NULL REFERENCES tblAuthor (AuthorId),
    )
GO
    CREATE TABLE tblEpisodeCompanion (
        EposideCompanionId INT NOT NULL IDENTITY PRIMARY KEY,
        EpisodeId INT NOT NULL REFERENCES tblEpisode (EpisodeId),
        CompanionId INT NOT NULL REFERENCES tblCompanion (CompanionId),
    )
GO