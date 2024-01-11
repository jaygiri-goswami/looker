view: offboarding_invoices {
  sql_table_name: spacebasic.offboarding_invoices ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bill_number {
    type: string
    sql: ${TABLE}.bill_number ;;
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
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
