view: bbmp_ccc_registrations {
  sql_table_name: spacebasic.BBMP_CCC_REGISTRATIONS ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: application_no {
    type: string
    sql: ${TABLE}.applicationNo ;;
  }
  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }
  dimension: available_beds {
    type: string
    sql: ${TABLE}.availableBeds ;;
  }
  dimension: ayush {
    type: string
    sql: ${TABLE}.ayush ;;
  }
  dimension: bds {
    type: string
    sql: ${TABLE}.bds ;;
  }
  dimension: beds {
    type: string
    sql: ${TABLE}.beds ;;
  }
  dimension: centre_address {
    type: string
    sql: ${TABLE}.centreAddress ;;
  }
  dimension: centre_email {
    type: string
    sql: ${TABLE}.centreEmail ;;
  }
  dimension: centre_landline {
    type: string
    sql: ${TABLE}.centreLandline ;;
  }
  dimension: centre_mobile {
    type: string
    sql: ${TABLE}.centreMobile ;;
  }
  dimension: centre_name {
    type: string
    sql: ${TABLE}.centreName ;;
  }
  dimension: centre_pvt_type_name {
    type: string
    sql: ${TABLE}.centrePvtTypeName ;;
  }
  dimension: centre_type {
    type: string
    sql: ${TABLE}.centreType ;;
  }
  dimension: centre_type_name {
    type: string
    sql: ${TABLE}.centreTypeName ;;
  }
  dimension: centre_ward {
    type: string
    sql: ${TABLE}.centreWard ;;
  }
  dimension: centre_ward_name {
    type: string
    sql: ${TABLE}.centreWardName ;;
  }
  dimension: centre_zone {
    type: string
    sql: ${TABLE}.centreZone ;;
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
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: doctor_mobile {
    type: string
    sql: ${TABLE}.doctorMobile ;;
  }
  dimension: doctor_name {
    type: string
    sql: ${TABLE}.doctorName ;;
  }
  dimension: incharge_mobile {
    type: string
    sql: ${TABLE}.inchargeMobile ;;
  }
  dimension: incharge_name {
    type: string
    sql: ${TABLE}.inchargeName ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_updated {
    type: number
    sql: ${TABLE}.is_updated ;;
  }
  dimension: kpme {
    type: string
    sql: ${TABLE}.kpme ;;
  }
  dimension: mbbs {
    type: string
    sql: ${TABLE}.mbbs ;;
  }
  dimension: nurses {
    type: string
    sql: ${TABLE}.nurses ;;
  }
  dimension: sponsor_hospital {
    type: string
    sql: ${TABLE}.sponsorHospital ;;
  }
  dimension: staff {
    type: string
    sql: ${TABLE}.staff ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension: toilets {
    type: string
    sql: ${TABLE}.toilets ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  dimension: user_email {
    type: string
    sql: ${TABLE}.userEmail ;;
  }
  dimension: user_mobile {
    type: string
    sql: ${TABLE}.userMobile ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}.userName ;;
  }
  dimension: user_role {
    type: string
    sql: ${TABLE}.userRole ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	centre_name,
	centre_type_name,
	centre_pvt_type_name,
	centre_ward_name,
	incharge_name,
	doctor_name,
	user_name
	]
  }

}
