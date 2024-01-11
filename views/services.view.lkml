view: services {
  sql_table_name: spacebasic.services ;;
  drill_fields: [service_id]

  dimension: service_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.service_id ;;
  }
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: discount_per {
    type: number
    sql: ${TABLE}.discountPer ;;
  }
  dimension: duration {
    type: string
    sql: ${TABLE}.duration ;;
  }
  dimension: gst_per {
    type: string
    sql: ${TABLE}.gstPer ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: is_discount {
    type: string
    sql: ${TABLE}.isDiscount ;;
  }
  dimension: is_gst {
    type: string
    sql: ${TABLE}.isGST ;;
  }
  dimension: is_refundable {
    type: string
    sql: ${TABLE}.isRefundable ;;
  }
  dimension: seen_by {
    type: string
    sql: ${TABLE}.seenBy ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: type {
    type: number
    sql: ${TABLE}.type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	service_id,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	fee_items.count,
	maintenance_service_associations.count,
	student_service.count
	]
  }

}
