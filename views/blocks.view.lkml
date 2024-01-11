view: blocks {
  sql_table_name: spacebasic.blocks ;;
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
  dimension: cp_phone {
    type: string
    sql: ${TABLE}.cp_phone ;;
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
  dimension: hostel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hostel_id ;;
  }
  dimension: instructions {
    type: string
    sql: ${TABLE}.instructions ;;
  }
  dimension: is_hostel_address {
    type: number
    sql: ${TABLE}.is_hostel_address ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: no_of_floors {
    type: number
    sql: ${TABLE}.no_of_floors ;;
  }
  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }
  dimension: property_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.property_type_id ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: university_id {
    type: number
    sql: ${TABLE}.university_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: warden_id {
    type: number
    sql: ${TABLE}.warden_id ;;
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
	hostels.id,
	hostels.name,
	property_types.id,
	property_types.name,
	login_user_details.count,
	asset_allocation_mapping.count,
	attendance_api_ip.count,
	biometric_device_association.count,
	block_warden.count,
	bulletin_block.count,
	complaints.count,
	disciplinary.count,
	floors.count,
	floors_config.count,
	room_types.count,
	rooms.count,
	student_room.count
	]
  }

}
