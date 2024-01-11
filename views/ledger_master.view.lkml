view: ledger_master {
  sql_table_name: spacebasic.ledger_master ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: current_balance {
    type: number
    sql: ${TABLE}.current_balance ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: opening_balance {
    type: number
    sql: ${TABLE}.opening_balance ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
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
