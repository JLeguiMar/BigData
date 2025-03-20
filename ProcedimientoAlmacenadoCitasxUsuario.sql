CREATE PROCEDURE ListarCitasPorUsuario
@AttractivePersonID INT
AS
BEGIN
    SELECT
        hd.HotDateID,
        CONCAT(ap.AttractivePersonFirstName, ' ', ap.AttractivePersonLastName) AS Nombre, 
        COUNT(ha.ActivityID) AS NumeroActividades,
		COALESCE (SUM(DATEDIFF(MINUTE, '00:00:00', ha.ActivityDuration)), 0) AS Minutos
    FROM HOTDATE AS hd
    JOIN ATTRACTIVEPERSON AS ap ON hd.AttractivePersonID = ap.AttractivePersonID
    LEFT JOIN HOTDATE_ACTIVITY ha ON hd.HotDateID = ha.HotDateID
    WHERE ap.AttractivePersonID = @AttractivePersonID
    GROUP BY hd.HotDateID, ap.AttractivePersonLastName, ap.AttractivePersonFirstName;
END;
