view: onboarding_document_verification_data {
  sql_table_name: spacebasic.onboarding_document_verification_data ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: application_id {
    type: number
    sql: ${TABLE}.application_id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: document_id {
    type: number
    sql: ${TABLE}.document_id ;;
  }
  dimension: document_reupload_link {
    type: string
    sql: ${TABLE}.document_reupload_link ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_verified {
    type: number
    sql: ${TABLE}.is_verified ;;
  }
  dimension: verified_by {
    type: string
    sql: ${TABLE}.verified_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
