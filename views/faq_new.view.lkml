view: faq_new {
  sql_table_name: spacebasic.faq_new ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: answer {
    type: string
    sql: ${TABLE}.answer ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: question {
    type: string
    sql: ${TABLE}.question ;;
  }
  dimension: sub_user_type {
    type: string
    sql: ${TABLE}.sub_user_type ;;
  }
  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
