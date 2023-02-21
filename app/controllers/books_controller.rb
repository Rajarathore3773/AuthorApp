class BooksController < ApplicationController

    skip_before_action :verify_authenticity_token
    def index 
     books = Book.all
     render json:books , status:200
    end

    def show 
        book = Book.find_by(id: params[:id])
        if book
            render json:book, status:200
        else
            render json:{error: " This id book Not Found"}
        end
    end
     
    def create 
            book =Book.create(book_params)
            if book.save
                render json:book , status:200
            else 
                render json:{error: "Not create any book so use all fields "}
            end      
    end
    def update 
        book = Book.find_by(id: params[:id])

        if book
            book.update(book_params)
            render json:book, status:200
        else
            render json:{error:"This book id Not available for Update "}
        end
    end
 def destroy 
    book = Book.find_by(id: params[:id])
     if book 
        book.destroy
        render json:"This id book  Deleted "
     else
        render json:{error: "This id book not available for Delete "}
     end
 end

    private
    def book_params
        params.require(:book).permit(:b_name, :b_desc, :b_price, :author_id)
    end
end
