view: fee_structure_parameters {
  sql_table_name: spacebasic.fee_structure_parameters ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: academic_year {
    type: string
    sql: ${TABLE}.academic_year ;;
  }
  dimension: billing_cycle {
    type: string
    sql: ${TABLE}.billing_cycle ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collegeId ;;
  }
  dimension: column_11 {
    type: number
    sql: ${TABLE}.`Column 11` ;;
  }
  dimension: course {
    type: string
    sql: ${TABLE}.course ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: is_active {
    type: string
    sql: ${TABLE}.is_active ;;
  }
  dimension: modified_by {
    type: number
    sql: ${TABLE}.modified_by ;;
  }
  dimension: room_type {
    type: string
    sql: ${TABLE}.room_type ;;
  }
  dimension: stream {
    type: string
    sql: ${TABLE}.stream ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
