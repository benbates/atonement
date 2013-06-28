module ApplicationHelper
	def notifications
		render :partial => 'layouts/success', :object => flash[:success]  
	end
end