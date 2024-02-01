// it calculates max ammount of sum of the pieces per distinct set id; pieces = counted value; set_id = filtered value
MaxSumPiecesPerSetID = 
CALCULATE(
    MAXX(
        SUMMARIZE('table_name', 'table_name'[set_id]),
        CALCULATE(SUM('table_name'[pieces]))
    )
)
