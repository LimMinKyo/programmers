SELECT
  COUNT(*) AS COUNT
FROM
  ECOLI_DATA
WHERE
  GENOTYPE & 5         -- 0101
  AND NOT GENOTYPE & 2 -- 0010