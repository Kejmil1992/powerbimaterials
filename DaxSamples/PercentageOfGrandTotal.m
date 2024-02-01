// Counting percentage of Grand Total per Age Range choosen on visualization context 
PercentageOfGrandTotal = 
DIVIDE(
    [CountPerAgeRange],
    CALCULATE(
        COUNTROWS(fact_lego_sets),
        ALL(fact_lego_sets)
    )
)
