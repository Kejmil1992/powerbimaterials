ActiveDate = 
IF
(
ISEMPTY(
    RELATEDTABLE('Table Name')
    ),
    1,0)
