view: module_permission_list {
  sql_table_name: spacebasic.module_permission_list ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: module_name {
    type: string
    sql: ${TABLE}.module_name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, module_name, colleges.id, colleges.name, colleges.college_pathname]
  }
}
