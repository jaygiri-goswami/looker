view: widgets {
  sql_table_name: spacebasic.widgets ;;
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
  dimension: is_mandatory {
    type: number
    sql: ${TABLE}.is_mandatory ;;
  }
  dimension: is_visible {
    type: number
    sql: ${TABLE}.is_visible ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }
  dimension: max_length {
    type: number
    sql: ${TABLE}.max_length ;;
  }
  dimension: min_length {
    type: number
    sql: ${TABLE}.min_length ;;
  }
  dimension: placeholder {
    type: string
    sql: ${TABLE}.placeholder ;;
  }
  dimension: regex {
    type: string
    sql: ${TABLE}.regex ;;
  }
  dimension: section {
    type: string
    sql: ${TABLE}.section ;;
  }
  dimension: sequence {
    type: number
    sql: ${TABLE}.sequence ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
