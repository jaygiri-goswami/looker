view: cron_tracker {
  sql_table_name: spacebasic.cron_tracker ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cron_id {
    type: number
    sql: ${TABLE}.cron_id ;;
  }
  dimension: cron_name {
    type: string
    sql: ${TABLE}.cron_name ;;
  }
  dimension: is_active {
    type: string
    sql: ${TABLE}.is_active ;;
  }
  dimension_group: last_run {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_run ;;
  }
  measure: count {
    type: count
    drill_fields: [id, cron_name]
  }
}
