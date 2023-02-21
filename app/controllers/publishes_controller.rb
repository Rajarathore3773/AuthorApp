class PublishesController < ApplicationController
    skip_before_action :verify_authenticity_token 

    def index 
        publishes = Publish.all
        render json:publishes , status:200
    end

    def show 
        publish = Publish.find_by(id: params[:id])
        if publish
            render  json:publish, status:200
        else
            render json:{error:"This id Not available for show publish book "}
        end
    end

    def create 
        publish = Publish.create(publish_params)
        if publish.save
            render json:publish , status:200
        else
            render json:{error:"Not publish Any book so use all fields"}
        end 

    end
    def update 
        publish = Publish.find_by(id: params[:id])
        if publish
            publish.update(publish_params)
            render  json:publish, status:200
        else
            render json:{error:"This book publish id Not available for update"}
        end
    end

    def destroy
        publish = Publish.find_by(id: params[:id])
        if publish
            publish.destroy
            render json:"This id Publish time deleted"
        else
            render json:{error:"This id publish time Not avialable for Delete"}
        end
    end
    
    private
    def publish_params
        params.require(:publish).permit(:p_date, :p_country, :book_id)
    end
end
