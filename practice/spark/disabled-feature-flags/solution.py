df = feat_flags
    .filter(F.col('enabled') == 0)
