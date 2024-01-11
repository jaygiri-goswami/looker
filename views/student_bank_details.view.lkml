view: student_bank_details {
  sql_table_name: spacebasic.student_bank_details ;;

  dimension: account_holder_name {
    type: string
    sql: ${TABLE}.account_holder_name ;;
  }
  dimension: account_number {
    type: string
    sql: ${TABLE}.account_number ;;
  }
  dimension: bank_branch {
    type: string
    sql: ${TABLE}.bank_branch ;;
  }
  dimension: billing_address {
    type: string
    sql: ${TABLE}.billing_address ;;
  }
  dimension: college_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: ifsc {
    type: string
    sql: ${TABLE}.ifsc ;;
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
	account_holder_name,
	users.id,
	users.name,
	users.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
