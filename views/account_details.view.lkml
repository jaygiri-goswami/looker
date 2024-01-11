view: account_details {
  sql_table_name: spacebasic.account_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: acc_name {
    type: string
    sql: ${TABLE}.acc_name ;;
  }
  dimension: acc_no {
    type: string
    sql: ${TABLE}.acc_no ;;
  }
  dimension: bank {
    type: string
    sql: ${TABLE}.bank ;;
  }
  dimension: branch {
    type: string
    sql: ${TABLE}.branch ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: ifsc {
    type: string
    sql: ${TABLE}.ifsc ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, acc_name]
  }
}
