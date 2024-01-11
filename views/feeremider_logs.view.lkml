view: feeremider_logs {
  sql_table_name: spacebasic.feeremider_logs ;;
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
  dimension: hostel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hostelId ;;
  }
  dimension: reminder_type {
    type: string
    sql: ${TABLE}.reminder_type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, hostels.id, hostels.name]
  }
}
