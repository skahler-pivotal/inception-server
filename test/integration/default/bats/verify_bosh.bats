#!/usr/bin/env bats

load discover_user

@test "bosh micro installed" {
  run su - $TEST_USER -c "cd /home/vcap/bosh-workspace/microboshes; bundle exec bosh micro"
  [ "$status" -eq 0 ]
}

@test "bosh-bootstrap installed" {
  run su - $TEST_USER -c "cd /home/vcap/bosh-workspace/systems; bundle exec bosh-bootstrap"
  [ "$status" -eq 0 ]
}

@test "bosh-cloudfoundry installed" {
  run su - $TEST_USER -c "cd /home/vcap/bosh-workspace/systems; bundle exec bosh cf"
  [ "$status" -eq 0 ]
}
