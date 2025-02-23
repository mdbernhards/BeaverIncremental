extends Node

enum NotationTypesEnum {
	Default,
	Alternative,
	Scientific,
	Engineering,
	Mixed,
}

const Prefixes = {
	3: {"Default": "k", "Alternative": "K", "Long": "Thousand"},
	6: {"Default": "m", "Alternative": "M", "Long": "Million"},
	9: {"Default": "b", "Alternative": "B", "Long": "Billion"},
	12: {"Default": "t", "Alternative": "T", "Long": "Trillion"},
	15: {"Default": "a", "Alternative": "Qa", "Long": "Quadrillion"},
	18: {"Default": "A", "Alternative": "Qi", "Long": "Quintillion"},
	21: {"Default": "c", "Alternative": "Sx", "Long": "Sextillion"},
	24: {"Default": "C", "Alternative": "Sp", "Long": "Septillion"},
}

func formatNumber(number: float, floatCount = 3) -> String:
	if number < 999_999 and number > -999_999:
		return str(number)
	
	var magnitude = int(floor(log(abs(number + 1)) / log(10)))
	var usedMagnitude = magnitude - (magnitude % 3)
	
	if usedMagnitude > 24: # works up to Max e24 (Magnitude)
		usedMagnitude = 24
	
	var divisor = pow(10, usedMagnitude)
	var formattedNumber = number / divisor
	
	var formattingType = NotationTypesEnum.Default
	
	if SaveData.GeneralInfo.has("NumberNotation"):
		formattingType = SaveData.GeneralInfo["NumberNotation"]
	
	match formattingType:
		NotationTypesEnum.Scientific:
			var exponent = int(floor(log(abs(number)) / log(10)))
			var mantissa = number / pow(10, exponent)
			return "%.*fe%d" % [floatCount, mantissa, exponent]
		NotationTypesEnum.Engineering:
			return "%.*fe%d" % [floatCount, formattedNumber, usedMagnitude]
		NotationTypesEnum.Default, NotationTypesEnum.Alternative, NotationTypesEnum.Mixed:
			var prefixType
			
			if formattingType == NotationTypesEnum.Default or formattingType == NotationTypesEnum.Mixed:
				prefixType = "Default" 
			else:
				prefixType = "Alternative"
			
			if formattingType == NotationTypesEnum.Mixed and usedMagnitude > 15:
				var exponent = int(floor(log(abs(number)) / log(10)))
				var mantissa = number / pow(10, exponent)
				return "%.*fe%d" % [floatCount, mantissa, exponent]
			else:
				var prefix = Prefixes.get(usedMagnitude, {}).get(prefixType, "")
				return "%.*f%s" % [floatCount, formattedNumber, prefix]
		_:
			return str(number)
