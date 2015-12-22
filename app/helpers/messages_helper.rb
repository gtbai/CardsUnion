module MessagesHelper
	def getAbstract(str)
    string_arr = str.split(' ')
    string_arr.count > 6 ? "#{string_arr[0..(6-1)].join(' ')}..." : str
  end
end
