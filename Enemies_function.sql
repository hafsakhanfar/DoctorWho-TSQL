USE DoctorWho
GO
    CREATE FUNCTION getEnemies(@EpisodeId INT) RETURNS NVARCHAR(MAX) AS BEGIN DECLARE @EnemyNames NVARCHAR(MAX);

SELECT
    @EnemyNames = CONCAT(@EnemyNames, e.EnemyName, ', ')
FROM
    tblEpisodeEnemy ee
    JOIN tblEnemy e ON e.EnemyId = ee.EnemyId
WHERE
    ee.EpisodeId = @EpisodeId;

RETURN @EnemyNames;

END;

GO
    DECLARE @EnemyNames NVARCHAR(MAX);

SET
    @EnemyNames = dbo.getEnemies(3);

PRINT 'Companion Names: ' + ISNULL(@EnemyNames, 'None');