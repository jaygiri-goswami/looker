view: student_mess {
  sql_table_name: spacebasic.student_mess ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: association {
    type: string
    sql: ${TABLE}.association ;;
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
  dimension: instant_booking {
    type: number
    sql: ${TABLE}.instant_booking ;;
  }
  dimension: is_guest {
    type: yesno
    sql: ${TABLE}.is_guest ;;
  }
  dimension: is_special_opted {
    type: number
    sql: ${TABLE}.is_special_opted ;;
  }
  dimension: meal_id {
    type: number
    sql: ${TABLE}.meal_id ;;
  }
  dimension: no_of_guests {
    type: number
    sql: ${TABLE}.no_of_guests ;;
  }
  dimension: qr_code {
    type: string
    sql: ${TABLE}.qr_code ;;
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
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
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
	users.id,
	users.name,
	users.last_name,
	students.sb_student_uid,
	students.first_name,
	students.last_name
	]
  }

}
