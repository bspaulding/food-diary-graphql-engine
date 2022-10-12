CREATE OR REPLACE VIEW "food_diary"."calories_per_day" AS 
 SELECT food_diary.diary_entry_day(diary_entry.*) AS day,
    sum(food_diary.diary_entry_calories(diary_entry.*)) AS sum,
    diary_entry.user_id
   FROM food_diary.diary_entry
  GROUP BY (food_diary.diary_entry_day(diary_entry.*), user_id);
