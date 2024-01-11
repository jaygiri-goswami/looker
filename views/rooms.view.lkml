view: rooms {
  sql_table_name: spacebasic.rooms ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: block_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.block_id ;;
  }
  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }
  dimension: block_remark {
    type: string
    sql: ${TABLE}.block_remark ;;
  }
  dimension: blocked_by {
    type: number
    sql: ${TABLE}.blocked_by ;;
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
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: door_lock_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.door_lock_id ;;
  }
  dimension: energy_meter_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.energy_meter_id ;;
  }
  dimension: floor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.floor_id ;;
  }
  dimension: floor_name {
    type: string
    sql: ${TABLE}.floor_name ;;
  }
  dimension: hostel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hostel_id ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostel_name ;;
  }
  dimension: is_blocked {
    type: string
    sql: ${TABLE}.is_blocked ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: occupancy {
    type: number
    sql: ${TABLE}.occupancy ;;
  }
  dimension: room_no {
    type: string
    sql: ${TABLE}.room_no ;;
  }
  dimension: room_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_type_id ;;
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
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	hostel_name,
	block_name,
	floor_name,
	name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	hostels.id,
	hostels.name,
	blocks.id,
	blocks.name,
	floors.id,
	floors.name,
	room_types.id,
	room_types.name,
	energy_meters.energy_meter_id,
	energy_meters.name,
	energy_meters.room_name,
	door_locks.id,
	door_locks.name,
	login_user_details.count,
	room_price.count,
	asset_allocation_mapping.count,
	assigned_inventory_items.count,
	biometric_device_association.count,
	complaints.count,
	disciplinary.count,
	ebill_daily_calculator.count,
	ghs_onboarding_room_combinations.count,
	inv_rooms_items_list.count,
	jgu_onboarding_room_combinations.count,
	room_blocking_history.count,
	sbc_onboarding_room_combinations.count,
	student_checked_in_out_status.count,
	student_room.count,
	temp_students_insert.count
	]
  }

}
