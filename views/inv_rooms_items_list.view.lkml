view: inv_rooms_items_list {
  sql_table_name: spacebasic.inv_rooms_items_list ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: inv_items_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inv_items_id ;;
  }
  dimension: inv_items_list_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inv_items_list_id ;;
  }
  dimension: room_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_type_id ;;
  }
  dimension: rooms_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.rooms_id ;;
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
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	inv_items.id,
	inv_items.name,
	inv_items_list.id,
	rooms.id,
	rooms.hostel_name,
	rooms.block_name,
	rooms.floor_name,
	rooms.name,
	room_types.id,
	room_types.name
	]
  }

}
