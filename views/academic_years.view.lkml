view: academic_years {
  sql_table_name: spacebasic.academic_years ;;
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
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.collegeId ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname, reva_student_onboarding.count]
  }
}
