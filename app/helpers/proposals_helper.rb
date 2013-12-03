module ProposalsHelper
	def has_reviews?
    	@reviews.count > 0
  	end

  	def user_is_owner_of_proposal?(proposal_user_id)
  		user_signed_in? && (proposal_user_id == current_user.id)
  	end
end
