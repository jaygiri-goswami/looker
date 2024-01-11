view: jobs {
  sql_table_name: spacebasic.jobs ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: attempts {
    type: yesno
    sql: ${TABLE}.attempts ;;
  }
  dimension: available_at {
    type: number
    sql: ${TABLE}.available_at ;;
  }
  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }
  dimension: payload {
    type: string
    sql: ${TABLE}.payload ;;
  }
  dimension: queue {
    type: string
    sql: ${TABLE}.queue ;;
  }
  dimension: reserved_at {
    type: number
    sql: ${TABLE}.reserved_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
