view: head_notifications {
  sql_table_name: spacebasic.head_notifications ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }
  dimension: last_ref_table_id {
    type: number
    sql: ${TABLE}.last_ref_table_id ;;
  }
  dimension: notification_msg {
    type: string
    sql: ${TABLE}.notification_msg ;;
  }
  dimension: notification_type {
    type: string
    sql: ${TABLE}.notification_type ;;
  }
  dimension_group: read {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.read_time ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, users.last_name]
  }
}
