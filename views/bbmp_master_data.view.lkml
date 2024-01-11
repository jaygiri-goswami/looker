view: bbmp_master_data {
  sql_table_name: spacebasic.bbmp_master_data ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bbmpemail {
    type: string
    sql: ${TABLE}.bbmpemail ;;
  }
  dimension: bbmpphone {
    type: string
    sql: ${TABLE}.bbmpphone ;;
  }
  dimension: content1 {
    type: string
    sql: ${TABLE}.content1 ;;
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
  dimension: email_pwd {
    type: string
    sql: ${TABLE}.email_pwd ;;
  }
  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }
  dimension: from_email {
    type: string
    sql: ${TABLE}.from_email ;;
  }
  dimension: pdf_content {
    type: string
    sql: ${TABLE}.pdf_content ;;
  }
  dimension: sender {
    type: string
    sql: ${TABLE}.sender ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
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
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, filename]
  }
}
