view: outbound_sms {
  sql_table_name: spacebasic.outbound_sms ;;
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
  dimension: http_response {
    type: string
    sql: ${TABLE}.http_response ;;
  }
  dimension: initiated_by {
    type: number
    sql: ${TABLE}.initiated_by ;;
  }
  dimension: sid {
    type: string
    sql: ${TABLE}.sid ;;
  }
  dimension: to_user_id {
    type: number
    sql: ${TABLE}.to_user_id ;;
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
