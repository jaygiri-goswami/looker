view: pro_rata {
  sql_table_name: spacebasic.pro_rata ;;
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
  dimension: json {
    type: string
    sql: ${TABLE}.JSON ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
