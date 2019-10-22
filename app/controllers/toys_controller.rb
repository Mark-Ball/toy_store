class ToysController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @toys = Toy.all
        @users = User.all
    end

    def show
        @toy = Toy.find(params[:id])
        @users = User.all
    end

    def new
        @toy = Toy.new
    end

    def create
        byebug
        @toy = current_user.toys.create(
            name: params[:toy]["name"],
            description: params[:toy]["description"],
            date: params[:toy]["date"],
            user_id: params[:toy]["user_id"],
            manufacturer_id: params[:toy]["manufacturer_id"],
            image: params[:toy]["image"]
        )
        redirect_to(toys_path)
    end

    def update
        Toy.find(params[:id]).update(
            name: params[:toy]["name"],
            description: params[:toy]["description"],
            date: params[:toy]["date"],
            user_id: params[:toy]["user_id"]
        )
        redirect_to(toys_path)
    end

    def delete
        Toy.find(params[:id]).destroy
        redirect_to(toys_path)
    end
end