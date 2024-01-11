view: batches {
  sql_table_name: spacebasic.batches ;;
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
    sql: ${TABLE}.college_id ;;
  }
  dimension: current_year {
    type: number
    sql: ${TABLE}.current_year ;;
  }
  dimension: is_active {
    type: string
    sql: ${TABLE}.is_active ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
