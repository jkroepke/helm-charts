#!/usr/bin/dumb-init /bin/bash

# This should be shorter enough than the terminationGracePeriodSeconds,
# so that the job is cancelled immediately, instead of hanging for 10 minutes or so and failing without any error message.
RUNNER_GRACEFUL_STOP_TIMEOUT=${RUNNER_GRACEFUL_STOP_TIMEOUT:-15}

graceful_stop() {
  echo "Executing SIGTERM handler."
  echo "Note that if this takes more time than terminationGracePeriodSeconds, the runner will be forcefully terminated by Kubernetes, which may result in the in-progress workflow job, if any, to fail."

  while pgrep Runner.Worker > /dev/null; do
    echo "Waiting for the runner worker to finish... PID: $(pgrep Runner.Worker)"
    sleep 1
  done

  echo "Graceful stop completed."
  if [ -n "$RUNNER_INIT_PID" ]; then
    echo "Sending SIGINT to the runner init process."
    kill -INT $RUNNER_INIT_PID
  fi
}

trap graceful_stop TERM

"$@" &

RUNNER_INIT_PID=$!
echo "Runner init started with pid $RUNNER_INIT_PID"
wait $RUNNER_INIT_PID
echo "Runner init exited."
trap - TERM INT
wait $RUNNER_INIT_PID
