class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @a = params["amount"].to_i
    @amount = @a * 100
    @project = Project.find(params[:project_id])
    if current_user
      @user = current_user
      @user.projects.push(@project)
    end
    @project.donation_count += 1
    @project.total_donated += @a
    @project.save

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    respond_to do |format|
      format.html { redirect_to root_path}
      format.js {redirect_to root_path}
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
