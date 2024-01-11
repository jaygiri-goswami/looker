view: onboarding_room_configurations {
  sql_table_name: spacebasic.onboarding_room_configurations ;;
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
  dimension: is_auto {
    type: number
    sql: ${TABLE}.is_auto ;;
  }
  dimension: is_batch {
    type: number
    sql: ${TABLE}.is_batch ;;
  }
  dimension: is_course {
    type: number
    sql: ${TABLE}.is_course ;;
  }
  dimension: is_gender {
    type: number
    sql: ${TABLE}.is_gender ;;
  }
  dimension: is_room {
    type: number
    sql: ${TABLE}.is_room ;;
  }
  dimension: is_room_type {
    type: number
    sql: ${TABLE}.is_room_type ;;
  }
  dimension: is_stream {
    type: number
    sql: ${TABLE}.is_stream ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension: tenant_url {
    type: string
    sql: ${TABLE}.tenant_url ;;
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
