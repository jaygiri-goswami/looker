view: leaves_history {
  sql_table_name: spacebasic.leaves_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.category_id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: contact_address {
    type: string
    sql: ${TABLE}.contact_address ;;
  }
  dimension: contact_name {
    type: string
    sql: ${TABLE}.contact_name ;;
  }
  dimension: contact_phone {
    type: string
    sql: ${TABLE}.contact_phone ;;
  }
  dimension_group: copied {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.copied_at ;;
  }
  dimension: copied_by {
    type: number
    sql: ${TABLE}.copied_by ;;
  }
  dimension: copy_id {
    type: number
    sql: ${TABLE}.copy_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension_group: from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`from` ;;
  }
  dimension: is_enabled_extend_leave {
    type: number
    sql: ${TABLE}.is_enabled_extend_leave ;;
  }
  dimension: leave_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_id ;;
  }
  dimension: leavetype {
    type: number
    sql: ${TABLE}.leavetype ;;
  }
  dimension_group: manual_auto_check_approved {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.manual_auto_check_approved_at ;;
  }
  dimension: mode_of_transport {
    type: string
    sql: ${TABLE}.mode_of_transport ;;
  }
  dimension: place_of_visit {
    type: string
    sql: ${TABLE}.place_of_visit ;;
  }
  dimension: ref_no {
    type: string
    sql: ${TABLE}.ref_no ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension: status_creator {
    type: number
    sql: ${TABLE}.status_creator ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  dimension_group: to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.`to` ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
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
	contact_name,
	leaves.id,
	leaves.contact_name,
	users.id,
	users.name,
	users.last_name,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	category.id,
	category.category_name
	]
  }

}
