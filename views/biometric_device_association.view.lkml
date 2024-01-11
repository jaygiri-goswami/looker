view: biometric_device_association {
  sql_table_name: spacebasic.biometric_device_association ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
  }
  dimension: auth_details {
    type: string
    sql: ${TABLE}.auth_details ;;
  }
  dimension: authentication_type {
    type: string
    sql: ${TABLE}.authentication_type ;;
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
  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }
  dimension: device_name {
    type: string
    sql: ${TABLE}.device_name ;;
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
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_master {
    type: number
    sql: ${TABLE}.is_master ;;
  }
  dimension: is_smart_office {
    type: number
    sql: ${TABLE}.is_smart_office ;;
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
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	device_name,
	hostel_name,
	block_name,
	floor_name,
	room_name,
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
