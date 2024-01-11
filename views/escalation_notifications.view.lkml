view: escalation_notifications {
  sql_table_name: spacebasic.escalation_notifications ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: action {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.action_on ;;
  }
  dimension: action_status {
    type: number
    sql: ${TABLE}.action_status ;;
  }
  dimension: escalate_tran_id {
    type: number
    sql: ${TABLE}.escalate_tran_id ;;
  }
  dimension_group: notified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.notified_on ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, users.last_name]
  }
}
