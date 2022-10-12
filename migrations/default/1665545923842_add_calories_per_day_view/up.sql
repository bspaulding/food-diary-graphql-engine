create or replace view food_diary.calories_per_day as 
select food_diary.diary_entry_day(diary_entry) as day, sum(food_diary.diary_entry_calories(diary_entry))
from food_diary.diary_entry
group by day;
