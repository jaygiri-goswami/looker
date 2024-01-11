view: offboarding_approvers_template {
  sql_table_name: spacebasic.offboarding_approvers_template ;;
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
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_on ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_on ;;
  }
  dimension: edited_by {
    type: number
    sql: ${TABLE}.edited_by ;;
  }
  dimension: email {
    type: number
    sql: ${TABLE}.email ;;
  }
  dimension: mandatory_approval {
    type: number
    sql: ${TABLE}.mandatory_approval ;;
  }
  dimension: notification {
    type: number
    sql: ${TABLE}.notification ;;
  }
  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }
  dimension: sms {
    type: number
    sql: ${TABLE}.sms ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname, roles.id]
  }
}
