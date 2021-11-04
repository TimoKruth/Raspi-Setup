# Raspi Setup Scripts
This setup script installs different tools for you. Asking for passwords when needed.

## Tools included
- Docker Host
- Grafana
- InfluxDB
- Ookla speedtest (Python3 lib)

## Additional notes
The Ookla Speedtest lib is used in a script that can be setup to run regularly inside the setup script. It writes to the InfluxDB which can be accessed from Grafana to display the Results in a Dashboard. The connection inside Grafana and the Dashboard are not set up initially and have to be done manually afterwards.
Docker can be used afterwards but until now no special containers are loaded.
