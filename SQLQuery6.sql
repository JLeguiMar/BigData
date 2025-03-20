USE BigData;
GO

SELECT TOP 1
ap.AttractivePersonID,
CONCAT(ap.AttractivePersonFirstName, ' ', ap.AttractivePersonLastName) AS Nombre, 
COUNT (hd.HotDateID) AS Total
FROM HOTDATE AS hd
JOIN ATTRACTIVEPERSON AS ap ON hd.AttractivePersonID = ap.AttractivePersonID
GROUP BY ap.AttractivePersonID, ap.AttractivePersonFirstName, ap.AttractivePersonLastName
ORDER BY Total DESC;

-- Persona con menos citas
SELECT TOP 1
ap.AttractivePersonID,
CONCAT(ap.AttractivePersonFirstName, ' ', ap.AttractivePersonLastName) AS Nombre, 
COUNT (hd.HotDateID) AS Total
FROM HOTDATE hd
JOIN ATTRACTIVEPERSON ap ON hd.AttractivePersonID = ap.AttractivePersonID
GROUP BY ap.AttractivePersonID, ap.AttractivePersonFirstName, ap.AttractivePersonLastName
ORDER BY Total ASC;