view: api_navigate {
  sql_table_name: spacebasic.api_navigate ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: descrption {
    type: string
    sql: ${TABLE}.descrption ;;
  }
  dimension: key_text {
    type: string
    sql: ${TABLE}.key_text ;;
  }
  dimension: key_val {
    type: string
    sql: ${TABLE}.key_val ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
