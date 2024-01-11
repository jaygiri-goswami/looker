view: onboarding_sale_items {
  sql_table_name: spacebasic.onboarding_sale_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: application_id {
    type: string
    sql: ${TABLE}.application_id ;;
  }
  dimension: college_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: college_url {
    type: string
    sql: ${TABLE}.college_url ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_room_fee {
    type: string
    sql: ${TABLE}.is_room_fee ;;
  }
  dimension: is_servcie_fee {
    type: number
    sql: ${TABLE}.is_servcie_fee ;;
  }
  dimension: sale_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.sale_item_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	sale_items.id,
	sale_items.name
	]
  }

}
