view: ebill_daily_calculator {
  sql_table_name: spacebasic.ebill_daily_calculator ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bill_cost {
    type: string
    sql: ${TABLE}.bill_cost ;;
  }
  dimension: bill_date {
    type: string
    sql: ${TABLE}.bill_date ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: is_deleted {
    type: string
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: room_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.room_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	rooms.id,
	rooms.hostel_name,
	rooms.block_name,
	rooms.floor_name,
	rooms.name
	]
  }

}
