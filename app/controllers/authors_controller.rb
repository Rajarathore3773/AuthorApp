class AuthorsController < ApplicationController
    
    skip_before_action :verify_authenticity_token
    def index 
     authors = Author.all
     render json:authors , status:200
    end

    def show 
        author = Author.find_by(id: params[:id])
        if author
            render json:author, status:200
        else
            render json:{error: "Not Found This id Author"}
        end
    end
     
    def create 
            author = Author.create(author_params)
            if author.save
                render json:author , status:200
            else 
                render json:{error: "Not create Author so use all fields of authore"}
            end      
    end
    def update 
        author = Author.find_by(id: params[:id])
        if author
            author.update(author_params)
            render json:author , status:200
        else
            render json:{error:"This id authore Not available for Update "}
        end
    end

    def destroy  
        author = Author.find_by(id: params[:id])
        if author 
            author.destroy
            render json:"This id Author deleted"
        else
            render json:{error:"This id  Author not avialable for delete"}
        end
    end

    private
    def author_params
        params.require(:author).permit(:a_name, :a_age, :a_country,:a_email, :a_contact)
    end
end
