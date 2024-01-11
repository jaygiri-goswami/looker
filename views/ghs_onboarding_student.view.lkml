view: ghs_onboarding_student {
  sql_table_name: spacebasic.ghs_onboarding_student ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: application_id {
    type: string
    sql: ${TABLE}.application_id ;;
  }
  dimension: application_status {
    type: number
    sql: ${TABLE}.application_status ;;
  }
  dimension: bank_account_number {
    type: string
    sql: ${TABLE}.bank_account_number ;;
  }
  dimension: bank_branch {
    type: string
    sql: ${TABLE}.bank_branch ;;
  }
  dimension: bank_holder_name {
    type: string
    sql: ${TABLE}.bank_holder_name ;;
  }
  dimension: bank_ifsc {
    type: string
    sql: ${TABLE}.bank_ifsc ;;
  }
  dimension: basic {
    type: number
    sql: ${TABLE}.basic ;;
  }
  dimension: batch_id {
    type: number
    sql: ${TABLE}.batch_id ;;
  }
  dimension: cgst {
    type: number
    sql: ${TABLE}.cgst ;;
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
  dimension: current_step {
    type: number
    sql: ${TABLE}.current_step ;;
  }
  dimension: current_year_id {
    type: number
    sql: ${TABLE}.current_year_id ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }
  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }
  dimension: document_link {
    type: string
    sql: ${TABLE}.document_link ;;
  }
  dimension: document_rejection_remark {
    type: string
    sql: ${TABLE}.document_rejection_remark ;;
  }
  dimension: document_verified {
    type: number
    sql: ${TABLE}.document_verified ;;
  }
  dimension: document_verified_by {
    type: number
    sql: ${TABLE}.document_verified_by ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: extras {
    type: number
    sql: ${TABLE}.extras ;;
  }
  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
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
  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }
  dimension: paid_amount {
    type: number
    sql: ${TABLE}.paid_amount ;;
  }
  dimension: parent_address {
    type: string
    sql: ${TABLE}.parent_address ;;
  }
  dimension: parent_city {
    type: string
    sql: ${TABLE}.parent_city ;;
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
  dimension: parent_pin {
    type: string
    sql: ${TABLE}.parent_pin ;;
  }
  dimension: parent_relation {
    type: string
    sql: ${TABLE}.parent_relation ;;
  }
  dimension: payment_id {
    type: number
    sql: ${TABLE}.payment_id ;;
  }
  dimension: payment_rejection_remark {
    type: string
    sql: ${TABLE}.payment_rejection_remark ;;
  }
  dimension: payment_status {
    type: number
    sql: ${TABLE}.payment_status ;;
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
  dimension: pending_amount {
    type: number
    sql: ${TABLE}.pending_amount ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: pincode {
    type: number
    sql: ${TABLE}.pincode ;;
  }
  dimension: profile_image {
    type: string
    sql: ${TABLE}.profile_image ;;
  }
  dimension: razorpay_order_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.razorpay_order_id ;;
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
  dimension: room_rejection_remark {
    type: string
    sql: ${TABLE}.room_rejection_remark ;;
  }
  dimension: sale_item_ids {
    type: string
    # hidden: yes
    sql: ${TABLE}.sale_item_ids ;;
  }
  dimension: school {
    type: string
    sql: ${TABLE}.school ;;
  }
  dimension: sgst {
    type: number
    sql: ${TABLE}.sgst ;;
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
  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
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
	bank_holder_name,
	courses.id,
	courses.name,
	streams.id,
	streams.name,
	razorpay_orders.id,
	sale_items.id,
	sale_items.name
	]
  }

}
