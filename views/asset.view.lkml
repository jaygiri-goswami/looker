view: asset {
  sql_table_name: spacebasic.asset ;;
  drill_fields: [asset_id]

  dimension: asset_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.asset_id ;;
  }
  dimension: asset_association {
    type: string
    sql: ${TABLE}.asset_association ;;
  }
  dimension: asset_location_id {
    type: string
    sql: ${TABLE}.asset_location_id ;;
  }
  dimension: asset_model {
    type: string
    sql: ${TABLE}.asset_model ;;
  }
  dimension: asset_owner {
    type: string
    sql: ${TABLE}.asset_owner ;;
  }
  dimension: asset_serial_number {
    type: string
    sql: ${TABLE}.asset_serial_number ;;
  }
  dimension: asset_status {
    type: string
    sql: ${TABLE}.asset_status ;;
  }
  dimension: category_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.category_id ;;
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
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }
  dimension: item_master_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.item_master_id ;;
  }
  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.sub_category_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	asset_id,
	category.id,
	category.category_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	item_master.id,
	item_master.item_name,
	asset_allocation_mapping.count,
	asset_tracking.count,
	complaints.count
	]
  }

}
