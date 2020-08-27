class HomeController < ApplicationController
    def welcome
        render json: { message: "Welcome to Universal Cafe Catalog!"}
    end
end
