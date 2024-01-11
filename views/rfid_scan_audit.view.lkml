view: rfid_scan_audit {
  sql_table_name: spacebasic.RFID_SCAN_AUDIT ;;
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
  dimension: is_successful {
    type: yesno
    sql: ${TABLE}.is_successful ;;
  }
  dimension: meal_description {
    type: string
    sql: ${TABLE}.meal_description ;;
  }
  dimension: meal_id {
    type: number
    sql: ${TABLE}.meal_id ;;
  }
  dimension: meal_type {
    type: number
    sql: ${TABLE}.meal_type ;;
  }
  dimension: mess_id {
    type: number
    sql: ${TABLE}.mess_id ;;
  }
  dimension_group: scan_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.scan_timestamp ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension: user_identifier {
    type: string
    sql: ${TABLE}.user_identifier ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
