view: compliant_escalate {
  sql_table_name: spacebasic.compliant_escalate ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: action_taken {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.action_taken_at ;;
  }
  dimension_group: avl_from {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.avl_from_time ;;
  }
  dimension_group: avl_to {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.avl_to_time ;;
  }
  dimension: complaint_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.complaint_id ;;
  }
  dimension: current_status {
    type: number
    sql: ${TABLE}.current_status ;;
  }
  dimension: escalate_step {
    type: number
    sql: ${TABLE}.escalate_step ;;
  }
  dimension_group: escalated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.escalated_time ;;
  }
  dimension: on_hold {
    type: number
    sql: ${TABLE}.on_hold ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension_group: resolution {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.resolution_time ;;
  }
  dimension_group: resolved {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.resolved_at ;;
  }
  dimension: resolved_by {
    type: number
    sql: ${TABLE}.resolved_by ;;
  }
  dimension: response_time {
    type: number
    sql: ${TABLE}.response_time ;;
  }
  measure: count {
    type: count
    drill_fields: [id, complaints.id]
  }
}
