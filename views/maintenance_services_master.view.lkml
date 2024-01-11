view: maintenance_services_master {
  sql_table_name: spacebasic.maintenance_services_master ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: cgst_charges {
    type: number
    sql: ${TABLE}.cgst_charges ;;
  }
  dimension: cgst_rate {
    type: number
    sql: ${TABLE}.cgst_rate ;;
  }
  dimension: charges_monthly {
    type: number
    sql: ${TABLE}.charges_monthly ;;
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
  dimension: fee_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.fee_type_id ;;
  }
  dimension: hsn_code {
    type: string
    sql: ${TABLE}.hsn_code ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: parent_id {
    type: number
    sql: ${TABLE}.parent_id ;;
  }
  dimension: room_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.room_type_id ;;
  }
  dimension: service_desc {
    type: string
    sql: ${TABLE}.service_desc ;;
  }
  dimension: service_provider_id {
    type: number
    sql: ${TABLE}.service_provider_id ;;
  }
  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }
  dimension: sgst_charges {
    type: number
    sql: ${TABLE}.sgst_charges ;;
  }
  dimension: sgst_rate {
    type: number
    sql: ${TABLE}.sgst_rate ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
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
    drill_fields: [id, room_types.id, room_types.name, fee_types.id]
  }
}
