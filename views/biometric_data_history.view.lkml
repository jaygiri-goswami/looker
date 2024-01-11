view: biometric_data_history {
  sql_table_name: spacebasic.biometric_data_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bio_id {
    type: string
    sql: ${TABLE}.bioId ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: deleted_at {
    type: number
    sql: ${TABLE}.deleted_at ;;
  }
  dimension_group: scan {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.scan_time ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenantId ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
