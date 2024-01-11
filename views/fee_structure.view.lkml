view: fee_structure {
  sql_table_name: spacebasic.fee_structure ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: academic_year {
    type: number
    sql: ${TABLE}.academic_year ;;
  }
  dimension: academic_year_name {
    type: string
    sql: ${TABLE}.academic_year_name ;;
  }
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
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: course_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.course_id ;;
  }
  dimension: course_name {
    type: string
    sql: ${TABLE}.course_name ;;
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
  dimension: deposit {
    type: number
    sql: ${TABLE}.deposit ;;
  }
  dimension: discountpercentage {
    type: number
    sql: ${TABLE}.discountpercentage ;;
  }
  dimension: gstpercentage {
    type: number
    sql: ${TABLE}.gstpercentage ;;
  }
  dimension: modified_by {
    type: number
    sql: ${TABLE}.modified_by ;;
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
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: stream_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.stream_id ;;
  }
  dimension: stream_name {
    type: string
    sql: ${TABLE}.stream_name ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	course_name,
	stream_name,
	academic_year_name,
	room_type_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	room_types.id,
	room_types.name,
	courses.id,
	courses.name,
	streams.id,
	streams.name
	]
  }

}
