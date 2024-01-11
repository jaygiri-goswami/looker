view: offboarding_approvers {
  sql_table_name: spacebasic.offboarding_approvers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: approval {
    type: number
    sql: ${TABLE}.approval ;;
  }
  dimension: approved_by {
    type: number
    sql: ${TABLE}.approved_by ;;
  }
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	roles.id
	]
  }

}
