view: onboarding_bulkuplaod {
  sql_table_name: spacebasic.onboarding_bulkuplaod ;;
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
  dimension: college_url {
    type: string
    sql: ${TABLE}.college_url ;;
  }
  dimension: error_file {
    type: string
    sql: ${TABLE}.error_file ;;
  }
  dimension: has_error {
    type: number
    sql: ${TABLE}.has_error ;;
  }
  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }
  dimension: uploaded_file {
    type: string
    sql: ${TABLE}.uploaded_file ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
