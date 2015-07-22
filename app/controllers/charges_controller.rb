class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    @amount = 500
    @project = Project.find(params[:project_id])
    if current_user
      @user = current_user
      @user.projects.push(@project)
    end
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

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
