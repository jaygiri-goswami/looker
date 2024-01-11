view: otp {
  sql_table_name: spacebasic.otp ;;
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
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: is_verified {
    type: number
    sql: ${TABLE}.is_verified ;;
  }
  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
  }
  dimension: otp {
    type: number
    sql: ${TABLE}.otp ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension_group: verified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.verified_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
