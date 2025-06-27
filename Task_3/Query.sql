-- Extracting the members who had the birthday date 20 and querying the first occurence.

SELECT 
    MemberID, 
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM 
    Members
WHERE 
    DAY(DateOfBirth) = 20 AND MONTH(DateOfBirth) = 07
ORDER BY 
    MemberID ASC
LIMIT 1;
