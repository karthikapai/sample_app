class SessionsController < ApplicationController
<<<<<<< HEAD

  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_back_or user
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end
=======
	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
    	if user && user.authenticate(params[:session][:password])
      		sign_in user
      		redirect_to user
      		# Sign the user in and redirect to the user's show page.
    	else
     		flash.new[:error] = 'Invalid email/password combination' # Not quite right!
      		render 'new'
    	end
	end
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6

  def destroy
    sign_out
    redirect_to root_url
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 342fde192af769fab7f8b3185cafd3197f4ee0c6
