view: leave_manual_check_in_review {
  sql_table_name: spacebasic.leave_manual_check_in_review ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: action {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.action_at ;;
  }
  dimension: action_by {
    type: number
    sql: ${TABLE}.action_by ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: is_approved {
    type: number
    sql: ${TABLE}.is_approved ;;
  }
  dimension: leave_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	leaves.id,
	leaves.contact_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
