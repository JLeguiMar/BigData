USE BigData;
GO

SELECT 
    ap.AttractivePersonID, 
    CONCAT(ap.AttractivePersonFirstName, ' ', ap.AttractivePersonLastName) AS Nombre, 
    COUNT(hd.HotDateID) AS Total
FROM dbo.HOTDATE AS hd
INNER JOIN dbo.ATTRACTIVEPERSON AS ap ON hd.AttractivePersonID = ap.AttractivePersonID
GROUP BY ap.AttractivePersonID, ap.AttractivePersonFirstName, ap.AttractivePersonLastName;

