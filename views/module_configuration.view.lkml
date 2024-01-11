view: module_configuration {
  sql_table_name: spacebasic.module_configuration ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: key_features {
    type: string
    sql: ${TABLE}.key_features ;;
  }
  dimension: module_name {
    type: string
    sql: ${TABLE}.module_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, module_name]
  }
}
