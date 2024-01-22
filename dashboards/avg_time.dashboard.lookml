---
- dashboard: avg_time_dashboard
  title: Sample Dashboard Tatvic
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: oCzIcNKArunvcdIbKlVgEU
  elements:
  - title: Category wise Complaints
    name: Category wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_grid
    fields: [complaints.count, complaints.category_id]
    filters:
      rooms.block_name: "-NULL"
    sorts: [complaints.count desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    defaults_version: 1
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 23
    col: 0
    width: 8
    height: 6
  - title: Total Complaints
    name: Total Complaints
    model: spacebasilytics_test
    explore: complaints
    type: single_value
    fields: [count_of_ref_no]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#,##0"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    showComparison: false
    minValue: 0
    maxValue: 1000002
    circleThickness: 0.05
    circleFillGap: 0
    circleColor: "#178BCA"
    waveHeight: 0.05
    waveCount: 1
    waveRiseTime: 1000
    waveAnimateTime: 1801
    waveRise: true
    waveHeightScaling: true
    waveAnimate: true
    waveColor: "#26788a"
    waveOffset: 0
    textVertPosition: 0.5
    textSize: 1
    valueCountUp: true
    displayPercent: false
    textColor: "#000000"
    waveTextColor: "#86ff44"
    defaults_version: 1
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 0
    col: 20
    width: 4
    height: 3
  - title: Number of Colleges
    name: Number of Colleges
    model: spacebasilytics_test
    explore: complaints
    type: single_value
    fields: [count_of_college_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_student_id
      based_on: complaints.student_id
      expression: ''
      label: Count of Student ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_college_id
      based_on: complaints.college_id
      expression: ''
      label: Count of College ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Total Students
    name: Total Students
    model: spacebasilytics_test
    explore: complaints
    type: single_value
    fields: [count_of_student_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_student_id
      based_on: complaints.student_id
      expression: ''
      label: Count of Student ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    show_value_labels: true
    font_size: 12
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 0
    col: 16
    width: 4
    height: 3
  - title: Total Categories
    name: Total Categories
    model: spacebasilytics_test
    explore: complaints
    type: single_value
    fields: [count_of_category_id_2]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_student_id
      based_on: complaints.student_id
      expression: ''
      label: Count of Student ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_college_id
      based_on: complaints.college_id
      expression: ''
      label: Count of College ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_category_id
      based_on: complaints.category_id
      expression: ''
      label: Count of Category ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_category_id_2
      based_on: complaints.category_id
      expression: ''
      label: Count of Category ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#,##0"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 0
    target_gap: 7
    target_weight: 50
    value_label_type: both
    value_label_font: 20
    value_formatting: ''
    value_label_padding: 60
    target_source: override
    target_label_type: nolabel
    target_label_font: 20
    target_label_override: ''
    target_value_override: '1000'
    target_value_format: ''
    fill_color: "#FF8168"
    gauge_fill_type: segment
    viz_trellis_by: none
    angle: 92
    cutout: 53
    range_x: 0.8
    range_y: 1
    target_label_padding: 1.46
    defaults_version: 1
    hidden_pivots: {}
    title_hidden: true
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 0
    col: 8
    width: 4
    height: 3
  - title: Total Subcategories
    name: Total Subcategories
    model: spacebasilytics_test
    explore: complaints
    type: single_value
    fields: [count_of_sub_category_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_student_id
      based_on: complaints.student_id
      expression: ''
      label: Count of Student ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_college_id
      based_on: complaints.college_id
      expression: ''
      label: Count of College ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_category_id
      based_on: complaints.category_id
      expression: ''
      label: Count of Category ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_category_id_2
      based_on: complaints.category_id
      expression: ''
      label: Count of Category ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_sub_category_id
      based_on: complaints.sub_category_id
      expression: ''
      label: Count of Sub Category ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#,##0"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    bar_arm_length: 9
    bar_arm_weight: 48
    bar_spinner_length: 121
    bar_spinner_weight: 25
    bar_style: horizontal
    bar_range_min: 0
    bar_range_max: 5000
    bar_value_label_type: both
    bar_value_label_font: 8
    bar_value_label_padding: 45
    bar_target_source: 'off'
    bar_target_label_type: none
    bar_target_label_font: 3
    bar_label_font_size: 5
    bar_fill_color: "#0092E5"
    bar_background_color: "#CECECE"
    bar_spinner_color: "#282828"
    bar_range_color: "#282828"
    defaults_version: 1
    hidden_pivots: {}
    show_value_labels: true
    font_size: 12
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    title_hidden: true
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 0
    col: 12
    width: 4
    height: 3
  - title: Number of Blocks
    name: Number of Blocks
    model: spacebasilytics_test
    explore: complaints
    type: single_value
    fields: [count_of_block_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: count_of_block_id
      based_on: complaints.block_id
      expression: ''
      label: Count of Block ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "#,##0"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Type wise Complaints
    name: Type wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_pie
    fields: [complaints.count, complaints.type]
    filters:
      complaints.type: NOT NULL
    sorts: [complaints.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 30
    color_application:
      collection_id: da8306b5-3b46-48aa-9ead-a3b32292f35c
      palette_id: 75905e81-dadc-472c-b9a2-a201f788d55d
      options:
        steps: 5
        reverse: true
    series_colors: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    defaults_version: 1
    hidden_fields:
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 29
    col: 0
    width: 12
    height: 6
  - title: Role wise Complaints
    name: Role wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_column
    fields: [complaints.count, complaints.assigned_to_role]
    sorts: [complaints.count desc]
    limit: 500
    column_limit: 50
    filter_expression: matches_filter(${complaints.assigned_to_role}, `NOT NULL`)
      AND matches_filter(${complaints.assigned_to_role}, `not 0`)
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1bc1f1d8-7461-4bfd-8c3b-424b924287b5
      palette_id: dd87bc4e-d86f-47b1-b0fd-44110dc0b469
      options:
        steps: 5
        reverse: true
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    label_value_format: 0.0,"k"
    series_colors: {}
    series_labels: {}
    label_color: [red]
    show_dropoff: false
    value_labels: labels
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    truncate_column_names: false
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 23
    col: 16
    width: 8
    height: 6
  - title: Sub Category wise Complaints
    name: Sub Category wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_bar
    fields: [complaints.sub_category_id, count_of_ref_no]
    filters:
      rooms.block_name: "-NULL"
    sorts: [count_of_ref_no desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      custom:
        id: d0946f14-d540-8123-f906-0ff908a52849
        label: Custom
        type: discrete
        colors:
        - "#63a3cf"
        - "#AA397F"
        - "#8735C1"
        - "#5E3FC5"
        - "#404FC4"
        - "#3B8EF3"
        - "#35ADDC"
        - "#2586A4"
        - "#58A07D"
        - "#C9D275"
        - "#F5E578"
        - "#EBBE60"
        - "#E6985A"
        - "#DB5E61"
        - "#6177A5"
        - "#6C5174"
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: complaints.count,
            id: complaints.count, name: Complaints}], showLabels: true, showValues: true,
        maxValue: 2000, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    font_size: '12'
    series_colors: {}
    series_labels: {}
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: linear
    swap_axes: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 23
    col: 8
    width: 8
    height: 6
  - title: College & Category wise Complaints
    name: College & Category wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_grid
    fields: [complaints.college_id, complaints.category_id, count_of_ref_no]
    filters:
      rooms.block_name: "-NULL"
    sorts: [complaints.college_id]
    subtotals: [complaints.college_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    series_text_format:
      complaints.college_id:
        fg_color: "#02010a"
      complaints.category_id:
        fg_color: "#170658"
    series_collapsed:
      complaints.college_id: false
    header_font_color: "#462C9D"
    header_background_color: "#FFE663"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 15
    col: 0
    width: 12
    height: 8
  - title: Blocks & Room wise Complaints
    name: Blocks & Room wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_grid
    fields: [complaints.block_id, complaints.room_id, count_of_ref_no]
    filters:
      rooms.block_name: "-NULL"
    sorts: [complaints.block_id, complaints.room_id]
    subtotals: [complaints.block_id]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: to_string(${complaints.room_id})
      label: Room ID Final
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: room_id_final
      _type_hint: string
      is_disabled: true
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    series_text_format:
      complaints.block_id:
        fg_color: "#000000"
      complaints.room_id:
        fg_color: "#170658"
    series_collapsed:
      complaints.college_id: true
      complaints.block_id: false
    header_font_color: "#462C9D"
    header_background_color: "#FFE663"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields:
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 15
    col: 12
    width: 12
    height: 8
  - title: Description wise Complaints
    name: Description wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_pie
    fields: [complaints.count, complaints.description]
    filters: {}
    sorts: [complaints.count desc]
    limit: 10
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 30
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels: {}
    show_value_labels: true
    font_size: 3
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: bottom, series: [{axisId: complaints.count,
            id: complaints.count, name: Complaints}], showLabels: true, showValues: true,
        maxValue: 2000, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_point_styles:
      complaints.count: diamond
    reference_lines: []
    trend_lines: []
    swap_axes: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    hidden_fields: []
    hidden_points_if_no: []
    truncate_column_names: false
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 29
    col: 12
    width: 12
    height: 6
  - title: Date wise Complaints
    name: Date wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: marketplace_viz_calendar_heatmap::calendar_heatmap-marketplace
    fields: [complaints.count, complaints.created_date]
    fill_fields: [complaints.created_date]
    filters:
      complaints.created_year: '2023'
    sorts: [complaints.count desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: month
    label_year: true
    label_month: true
    viz_show_legend: true
    focus_tooltip: true
    outline_weight: 1
    cell_color: "#F9AB00"
    outline_color: "#a62c2c"
    cell_reducer: 0.6
    axis_label_color: "#000000"
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
        reverse: false
    series_colors: {}
    show_value_labels: true
    font_size: 3
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: bottom, series: [{axisId: complaints.count,
            id: complaints.count, name: Complaints}], showLabels: true, showValues: true,
        maxValue: 2000, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_point_styles:
      complaints.count: diamond
    reference_lines: []
    trend_lines: []
    swap_axes: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    defaults_version: 0
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    truncate_column_names: false
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 3
    col: 0
    width: 24
    height: 6
  - title: Date wise Complaints Trends
    name: Date wise Complaints Trends
    model: spacebasilytics_test
    explore: complaints
    type: looker_area
    fields: [count_of_ref_no, complaints.created_date]
    fill_fields: [complaints.created_date]
    filters:
      complaints.created_year: 2023-12
    sorts: [complaints.created_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_ref_no
      based_on: complaints.ref_no
      expression: ''
      label: Count of Ref No
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: count_of_ref_no, id: count_of_ref_no,
            name: Count of Ref No}], showLabels: true, showValues: true, maxValue: 1000,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '31'
    hide_legend: false
    font_size: '3'
    series_colors: {}
    series_labels: {}
    reference_lines: []
    trend_lines: []
    swap_axes: false
    hidden_fields: []
    hidden_points_if_no: []
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: month
    label_year: true
    label_month: true
    viz_show_legend: true
    focus_tooltip: true
    outline_weight: 1
    cell_color: "#F9AB00"
    outline_color: "#a62c2c"
    cell_reducer: 0.6
    axis_label_color: "#000000"
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      complaints.count:
        is_active: true
    defaults_version: 1
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    truncate_column_names: false
    hidden_pivots: {}
    listen:
      Category ID: complaints.category_id
      Hostel ID: complaints.hostel_id
      Sub Category ID: complaints.sub_category_id
      Created Month: complaints.created_month
      Description: complaints.description
      College ID: complaints.college_id
    row: 9
    col: 0
    width: 24
    height: 6
  filters:
  - name: Created Month
    title: Created Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: spacebasilytics_test
    explore: complaints
    listens_to_filters: []
    field: complaints.created_month
  - name: Category ID
    title: Category ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options:
      - '1'
      - '2'
      - '3'
    model: spacebasilytics_test
    explore: complaints
    listens_to_filters: []
    field: complaints.category_id
  - name: Sub Category ID
    title: Sub Category ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: popover
      options:
      - '1'
      - '2'
      - '3'
    model: spacebasilytics_test
    explore: complaints
    listens_to_filters: []
    field: complaints.sub_category_id
  - name: Hostel ID
    title: Hostel ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - '1'
      - '2'
      - '3'
    model: spacebasilytics_test
    explore: complaints
    listens_to_filters: []
    field: complaints.hostel_id
  - name: College ID
    title: College ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: spacebasilytics_test
    explore: complaints
    listens_to_filters: []
    field: complaints.college_id
  - name: Description
    title: Description
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: spacebasilytics_test
    explore: complaints
    listens_to_filters: []
    field: complaints.description
