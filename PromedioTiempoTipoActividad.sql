CREATE PROCEDURE AvgTimeXActivityType
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRANSACTION;

    BEGIN TRY
        UPDATE HD
        SET HD.ActivityDuration = CONVERT(TIME, DATEADD(MILLISECOND, COALESCE(A.AvgDuration, 0), 0))
        FROM HOTDATE_ACTIVITY HD
        INNER JOIN (
            SELECT HA.HotDateActivityID, AVG(DATEDIFF(MILLISECOND, 0, HA.ActivityDuration)) AS AvgDuration
            FROM HOTDATE_ACTIVITY HA
            INNER JOIN ACTIVITY A ON HA.ActivityID = A.ActivityID
            INNER JOIN ACTIVITY_TYPE ATY ON A.ActivityTypeID = ATY.ActivityTypeID
            GROUP BY HA.HotDateActivityID
        ) A ON HD.HotDateActivityID = A.HotDateActivityID;
        
        COMMIT;
    END TRY
    BEGIN CATCH
        ROLLBACK;
    END CATCH;
END;


