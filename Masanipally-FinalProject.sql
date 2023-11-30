SELECT * FROM ait_fp.`air_quality-1`;
select `Time Period`, avg(`Data Value`) from `air_quality-1` group by `Time Period`;
select Name, avg(`Data Value`) from `air_quality-1` group by Name;S