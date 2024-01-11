view: student_room_history {
  sql_table_name: spacebasic.STUDENT_ROOM_HISTORY ;;

  dimension: block_name {
    type: string
    sql: ${TABLE}.blockName ;;
  }
  dimension: check_in_date {
    type: string
    sql: ${TABLE}.checkInDate ;;
  }
  dimension: check_out_date {
    type: string
    sql: ${TABLE}.checkOutDate ;;
  }
  dimension: hostel_name {
    type: string
    sql: ${TABLE}.hostelName ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.roomName ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: student_removed_by_name {
    type: string
    sql: ${TABLE}.student_removed_by_name ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	room_name,
	block_name,
	hostel_name,
	student_removed_by_name,
	students.sb_student_uid,
	students.first_name,
	students.last_name
	]
  }

}
