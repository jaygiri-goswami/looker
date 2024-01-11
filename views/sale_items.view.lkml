view: sale_items {
  sql_table_name: spacebasic.sale_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: batch {
    type: number
    sql: ${TABLE}.batch ;;
  }
  dimension: course {
    type: number
    sql: ${TABLE}.course ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: fee_items {
    type: string
    sql: ${TABLE}.fee_items ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: is_room_fee {
    type: number
    sql: ${TABLE}.is_room_fee ;;
  }
  dimension: is_service_fee {
    type: number
    sql: ${TABLE}.is_service_fee ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: room_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_type_id ;;
  }
  dimension: sale_type_id {
    type: number
    sql: ${TABLE}.sale_type_id ;;
  }
  dimension: stream {
    type: number
    sql: ${TABLE}.stream ;;
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
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	room_types.id,
	room_types.name,
	ghs_onboarding_student.count,
	jgu_onboarding_student.count,
	onboarding_sale_items.count,
	payment_invoices.count,
	sale_item_fee_item_association.count,
	sbc_onboarding_student.count,
	untitled_table.count
	]
  }

}
