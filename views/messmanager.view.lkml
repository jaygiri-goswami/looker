view: messmanager {
  sql_table_name: spacebasic.messmanager ;;
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
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: display_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.display_end_time ;;
  }
  dimension_group: display_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.display_start_time ;;
  }
  dimension: is_deleted {
    type: string
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_special {
    type: number
    sql: ${TABLE}.is_special ;;
  }
  dimension: location_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }
  dimension_group: meal_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.meal_end_at ;;
  }
  dimension_group: meal_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.meal_start_at ;;
  }
  dimension: mealdate {
    type: string
    sql: ${TABLE}.mealdate ;;
  }
  dimension: mealtype {
    type: number
    sql: ${TABLE}.mealtype ;;
  }
  dimension_group: response_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.response_end_at ;;
  }
  dimension_group: response_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.response_start_at ;;
  }
  dimension: responses {
    type: string
    sql: ${TABLE}.responses ;;
  }
  dimension: tenant_id {
    type: string
    sql: ${TABLE}.tenantId ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, locations.id, locations.name]
  }
}
