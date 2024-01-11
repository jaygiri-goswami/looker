view: floors {
  sql_table_name: spacebasic.floors ;;
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
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: courseid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.courseid ;;
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
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: no_of_floors {
    type: number
    sql: ${TABLE}.no_of_floors ;;
  }
  dimension: streamid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.streamid ;;
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
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
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
	blocks.id,
	blocks.name,
	courses.id,
	courses.name,
	streams.id,
	streams.name,
	asset_allocation_mapping.count,
	biometric_device_association.count,
	complaints.count,
	disciplinary.count,
	floors_config.count,
	room_types.count,
	rooms.count,
	student_room.count
	]
  }

}
