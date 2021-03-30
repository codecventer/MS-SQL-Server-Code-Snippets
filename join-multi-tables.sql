USE Univerity
GO

SELECT clientName cName, clientAddress cAddress, clientPhoneNo cPhone
FROM client
JOIN invoice invoiceDate
ON invoiceID = invoiceID
JOIN stock quantity
ON stockID = invoiceID
WHERE invoiceID > 4