class FeesController < ApplicationController
	include FeesHelper

	#"create" can only be triggered by post, so maybe I dont need to 
	#use callbacks to prevent bad guys for it :)
	def create
		@card = Card.find(params[:card_id])
		@fee = @card.fees.create(fee_params)
		@fee.update_attribute(:discount, getDiscount(@card))
		if @fee.fee_type
			@card.balance += @fee.original_amount
		else
			@card.balance -= @fee.original_amount*@fee.discount
		end 
		@card.points += @fee.original_amount.round

		# Set the card's level
		if @card.points >= @card.merchant.level_2
			@card.level = 3
		elsif @card.points >= @card.merchant.level_1
			@card.level = 2
		else
			@card.level = 1
		end
		@card.save
		redirect_to card_path(@card)
	end
	private
	
	def fee_params
		params.require(:fee).permit(:fee_type, :original_amount)
	end
end
