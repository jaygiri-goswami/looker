view: bbmp_grievance_options {
  sql_table_name: spacebasic.BBMP_GRIEVANCE_OPTIONS ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: grievance_id {
    type: number
    sql: ${TABLE}.grievanceId ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: option_desc {
    type: string
    sql: ${TABLE}.optionDesc ;;
  }
  dimension: option_id {
    type: number
    sql: ${TABLE}.optionId ;;
  }
  dimension: question_id {
    type: number
    sql: ${TABLE}.questionId ;;
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
  measure: count {
    type: count
    drill_fields: [id]
  }
}
