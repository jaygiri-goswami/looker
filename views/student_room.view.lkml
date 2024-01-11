view: student_room {
  sql_table_name: spacebasic.student_room ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: activity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.activity_at ;;
  }
  dimension: activity_by_name {
    type: string
    sql: ${TABLE}.activity_by_name ;;
  }
  dimension: activity_status {
    type: number
    sql: ${TABLE}.activity_status ;;
  }
  dimension_group: archived {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.archived_at ;;
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
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: college_name {
    type: string
    sql: ${TABLE}.college_name ;;
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
  dimension_group: enddate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.enddate ;;
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
  dimension: is_archived {
    type: number
    sql: ${TABLE}.is_archived ;;
  }
  dimension: is_changed {
    type: yesno
    sql: ${TABLE}.is_changed ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_id ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.room_name ;;
  }
  dimension_group: startdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startdate ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: student_name {
    type: string
    sql: ${TABLE}.student_name ;;
  }
  dimension: student_phone {
    type: string
    sql: ${TABLE}.student_phone ;;
  }
  dimension: student_removed_by {
    type: number
    sql: ${TABLE}.student_removed_by ;;
  }
  dimension: student_removed_by_name {
    type: string
    sql: ${TABLE}.student_removed_by_name ;;
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
	college_name,
	student_name,
	room_name,
	floor_name,
	block_name,
	hostel_name,
	student_removed_by_name,
	activity_by_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	rooms.id,
	rooms.hostel_name,
	rooms.block_name,
	rooms.floor_name,
	rooms.name,
	floors.id,
	floors.name,
	blocks.id,
	blocks.name,
	hostels.id,
	hostels.name
	]
  }

}
