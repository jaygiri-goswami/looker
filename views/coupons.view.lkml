view: coupons {
  sql_table_name: spacebasic.coupons ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }
  dimension: couponcode {
    type: string
    sql: ${TABLE}.couponcode ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: enddate {
    type: string
    sql: ${TABLE}.enddate ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: isvalid {
    type: string
    sql: ${TABLE}.isvalid ;;
  }
  dimension: product_id {
    type: string
    sql: ${TABLE}.productId ;;
  }
  dimension: startdate {
    type: string
    sql: ${TABLE}.startdate ;;
  }
  dimension: tenant_id {
    type: string
    sql: ${TABLE}.tenantId ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  dimension: usage_count {
    type: number
    sql: ${TABLE}.usageCount ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
