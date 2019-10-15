class ToysController < ApplicationController
    def index
        @toys = Toy.all
        @users = User.all
    end

    def show
        @toy = Toy.find(params[:id])
    end

    def new
    end

    def create
        Toy.create(
            name: params[:toy]["name"],
            description: params[:toy]["description"],
            date: params[:toy]["date"],
            user_id: params[:toy]["user_id"]
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