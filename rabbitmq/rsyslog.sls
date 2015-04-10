/etc/rsyslog.d/10-rabbitmq.conf:
  file.managed:
    - contents: 'input(type="imfile" File="/var/log/rabbitmq/rabbit@{{ host }}.log" StateFile="/var/spool/rsyslog/rabbitmq_statefile" Tag="rabbitmq" Facility="local0")'
    - contents_newline: True
