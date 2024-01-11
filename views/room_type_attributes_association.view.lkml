view: room_type_attributes_association {
  sql_table_name: spacebasic.room_type_attributes_association ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: attribute_id {
    type: number
    sql: ${TABLE}.attribute_id ;;
  }
  dimension: room_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_type_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, room_types.id, room_types.name]
  }
}
