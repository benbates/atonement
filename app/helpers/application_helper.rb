module ApplicationHelper
	def notifications
		  if flash[:success]
		    render :partial => 'layouts/success', :object => flash[:success]
		  elsif flash[:notice]
		    render :partial => 'layouts/notice', :object => flash[:notice] 
		  elsif flash[:error]
		    render :partial => 'layouts/error', :object => flash[:error]
		  end
	end
end