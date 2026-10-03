df = alert_events
    .filter((col('ack_by') != 'alice') | col('ack_by').isNull())
    .orderBy('fired_at')
