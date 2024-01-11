view: otp_attempt_tracking {
  sql_table_name: spacebasic.otp_attempt_tracking ;;
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
  dimension: module_type {
    type: string
    sql: ${TABLE}.module_type ;;
  }
  dimension: otp {
    type: string
    sql: ${TABLE}.otp ;;
  }
  dimension: recipient_mobile {
    type: string
    sql: ${TABLE}.recipient_mobile ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
