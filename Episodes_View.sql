USE DoctorWho
GO
    DROP VIEW IF EXISTS episodesView;

GO
    CREATE VIEW episodesView AS
SELECT
    e.EpisodeId,
    a.AuthorName,
    d.DoctorName,
    dbo.getCompanions (e.EpisodeId) AS Companions,
    dbo.getEnemies (e.EpisodeId) AS Enemies
FROM
    tblEpisode e
    JOIN tblAuthor a ON e.AuthorId = a.AuthorId
    JOIN tblDoctor d ON e.DoctorId = d.DoctorId
GO
SELECT
    *
FROM
    episodesView