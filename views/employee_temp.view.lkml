view: employee_temp {
  sql_table_name: spacebasic.employee_temp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: assign_to {
    type: string
    sql: ${TABLE}.assign_to ;;
  }
  dimension: assignment {
    type: string
    sql: ${TABLE}.assignment ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: complaint_category {
    type: string
    sql: ${TABLE}.complaint_category ;;
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
  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}.error ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: is_error {
    type: number
    sql: ${TABLE}.is_error ;;
  }
  dimension: is_processed {
    type: number
    sql: ${TABLE}.is_processed ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: parentcomm_category {
    type: string
    sql: ${TABLE}.parentcomm_category ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: qr_location {
    type: string
    sql: ${TABLE}.qr_location ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
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
	first_name,
	last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
