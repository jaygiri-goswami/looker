view: get_employees {
  sql_table_name: spacebasic.GET_EMPLOYEES ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: assoc_name {
    type: string
    sql: ${TABLE}.assocName ;;
  }
  dimension: associated_to {
    type: string
    sql: ${TABLE}.associated_to ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.userId ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.userName ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	user_name,
	assoc_name,
	users.id,
	users.name,
	users.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
