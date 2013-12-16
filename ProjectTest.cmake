## PROJECT TESTING
SET(PROJECT_TEST_PATH ${CMAKE_CURRENT_BINARY_DIR}/bin/)
## ARGUMENT : a, b
ADD_TEST(test_0    ${PROJECT_TEST_PATH}/project_test 1 2)
ADD_TEST(test_1    ${PROJECT_TEST_PATH}/project_test 11 12)
ADD_TEST(test_2    ${PROJECT_TEST_PATH}/project_test 111 112 )
ADD_TEST(test_3    ${PROJECT_TEST_PATH}/project_test 12345 5678)
ADD_TEST(test_4    ${PROJECT_TEST_PATH}/project_test 9876 5432)
ADD_TEST(test_5    ${PROJECT_TEST_PATH}/project_test 10101 01010)
ADD_TEST(test_6    ${PROJECT_TEST_PATH}/project_test 0 0)
ADD_TEST(test_7    ${PROJECT_TEST_PATH}/project_test 999999 999999)
