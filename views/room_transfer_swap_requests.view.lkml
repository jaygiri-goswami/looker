view: room_transfer_swap_requests {
  sql_table_name: spacebasic.room_transfer_swap_requests ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: action {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.action_at ;;
  }
  dimension: action_by {
    type: number
    sql: ${TABLE}.action_by ;;
  }
  dimension: action_status {
    type: number
    sql: ${TABLE}.action_status ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: room_id1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.room_id1 ;;
  }
  dimension: room_id2 {
    type: number
    value_format_name: id
    sql: ${TABLE}.room_id2 ;;
  }
  dimension: student_id1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.student_id1 ;;
  }
  dimension: student_id2 {
    type: number
    value_format_name: id
    sql: ${TABLE}.student_id2 ;;
  }
  dimension: transfer_type {
    type: number
    sql: ${TABLE}.transfer_type ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
