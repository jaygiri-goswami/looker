view: courses {
  sql_table_name: spacebasic.courses ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
	name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	streams.id,
	streams.name,
	fee_structure.count,
	floors.count,
	ghs_onboarding_room_combinations.count,
	ghs_onboarding_student.count,
	jgu_onboarding_room_combinations.count,
	jgu_onboarding_student.count,
	reva_student_onboarding.count,
	roomfees.count,
	sbc_onboarding_room_combinations.count,
	sbc_onboarding_student.count,
	streams.count,
	students.count
	]
  }

}
