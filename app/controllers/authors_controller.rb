class AuthorsController < ApplicationController
    def new
        @author = Author.new(params[:author])

        @author.save
        #redirect_to @article
    end

    def create
        @author = Author.new(params[:author])
    end
end
