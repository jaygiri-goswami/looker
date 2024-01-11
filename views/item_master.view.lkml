view: item_master {
  sql_table_name: spacebasic.item_master ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cat_id {
    type: number
    sql: ${TABLE}.cat_id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }
  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }
  dimension: stock {
    type: number
    sql: ${TABLE}.stock ;;
  }
  dimension: sub_cat_id {
    type: number
    sql: ${TABLE}.sub_cat_id ;;
  }
  dimension: uom {
    type: string
    sql: ${TABLE}.uom ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	item_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	asset.count
	]
  }

}
