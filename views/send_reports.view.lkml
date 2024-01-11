view: send_reports {
  sql_table_name: spacebasic.send_reports ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: attendance {
    type: number
    sql: ${TABLE}.attendance ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: complaint {
    type: number
    sql: ${TABLE}.complaint ;;
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
  dimension: emails {
    type: string
    sql: ${TABLE}.emails ;;
  }
  dimension: leaves {
    type: number
    sql: ${TABLE}.leaves ;;
  }
  dimension: mess {
    type: number
    sql: ${TABLE}.mess ;;
  }
  dimension: roomoccupancy {
    type: number
    sql: ${TABLE}.roomoccupancy ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.userId ;;
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
	users.id,
	users.name,
	users.last_name
	]
  }

}
