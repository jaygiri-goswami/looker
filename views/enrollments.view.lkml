view: enrollments {
  sql_table_name: spacebasic.enrollments ;;
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
  dimension: ccode {
    type: string
    sql: ${TABLE}.ccode ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
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
  dimension: f_ccode {
    type: string
    sql: ${TABLE}.f_ccode ;;
  }
  dimension: father_email {
    type: string
    sql: ${TABLE}.father_email ;;
  }
  dimension: father_name {
    type: string
    sql: ${TABLE}.father_name ;;
  }
  dimension: father_occu {
    type: string
    sql: ${TABLE}.father_occu ;;
  }
  dimension: father_phno {
    type: string
    sql: ${TABLE}.father_phno ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: g_ccode {
    type: string
    sql: ${TABLE}.g_ccode ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: guardian_email {
    type: string
    sql: ${TABLE}.guardian_email ;;
  }
  dimension: guardian_name {
    type: string
    sql: ${TABLE}.guardian_name ;;
  }
  dimension: guardian_occu {
    type: string
    sql: ${TABLE}.guardian_occu ;;
  }
  dimension: guardian_phno {
    type: string
    sql: ${TABLE}.guardian_phno ;;
  }
  dimension_group: joining_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.joining_year ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: m_ccode {
    type: string
    sql: ${TABLE}.m_ccode ;;
  }
  dimension: mother_email {
    type: string
    sql: ${TABLE}.mother_email ;;
  }
  dimension: mother_name {
    type: string
    sql: ${TABLE}.mother_name ;;
  }
  dimension: mother_occu {
    type: string
    sql: ${TABLE}.mother_occu ;;
  }
  dimension: mother_phno {
    type: string
    sql: ${TABLE}.mother_phno ;;
  }
  dimension: phno {
    type: string
    sql: ${TABLE}.phno ;;
  }
  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: room_occu {
    type: string
    sql: ${TABLE}.room_occu ;;
  }
  dimension: room_type {
    type: string
    sql: ${TABLE}.room_type ;;
  }
  dimension: stream {
    type: string
    sql: ${TABLE}.stream ;;
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
	father_name,
	mother_name,
	guardian_name
	]
  }

}
