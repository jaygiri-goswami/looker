view: room_types {
  sql_table_name: spacebasic.room_types ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: attributes {
    type: string
    sql: ${TABLE}.attributes ;;
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
  dimension: images {
    type: string
    sql: ${TABLE}.images ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: total_occupant {
    type: number
    sql: ${TABLE}.total_occupant ;;
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
	room_type_price.count,
	fee_structure.count,
	floors_config.count,
	inv_room_type_map.count,
	inv_rooms_items_list.count,
	maintenance_services_master.count,
	room_reservations.count,
	room_type_attributes_association.count,
	rooms.count,
	sale_items.count,
	student_fee.count,
	student_fee_activity_history.count
	]
  }

}
