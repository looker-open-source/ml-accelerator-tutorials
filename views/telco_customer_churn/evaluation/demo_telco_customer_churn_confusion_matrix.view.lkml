# view: demo_telco_customer_churn_confusion_matrix {
#   sql_table_name: `machine-learning-accelerator.looker_bqml.Demo_Telco_Customer_Churn_confusion_matrix`
#     ;;

#   dimension: expected_label {
#     type: string
#     sql: ${TABLE}.expected_label ;;
#   }

#   dimension: no_ {
#     type: number
#     sql: ${TABLE}.`No` ;;
#   }

#   # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
#   # measures for this dimension, but you can also add measures of many different aggregates.
#   # Click on the type parameter to see all the options in the Quick Help panel on the right.

#   measure: total_no {
#     type: sum
#     sql: ${no} ;;
#   }

#   measure: average_no {
#     type: average
#     sql: ${no} ;;
#   }

#   dimension: yes_ {
#     type: number
#     sql: ${TABLE}.Yes ;;
#   }

#   measure: count {
#     type: count
#     drill_fields: []
#   }
# }
