view: delivery_note_details {
  sql_table_name: spacebasic.delivery_note_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
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
  dimension: created_by {
    type: string
    sql: ${TABLE}.created_by ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: string
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: grn_id {
    type: number
    sql: ${TABLE}.grn_id ;;
  }
  dimension: grn_ref_no {
    type: string
    sql: ${TABLE}.grn_ref_no ;;
  }
  dimension: item_code {
    type: string
    sql: ${TABLE}.item_code ;;
  }
  dimension: pur_details_item_id {
    type: number
    sql: ${TABLE}.pur_details_item_id ;;
  }
  dimension: qty {
    type: number
    sql: ${TABLE}.qty ;;
  }
  dimension: rate {
    type: number
    sql: ${TABLE}.rate ;;
  }
  dimension: uom {
    type: string
    sql: ${TABLE}.uom ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
