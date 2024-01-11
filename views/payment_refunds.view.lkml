view: payment_refunds {
  sql_table_name: spacebasic.payment_refunds ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension: application_rejection_remark {
    type: string
    sql: ${TABLE}.application_rejection_remark ;;
  }
  dimension: application_status {
    type: string
    sql: ${TABLE}.application_status ;;
  }
  dimension: bank_remark {
    type: string
    sql: ${TABLE}.bank_remark ;;
  }
  dimension: bank_status {
    type: string
    sql: ${TABLE}.bank_status ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: invoice_id {
    type: number
    sql: ${TABLE}.invoice_id ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: raised_by_student {
    type: number
    sql: ${TABLE}.raised_by_student ;;
  }
  dimension: reason_type_id {
    type: number
    sql: ${TABLE}.reason_type_id ;;
  }
  dimension: refund_no {
    type: string
    sql: ${TABLE}.refund_no ;;
  }
  dimension: refund_reason {
    type: string
    sql: ${TABLE}.refund_reason ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
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
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
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
	students.sb_student_uid,
	students.first_name,
	students.last_name
	]
  }

}
