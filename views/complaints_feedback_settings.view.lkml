view: complaints_feedback_settings {
  sql_table_name: spacebasic.complaints_feedback_settings ;;

  dimension: cleanliness_1 {
    type: string
    sql: ${TABLE}.cleanliness_1 ;;
  }
  dimension: cleanliness_2 {
    type: string
    sql: ${TABLE}.cleanliness_2 ;;
  }
  dimension: cleanliness_3 {
    type: string
    sql: ${TABLE}.cleanliness_3 ;;
  }
  dimension: cleanliness_4 {
    type: string
    sql: ${TABLE}.cleanliness_4 ;;
  }
  dimension: cleanliness_5 {
    type: string
    sql: ${TABLE}.cleanliness_5 ;;
  }
  dimension: clear_communication_1 {
    type: string
    sql: ${TABLE}.clear_communication_1 ;;
  }
  dimension: clear_communication_2 {
    type: string
    sql: ${TABLE}.clear_communication_2 ;;
  }
  dimension: clear_communication_3 {
    type: string
    sql: ${TABLE}.clear_communication_3 ;;
  }
  dimension: clear_communication_4 {
    type: string
    sql: ${TABLE}.clear_communication_4 ;;
  }
  dimension: clear_communication_5 {
    type: string
    sql: ${TABLE}.clear_communication_5 ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: equipment_quality_1 {
    type: string
    sql: ${TABLE}.equipment_quality_1 ;;
  }
  dimension: equipment_quality_2 {
    type: string
    sql: ${TABLE}.equipment_quality_2 ;;
  }
  dimension: equipment_quality_3 {
    type: string
    sql: ${TABLE}.equipment_quality_3 ;;
  }
  dimension: equipment_quality_4 {
    type: string
    sql: ${TABLE}.equipment_quality_4 ;;
  }
  dimension: equipment_quality_5 {
    type: string
    sql: ${TABLE}.equipment_quality_5 ;;
  }
  dimension: is_cleanliness {
    type: yesno
    sql: ${TABLE}.is_cleanliness ;;
  }
  dimension: is_clear_communication {
    type: yesno
    sql: ${TABLE}.is_clear_communication ;;
  }
  dimension: is_equipment_quality {
    type: yesno
    sql: ${TABLE}.is_equipment_quality ;;
  }
  dimension: is_in_use {
    type: yesno
    sql: ${TABLE}.is_in_use ;;
  }
  dimension: is_reliable {
    type: yesno
    sql: ${TABLE}.is_reliable ;;
  }
  dimension: is_resolution {
    type: yesno
    sql: ${TABLE}.is_resolution ;;
  }
  dimension: is_responsive {
    type: yesno
    sql: ${TABLE}.is_responsive ;;
  }
  dimension: is_safety_compliance {
    type: yesno
    sql: ${TABLE}.is_safety_compliance ;;
  }
  dimension: reliability_1 {
    type: string
    sql: ${TABLE}.reliability_1 ;;
  }
  dimension: reliability_2 {
    type: string
    sql: ${TABLE}.reliability_2 ;;
  }
  dimension: reliability_3 {
    type: string
    sql: ${TABLE}.reliability_3 ;;
  }
  dimension: reliability_4 {
    type: string
    sql: ${TABLE}.reliability_4 ;;
  }
  dimension: reliability_5 {
    type: string
    sql: ${TABLE}.reliability_5 ;;
  }
  dimension: resolution_1 {
    type: string
    sql: ${TABLE}.resolution_1 ;;
  }
  dimension: resolution_2 {
    type: string
    sql: ${TABLE}.resolution_2 ;;
  }
  dimension: resolution_3 {
    type: string
    sql: ${TABLE}.resolution_3 ;;
  }
  dimension: resolution_4 {
    type: string
    sql: ${TABLE}.resolution_4 ;;
  }
  dimension: resolution_5 {
    type: string
    sql: ${TABLE}.resolution_5 ;;
  }
  dimension: responsive_1 {
    type: string
    sql: ${TABLE}.responsive_1 ;;
  }
  dimension: responsive_2 {
    type: string
    sql: ${TABLE}.responsive_2 ;;
  }
  dimension: responsive_3 {
    type: string
    sql: ${TABLE}.responsive_3 ;;
  }
  dimension: responsive_4 {
    type: string
    sql: ${TABLE}.responsive_4 ;;
  }
  dimension: responsive_5 {
    type: string
    sql: ${TABLE}.responsive_5 ;;
  }
  dimension: safety_compliance_1 {
    type: string
    sql: ${TABLE}.safety_compliance_1 ;;
  }
  dimension: safety_compliance_2 {
    type: string
    sql: ${TABLE}.safety_compliance_2 ;;
  }
  dimension: safety_compliance_3 {
    type: string
    sql: ${TABLE}.safety_compliance_3 ;;
  }
  dimension: safety_compliance_4 {
    type: string
    sql: ${TABLE}.safety_compliance_4 ;;
  }
  dimension: safety_compliance_5 {
    type: string
    sql: ${TABLE}.safety_compliance_5 ;;
  }
  measure: count {
    type: count
    drill_fields: [colleges.id, colleges.name, colleges.college_pathname]
  }
}
