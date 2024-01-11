view: whitelisted_ids {
  sql_table_name: spacebasic.whitelisted_ids ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }
  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
