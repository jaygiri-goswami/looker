view: locations {
  sql_table_name: spacebasic.locations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: archived {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.archived_at ;;
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
  dimension: direction {
    type: yesno
    sql: ${TABLE}.direction ;;
  }
  dimension: is_archived {
    type: number
    sql: ${TABLE}.is_archived ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
	employee_locations.count,
	hostel_check_in_out_tracking.count,
	hostel_checkout_checkin_biomatrix.count,
	hostel_checkout_checkin_settings.count,
	mess_allocation_mail.count,
	mess_location_allocations.count,
	mess_location_allocations_history.count,
	mess_location_settings.count,
	messmanager.count,
	student_location.count,
	student_tracking.count,
	student_tracking_history.count
	]
  }

}
