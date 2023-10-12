USE DoctorWho
DELETE FROM
    tblcompanion
WHERE
    CompanionId NOT IN (
        SELECT
            DISTINCT CompanionId
        from
            tblEpisodeCompanion
    );

SELECT
    *
FROM
    tblCompanion