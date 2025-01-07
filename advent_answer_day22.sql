
SELECT COUNT(*)
FROM (SELECT id,  UNNEST(string_to_array(skills, ',')) as skill_unnested FROM elves)
WHERE skill_unnested = 'SQL';