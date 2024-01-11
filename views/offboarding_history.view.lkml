view: offboarding_history {
  sql_table_name: spacebasic.offboarding_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: action_by {
    type: number
    sql: ${TABLE}.action_by ;;
  }
  dimension_group: action {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.action_on ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_initiated {
    type: number
    sql: ${TABLE}.is_initiated ;;
  }
  dimension: is_offboarded {
    type: number
    sql: ${TABLE}.is_offboarded ;;
  }
  dimension: is_onboarded {
    type: number
    sql: ${TABLE}.is_onboarded ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
