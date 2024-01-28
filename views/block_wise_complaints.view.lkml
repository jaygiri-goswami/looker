
view: block_wise_complaints {
  derived_table: {
    sql: SELECT sr.block_name,
      count(*)
      FROM complaints c
      JOIN student_room sr ON sr.student_id = c.student_id AND sr.college_id = c.college_id
      WHERE c.college_id = 56
      GROUP BY sr.block_id ;;
  }

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }

  dimension: count {
    type: number
    sql: ${TABLE}.`count(*)` ;;
  }

  set: detail {
    fields: [
        block_name,
        count
    ]
  }
}
