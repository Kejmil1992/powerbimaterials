ActiveDate = 
IF
(
ISEMPTY(
    RELATEDTABLE('Power BI Audit Information')
    ),
    1,0)
