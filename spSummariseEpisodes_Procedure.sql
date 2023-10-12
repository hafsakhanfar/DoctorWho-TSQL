USE DoctorWho
GO
    DROP PROCEDURE IF EXISTS spSummariseEpisodes;

GO
    CREATE PROCEDURE spSummariseEpisodes AS BEGIN
SELECT
    TOP 3 CompanionName,
    COUNT(*) AS Appearances
FROM
    tblCompanion c
    JOIN tblEpisodeCompanion ec ON c.CompanionId = ec.CompanionId
GROUP BY
    CompanionName
ORDER BY
    Appearances DESC
SELECT
    TOP 3 EnemyName,
    COUNT(*) AS Appearances
FROM
    tblEnemy e
    JOIN tblEpisodeEnemy ee ON e.EnemyId = ee.EnemyId
GROUP BY
    EnemyName
ORDER BY
    Appearances DESC
END EXEC spSummariseEpisodes