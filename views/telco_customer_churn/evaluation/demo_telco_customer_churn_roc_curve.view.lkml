# The name of this view in Looker is "Demo Telco Customer Churn Roc Curve"
view: demo_telco_customer_churn_roc_curve {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `machine-learning-accelerator.looker_bqml.Demo_Telco_Customer_Churn_roc_curve`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "False Negatives" in Explore.

  dimension: false_negatives {
    type: number
    sql: ${TABLE}.false_negatives ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_false_negatives {
    type: sum
    sql: ${false_negatives} ;;
  }

  measure: average_false_negatives {
    type: average
    sql: ${false_negatives} ;;
  }

  dimension: false_positive_rate {
    type: number
    sql: ${TABLE}.false_positive_rate ;;
  }

  dimension: false_positives {
    type: number
    sql: ${TABLE}.false_positives ;;
  }

  dimension: recall {
    type: number
    sql: ${TABLE}.recall ;;
  }

  dimension: threshold {
    type: number
    sql: ${TABLE}.threshold ;;
  }

  dimension: true_negatives {
    type: number
    sql: ${TABLE}.true_negatives ;;
  }

  dimension: true_positives {
    type: number
    sql: ${TABLE}.true_positives ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
