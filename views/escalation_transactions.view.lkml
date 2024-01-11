view: escalation_transactions {
  sql_table_name: spacebasic.escalation_transactions ;;
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
  dimension: complaint_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.complaint_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: escalate_id {
    type: number
    sql: ${TABLE}.escalate_id ;;
  }
  dimension: escalate_order {
    type: number
    sql: ${TABLE}.escalate_order ;;
  }
  dimension: escalate_time_out {
    type: number
    sql: ${TABLE}.escalate_time_out ;;
  }
  dimension_group: escalated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.escalated_at ;;
  }
  dimension: on_hold {
    type: number
    sql: ${TABLE}.on_hold ;;
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
  dimension_group: review_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.review_end_date ;;
  }
  dimension_group: review_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.review_start_date ;;
  }
  dimension: role_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.role_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	complaints.id,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	roles.id
	]
  }

}
