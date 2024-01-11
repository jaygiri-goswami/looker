view: student_approver_tracking {
  sql_table_name: spacebasic.student_approver_tracking ;;
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
  dimension: approve_status {
    type: number
    sql: ${TABLE}.approve_status ;;
  }
  dimension: approver_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.approver_id ;;
  }
  dimension: check_in_out_type {
    type: number
    sql: ${TABLE}.check_in_out_type ;;
  }
  dimension: checkin_checkout_status {
    type: number
    sql: ${TABLE}.checkin_checkout_status ;;
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
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: meta_id {
    type: number
    sql: ${TABLE}.meta_id ;;
  }
  dimension: meta_role_id {
    type: number
    sql: ${TABLE}.meta_role_id ;;
  }
  dimension: meta_user_id {
    type: number
    sql: ${TABLE}.meta_user_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: tracking_type {
    type: number
    sql: ${TABLE}.tracking_type ;;
  }
  dimension: vehicle_no {
    type: string
    sql: ${TABLE}.vehicle_no ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	approvers.id,
	approvers.name
	]
  }

}
