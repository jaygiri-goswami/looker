view: get_form_templates {
  sql_table_name: spacebasic.GET_FORM_TEMPLATES ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: associated_to {
    type: string
    sql: ${TABLE}.associated_to ;;
  }
  dimension: association_id {
    type: number
    sql: ${TABLE}.association_id ;;
  }
  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: expire {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expire_on ;;
  }
  dimension: expires {
    type: string
    sql: ${TABLE}.expires ;;
  }
  dimension: expires_after {
    type: number
    sql: ${TABLE}.expires_after ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostel_name ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: repeat_every {
    type: string
    sql: ${TABLE}.repeat_every ;;
  }
  dimension: repeat_every_count {
    type: number
    sql: ${TABLE}.repeat_every_count ;;
  }
  dimension_group: repeat_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.repeat_start ;;
  }
  dimension: repeats {
    type: string
    sql: ${TABLE}.repeats ;;
  }
  dimension: role_name {
    type: string
    sql: ${TABLE}.role_name ;;
  }
  dimension: sent_to {
    type: string
    sql: ${TABLE}.sent_to ;;
  }
  dimension: student_name {
    type: string
    sql: ${TABLE}.student_name ;;
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
	hostel_name,
	student_name,
	block_name,
	role_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
