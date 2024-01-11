view: mess_feedbacks {
  sql_table_name: spacebasic.mess_feedbacks ;;

  dimension: booking_id {
    type: number
    sql: ${TABLE}.booking_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: feedback {
    type: string
    sql: ${TABLE}.feedback ;;
  }
  dimension: hygiene_rating {
    type: number
    sql: ${TABLE}.hygiene_rating ;;
  }
  dimension: meal_date {
    type: string
    sql: ${TABLE}.meal_date ;;
  }
  dimension: meal_id {
    type: string
    sql: ${TABLE}.meal_id ;;
  }
  dimension: mess_location_id {
    type: string
    sql: ${TABLE}.mess_location_id ;;
  }
  dimension: portion_size_rating {
    type: number
    sql: ${TABLE}.portion_size_rating ;;
  }
  dimension: quality_rating {
    type: number
    sql: ${TABLE}.quality_rating ;;
  }
  dimension: staff_attiitude_rating {
    type: number
    sql: ${TABLE}.staff_attiitude_rating ;;
  }
  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: taste_rating {
    type: number
    sql: ${TABLE}.taste_rating ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension: veriety_rating {
    type: number
    sql: ${TABLE}.veriety_rating ;;
  }
  dimension: wait_time_rating {
    type: number
    sql: ${TABLE}.wait_time_rating ;;
  }
  measure: count {
    type: count
    drill_fields: [students.sb_student_uid, students.first_name, students.last_name]
  }
}
