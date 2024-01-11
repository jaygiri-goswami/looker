view: students {
  sql_table_name: spacebasic.students ;;
  drill_fields: [sb_student_uid]

  dimension: sb_student_uid {
    primary_key: yes
    type: number
    sql: ${TABLE}.sb_student_uid ;;
  }
  dimension: aadhar_card {
    type: string
    sql: ${TABLE}.aadhar_card ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: application_no {
    type: string
    sql: ${TABLE}.application_no ;;
  }
  dimension_group: archived_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.archived_at ;;
  }
  dimension: batch {
    type: number
    sql: ${TABLE}.batch ;;
  }
  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }
  dimension: bio_id {
    type: string
    sql: ${TABLE}.bio_id ;;
  }
  dimension: blood_group {
    type: string
    sql: ${TABLE}.blood_group ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: course_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.course_id ;;
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
  dimension: current_year {
    type: string
    sql: ${TABLE}.current_year ;;
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
  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: email_id2 {
    type: string
    sql: ${TABLE}.email_id2 ;;
  }
  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }
  dimension_group: fee_due {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fee_due_date ;;
  }
  dimension_group: fee_paid_last {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.fee_paid_last ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }
  dimension: has_siblings {
    type: number
    sql: ${TABLE}.has_siblings ;;
  }
  dimension: height {
    type: string
    sql: ${TABLE}.height ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: is_archived {
    type: number
    sql: ${TABLE}.is_archived ;;
  }
  dimension: is_biometric_blocked {
    type: number
    sql: ${TABLE}.is_biometric_blocked ;;
  }
  dimension: joining_year {
    type: string
    sql: ${TABLE}.joining_year ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: mess_disable_count {
    type: number
    sql: ${TABLE}.mess_disable_count ;;
  }
  dimension: nationality {
    type: string
    sql: ${TABLE}.nationality ;;
  }
  dimension: onboarding_application_id {
    type: number
    sql: ${TABLE}.onboarding_application_id ;;
  }
  dimension: pan_card {
    type: string
    sql: ${TABLE}.pan_card ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: rfid_no {
    type: string
    sql: ${TABLE}.rfid_no ;;
  }
  dimension: sibling_id {
    type: string
    sql: ${TABLE}.sibling_id ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: stream {
    type: string
    sql: ${TABLE}.stream ;;
  }
  dimension_group: unarchived {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.unarchived_at ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: weekly_boarder {
    type: yesno
    sql: ${TABLE}.weekly_boarder ;;
  }
  dimension: weight {
    type: string
    sql: ${TABLE}.weight ;;
  }
  dimension: zero_payment_account {
    type: yesno
    sql: ${TABLE}.zero_payment_account ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	sb_student_uid,
	first_name,
	last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	courses.id,
	courses.name,
	student_room_history.count,
	attendance_biomatrix.count,
	biometric_device_blocked_users.count,
	biometric_device_transactions.count,
	biometric_hostel_check_in_out_tracking.count,
	complaint_feedbacks.count,
	complaints.count,
	custome_fee_structure.count,
	disciplinary.count,
	feeorder_document.count,
	hostel_check_in_out_tracking.count,
	hostel_checkout_checkin_biomatrix.count,
	leave_model.count,
	leave_queue.count,
	leaves.count,
	leaves_history.count,
	ledger_master.count,
	ledger_transactions.count,
	mess_bookings_cancelled.count,
	mess_feedbacks.count,
	night_attendance.count,
	offboarding_approvers.count,
	offboarding_docs.count,
	offboarding_history.count,
	offboarding_invoices.count,
	parent_communications.count,
	parent_students.count,
	parents_guardians.count,
	partner_post_subscriptions.count,
	payment_credit_debit_note.count,
	payment_getway_logs.count,
	payment_invoices.count,
	payment_receipts.count,
	payment_refunds.count,
	payment_transactions.count,
	payment_transactions_activity_history.count,
	preregisterstudents.count,
	qr_attendance.count,
	razorpay_orders.count,
	razorpay_payment_transaction.count,
	razorpay_payments.count,
	razorpay_routing_transaction.count,
	reminder_logs.count,
	reminder_room_selection_logs.count,
	room_reservations.count,
	student_checked_in_out_status.count,
	student_fee.count,
	student_fee_activity_history.count,
	student_location.count,
	student_mess.count,
	student_mess_copy.count,
	student_mess_test.count,
	student_requests.count,
	student_room.count,
	student_service.count,
	test_na.count
	]
  }

}
