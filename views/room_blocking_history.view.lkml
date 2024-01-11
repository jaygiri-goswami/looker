view: room_blocking_history {
  sql_table_name: spacebasic.room_blocking_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: action {
    type: number
    sql: ${TABLE}.action ;;
  }
  dimension_group: actioned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.actioned_at ;;
  }
  dimension: actioned_by {
    type: number
    sql: ${TABLE}.actioned_by ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: remark {
    type: string
    sql: ${TABLE}.remark ;;
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
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	rooms.id,
	rooms.hostel_name,
	rooms.block_name,
	rooms.floor_name,
	rooms.name
	]
  }

}
