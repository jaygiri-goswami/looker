view: asset_tracking {
  sql_table_name: spacebasic.asset_tracking ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: actioned_by {
    type: number
    sql: ${TABLE}.actioned_by ;;
  }
  dimension: asset_association {
    type: string
    sql: ${TABLE}.asset_association ;;
  }
  dimension: asset_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.asset_id ;;
  }
  dimension: asset_location_id {
    type: string
    sql: ${TABLE}.asset_location_id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: complaint_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.complaint_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_date ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	asset.asset_id,
	complaints.id,
	colleges.id,
	colleges.name,
	colleges.college_pathname
	]
  }

}
