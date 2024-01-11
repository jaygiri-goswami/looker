view: student_tracking_history {
  sql_table_name: spacebasic.student_tracking_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: approve_status {
    type: number
    sql: ${TABLE}.approve_status ;;
  }
  dimension_group: check_in {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.check_in ;;
  }
  dimension_group: check_out {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.check_out ;;
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
  dimension: created_by_name {
    type: string
    sql: ${TABLE}.created_by_name ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: is_failed {
    type: yesno
    sql: ${TABLE}.is_failed ;;
  }
  dimension: leave_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_id ;;
  }
  dimension: location_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.location_id ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: type_id {
    type: string
    sql: ${TABLE}.type_id ;;
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
	created_by_name,
	users.id,
	users.name,
	users.last_name,
	leaves.id,
	leaves.contact_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	locations.id,
	locations.name
	]
  }

}
