view: asset_allocation_mapping {
  sql_table_name: spacebasic.asset_allocation_mapping ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: allocated_by {
    type: number
    sql: ${TABLE}.allocated_by ;;
  }
  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.asset_id ;;
  }
  dimension: associated_to {
    type: string
    sql: ${TABLE}.associated_to ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
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
  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	asset.asset_id,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
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
	rooms.name
	]
  }

}
