-- getArtistsByRecId

SELECT re.recording_id, a.artist_name, r.role_name FROM RECORDING_ARTIST_ROLE rar
        INNER JOIN ARTIST_ROLE ar
        ON rar.ARTIST_ROLE_KEY = ar.ARTIST_ROLE_KEY
        INNER JOIN ARTIST a
        ON a.ARTIST_KEY = ar.ARTIST_KEY
        INNER JOIN ROLE r
        ON r.ROLE_KEY = ar.ROLE_KEY
        INNER JOIN RECORDING re
        ON re.recording_key = rar.recording_key
        WHERE re.recording_id = 10001;
        
        
-- getArtistsByCompName

SELECT c.compilation_name, a.artist_name, r.role_name FROM COMPILATION_ARTIST_ROLE cr
        INNER JOIN ARTIST_ROLE ar
        ON ar.ARTIST_ROLE_KEY = cr.ARTIST_ROLE_KEY
        INNER JOIN ARTIST a
        ON a.ARTIST_KEY = ar.ARTIST_KEY
        INNER JOIN ROLE r
        ON r.ROLE_KEY = ar.ROLE_KEY
        INNER JOIN COMPILATION c
        ON c.compilation_key = cr.compilation_key
        WHERE c.compilation_name = ?;
        
        
-- getRecordingDetails

SELECT r.recording_id, r.RECORDING_DATE, r.RECORDING_DURATION
        FROM RECORDING r
        WHERE r.recording_id = ?;

-- getCompilationDetails

SELECT c.COMPILATION_NAME,c.COMPILATION_DATE, c.COMPILATION_DURATION
        FROM COMPILATION c
        WHERE c.compilation_name = ?;
        
-- getContributorRoles        
        
 SELECT a.artist_name, r.role_name FROM ARTIST a
        INNER JOIN artist_role ar
        ON ar.artist_key = a.artist_key
        INNER JOIN ROLE r
        ON r.role_key = ar.role_key
        WHERE a.artist_name = ?;
        

--  implications by artist name

SELECT a.artist_name, c.compilation_name,r.recording_id, rl.role_name  
    FROM ARTIST a
    INNER JOIN ARTIST_ROLE ar
    ON ar.artist_key = a.artist_key
    INNER JOIN RECORDING_ARTIST_ROLE rar
    ON rar.artist_role_key = ar.artist_role_key
    INNER JOIN RECORDING r
    ON rar.recording_key = r.recording_key
    INNER JOIN ROLE rl
    ON ar.role_key = rl.role_key
    INNER JOIN COMPILATION_COMPONENT cc
    ON cc.recording_key = r.recording_key
    INNER JOIN COMPILATION c
    ON cc.parent_compilation_key = c.compilation_key
    WHERE a.artist_name = 'Ed Sheeran';
    

        