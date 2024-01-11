view: form_templates {
  sql_table_name: spacebasic.form_templates ;;
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
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension_group: expire {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expire_on ;;
  }
  dimension: expires_after {
    type: number
    sql: ${TABLE}.expires_after ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension_group: next_repeat {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.next_repeat ;;
  }
  dimension: no_of_responses {
    type: number
    sql: ${TABLE}.no_of_responses ;;
  }
  dimension: notify_every {
    type: number
    sql: ${TABLE}.notify_every ;;
  }
  dimension: repeat_complete {
    type: string
    sql: ${TABLE}.repeat_complete ;;
  }
  dimension: repeat_every {
    type: string
    sql: ${TABLE}.repeat_every ;;
  }
  dimension: repeat_every_count {
    type: number
    sql: ${TABLE}.repeat_every_count ;;
  }
  dimension_group: repeat_once {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.repeat_once ;;
  }
  dimension_group: repeat_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.repeat_start ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, colleges.id, colleges.name, colleges.college_pathname]
  }
}
