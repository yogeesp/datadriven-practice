def filter_odd_digits(s: str) -> str:
  result = []

  for ch in s:
    try:
      if int(ch) % 2 != 0:
        result.append(ch)
    except ValueError:
      continue

  return "".join(result)
