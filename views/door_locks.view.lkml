view: door_locks {
  sql_table_name: spacebasic.door_locks ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: admin_code {
    type: string
    sql: ${TABLE}.adminCode ;;
  }
  dimension: battery {
    type: string
    sql: ${TABLE}.battery ;;
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
  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }
  dimension: is_nlock {
    type: string
    sql: ${TABLE}.isNLock ;;
  }
  dimension: is_wifi_lock {
    type: string
    sql: ${TABLE}.isWifiLock ;;
  }
  dimension: is_zigbee_lock {
    type: string
    sql: ${TABLE}.isZigbeeLock ;;
  }
  dimension: lock_id {
    type: string
    sql: ${TABLE}.lock_id ;;
  }
  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }
  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: online {
    type: string
    sql: ${TABLE}.online ;;
  }
  dimension: pin_code {
    type: string
    sql: ${TABLE}.pinCode ;;
  }
  dimension: pin_code_id {
    type: string
    sql: ${TABLE}.pinCodeId ;;
  }
  dimension: room {
    type: string
    sql: ${TABLE}.room ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
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
    drill_fields: [id, name, rooms.count]
  }
}
