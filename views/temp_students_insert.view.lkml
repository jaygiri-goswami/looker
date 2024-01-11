view: temp_students_insert {
  sql_table_name: spacebasic.temp_students_insert ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bio_id {
    type: string
    sql: ${TABLE}.bio_id ;;
  }
  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }
  dimension: blood_group {
    type: string
    sql: ${TABLE}.blood_group ;;
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
  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
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
  dimension: current_year {
    type: string
    sql: ${TABLE}.current_year ;;
  }
  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: employee_reg {
    type: string
    sql: ${TABLE}.employee_reg ;;
  }
  dimension: error_details {
    type: string
    sql: ${TABLE}.error_details ;;
  }
  dimension: father_country_code {
    type: string
    sql: ${TABLE}.father_country_code ;;
  }
  dimension: father_email {
    type: string
    sql: ${TABLE}.father_email ;;
  }
  dimension: father_name {
    type: string
    sql: ${TABLE}.father_name ;;
  }
  dimension: father_occupation {
    type: string
    sql: ${TABLE}.father_occupation ;;
  }
  dimension: father_phone {
    type: string
    sql: ${TABLE}.father_phone ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: floor_no {
    type: string
    sql: ${TABLE}.floor_no ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }
  dimension: guardian_address {
    type: string
    sql: ${TABLE}.guardian_address ;;
  }
  dimension: guardian_city {
    type: string
    sql: ${TABLE}.guardian_city ;;
  }
  dimension: guardian_country_code {
    type: string
    sql: ${TABLE}.guardian_country_code ;;
  }
  dimension: guardian_email {
    type: string
    sql: ${TABLE}.guardian_email ;;
  }
  dimension: guardian_name {
    type: string
    sql: ${TABLE}.guardian_name ;;
  }
  dimension: guardian_occupation {
    type: string
    sql: ${TABLE}.guardian_occupation ;;
  }
  dimension: guardian_phone {
    type: string
    sql: ${TABLE}.guardian_phone ;;
  }
  dimension: guardian_pincode {
    type: string
    sql: ${TABLE}.guardian_pincode ;;
  }
  dimension: guardian_state {
    type: string
    sql: ${TABLE}.guardian_state ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostel_name ;;
  }
  dimension: is_error {
    type: number
    sql: ${TABLE}.is_error ;;
  }
  dimension: is_processed {
    type: number
    sql: ${TABLE}.is_processed ;;
  }
  dimension: joining_year {
    type: string
    sql: ${TABLE}.joining_year ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: mother_country_code {
    type: string
    sql: ${TABLE}.mother_country_code ;;
  }
  dimension: mother_email {
    type: string
    sql: ${TABLE}.mother_email ;;
  }
  dimension: mother_name {
    type: string
    sql: ${TABLE}.mother_name ;;
  }
  dimension: mother_occupation {
    type: string
    sql: ${TABLE}.mother_occupation ;;
  }
  dimension: mother_phone {
    type: string
    sql: ${TABLE}.mother_phone ;;
  }
  dimension: parent_address {
    type: string
    sql: ${TABLE}.parent_address ;;
  }
  dimension: parent_state {
    type: string
    sql: ${TABLE}.parent_state ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: pin_code {
    type: string
    sql: ${TABLE}.pin_code ;;
  }
  dimension: ref_id {
    type: string
    sql: ${TABLE}.ref_id ;;
  }
  dimension: register_no {
    type: string
    sql: ${TABLE}.register_no ;;
  }
  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_id ;;
  }
  dimension: room_no {
    type: string
    sql: ${TABLE}.room_no ;;
  }
  dimension: row_no {
    type: number
    sql: ${TABLE}.row_no ;;
  }
  dimension: stream {
    type: string
    sql: ${TABLE}.stream ;;
  }
  dimension: trn_id {
    type: string
    sql: ${TABLE}.trn_id ;;
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
	guardian_name,
	hostel_name,
	block_name,
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
