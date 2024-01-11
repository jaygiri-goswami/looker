view: users {
  sql_table_name: spacebasic.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: archived {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.archived_at ;;
  }
  dimension: archived_by {
    type: number
    sql: ${TABLE}.archived_by ;;
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
  dimension: current_role {
    type: number
    sql: ${TABLE}.current_role ;;
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
  dimension: freshchat_restore_id {
    type: string
    sql: ${TABLE}.freshchat_restore_id ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: intra_role {
    type: number
    sql: ${TABLE}.intra_role ;;
  }
  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }
  dimension: is_admin {
    type: number
    sql: ${TABLE}.is_admin ;;
  }
  dimension: is_approver {
    type: number
    sql: ${TABLE}.is_approver ;;
  }
  dimension: is_archived {
    type: number
    sql: ${TABLE}.is_archived ;;
  }
  dimension: is_college_emp {
    type: number
    sql: ${TABLE}.is_college_emp ;;
  }
  dimension: is_college_terms_accept {
    type: number
    sql: ${TABLE}.is_college_terms_accept ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_email_verified {
    type: yesno
    sql: ${TABLE}.is_email_verified ;;
  }
  dimension: is_first_time_login {
    type: number
    sql: ${TABLE}.is_first_time_login ;;
  }
  dimension: is_kyc_verified {
    type: number
    sql: ${TABLE}.is_kyc_verified ;;
  }
  dimension: is_logged {
    type: number
    sql: ${TABLE}.is_logged ;;
  }
  dimension: is_operator_admin {
    type: number
    sql: ${TABLE}.is_operator_admin ;;
  }
  dimension: is_parent {
    type: number
    sql: ${TABLE}.is_parent ;;
  }
  dimension: is_phone_verified {
    type: yesno
    sql: ${TABLE}.is_phone_verified ;;
  }
  dimension: is_resident {
    type: number
    sql: ${TABLE}.is_resident ;;
  }
  dimension: is_sb {
    type: number
    sql: ${TABLE}.is_sb ;;
  }
  dimension: is_student {
    type: number
    sql: ${TABLE}.is_student ;;
  }
  dimension: is_terms_accept {
    type: number
    sql: ${TABLE}.is_terms_accept ;;
  }
  dimension: is_vendor {
    type: number
    sql: ${TABLE}.is_vendor ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: meta_id {
    type: number
    sql: ${TABLE}.meta_id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: offboarding_completed_by {
    type: number
    sql: ${TABLE}.offboarding_completed_by ;;
  }
  dimension_group: offboarding_completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.offboarding_completed_date ;;
  }
  dimension: offboarding_initiated_by_user {
    type: string
    sql: ${TABLE}.offboarding_initiated_by_user ;;
  }
  dimension_group: offboarding_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.offboarding_start_date ;;
  }
  dimension: offboarding_status {
    type: number
    sql: ${TABLE}.offboarding_status ;;
  }
  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: remember_token {
    type: string
    sql: ${TABLE}.remember_token ;;
  }
  dimension_group: sync_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.sync_timestamp ;;
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
	name,
	last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	get_employees.count,
	login_user_details.count,
	user_groups.count,
	bills.count,
	bulletin_views.count,
	chat_logs.count,
	daily_attendance_report.count,
	discipline_records.count,
	ebill_daily_person.count,
	employee_associations.count,
	employee_locations.count,
	employee_permissions.count,
	escalation_notifications.count,
	head_notifications.count,
	hostel_checkout_checkin_biomatrix.count,
	leaves.count,
	leaves_history.count,
	login_history.count,
	login_status.count,
	mess_allocation_mail.count,
	mess_booking_disabled.count,
	mess_booking_disabled_history.count,
	mess_bookings_cancelled.count,
	mess_location_allocations.count,
	mess_location_allocations_history.count,
	mess_selection_preference.count,
	mess_selection_users.count,
	mess_user_balance.count,
	mess_user_coupons.count,
	oauth_access_tokens.count,
	oauth_auth_codes.count,
	oauth_clients.count,
	oauth_jwt_token.count,
	onboarding_feedbacks.count,
	parent_students.count,
	poll_votes.count,
	push_notification.count,
	push_notification_log.count,
	push_notification_tracking.count,
	recepients.count,
	report_history.count,
	reports_generate_tracking.count,
	role_user.count,
	room_reservations.count,
	send_reports.count,
	sessions.count,
	student_approvers.count,
	student_bank_details.count,
	student_mess.count,
	student_mess_copy.count,
	student_mess_test.count,
	student_tracking.count,
	student_tracking_history.count,
	terms_acceptance.count,
	user_attendance.count,
	user_docs.count,
	users_incorrect_info.count,
	users_udf.count
	]
  }

}
