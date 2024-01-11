view: mess_feedback_settings {
  sql_table_name: spacebasic.mess_feedback_settings ;;

  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: hygiene_1 {
    type: string
    sql: ${TABLE}.hygiene_1 ;;
  }
  dimension: hygiene_2 {
    type: string
    sql: ${TABLE}.hygiene_2 ;;
  }
  dimension: hygiene_3 {
    type: string
    sql: ${TABLE}.hygiene_3 ;;
  }
  dimension: hygiene_4 {
    type: string
    sql: ${TABLE}.hygiene_4 ;;
  }
  dimension: hygiene_5 {
    type: string
    sql: ${TABLE}.hygiene_5 ;;
  }
  dimension: is_hygiene {
    type: yesno
    sql: ${TABLE}.is_hygiene ;;
  }
  dimension: is_in_use {
    type: number
    sql: ${TABLE}.is_in_use ;;
  }
  dimension: is_portion_size {
    type: yesno
    sql: ${TABLE}.is_portion_size ;;
  }
  dimension: is_quality {
    type: yesno
    sql: ${TABLE}.is_quality ;;
  }
  dimension: is_staff_attitude {
    type: yesno
    sql: ${TABLE}.is_staff_attitude ;;
  }
  dimension: is_taste {
    type: string
    sql: ${TABLE}.is_taste ;;
  }
  dimension: is_variety {
    type: yesno
    sql: ${TABLE}.is_variety ;;
  }
  dimension: is_wait_time {
    type: yesno
    sql: ${TABLE}.is_wait_time ;;
  }
  dimension: portion_size_1 {
    type: string
    sql: ${TABLE}.portion_size_1 ;;
  }
  dimension: portion_size_2 {
    type: string
    sql: ${TABLE}.portion_size_2 ;;
  }
  dimension: portion_size_3 {
    type: string
    sql: ${TABLE}.portion_size_3 ;;
  }
  dimension: portion_size_4 {
    type: string
    sql: ${TABLE}.portion_size_4 ;;
  }
  dimension: portion_size_5 {
    type: string
    sql: ${TABLE}.portion_size_5 ;;
  }
  dimension: quality_1 {
    type: string
    sql: ${TABLE}.quality_1 ;;
  }
  dimension: quality_2 {
    type: string
    sql: ${TABLE}.quality_2 ;;
  }
  dimension: quality_3 {
    type: string
    sql: ${TABLE}.quality_3 ;;
  }
  dimension: quality_4 {
    type: string
    sql: ${TABLE}.quality_4 ;;
  }
  dimension: quality_5 {
    type: string
    sql: ${TABLE}.quality_5 ;;
  }
  dimension: staff_attitude_1 {
    type: string
    sql: ${TABLE}.staff_attitude_1 ;;
  }
  dimension: staff_attitude_2 {
    type: string
    sql: ${TABLE}.staff_attitude_2 ;;
  }
  dimension: staff_attitude_3 {
    type: string
    sql: ${TABLE}.staff_attitude_3 ;;
  }
  dimension: staff_attitude_4 {
    type: string
    sql: ${TABLE}.staff_attitude_4 ;;
  }
  dimension: staff_attitude_5 {
    type: string
    sql: ${TABLE}.staff_attitude_5 ;;
  }
  dimension: taste_1 {
    type: string
    sql: ${TABLE}.taste_1 ;;
  }
  dimension: taste_2 {
    type: string
    sql: ${TABLE}.taste_2 ;;
  }
  dimension: taste_3 {
    type: string
    sql: ${TABLE}.taste_3 ;;
  }
  dimension: taste_4 {
    type: string
    sql: ${TABLE}.taste_4 ;;
  }
  dimension: taste_5 {
    type: string
    sql: ${TABLE}.taste_5 ;;
  }
  dimension: variety_1 {
    type: string
    sql: ${TABLE}.variety_1 ;;
  }
  dimension: variety_2 {
    type: string
    sql: ${TABLE}.variety_2 ;;
  }
  dimension: variety_3 {
    type: string
    sql: ${TABLE}.variety_3 ;;
  }
  dimension: variety_4 {
    type: string
    sql: ${TABLE}.variety_4 ;;
  }
  dimension: variety_5 {
    type: string
    sql: ${TABLE}.variety_5 ;;
  }
  dimension: wait_time_1 {
    type: string
    sql: ${TABLE}.wait_time_1 ;;
  }
  dimension: wait_time_2 {
    type: string
    sql: ${TABLE}.wait_time_2 ;;
  }
  dimension: wait_time_3 {
    type: string
    sql: ${TABLE}.wait_time_3 ;;
  }
  dimension: wait_time_4 {
    type: string
    sql: ${TABLE}.wait_time_4 ;;
  }
  dimension: wait_time_5 {
    type: string
    sql: ${TABLE}.wait_time_5 ;;
  }
  measure: count {
    type: count
    drill_fields: [colleges.id, colleges.name, colleges.college_pathname]
  }
}
