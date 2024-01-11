view: feeorder_document {
  sql_table_name: spacebasic.feeorder_document ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: document_name {
    type: string
    sql: ${TABLE}.document_name ;;
  }
  dimension: document_number {
    type: string
    sql: ${TABLE}.document_number ;;
  }
  dimension: document_type {
    type: string
    sql: ${TABLE}.document_type ;;
  }
  dimension: student_fee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_fee_id ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
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
	document_name,
	student_fee.id,
	student_fee.fee_type_name,
	students.sb_student_uid,
	students.first_name,
	students.last_name
	]
  }

}
