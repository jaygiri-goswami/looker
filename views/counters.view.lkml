view: counters {
  sql_table_name: spacebasic.counters ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: count_counters {
    type: number
    sql: ${TABLE}.count ;;
  }
  dimension_group: expires {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expires ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
