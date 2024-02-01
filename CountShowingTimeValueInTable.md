// Count how many times age range shows in the whole table
CountPerAgeRange = 
CALCULATE(
    COUNTROWS(
        FILTER(
            fact_lego_sets,
            fact_lego_sets[agerange_min] >= 1 && fact_lego_sets[agerange_min] <= 18
        )
    )
)
