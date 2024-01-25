---
- dashboard: test_college_dashboard
  title: Test College Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: eLUfObcsZCMF0ilxEa1G0D
  elements:
  - title: Category-wise Complaints
    name: Category-wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_grid
    fields: [complaints.count, category.category_name]
    filters: {}
    sorts: [complaints.count desc 0]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    listen:
      College ID: complaints.college_id
    row: 8
    col: 12
    width: 12
    height: 6
  - title: Block-wise Complaints
    name: Block-wise Complaints
    model: spacebasilytics_test
    explore: block_wise_complaints
    type: looker_column
    fields: [block_wise_complaints.count, block_wise_complaints.block_name]
    sorts: [block_wise_complaints.block_name desc]
    limit: 500
    column_limit: 50
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
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
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 729ee0e0-928e-7290-0744-23ce5e88df96
        label: Custom
        type: continuous
        stops:
        - color: "#8f89b2"
          offset: 0
        - color: "#24c1e0"
          offset: 33.333333333333336
        - color: "#1a73e8"
          offset: 66.66666666666667
        - color: "#9334e6"
          offset: 100
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors: {}
    series_labels: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 14
    col: 0
    width: 24
    height: 6
  - title: Updated tile wrt Model
    name: New Tile
    model: spacebasilytics_test
    explore: complaints
    type: single_value
    fields: [complaints.count]
    filters:
      complaints.college_id: '131'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total Complaints
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 7
    height: 2
  - title: Date-wise Complaints
    name: Date-wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: marketplace_viz_calendar_heatmap::calendar_heatmap-marketplace
    fields: [complaints.count, complaints.created_date]
    fill_fields: [complaints.created_date]
    filters:
      complaints.college_id: '131'
    sorts: [complaints.created_date desc]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: month
    label_year: 'true'
    label_month: 'false'
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#d4cb4a"
    outline_color: "#f79081"
    cell_reducer: 1
    axis_label_color: "#282828"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Total Complaints
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen: {}
    row: 0
    col: 7
    width: 17
    height: 8
  - title: Month-wise Complaints
    name: Month-wise Complaints
    model: spacebasilytics_test
    explore: complaints
    type: looker_column
    fields: [complaints.count, complaints.created_month]
    fill_fields: [complaints.created_month]
    filters: {}
    sorts: [complaints.created_month]
    limit: 500
    column_limit: 50
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
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: 6dda4f8b-4e73-4e50-8760-eb378041ce07
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: complaints.count, id: complaints.count,
            name: Complaints}], showLabels: true, showValues: true, maxValue: 50000,
        minValue: 0, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '24'
    hide_legend: false
    font_size: '12'
    series_colors: {}
    series_labels: {}
    series_point_styles:
      complaints.count: diamond
    reference_lines: []
    trend_lines: []
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
    truncate_column_names: false
    listen:
      College ID: complaints.college_id
    row: 8
    col: 0
    width: 12
    height: 6
  - title: Complaints' Status
    name: Complaints' Status
    model: spacebasilytics_test
    explore: complaints_status_mapping
    type: looker_pie
    fields: [complaints_status_mapping.count, complaints_status_mapping.statusmap]
    sorts: [complaints_status_mapping.count]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
        reverse: false
    series_colors:
      Closed: "#7CB342"
      Resolved and Closed: "#079c98"
      New: "#1A73E8"
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 7
    height: 6
  filters:
  - name: College ID
    title: College ID
    type: field_filter
    default_value: '131'
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
    model: spacebasilytics_test
    explore: complaints
    listens_to_filters: []
    field: complaints.college_id
