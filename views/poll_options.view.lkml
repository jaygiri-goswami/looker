view: poll_options {
  sql_table_name: spacebasic.poll_options ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: count_poll_options {
    type: number
    sql: ${TABLE}.count ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: option_value {
    type: string
    sql: ${TABLE}.option_value ;;
  }
  dimension: poll_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.poll_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, polls.id, poll_votes.count]
  }
}
