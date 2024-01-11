view: roles {
  sql_table_name: spacebasic.roles ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: is_college_admin {
    type: number
    sql: ${TABLE}.is_college_admin ;;
  }
  dimension: is_college_warden {
    type: number
    sql: ${TABLE}.is_college_warden ;;
  }
  dimension: is_email_complaints {
    type: number
    sql: ${TABLE}.is_email_complaints ;;
  }
  dimension: open_register_emp_block {
    type: yesno
    sql: ${TABLE}.open_register_emp_block ;;
  }
  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
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
	login_user_details.count,
	approvers.count,
	escalate_matrix_roles_permissions.count,
	escalation_matrix.count,
	escalation_transactions.count,
	form_responders.count,
	leave_approvers.count,
	offboarding_approvers.count,
	offboarding_approvers_template.count,
	permission_reports.count,
	permission_role.count,
	recepients.count,
	role_user.count,
	student_approvers.count
	]
  }

}
