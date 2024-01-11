view: sbc_onboarding_payment {
  sql_table_name: spacebasic.sbc_onboarding_payment ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: application_id {
    type: number
    sql: ${TABLE}.application_id ;;
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
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: locked_room_id {
    type: number
    sql: ${TABLE}.locked_room_id ;;
  }
  dimension: paid_amount {
    type: number
    sql: ${TABLE}.paid_amount ;;
  }
  dimension: paid_date {
    type: string
    sql: ${TABLE}.paid_date ;;
  }
  dimension: payment_mode {
    type: string
    sql: ${TABLE}.payment_mode ;;
  }
  dimension: payment_receipt_link {
    type: string
    sql: ${TABLE}.payment_receipt_link ;;
  }
  dimension: payment_receipt_number {
    type: string
    sql: ${TABLE}.payment_receipt_number ;;
  }
  dimension: payment_status {
    type: number
    sql: ${TABLE}.payment_status ;;
  }
  dimension: payment_type {
    type: number
    sql: ${TABLE}.payment_type ;;
  }
  dimension: pending_amount {
    type: number
    sql: ${TABLE}.pending_amount ;;
  }
  dimension: razorpay_failure_remark {
    type: string
    sql: ${TABLE}.razorpay_failure_remark ;;
  }
  dimension: razorpay_order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.razorpay_order_id ;;
  }
  dimension: razorpay_payment_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.razorpay_payment_id ;;
  }
  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
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
	razorpay_orders.id,
	razorpay_payments.id
	]
  }

}
