# Lab 11 — Process Management

**Script:** [`lab11.sh`](lab11.sh)

## What I did

This lab was about inspecting and controlling running processes: viewing
live process activity, checking if a specific process is running, polling
its CPU/memory usage over a fixed time window, and killing a process by PID
with a follow-up check to confirm it actually stopped.

- `top` — live view of running processes
- `pgrep` — check if a process is running by name
- A timed polling loop (`date +%s` based) that checks CPU/mem every 5 seconds
  for 30 seconds using `ps -C`
- `kill "$pid"` followed by `ps -p "$pid"` to confirm the process was killed

## Code

```bash
top
pgrep systemd

read -p "Enter Process name: " process_name
if pgrep "$process_name" > /dev/null; then
	echo "Process is running"
else
	echo "Isn't running"
fi

end=$(( $(date +%s) + 30 ))
while [ $(date +%s) -lt $end ]; do
	echo "Process Found"
	ps -C "$ps_name" -o %cpu,%mem
	sleep 5
done

echo "Processes: "
ps
read -p "Enter PID to kill: " pid
kill "$pid"
sleep 1
if ps -p "$pid" > /dev/null; then
	echo "Process is still running, failed to kill it"
else
	echo "Process killed succesfully"
fi
```

## Output

**Checking / monitoring a process**

![lab11 process check](../assets/lab11_1_process_check.png)

**Killing a process by PID**

![lab11 kill process](../assets/lab11_2_kill_process.png)
