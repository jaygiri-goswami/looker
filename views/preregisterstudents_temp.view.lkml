view: preregisterstudents_temp {
  sql_table_name: spacebasic.preregisterstudents_temp ;;
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
  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
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
    type: string
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
	colleges.college_pathname
	]
  }

}
