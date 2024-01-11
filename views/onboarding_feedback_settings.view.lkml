view: onboarding_feedback_settings {
  sql_table_name: spacebasic.onboarding_feedback_settings ;;

  dimension: check_in_process_1 {
    type: string
    sql: ${TABLE}.check_in_process_1 ;;
  }
  dimension: check_in_process_2 {
    type: string
    sql: ${TABLE}.check_in_process_2 ;;
  }
  dimension: check_in_process_3 {
    type: string
    sql: ${TABLE}.check_in_process_3 ;;
  }
  dimension: check_in_process_4 {
    type: string
    sql: ${TABLE}.check_in_process_4 ;;
  }
  dimension: check_in_process_5 {
    type: string
    sql: ${TABLE}.check_in_process_5 ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: ease_of_application_1 {
    type: string
    sql: ${TABLE}.ease_of_application_1 ;;
  }
  dimension: ease_of_application_2 {
    type: string
    sql: ${TABLE}.ease_of_application_2 ;;
  }
  dimension: ease_of_application_3 {
    type: string
    sql: ${TABLE}.ease_of_application_3 ;;
  }
  dimension: ease_of_application_4 {
    type: string
    sql: ${TABLE}.ease_of_application_4 ;;
  }
  dimension: ease_of_application_5 {
    type: string
    sql: ${TABLE}.ease_of_application_5 ;;
  }
  dimension: ease_of_communication_1 {
    type: string
    sql: ${TABLE}.ease_of_communication_1 ;;
  }
  dimension: ease_of_communication_2 {
    type: string
    sql: ${TABLE}.ease_of_communication_2 ;;
  }
  dimension: ease_of_communication_3 {
    type: string
    sql: ${TABLE}.ease_of_communication_3 ;;
  }
  dimension: ease_of_communication_4 {
    type: string
    sql: ${TABLE}.ease_of_communication_4 ;;
  }
  dimension: ease_of_communication_5 {
    type: string
    sql: ${TABLE}.ease_of_communication_5 ;;
  }
  dimension: facility_1 {
    type: string
    sql: ${TABLE}.facility_1 ;;
  }
  dimension: facility_2 {
    type: string
    sql: ${TABLE}.facility_2 ;;
  }
  dimension: facility_3 {
    type: string
    sql: ${TABLE}.facility_3 ;;
  }
  dimension: facility_4 {
    type: string
    sql: ${TABLE}.facility_4 ;;
  }
  dimension: facility_5 {
    type: string
    sql: ${TABLE}.facility_5 ;;
  }
  dimension: hostel_room_1 {
    type: string
    sql: ${TABLE}.hostel_room_1 ;;
  }
  dimension: hostel_room_2 {
    type: string
    sql: ${TABLE}.hostel_room_2 ;;
  }
  dimension: hostel_room_3 {
    type: string
    sql: ${TABLE}.hostel_room_3 ;;
  }
  dimension: hostel_room_4 {
    type: string
    sql: ${TABLE}.hostel_room_4 ;;
  }
  dimension: hostel_room_5 {
    type: string
    sql: ${TABLE}.hostel_room_5 ;;
  }
  dimension: is_check_in_process {
    type: number
    sql: ${TABLE}.is_check_in_process ;;
  }
  dimension: is_ease_of_application {
    type: number
    sql: ${TABLE}.is_ease_of_application ;;
  }
  dimension: is_ease_of_communication {
    type: number
    sql: ${TABLE}.is_ease_of_communication ;;
  }
  dimension: is_facility {
    type: number
    sql: ${TABLE}.is_facility ;;
  }
  dimension: is_hostel_room {
    type: number
    sql: ${TABLE}.is_hostel_room ;;
  }
  dimension: is_in_use {
    type: number
    sql: ${TABLE}.is_in_use ;;
  }
  dimension: is_orientation_rules {
    type: number
    sql: ${TABLE}.is_orientation_rules ;;
  }
  dimension: orientation_rules_1 {
    type: string
    sql: ${TABLE}.orientation_rules_1 ;;
  }
  dimension: orientation_rules_2 {
    type: string
    sql: ${TABLE}.orientation_rules_2 ;;
  }
  dimension: orientation_rules_3 {
    type: string
    sql: ${TABLE}.orientation_rules_3 ;;
  }
  dimension: orientation_rules_4 {
    type: string
    sql: ${TABLE}.orientation_rules_4 ;;
  }
  dimension: orientation_rules_5 {
    type: string
    sql: ${TABLE}.orientation_rules_5 ;;
  }
  measure: count {
    type: count
    drill_fields: [colleges.id, colleges.name, colleges.college_pathname]
  }
}
