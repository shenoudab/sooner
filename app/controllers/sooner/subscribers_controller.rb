module Sooner
  class SubscribersController < ApplicationController
    respond_to :html, :js
    layout "sooner/sooner"
    # GET /subscribers/new
    # GET /subscribers/new.json
    def new
      @subscriber = Subscriber.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @subscriber }
      end
    end

    # POST /subscribers
    # POST /subscribers.json
    def create
      @subscriber = Subscriber.new(params[:subscriber])
      if @subscriber.valid?
        if Sooner.csv_store
        @subscriber.save_csv
        end
        if Sooner.mongo_store
        @subscriber.save
        end
        if Sooner.send_mail
        SubscribersMailer.subscribed(@subscriber).deliver
        end
      respond_with @subscriber, :location => root_url
      elsif @subscriber.errors[:email].include?("is already taken") || @subscriber.errors[:name].include?("is already taken")
      respond_with @subscriber, :location => root_url
      else
      flash[:notice] = Sooner.error_subscribed
      redirect_to root_url
      end
    end
  end
end