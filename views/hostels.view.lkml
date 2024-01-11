view: hostels {
  sql_table_name: spacebasic.hostels ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: contact_person {
    type: string
    sql: ${TABLE}.contact_person ;;
  }
  dimension: cp_email {
    type: string
    sql: ${TABLE}.cp_email ;;
  }
  dimension: cp_mobile {
    type: string
    sql: ${TABLE}.cp_mobile ;;
  }
  dimension: cp_phone {
    type: string
    sql: ${TABLE}.cp_phone ;;
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
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: hostel_for {
    type: string
    sql: ${TABLE}.hostel_for ;;
  }
  dimension: hostel_for_year {
    type: number
    sql: ${TABLE}.hostel_for_year ;;
  }
  dimension: instructions {
    type: string
    sql: ${TABLE}.instructions ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: no_of_blocks {
    type: number
    sql: ${TABLE}.no_of_blocks ;;
  }
  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }
  dimension: settings {
    type: string
    sql: ${TABLE}.settings ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
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
	login_user_details.count,
	asset_allocation_mapping.count,
	attendance_api_ip.count,
	biometric_device_association.count,
	blocks.count,
	bulletin.count,
	complaints.count,
	custome_fee_structure.count,
	disciplinary.count,
	feeremider_logs.count,
	floors.count,
	floors_config.count,
	polls.count,
	room_reservations.count,
	room_types.count,
	rooms.count,
	student_fee.count,
	student_fee_activity_history.count,
	student_room.count
	]
  }

}
