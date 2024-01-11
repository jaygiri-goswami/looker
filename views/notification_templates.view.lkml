view: notification_templates {
  sql_table_name: spacebasic.notification_templates ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: header {
    type: string
    sql: ${TABLE}.header ;;
  }
  dimension: is_enabled {
    type: number
    sql: ${TABLE}.is_enabled ;;
  }
  dimension: parent_operator_id {
    type: string
    sql: ${TABLE}.parent_operator_id ;;
  }
  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }
  dimension: template_name {
    type: string
    sql: ${TABLE}.template_name ;;
  }
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, template_name]
  }
}
