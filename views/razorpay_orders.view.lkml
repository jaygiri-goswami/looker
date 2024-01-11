view: razorpay_orders {
  sql_table_name: spacebasic.razorpay_orders ;;
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
  dimension: onboarding_application_id {
    type: number
    sql: ${TABLE}.onboarding_application_id ;;
  }
  dimension: onboarding_payment_id {
    type: number
    sql: ${TABLE}.onboarding_payment_id ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
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
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	student_fee.id,
	student_fee.fee_type_name,
	ghs_onboarding_payment.count,
	ghs_onboarding_student.count,
	jgu_onboarding_student.count,
	sbc_onboarding_payment.count,
	sbc_onboarding_student.count,
	student_fee.count,
	student_fee_activity_history.count
	]
  }

}
