endpoint <- vetiver::vetiver_endpoint("http://146.190.23.52:8088/predict")

test_data <- read.csv("ctie_demo_pred.csv")

predict(endpoint, test_data)
