PercentageOfGrandTotal = 
DIVIDE(
    [CountPerAgeRange],
    CALCULATE(
        COUNTROWS(fact_lego_sets),
        ALL(fact_lego_sets)
    )
)
