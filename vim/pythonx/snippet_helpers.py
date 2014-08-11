def fraction(a, b):
	try:
		return "%.1f" % (float(a)/float(b))
	except (ValueError, ZeroDivisionError):
		return "ERR"
