def find_reading(readings, target):
  for i in range(len(readings)):
    if readings[i] == target:
      return i
  return -1
