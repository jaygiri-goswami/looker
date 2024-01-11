view: bbmp_grievances {
  sql_table_name: spacebasic.BBMP_GRIEVANCES ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: application_no {
    type: string
    sql: ${TABLE}.applicationNo ;;
  }
  dimension: centre_address {
    type: string
    sql: ${TABLE}.centreAddress ;;
  }
  dimension: centre_name {
    type: string
    sql: ${TABLE}.centreName ;;
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
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: question_desc {
    type: string
    sql: ${TABLE}.questionDesc ;;
  }
  dimension: question_id {
    type: string
    sql: ${TABLE}.questionId ;;
  }
  dimension: reg_no {
    type: string
    sql: ${TABLE}.regNo ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenantId ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}.userEmail ;;
  }
  dimension: user_mobile {
    type: string
    sql: ${TABLE}.userMobile ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.userName ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user_name, centre_name]
  }
}
