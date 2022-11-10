class AuthorsController < ApplicationController
    def new
    end

    def show
        @author = Author.find(params[:id])
      end

    def create
        @author = Author.new(params[:article])
 
        @author.save
        redirect_to @author
    end
end
