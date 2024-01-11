view: notification_rules {
  sql_table_name: spacebasic.notification_rules ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: action {
    type: string
    sql: ${TABLE}.action ;;
  }
  dimension: blacklisted_users {
    type: string
    sql: ${TABLE}.blacklisted_users ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: module {
    type: string
    sql: ${TABLE}.module ;;
  }
  dimension: send_email {
    type: yesno
    sql: ${TABLE}.send_email ;;
  }
  dimension: send_pn {
    type: yesno
    sql: ${TABLE}.send_pn ;;
  }
  dimension: send_sms {
    type: yesno
    sql: ${TABLE}.send_sms ;;
  }
  dimension: send_to {
    type: string
    sql: ${TABLE}.send_to ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
