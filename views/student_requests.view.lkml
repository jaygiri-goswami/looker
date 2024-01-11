view: student_requests {
  sql_table_name: spacebasic.student_requests ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }
  dimension: request_id {
    type: number
    sql: ${TABLE}.request_id ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, students.sb_student_uid, students.first_name, students.last_name]
  }
}
