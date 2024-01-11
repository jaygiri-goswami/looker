view: hostel_checkout_checkin_biomatrix {
  sql_table_name: spacebasic.hostel_checkout_checkin_biomatrix ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: check_in_time {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.check_in_time ;;
  }
  dimension: check_out_check_in_date {
    type: string
    sql: ${TABLE}.check_out_check_in_date ;;
  }
  dimension_group: check_out {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.check_out_time ;;
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
  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
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
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
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
	users.id,
	users.name,
	users.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	locations.id,
	locations.name
	]
  }

}
