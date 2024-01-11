view: mess_settings {
  sql_table_name: spacebasic.mess_settings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: allowed_scan_count {
    type: number
    sql: ${TABLE}.allowed_scan_count ;;
  }
  dimension: auto_add {
    type: number
    sql: ${TABLE}.auto_add ;;
  }
  dimension: booking_cut_off_period_hrs {
    type: number
    sql: ${TABLE}.booking_cut_off_period_hrs ;;
  }
  dimension: booking_cutoff_date {
    type: number
    sql: ${TABLE}.booking_cutoff_date ;;
  }
  dimension: booking_cutoff_enabled {
    type: number
    sql: ${TABLE}.booking_cutoff_enabled ;;
  }
  dimension: booking_end_time {
    type: string
    sql: ${TABLE}.booking_end_time ;;
  }
  dimension: booking_start_time {
    type: string
    sql: ${TABLE}.booking_start_time ;;
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
  dimension: cut_off_period_hrs {
    type: number
    sql: ${TABLE}.cut_off_period_hrs ;;
  }
  dimension_group: cut_off {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.cut_off_time ;;
  }
  dimension_group: display_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.displayEndTime ;;
  }
  dimension_group: display_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.displayStartTime ;;
  }
  dimension: end_time {
    type: string
    sql: ${TABLE}.end_time ;;
  }
  dimension: is_default {
    type: number
    sql: ${TABLE}.is_default ;;
  }
  dimension: is_mess_allotted {
    type: number
    sql: ${TABLE}.is_mess_allotted ;;
  }
  dimension_group: meal_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.meal_end_time ;;
  }
  dimension_group: meal_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.meal_start_time ;;
  }
  dimension: mealtype {
    type: string
    sql: ${TABLE}.mealtype ;;
  }
  dimension: start_time {
    type: string
    sql: ${TABLE}.start_time ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
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
    drill_fields: [id]
  }
}
