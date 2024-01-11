view: sb_settings {
  sql_table_name: spacebasic.sb_settings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: alias_name {
    type: string
    sql: ${TABLE}.alias_name ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }
  dimension: contact_person {
    type: string
    sql: ${TABLE}.contact_person ;;
  }
  dimension: cp_email {
    type: string
    sql: ${TABLE}.cp_email ;;
  }
  dimension: cp_phone {
    type: string
    sql: ${TABLE}.cp_phone ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: email_signature {
    type: string
    sql: ${TABLE}.email_signature ;;
  }
  dimension: invoice_name {
    type: string
    sql: ${TABLE}.invoice_name ;;
  }
  dimension: invoice_note {
    type: string
    sql: ${TABLE}.invoice_note ;;
  }
  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: pincode {
    type: string
    sql: ${TABLE}.pincode ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, alias_name, invoice_name]
  }
}
