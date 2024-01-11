view: payment_transactions_activity_history {
  sql_table_name: spacebasic.payment_transactions_activity_history ;;
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
  dimension: bank_branch {
    type: string
    sql: ${TABLE}.bank_branch ;;
  }
  dimension: cheque_clearance_date {
    type: string
    sql: ${TABLE}.cheque_clearance_date ;;
  }
  dimension: cheque_dd_no {
    type: string
    sql: ${TABLE}.cheque_dd_no ;;
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
  dimension: created_by_name {
    type: string
    sql: ${TABLE}.created_by_name ;;
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
  dimension: deleted_by_name {
    type: string
    sql: ${TABLE}.deleted_by_name ;;
  }
  dimension: drawn_on_bank_name {
    type: string
    sql: ${TABLE}.drawn_on_bank_name ;;
  }
  dimension: fee_type {
    type: number
    sql: ${TABLE}.fee_type ;;
  }
  dimension: fee_type_name {
    type: string
    sql: ${TABLE}.fee_type_name ;;
  }
  dimension: is_online {
    type: number
    sql: ${TABLE}.is_online ;;
  }
  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }
  dimension: mode_of_payment {
    type: string
    sql: ${TABLE}.mode_of_payment ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension_group: paid {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.paid_date ;;
  }
  dimension: payment_id {
    type: string
    sql: ${TABLE}.payment_id ;;
  }
  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }
  dimension: phone_no {
    type: string
    sql: ${TABLE}.phone_no ;;
  }
  dimension: ptr_id {
    type: number
    sql: ${TABLE}.ptr_id ;;
  }
  dimension: receipt_no {
    type: string
    sql: ${TABLE}.receipt_no ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: status_code {
    type: string
    sql: ${TABLE}.status_code ;;
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
  dimension: transaction_number {
    type: string
    sql: ${TABLE}.transaction_number ;;
  }
  dimension: trn_ref_no {
    type: string
    sql: ${TABLE}.trn_ref_no ;;
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
  dimension: updated_by_name {
    type: string
    sql: ${TABLE}.updated_by_name ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	fee_type_name,
	drawn_on_bank_name,
	created_by_name,
	updated_by_name,
	deleted_by_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	student_fee.id,
	student_fee.fee_type_name
	]
  }

}
