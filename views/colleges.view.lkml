view: colleges {
  sql_table_name: spacebasic.colleges ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: college_pathname {
    type: string
    sql: ${TABLE}.college_pathname ;;
  }
  dimension: contact_person {
    type: string
    sql: ${TABLE}.contact_person ;;
  }
  dimension: cp_email {
    type: string
    sql: ${TABLE}.cp_email ;;
  }
  dimension: cp_phone {
    type: string
    sql: ${TABLE}.cp_phone ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
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
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: generate_attendance_count {
    type: number
    sql: ${TABLE}.generateAttendanceCount ;;
  }
  dimension: gstin {
    type: string
    sql: ${TABLE}.gstin ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: is_biometric {
    type: number
    sql: ${TABLE}.is_biometric ;;
  }
  dimension: is_dynamic_qr {
    type: number
    sql: ${TABLE}.is_dynamicQR ;;
  }
  dimension: is_email_on {
    type: number
    sql: ${TABLE}.is_email_on ;;
  }
  dimension: is_front_cam {
    type: number
    sql: ${TABLE}.is_front_cam ;;
  }
  dimension: is_hidden {
    type: number
    sql: ${TABLE}.is_hidden ;;
  }
  dimension: is_ivr {
    type: number
    sql: ${TABLE}.is_ivr ;;
  }
  dimension: is_parent_module {
    type: number
    sql: ${TABLE}.is_parent_module ;;
  }
  dimension: is_paytm {
    type: number
    sql: ${TABLE}.is_Paytm ;;
  }
  dimension: is_razorpay {
    type: number
    sql: ${TABLE}.is_Razorpay ;;
  }
  dimension: is_sms_on {
    type: number
    sql: ${TABLE}.is_sms_on ;;
  }
  dimension: is_special_menu_allowed {
    type: number
    sql: ${TABLE}.is_special_menu_allowed ;;
  }
  dimension: mess_disable_count {
    type: number
    sql: ${TABLE}.mess_disable_count ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: no_of_hostel {
    type: number
    sql: ${TABLE}.no_of_hostel ;;
  }
  dimension: no_of_students {
    type: number
    sql: ${TABLE}.no_of_students ;;
  }
  dimension: open_register_emp_block {
    type: yesno
    sql: ${TABLE}.open_register_emp_block ;;
  }
  dimension: parent_operator_id {
    type: number
    sql: ${TABLE}.parent_operator_id ;;
  }
  dimension: payment_gateway_id {
    type: string
    sql: ${TABLE}.payment_gateway_id ;;
  }
  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	college_pathname,
	bbmp_wards_master.count,
	get_employees.count,
	get_form_templates.count,
	login_user_details.count,
	room_type_price.count,
	room_vacancy_view.count,
	academic_years.count,
	approvers.count,
	asset.count,
	asset_allocation_mapping.count,
	asset_tracking.count,
	assigned_inventory_items.count,
	attendance_api_ip.count,
	attendance_biomatrix.count,
	attendance_college.count,
	attendance_college_completed_log.count,
	attendance_ip.count,
	attendance_ip_log.count,
	attendance_sessions.count,
	attendance_settings.count,
	batches.count,
	biometric_hostel_check_in_out_tracking.count,
	block_warden.count,
	blocks.count,
	bulk_upload.count,
	bulk_upload_temp_table.count,
	bulletin.count,
	bulletin_attachments.count,
	bulletin_block.count,
	bulletin_colleges.count,
	bulletin_views.count,
	category.count,
	chat_logs.count,
	college_router_list.count,
	complaints.count,
	complaints_feedback_settings.count,
	complaints_inventory.count,
	courses.count,
	custome_fee_structure.count,
	daily_attendance_report.count,
	delivery_note.count,
	delivery_note_details.count,
	disciplinary.count,
	disciplinary_comments.count,
	discipline_records.count,
	dr_attachments.count,
	employee.count,
	employee_associations.count,
	employee_locations.count,
	employee_temp.count,
	escalate_active_hours.count,
	escalate_active_hours_slab.count,
	escalate_matrix.count,
	escalate_matrix_roles_permissions.count,
	escalation_levels.count,
	escalation_matrix.count,
	escalation_transactions.count,
	fee_account_details.count,
	fee_item_types.count,
	fee_mode_type.count,
	fee_settings.count,
	fee_structure.count,
	fee_structure_parameters.count,
	fee_types.count,
	floors.count,
	floors_config.count,
	form_associations.count,
	form_options.count,
	form_questions.count,
	form_responders.count,
	form_response_answers.count,
	form_responses.count,
	form_templates.count,
	forms.count,
	ghs_onboarding_payment.count,
	hostel_check_in_out_tracking.count,
	hostel_checkout_checkin_biomatrix.count,
	hostel_checkout_checkin_ip.count,
	hostel_checkout_checkin_ip_log.count,
	hostel_checkout_checkin_settings.count,
	hostels.count,
	inv_category.count,
	inv_category_itemscategory.count,
	inv_items.count,
	inv_items_batch.count,
	inv_items_category.count,
	inv_items_list.count,
	inv_room_type_map.count,
	inv_rooms_items_list.count,
	inventory.count,
	inventory_group.count,
	inventory_items.count,
	item_master.count,
	leave_approvers.count,
	leave_interim_approvers.count,
	leave_interim_status.count,
	leave_manual_check_in_review.count,
	leave_queue.count,
	leave_settings.count,
	leave_types.count,
	leaves.count,
	leaves_history.count,
	ledger_master.count,
	ledger_transactions.count,
	locations.count,
	mainservice.count,
	mess_allocation_mail.count,
	mess_coupon_settings.count,
	mess_feedback_settings.count,
	mess_location_allocations.count,
	mess_location_allocations_history.count,
	mess_location_settings.count,
	mess_user_balance.count,
	mess_user_coupons.count,
	module_configuration_permission.count,
	module_permission_list.count,
	oauth_jwt_token.count,
	offboarding_approvers.count,
	offboarding_approvers_template.count,
	offboarding_docs.count,
	offboarding_email_recievers.count,
	offboarding_history.count,
	offboarding_invoices.count,
	offboarding_student_init_permission.count,
	onboarding_bulkuplaod.count,
	onboarding_contract_sign.count,
	onboarding_document_verification_data.count,
	onboarding_document_verification_templates.count,
	onboarding_feedback_settings.count,
	onboarding_feedbacks.count,
	onboarding_sale_items.count,
	parent_communications.count,
	partner_post_flagged.count,
	payment_refunds.count,
	payment_transactions.count,
	payment_transactions_activity_history.count,
	polls.count,
	preregisterstudents.count,
	preregisterstudents_temp.count,
	priority.count,
	property_types.count,
	purchase_order.count,
	purchase_order_details.count,
	qr_attendance.count,
	razorpay_account.count,
	razorpay_account_mapping.count,
	razorpay_orders.count,
	razorpay_payment_transaction.count,
	razorpay_payments.count,
	razorpay_routing_transaction.count,
	receipt_template.count,
	report_history.count,
	report_options.count,
	report_parameters.count,
	report_template.count,
	reports_generate_tracking.count,
	roles.count,
	room_blocking_history.count,
	room_bulk_upload_transactions.count,
	room_reservations.count,
	room_transfer_swap_requests.count,
	room_types.count,
	roomfees.count,
	rooms.count,
	sale_item_types.count,
	sbc_onboarding_payment.count,
	sections.count,
	send_reports.count,
	services.count,
	streams.count,
	student_approver_tracking.count,
	student_approvers.count,
	student_bank_details.count,
	student_checked_in_out_status.count,
	student_fee.count,
	student_fee_activity_history.count,
	student_fee_bulk_update.count,
	student_fee_temp.count,
	student_fee_udf.count,
	student_room.count,
	student_tracking.count,
	student_tracking_history.count,
	students.count,
	subcategory.count,
	temp_students_insert.count,
	terms.count,
	terms_acceptance.count,
	user_attendance.count,
	user_docs.count,
	user_fields_tenant.count,
	users.count,
	users_history.count,
	users_mess.count,
	users_udf.count,
	vendor.count
	]
  }

}
