view: energy_meters {
  sql_table_name: spacebasic.energy_meters ;;
  drill_fields: [energy_meter_id]

  dimension: energy_meter_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.energy_meter_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension: date_created {
    type: string
    sql: ${TABLE}.dateCreated ;;
  }
  dimension: date_created_epoch {
    type: string
    sql: ${TABLE}.dateCreatedEpoch ;;
  }
  dimension: energy_meter_area_type {
    type: string
    sql: ${TABLE}.energyMeterAreaType ;;
  }
  dimension: energy_meter_source_type {
    type: string
    sql: ${TABLE}.energyMeterSourceType ;;
  }
  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: online {
    type: string
    sql: ${TABLE}.online ;;
  }
  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }
  dimension: room_name {
    type: string
    sql: ${TABLE}.room_name ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [energy_meter_id, name, room_name, rooms.count]
  }
}
