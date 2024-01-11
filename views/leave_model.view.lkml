view: leave_model {
  sql_table_name: spacebasic.leave_model ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: action_by {
    type: string
    sql: ${TABLE}.action_by ;;
  }
  dimension: approver_status {
    type: string
    sql: ${TABLE}.approver_status ;;
  }
  dimension: attachments {
    type: string
    sql: ${TABLE}.attachments ;;
  }
  dimension: attempt_count {
    type: string
    sql: ${TABLE}.attempt_count ;;
  }
  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }
  dimension: category_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.category_id ;;
  }
  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }
  dimension: contact_address {
    type: string
    sql: ${TABLE}.contact_address ;;
  }
  dimension: contact_name {
    type: string
    sql: ${TABLE}.contact_name ;;
  }
  dimension: contact_phone {
    type: string
    sql: ${TABLE}.contact_phone ;;
  }
  dimension: count_leave_model {
    type: string
    sql: ${TABLE}.count ;;
  }
  dimension: created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: designation {
    type: string
    sql: ${TABLE}.designation ;;
  }
  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }
  dimension: from_date {
    type: string
    sql: ${TABLE}.from_date ;;
  }
  dimension: from_time {
    type: string
    sql: ${TABLE}.from_time ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostel_name ;;
  }
  dimension: img_url {
    type: string
    sql: ${TABLE}.img_url ;;
  }
  dimension: is_auto_approved {
    type: string
    sql: ${TABLE}.is_auto_approved ;;
  }
  dimension: is_past_leave {
    type: string
    sql: ${TABLE}.is_past_leave ;;
  }
  dimension: leave_ammend_attempt_count {
    type: string
    sql: ${TABLE}.leave_ammend_attempt_count ;;
  }
  dimension: leave_approver {
    type: string
    sql: ${TABLE}.leave_approver ;;
  }
  dimension: leave_edit_permission_type {
    type: string
    sql: ${TABLE}.leave_edit_permission_type ;;
  }
  dimension: leave_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.leave_id ;;
  }
  dimension: leave_message {
    type: string
    sql: ${TABLE}.leave_message ;;
  }
  dimension: leave_type {
    type: string
    sql: ${TABLE}.leave_type ;;
  }
  dimension: leave_type_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.leave_type_id ;;
  }
  dimension: mode_of_transport {
    type: string
    sql: ${TABLE}.mode_of_transport ;;
  }
  dimension: place_of_visit {
    type: string
    sql: ${TABLE}.place_of_visit ;;
  }
  dimension: qr_text {
    type: string
    sql: ${TABLE}.qr_text ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.room_name ;;
  }
  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: status_color {
    type: string
    sql: ${TABLE}.status_color ;;
  }
  dimension: status_desc {
    type: string
    sql: ${TABLE}.status_desc ;;
  }
  dimension: student_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: student_name {
    type: string
    sql: ${TABLE}.student_name ;;
  }
  dimension: to_date {
    type: string
    sql: ${TABLE}.to_date ;;
  }
  dimension: to_time {
    type: string
    sql: ${TABLE}.to_time ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	block_name,
	category_name,
	hostel_name,
	room_name,
	student_name,
	contact_name,
	category.id,
	category.category_name,
	leaves.id,
	leaves.contact_name,
	students.sb_student_uid,
	students.first_name,
	students.last_name,
	leave_types.id,
	leave_types.name
	]
  }

}
