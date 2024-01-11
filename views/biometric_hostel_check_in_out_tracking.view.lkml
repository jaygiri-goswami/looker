view: biometric_hostel_check_in_out_tracking {
  sql_table_name: spacebasic.biometric_hostel_check_in_out_tracking ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: check_in {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.check_in_at ;;
  }
  dimension: check_in_by_device {
    type: string
    sql: ${TABLE}.check_in_by_device ;;
  }
  dimension_group: check_out {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.check_out_at ;;
  }
  dimension: check_out_by_device {
    type: string
    sql: ${TABLE}.check_out_by_device ;;
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
	students.last_name
	]
  }

}
