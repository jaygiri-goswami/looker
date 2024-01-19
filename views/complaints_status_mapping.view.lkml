
view: complaints_status_mapping {
  derived_table: {
    sql: SELECT
    CASE
      WHEN status='0' THEN 'New'
      WHEN status='1' THEN 'In-Progress'
      WHEN status='2' THEN 'Escalated'
      WHEN status='3' THEN 'Closed'
      WHEN status='4' THEN 'Reopened'
      WHEN status='5' THEN 'On-hold'
      WHEN status='6' THEN 'Resolved and Closed'
      ELSE 'Cancelled'
    END AS statusmap,
    count(*) FROM complaints
      WHERE college_id = 131
      GROUP BY statusmap;;
  }

  dimension: statusmap {
    type: string
    sql: ${TABLE}.statusmap ;;
  }

  measure: count {
    type: number
    sql: ${TABLE}.`count(*)` ;;
  }

  set: detail {
    fields: [
      statusmap,
      count
    ]
  }
}
