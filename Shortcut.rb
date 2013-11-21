def words_from_string(string)
	string.downcase.scan(\[/W']+/)
end

