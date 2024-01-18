
view: avg_resolution_time {
  derived_table: {
    sql: SELECT
        `complaints.created_date` As 'created_date',
          AVG(`diff_days`) as `avg_resolution_time`
      FROM(
        SELECT
          `ref_no` AS `complaints.ref_no`,
              (DATE(`created_at`)) AS `complaints.created_date`,
              (DATE(`deadline`)) AS `complaints.deadline_date`,
              DATEDIFF(DATE(`deadline`),DATE(`created_at`)) AS `diff_days`
      FROM
          `spacebasic`.`complaints` AS `complaints`
      WHERE ((( `deadline` ) IS NOT NULL))
      GROUP BY
          1,
          2,
          3
      ORDER BY
          2) As T
          Group By 1
          Order By 1 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: created_date {
    type: date
    sql: ${TABLE}.created_date ;;
  }

  measure: avg_resolution_time {
    type: number
    sql: ${TABLE}.avg_resolution_time ;;
  }

  set: detail {
    fields: [
        created_date,
  avg_resolution_time
    ]
  }
}
