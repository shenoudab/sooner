module Sooner
  class Admin::SubscribersController < ApplicationController
    http_basic_authenticate_with :name => Sooner.admin_username, :password => Sooner.admin_password
    layout "sooner/admin"
    # GET /admin/subscribers
    # GET /admin/subscribers.json
    def index
      @subscribers = Subscriber.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @subscribers }
      end
    end

    # GET /admin/subscribers/1
    # GET /admin/subscribers/1.json
    def show
      @subscriber = Subscriber.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @subscriber }
      end
    end

    # GET /admin/subscribers/new
    # GET /admin/subscribers/new.json
    def new
      @subscriber = Subscriber.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @subscriber }
      end
    end

    # GET /admin/subscribers/1/edit
    def edit
      @subscriber = Subscriber.find(params[:id])
    end

    # POST /admin/subscribers
    # POST /admin/subscribers.json
    def create
      @subscriber = Subscriber.new(params[:subscriber])

      respond_to do |format|
        if @subscriber.save
          format.html { redirect_to @subscriber, notice: 'Subscriber was successfully created.' }
          format.json { render json: @subscriber, status: :created, location: @subscriber }
        else
          format.html { render action: "new" }
          format.json { render json: @subscriber.errors, status: :unprocessable_entity }
        end
      end
    end

    # PUT /admin/subscribers/1
    # PUT /admin/subscribers/1.json
    def update
      @subscriber = Subscriber.find(params[:id])

      respond_to do |format|
        if @subscriber.update_attributes(params[:subscriber])
          format.html { redirect_to @subscriber, notice: 'Subscriber was successfully updated.' }
          format.json { head :ok }
        else
          format.html { render action: "edit" }
          format.json { render json: @subscriber.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/subscribers/1
    # DELETE /admin/subscribers/1.json
    def destroy
      @subscriber = Subscriber.find(params[:id])
      @subscriber.destroy

      respond_to do |format|
        format.html { redirect_to admin_root_url }
        format.json { head :ok }
      end
    end
  end
end
