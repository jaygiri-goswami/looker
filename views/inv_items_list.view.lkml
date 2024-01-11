view: inv_items_list {
  sql_table_name: spacebasic.inv_items_list ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: assigned_room_id {
    type: number
    sql: ${TABLE}.assigned_room_id ;;
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
  dimension: inv_items_batch_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inv_items_batch_id ;;
  }
  dimension: inv_items_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inv_items_id ;;
  }
  dimension: is_assigned {
    type: number
    sql: ${TABLE}.is_assigned ;;
  }
  dimension: serial_no {
    type: string
    sql: ${TABLE}.serial_no ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
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
	inv_items_batch.id,
	inv_items_batch.batch_name,
	inv_items_batch.brand_name,
	inv_rooms_items_list.count
	]
  }

}
