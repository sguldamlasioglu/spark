-- This file is automatically generated by LogicalPlanToSQLSuite.
SELECT a, COUNT(DISTINCT b), COUNT(DISTINCT c), SUM(d) FROM parquet_t2 GROUP BY a
--------------------------------------------------------------------------------
SELECT `gen_attr_0` AS `a`, `gen_attr_1` AS `count(DISTINCT b)`, `gen_attr_3` AS `count(DISTINCT c)`, `gen_attr_5` AS `sum(d)` FROM (SELECT `gen_attr_0`, count(DISTINCT `gen_attr_2`) AS `gen_attr_1`, count(DISTINCT `gen_attr_4`) AS `gen_attr_3`, sum(`gen_attr_6`) AS `gen_attr_5` FROM (SELECT `a` AS `gen_attr_0`, `b` AS `gen_attr_2`, `c` AS `gen_attr_4`, `d` AS `gen_attr_6` FROM `default`.`parquet_t2`) AS gen_subquery_0 GROUP BY `gen_attr_0`) AS parquet_t2
