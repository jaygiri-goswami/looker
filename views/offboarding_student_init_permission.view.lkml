view: offboarding_student_init_permission {
  sql_table_name: spacebasic.offboarding_student_init_permission ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: college_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: deleted_at {
    type: string
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: student_init_permission {
    type: yesno
    sql: ${TABLE}.student_init_permission ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
