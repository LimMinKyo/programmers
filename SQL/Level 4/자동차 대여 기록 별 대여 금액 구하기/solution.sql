SELECT
  HISTORY_ID,
  ROUND(
    DAILY_FEE * (DATEDIFF (END_DATE, START_DATE) + 1) * (1 - IFNULL (DISCOUNT_RATE, 0) / 100)
  ) AS FEE
FROM
  CAR_RENTAL_COMPANY_CAR AS CAR
  JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY AS HISTORY ON CAR.CAR_ID = HISTORY.CAR_ID
  AND CAR_TYPE = '트럭'
  LEFT JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN AS PLAN ON CAR.CAR_TYPE = PLAN.CAR_TYPE
  AND DATEDIFF (END_DATE, START_DATE) + 1 >= CONVERT(DURATION_TYPE, UNSIGNED)
GROUP BY
  HISTORY_ID
ORDER BY
  FEE DESC,
  HISTORY_ID DESC;