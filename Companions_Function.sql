USE DoctorWho
GO
    CREATE FUNCTION getCompanions(@EpisodeId INT) RETURNS NVARCHAR(MAX) AS BEGIN DECLARE @CompanionNames NVARCHAR(MAX);

SELECT
    @CompanionNames = CONCAT(@CompanionNames, CompanionName, ', ')
FROM
    tblCompanion c
    JOIN tblEpisodeCompanion ec ON c.CompanionId = ec.CompanionId
WHERE
    ec.EpisodeId = @EpisodeId;

RETURN @CompanionNames;

END;

GO
    DECLARE @CompanionNames NVARCHAR(MAX);

SET
    @CompanionNames = dbo.getCompanions(3);

PRINT 'Companion Names: ' + ISNULL(@CompanionNames, 'None');