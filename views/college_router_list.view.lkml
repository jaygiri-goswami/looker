view: college_router_list {
  sql_table_name: spacebasic.college_router_list ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collegeId ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: router_name {
    type: string
    sql: ${TABLE}.routerName ;;
  }
  dimension: static_port {
    type: string
    sql: ${TABLE}.staticPort ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, router_name, colleges.id, colleges.name, colleges.college_pathname]
  }
}
