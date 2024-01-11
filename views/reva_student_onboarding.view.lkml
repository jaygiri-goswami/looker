view: reva_student_onboarding {
  sql_table_name: spacebasic.reva_student_onboarding ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: academic_year_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.academic_year_id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: application_status {
    type: number
    sql: ${TABLE}.application_status ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: contract_signed {
    type: number
    sql: ${TABLE}.contract_signed ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: current_year_id {
    type: number
    sql: ${TABLE}.current_year_id ;;
  }
  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: kyc_document_back_link {
    type: string
    sql: ${TABLE}.kyc_document_back_link ;;
  }
  dimension: kyc_document_front_link {
    type: string
    sql: ${TABLE}.kyc_document_front_link ;;
  }
  dimension: kyc_verified {
    type: number
    sql: ${TABLE}.kyc_verified ;;
  }
  dimension: kyc_verified_by {
    type: number
    sql: ${TABLE}.kyc_verified_by ;;
  }
  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }
  dimension: last_updated_by {
    type: string
    sql: ${TABLE}.last_updated_by ;;
  }
  dimension: locked_room_id {
    type: number
    sql: ${TABLE}.locked_room_id ;;
  }
  dimension: parent_email {
    type: string
    sql: ${TABLE}.parent_email ;;
  }
  dimension: parent_name {
    type: string
    sql: ${TABLE}.parent_name ;;
  }
  dimension: parent_phone {
    type: string
    sql: ${TABLE}.parent_phone ;;
  }
  dimension: parent_relation {
    type: string
    sql: ${TABLE}.parent_relation ;;
  }
  dimension: payment_id {
    type: string
    sql: ${TABLE}.payment_id ;;
  }
  dimension: payment_receipt_link {
    type: string
    sql: ${TABLE}.payment_receipt_link ;;
  }
  dimension: payment_type {
    type: number
    sql: ${TABLE}.payment_type ;;
  }
  dimension: payment_verified {
    type: number
    sql: ${TABLE}.payment_verified ;;
  }
  dimension: payment_verified_by {
    type: number
    sql: ${TABLE}.payment_verified_by ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: pincode {
    type: number
    sql: ${TABLE}.pincode ;;
  }
  dimension: registration_number {
    type: string
    sql: ${TABLE}.registration_number ;;
  }
  dimension: room_allotment_status {
    type: number
    sql: ${TABLE}.room_allotment_status ;;
  }
  dimension_group: room_locked {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.room_locked_at ;;
  }
  dimension: room_locked_by {
    type: number
    sql: ${TABLE}.room_locked_by ;;
  }
  dimension: room_preference1 {
    type: number
    sql: ${TABLE}.room_preference1 ;;
  }
  dimension: room_preference2 {
    type: number
    sql: ${TABLE}.room_preference2 ;;
  }
  dimension: room_preference3 {
    type: number
    sql: ${TABLE}.room_preference3 ;;
  }
  dimension: stream_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.stream_id ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: welcome_kit_sent {
    type: number
    sql: ${TABLE}.welcome_kit_sent ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	first_name,
	last_name,
	parent_name,
	courses.id,
	courses.name,
	streams.id,
	streams.name,
	academic_years.id
	]
  }

}
