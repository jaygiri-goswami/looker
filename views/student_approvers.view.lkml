view: student_approvers {
  sql_table_name: spacebasic.student_approvers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: approver_role {
    type: string
    sql: ${TABLE}.approver_role ;;
  }
  dimension: approver_role_id {
    type: string
    sql: ${TABLE}.approver_role_id ;;
  }
  dimension: approver_user_id {
    type: number
    sql: ${TABLE}.approver_user_id ;;
  }
  dimension: car_number {
    type: string
    sql: ${TABLE}.car_number ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: is_default_approver {
    type: yesno
    sql: ${TABLE}.is_default_approver ;;
  }
  dimension: is_enabled {
    type: yesno
    sql: ${TABLE}.is_enabled ;;
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
  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
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
	id,
	name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	users.id,
	users.name,
	users.last_name,
	roles.id
	]
  }

}
