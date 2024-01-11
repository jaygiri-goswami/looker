view: preregisterstudents {
  sql_table_name: spacebasic.preregisterstudents ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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
  dimension_group: dob {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: fail {
    type: string
    sql: ${TABLE}.fail ;;
  }
  dimension: father_email {
    type: string
    sql: ${TABLE}.father_email ;;
  }
  dimension: father_name {
    type: string
    sql: ${TABLE}.father_name ;;
  }
  dimension: father_no {
    type: string
    sql: ${TABLE}.father_no ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: is_registered {
    type: yesno
    sql: ${TABLE}.is_registered ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: mother_email {
    type: string
    sql: ${TABLE}.mother_email ;;
  }
  dimension: mother_name {
    type: string
    sql: ${TABLE}.mother_name ;;
  }
  dimension: mother_no {
    type: string
    sql: ${TABLE}.mother_no ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: pincode {
    type: number
    sql: ${TABLE}.pincode ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: tab_record {
    type: string
    sql: ${TABLE}.tab_record ;;
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
	mother_name,
	father_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	students.sb_student_uid,
	students.first_name,
	students.last_name
	]
  }

}
