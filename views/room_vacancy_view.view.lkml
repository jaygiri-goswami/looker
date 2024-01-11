view: room_vacancy_view {
  sql_table_name: spacebasic.ROOM_VACANCY_VIEW ;;

  dimension: block_name {
    type: string
    sql: ${TABLE}.block_name ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: current_occupants {
    type: number
    sql: ${TABLE}.current_occupants ;;
  }
  dimension: floor_name {
    type: string
    sql: ${TABLE}.floor_name ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostel_name ;;
  }
  dimension: occupancy {
    type: number
    sql: ${TABLE}.occupancy ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.room_name ;;
  }
  dimension: vacancy {
    type: number
    sql: ${TABLE}.vacancy ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	hostel_name,
	block_name,
	floor_name,
	room_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
