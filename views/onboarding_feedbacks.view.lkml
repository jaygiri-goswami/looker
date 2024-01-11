view: onboarding_feedbacks {
  sql_table_name: spacebasic.onboarding_feedbacks ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: check_in_process_rating {
    type: number
    sql: ${TABLE}.check_in_process_rating ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: college_url {
    type: string
    sql: ${TABLE}.college_url ;;
  }
  dimension: ease_of_application_rating {
    type: number
    sql: ${TABLE}.ease_of_application_rating ;;
  }
  dimension: ease_of_communication_rating {
    type: number
    sql: ${TABLE}.ease_of_communication_rating ;;
  }
  dimension: facilities_rating {
    type: number
    sql: ${TABLE}.facilities_rating ;;
  }
  dimension: feedback {
    type: string
    sql: ${TABLE}.feedback ;;
  }
  dimension: hostel_room_rating {
    type: number
    sql: ${TABLE}.hostel_room_rating ;;
  }
  dimension: onboarding_id {
    type: number
    sql: ${TABLE}.onboarding_id ;;
  }
  dimension: orientation_rules_rating {
    type: number
    sql: ${TABLE}.orientation_rules_rating ;;
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
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	users.id,
	users.name,
	users.last_name
	]
  }

}
