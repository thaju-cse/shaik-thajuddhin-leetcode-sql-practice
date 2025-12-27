# Write your MySQL query statement below
select s1.Score, count(distinct s2.Score) as `Rank` 
    from Scores s1, Scores s2
    where s2.Score >= s1.Score
    group by s1.Id
    order by `Rank`;
