view: student_fee {
  sql_table_name: spacebasic.student_fee ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: advance {
    type: number
    sql: ${TABLE}.advance ;;
  }
  dimension: applied_coupon {
    type: string
    sql: ${TABLE}.appliedCoupon ;;
  }
  dimension: bank_account_key {
    type: string
    sql: ${TABLE}.bank_account_key ;;
  }
  dimension: basic {
    type: number
    sql: ${TABLE}.basic ;;
  }
  dimension: batch_no {
    type: number
    sql: ${TABLE}.batch_no ;;
  }
  dimension: cgst {
    type: number
    sql: ${TABLE}.cgst ;;
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
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }
  dimension: discount_amount {
    type: number
    sql: ${TABLE}.discountAmount ;;
  }
  dimension_group: due {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.due_date ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.end_date ;;
  }
  dimension: extras {
    type: number
    sql: ${TABLE}.extras ;;
  }
  dimension: fee_type {
    type: number
    sql: ${TABLE}.fee_type ;;
  }
  dimension: fee_type_name {
    type: string
    sql: ${TABLE}.fee_type_name ;;
  }
  dimension: hostel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hostel_id ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: late_fee {
    type: number
    sql: ${TABLE}.late_fee ;;
  }
  dimension: mode_of_payment {
    type: string
    sql: ${TABLE}.mode_of_payment ;;
  }
  dimension_group: paid {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.paid_date ;;
  }
  dimension: pending_amt {
    type: number
    sql: ${TABLE}.pending_amt ;;
  }
  dimension: period {
    type: string
    sql: ${TABLE}.period ;;
  }
  dimension: razorpay_order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.razorpay_order_id ;;
  }
  dimension: receipt_no {
    type: string
    sql: ${TABLE}.receipt_no ;;
  }
  dimension: room_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_type_id ;;
  }
  dimension: sgst {
    type: number
    sql: ${TABLE}.sgst ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_date ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: total_amt {
    type: number
    sql: ${TABLE}.total_amt ;;
  }
  dimension: totalpaid_amt {
    type: number
    sql: ${TABLE}.totalpaid_amt ;;
  }
  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: unallocate_amt {
    type: number
    sql: ${TABLE}.unallocate_amt ;;
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
	fee_type_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	hostels.id,
	hostels.name,
	room_types.id,
	room_types.name,
	razorpay_orders.id,
	feeorder_document.count,
	payment_transactions.count,
	payment_transactions_activity_history.count,
	razorpay_orders.count,
	razorpay_payment_transaction.count,
	razorpay_payments.count,
	razorpay_routing_transaction.count,
	reminder_logs.count,
	reminder_room_selection_logs.count,
	room_reservations.count
	]
  }

}
