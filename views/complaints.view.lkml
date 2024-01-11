view: complaints {
  sql_table_name: spacebasic.complaints ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: asset_allcoation_id {
    type: number
    sql: ${TABLE}.asset_allcoation_id ;;
  }
  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.asset_id ;;
  }
  dimension: assigned_to {
    type: number
    sql: ${TABLE}.assigned_to ;;
  }
  dimension: assigned_to_role {
    type: number
    sql: ${TABLE}.assigned_to_role ;;
  }
  dimension: assigned_to_user_id {
    type: number
    sql: ${TABLE}.assigned_to_user_id ;;
  }
  dimension: block_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.block_id ;;
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
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deadline {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.deadline ;;
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
  dimension: floor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.floor_id ;;
  }
  dimension: hostel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hostel_id ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: is_complaint_by_others {
    type: number
    sql: ${TABLE}.is_complaint_by_others ;;
  }
  dimension: issue {
    type: string
    sql: ${TABLE}.issue ;;
  }
  dimension: material_required {
    type: string
    sql: ${TABLE}.material_required ;;
  }
  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }
  dimension: others_user_id {
    type: number
    sql: ${TABLE}.others_user_id ;;
  }
  dimension: priority_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.priority_id ;;
  }
  dimension: ref_no {
    type: string
    sql: ${TABLE}.ref_no ;;
  }
  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_id ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.sub_category_id ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
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
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	category.id,
	category.category_name,
	priority.id,
	priority.priority_name,
	hostels.id,
	hostels.name,
	blocks.id,
	blocks.name,
	floors.id,
	floors.name,
	rooms.id,
	rooms.hostel_name,
	rooms.block_name,
	rooms.floor_name,
	rooms.name,
	asset.asset_id,
	asset_tracking.count,
	complaint_feedbacks.count,
	complaints_escalate.count,
	complaints_images.count,
	complaints_inventory.count,
	complaints_response.count,
	complaints_response_images.count,
	complaints_to.count,
	compliant_escalate.count,
	escalation_transactions.count
	]
  }

}
