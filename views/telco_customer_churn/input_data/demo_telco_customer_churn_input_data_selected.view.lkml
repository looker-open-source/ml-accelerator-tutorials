#reflects the input data selected on the SOURCE tab of the ML Accelerator Extension for the model Demo Telco Customer Churn
view: demo_telco_customer_churn_input_data_selected {
  sql_table_name: `machine-learning-accelerator.looker_bqml.Demo_Telco_Customer_Churn_input_data_selected`
    ;;

 view_label: "Telco Customer Churn"


  dimension: churn {
    description: "Customer Churn (Yes/No)"
    type: string
    sql: ${TABLE}.customer_churn ;;
  }

  dimension: customer_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.customer_customer_id ;;
  }

  dimension: international_plan {
    type: string
    sql: ${TABLE}.customer_international_plan ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.customer_state ;;
  }

  dimension: account_duration_months {
    type: number
    sql: ${TABLE}.customer_account_duration_months ;;
  }

  dimension: voice_mail_plan {
    type: string
    sql: ${TABLE}.customer_voice_mail_plan ;;
  }


  measure: total_day_calls {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_day_calls ;;
  }

  measure: total_day_charge {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_day_charge ;;
  }

  measure: total_day_minutes {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_day_minutes ;;
  }

  measure: total_eve_calls {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_eve_calls ;;
  }

  measure: total_eve_charge {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_eve_charge ;;
  }

  measure: total_eve_minutes {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_eve_minutes ;;
  }

  measure: total_intl_calls {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_intl_calls ;;
  }

  measure: total_intl_charge {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_intl_charge ;;
  }

  measure: total_intl_minutes {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_intl_minutes ;;
  }

  measure: total_night_calls {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_night_calls ;;
  }

  measure: total_night_charge {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_night_charge ;;
  }

  measure: total_night_minutes {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_night_minutes ;;
  }

  measure: total_service_calls {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_service_calls ;;
  }

  measure: total_vmail_messages {
    group_label: "Totals"
    type: sum
    sql: ${TABLE}.customer_total_vmail_messages ;;
  }


  measure: average_account_duration_months {
    group_label: "Averages"
    type: average
    sql: ${account_duration_months} ;;
  }

  measure: average_day_calls {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_day_calls ;;
  }

  measure: average_day_charge {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_day_charge ;;
  }

  measure: average_day_minutes {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_day_minutes ;;
  }

  measure: average_eve_calls {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_eve_calls ;;
  }

  measure: average_eve_charge {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_eve_charge ;;
  }

  measure: average_eve_minutes {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_eve_minutes ;;
  }

  measure: average_intl_calls {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_intl_calls ;;
  }

  measure: average_intl_charge {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_intl_charge ;;
  }

  measure: average_intl_minutes {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_intl_minutes ;;
  }

  measure: average_night_calls {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_night_calls ;;
  }

  measure: average_night_charge {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_night_charge ;;
  }

  measure: average_night_minutes {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_night_minutes ;;
  }

  measure: average_service_calls {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_service_calls ;;
  }

  measure: average_vmail_messages {
    group_label: "Averages"
    type: average
    sql: ${TABLE}.customer_total_vmail_messages ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
