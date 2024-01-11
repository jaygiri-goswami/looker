view: login_user_details {
  sql_table_name: spacebasic.LOGIN_USER_DETAILS ;;

  dimension: block_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.block_id ;;
  }
  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: current_role {
    type: number
    sql: ${TABLE}.current_role ;;
  }
  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: grade {
    type: string
    sql: ${TABLE}.grade ;;
  }
  dimension: hostel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hostel_id ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostel_name ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: intra_role {
    type: number
    sql: ${TABLE}.intra_role ;;
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
  dimension: is_email_verified {
    type: yesno
    sql: ${TABLE}.is_email_verified ;;
  }
  dimension: is_first_time_login {
    type: number
    sql: ${TABLE}.is_first_time_login ;;
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
  dimension: job_title {
    type: string
    sql: ${TABLE}.job_title ;;
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
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.product_id ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.reg_no ;;
  }
  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }
  dimension: room_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_id ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.room_name ;;
  }
  dimension: tenant_image {
    type: string
    sql: ${TABLE}.tenant_image ;;
  }
  dimension: tenant_name {
    type: string
    sql: ${TABLE}.tenant_name ;;
  }
  dimension: term_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.term_id ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	name,
	last_name,
	tenant_name,
	room_name,
	block_name,
	first_name,
	hostel_name,
	users.id,
	users.name,
	users.last_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	roles.id,
	rooms.id,
	rooms.hostel_name,
	rooms.block_name,
	rooms.floor_name,
	rooms.name,
	terms.id,
	blocks.id,
	blocks.name,
	hostels.id,
	hostels.name
	]
  }

}
