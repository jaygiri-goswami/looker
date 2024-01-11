view: leave_types {
  sql_table_name: spacebasic.leave_types ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: auto_approved {
    type: number
    sql: ${TABLE}.auto_approved ;;
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
  dimension: cut_off_time {
    type: number
    sql: ${TABLE}.cut_off_time ;;
  }
  dimension: cut_off_time_approve_extend_leave {
    type: number
    sql: ${TABLE}.cut_off_time_approve_extend_leave ;;
  }
  dimension: cut_off_time_extend_leave {
    type: number
    sql: ${TABLE}.cut_off_time_extend_leave ;;
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
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_time ;;
  }
  dimension: is_auto_check_in {
    type: number
    sql: ${TABLE}.is_auto_check_in ;;
  }
  dimension: is_based_on_hours {
    type: number
    sql: ${TABLE}.is_based_on_hours ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_enable_qr {
    type: number
    sql: ${TABLE}.is_enable_qr ;;
  }
  dimension: is_extendable {
    type: number
    sql: ${TABLE}.is_extendable ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: nod {
    type: number
    sql: ${TABLE}.nod ;;
  }
  dimension: noh {
    type: number
    sql: ${TABLE}.noh ;;
  }
  dimension: start_from {
    type: number
    sql: ${TABLE}.start_from ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_time ;;
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
	name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	leave_approvers.count,
	leave_model.count,
	trn_leave_status.count
	]
  }

}
