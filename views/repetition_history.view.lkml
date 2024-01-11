view: repetition_history {
  sql_table_name: spacebasic.repetition_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: associated_to {
    type: string
    sql: ${TABLE}.associated_to ;;
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
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date ;;
  }
  dimension: expire_on {
    type: string
    sql: ${TABLE}.expire_on ;;
  }
  dimension: expires_after {
    type: string
    sql: ${TABLE}.expires_after ;;
  }
  dimension_group: next_repeat {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.next_repeat ;;
  }
  dimension: notify_every {
    type: string
    sql: ${TABLE}.notify_every ;;
  }
  dimension: repeat_complete {
    type: number
    sql: ${TABLE}.repeat_complete ;;
  }
  dimension: repeat_every {
    type: string
    sql: ${TABLE}.repeat_every ;;
  }
  dimension: repeat_every_count {
    type: string
    sql: ${TABLE}.repeat_every_count ;;
  }
  dimension: repeat_once {
    type: string
    sql: ${TABLE}.repeat_once ;;
  }
  dimension: repeat_start {
    type: string
    sql: ${TABLE}.repeat_start ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.start_date ;;
  }
  dimension: template_id {
    type: string
    sql: ${TABLE}.template_id ;;
  }
  dimension: template_type {
    type: string
    sql: ${TABLE}.template_type ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
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
    drill_fields: [id]
  }
}
