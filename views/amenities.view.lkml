view: amenities {
  sql_table_name: spacebasic.amenities ;;
  drill_fields: [amenity_id]

  dimension: amenity_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.amenity_id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: amenity_name {
    type: string
    sql: ${TABLE}.amenity_name ;;
  }
  dimension: amenity_subtype {
    type: string
    sql: ${TABLE}.amenity_subtype ;;
  }
  dimension: amenity_type {
    type: string
    sql: ${TABLE}.amenity_type ;;
  }
  dimension_group: closes {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.closes_at ;;
  }
  dimension: contact_number {
    type: string
    sql: ${TABLE}.contact_number ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension_group: opens {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.opens_at ;;
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
  measure: count {
    type: count
    drill_fields: [amenity_id, amenity_name]
  }
}
