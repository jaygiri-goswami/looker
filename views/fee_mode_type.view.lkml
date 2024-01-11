view: fee_mode_type {
  sql_table_name: spacebasic.fee_mode_type ;;
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
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: mode_type {
    type: string
    sql: ${TABLE}.mode_type ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
