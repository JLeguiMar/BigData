USE BigData
GO
SELECT
    AVG(ActividadPorCita) AS PromedioActividadesPorCita
FROM (
    SELECT hd.HotDateID, COUNT(hxa.ActivityID) AS ActividadPorCita
    FROM HOTDATE AS hd
    LEFT JOIN HOTDATE_ACTIVITY AS hxa ON hd.HotDateID = hxa.HotDateID 
    GROUP BY hd.HotDateID
) SubQuery;
