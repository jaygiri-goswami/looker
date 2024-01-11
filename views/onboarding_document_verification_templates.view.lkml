view: onboarding_document_verification_templates {
  sql_table_name: spacebasic.onboarding_document_verification_templates ;;
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
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }
  dimension: template_url {
    type: string
    sql: ${TABLE}.template_url ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
