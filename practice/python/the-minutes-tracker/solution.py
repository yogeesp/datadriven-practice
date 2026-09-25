def total_activity_minutes(record):
    total_min = 0
    for activity in record['activities']:
        total_min += activity['minutes']

    return total_min
