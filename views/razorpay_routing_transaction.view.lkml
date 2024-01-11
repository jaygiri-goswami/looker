view: razorpay_routing_transaction {
  sql_table_name: spacebasic.razorpay_routing_transaction ;;
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
  dimension: is_processed {
    type: number
    sql: ${TABLE}.is_processed ;;
  }
  dimension: payment_id {
    type: string
    sql: ${TABLE}.payment_id ;;
  }
  dimension: routing_data {
    type: string
    sql: ${TABLE}.routing_data ;;
  }
  dimension: settlement_id {
    type: string
    sql: ${TABLE}.settlement_id ;;
  }
  dimension: settlement_status {
    type: string
    sql: ${TABLE}.settlement_status ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
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
  dimension: transaction_data {
    type: string
    sql: ${TABLE}.transaction_data ;;
  }
  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: transfer_id {
    type: string
    sql: ${TABLE}.transfer_id ;;
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
