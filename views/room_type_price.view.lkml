view: room_type_price {
  sql_table_name: spacebasic.ROOM_TYPE_PRICE ;;

  dimension: advance {
    type: number
    sql: ${TABLE}.advance ;;
  }
  dimension: basic {
    type: number
    sql: ${TABLE}.basic ;;
  }
  dimension: cgst {
    type: number
    sql: ${TABLE}.cgst ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }
  dimension: room_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_type_id ;;
  }
  dimension: room_type_name {
    type: string
    sql: ${TABLE}.room_type_name ;;
  }
  dimension: service_charge {
    type: number
    sql: ${TABLE}.service_charge ;;
  }
  dimension: sgst {
    type: number
    sql: ${TABLE}.sgst ;;
  }
  dimension: total_amt {
    type: number
    sql: ${TABLE}.total_amt ;;
  }
  dimension: total_occupant {
    type: number
    sql: ${TABLE}.total_occupant ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	room_type_name,
	room_types.id,
	room_types.name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
