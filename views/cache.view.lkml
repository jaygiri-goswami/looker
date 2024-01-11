view: cache {
  sql_table_name: spacebasic.cache ;;

  dimension: expiration {
    type: number
    sql: ${TABLE}.expiration ;;
  }
  dimension: key {
    type: string
    sql: ${TABLE}.`key` ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
  }
}
