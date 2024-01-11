view: users_incorrect_info {
  sql_table_name: spacebasic.users_incorrect_info ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: block {
    type: number
    sql: ${TABLE}.block ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: father_name {
    type: number
    sql: ${TABLE}.father_name ;;
  }
  dimension: father_phone {
    type: number
    sql: ${TABLE}.father_phone ;;
  }
  dimension: guardian_name {
    type: number
    sql: ${TABLE}.guardian_name ;;
  }
  dimension: guardian_phone {
    type: number
    sql: ${TABLE}.guardian_phone ;;
  }
  dimension: hostel {
    type: number
    sql: ${TABLE}.hostel ;;
  }
  dimension: mother_name {
    type: number
    sql: ${TABLE}.mother_name ;;
  }
  dimension: mother_phone {
    type: number
    sql: ${TABLE}.mother_phone ;;
  }
  dimension: room {
    type: number
    sql: ${TABLE}.room ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	father_name,
	mother_name,
	guardian_name,
	users.id,
	users.name,
	users.last_name
	]
  }

}
