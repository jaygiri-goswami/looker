view: room_price {
  sql_table_name: spacebasic.ROOM_PRICE ;;

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
  dimension: cgstpercentage {
    type: number
    sql: ${TABLE}.cgstpercentage ;;
  }
  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }
  dimension: gstpercentage {
    type: number
    sql: ${TABLE}.gstpercentage ;;
  }
  dimension: roomid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.roomid ;;
  }
  dimension: service_charge {
    type: number
    sql: ${TABLE}.service_charge ;;
  }
  dimension: sgst {
    type: number
    sql: ${TABLE}.sgst ;;
  }
  dimension: sgstpercentage {
    type: number
    sql: ${TABLE}.sgstpercentage ;;
  }
  dimension: total_amt {
    type: number
    sql: ${TABLE}.total_amt ;;
  }
  measure: count {
    type: count
    drill_fields: [rooms.id, rooms.hostel_name, rooms.block_name, rooms.floor_name, rooms.name]
  }
}
