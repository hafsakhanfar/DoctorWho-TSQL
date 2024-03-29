USE DoctorWho
GO
    -- Insert 5 records into tblAuthor
INSERT INTO
    tblAuthor (AuthorName)
VALUES
    ('Richard Curtis'),
    ('Christopher H. Bidmead'),
    ('Ian Stuart Black'),
    ('Chris Chibnall'),
    ('an Briggs');

-- Insert 5 records into tblEnemy
INSERT INTO
    tblEnemy (EnemyName, Description)
VALUES
    (
        'Helen A',
        'A mutant in a tank-like shell, bent on universal conquest and extermination of inferior races.'
    ),
    (
        'Cybermen',
        'Cyborgs who seek to convert other lifeforms into Cybermen.'
    ),
    (
        'Master',
        'An evil Time Lord who is a recurring antagonist in Doctor Who.'
    ),
    (
        'Ice Warriors',
        'A race of extraterrestrial reptiles from the planet Mars.'
    ),
    (
        'Weeping Angels',
        'Silent, stone creatures that can only move when they are not being observed.'
    );

-- Insert 5 records into tblDoctor
INSERT INTO
    tblDoctor (
        DoctorId,
        DoctorNumber,
        DoctorName,
        BirthDate,
        FirstEpisodeDate,
        LastEpisodeDate
    )
VALUES
    (
        '1',
        1,
        'William Hartnell',
        '1908-01-08',
        '1963-11-23',
        '1966-10-29'
    ),
    (
        '2',
        2,
        'Patrick Troughton',
        '1920-03-25',
        '1966-10-29',
        '1969-06-21'
    ),
    (
        '3',
        3,
        'Jon Pertwee',
        '1919-07-07',
        '1970-01-03',
        '1974-06-08'
    ),
    (
        '4',
        4,
        'Tom Baker',
        '1934-01-20',
        '1974-01-12',
        '1981-03-21'
    ),
    (
        '5',
        5,
        'Peter Davison',
        '1951-04-13',
        '1981-03-21',
        '1984-12-06'
    );

-- Insert 5 records into tblCompanion
INSERT INTO
    tblCompanion (CompanionName, WhoPlayed)
VALUES
    ('Rose Tyler', 'Billie Piper'),
    ('Martha Jones', 'Freema Agyeman'),
    ('Donna Noble', 'Catherine Tate'),
    ('Amy Pond', 'Karen Gillan'),
    ('Clara Oswald', 'Jenna Coleman');

-- Insert 5 records into tblEpisode
INSERT INTO
    tblEpisode (
        SeriesNumber,
        EpisodeNumber,
        EpisodeType,
        Title,
        EpisodeDate,
        AuthorId,
        DoctorId
    )
VALUES
    (1, 1, 'Regular', 'Rose', '2005-03-26', 1, NULL),
    (
        2,
        2,
        'Regular',
        'The End of the World',
        '2005-03-26',
        2,
        '1'
    ),
    (
        1,
        3,
        'Regular2',
        'The Unquiet Dead',
        '2005-04-02',
        2,
        '1'
    ),
    (
        1,
        4,
        'Regular3',
        'Aliens of London',
        '2005-04-09',
        3,
        '1'
    ),
    (
        6,
        5,
        'Regular',
        'World War Three',
        '2005-04-16',
        3,
        '1'
    );

-- Insert 5 records into tblEpisodeCompanion
INSERT INTO
    tblEpisodeCompanion (EpisodeId, CompanionId)
VALUES
    (1, 1),
    (2, 2),
    (3, 5),
    (4, 1),
    (5, 4),
    (3, 2),
    (3, 5);

-- Insert 5 records into tblEpisodeEnemy
INSERT INTO
    tblEpisodeEnemy (EpisodeId, EnemyId)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 2),
    (5, 2),
    (3, 2);