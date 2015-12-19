module FeesHelper
	# Get the specific discount the card can use
	def getDiscount(card)
		if card.level == 1
			return card.merchant.discount_1
		elsif card.level == 2
			return card.merchant.discount_2
		elsif card.level == 3
			return card.merchant.discount_3
		end
	end
end
