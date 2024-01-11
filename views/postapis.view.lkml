view: postapis {
  sql_table_name: spacebasic.postapis ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: created_at {
    type: string
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: is_report {
    type: number
    sql: ${TABLE}.is_report ;;
  }
  dimension: json_sql_map {
    type: string
    sql: ${TABLE}.json_sql_map ;;
  }
  dimension: keyval {
    type: string
    sql: ${TABLE}.keyval ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: updated_at {
    type: string
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
