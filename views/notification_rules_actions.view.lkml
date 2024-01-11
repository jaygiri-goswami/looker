view: notification_rules_actions {
  sql_table_name: spacebasic.notification_rules_actions ;;
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
  dimension: action_name {
    type: string
    sql: ${TABLE}.action_name ;;
  }
  dimension: action_title {
    type: string
    sql: ${TABLE}.action_title ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: module {
    type: string
    sql: ${TABLE}.module ;;
  }
  measure: count {
    type: count
    drill_fields: [id, action_name]
  }
}
