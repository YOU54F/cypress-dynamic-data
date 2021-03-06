curl -u $CIRCLE_TOKEN: -X POST \
  --header "Content-Type: application/json" \
  -d '{"build_parameters":{
    "CIRCLE_JOB":"build-test",
    "ENV_SUT":"circle-ci-staging",
    "CIRCLECI_TRIGGERING_REPO_NAME":"'$CIRCLE_PROJECT_REPONAME'",
    "CIRCLECI_TRIGGERING_USER_NAME":"'$CIRCLE_USERNAME'",
    "CIRCLECI_TRIGGERING_REPO_URL":"'$CIRCLE_REPOSITORY_URL'",
    "CIRCLECI_TRIGGERING_REPO_BRANCH":"'$CIRCLE_BRANCH'",
    "CIRCLECI_TRIGGERING_REPO_SHA":"'$CIRCLE_SHA1'",
    "CIRCLECI_TRIGGERING_BUILD_URL":"'$CIRCLE_BUILD_URL'"
    }}' \
  $CIRCLECI_TRIGGER_URL$CIRCLECI_TRIGGER_REPO$CIRCLECI_TRIGGER_BRANCH