view: users_history {
  sql_table_name: spacebasic.users_history ;;
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
	colleges.college_pathname
	]
  }

}
