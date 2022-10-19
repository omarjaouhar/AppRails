class CarsController < ApplicationController
    before_action :find_car, only: [:show, :edit, :update, :destroy]
    def index
        @cars = Car.all
    end   

    def show
    end

    def edit
    end

    def update
        if @car.update(post_params)
            flash.now[:notice] = "Done !"
        end    
        render :edit 
    end

    def new
        @car = Car.new
    end    

    def create
        car = Car.create(post_params)
        redirect_to cars_path
    end   
    
    def destroy
        @car.destroy
        redirect_to cars_path
    end

    def home
    end  

    private
        def post_params
            params.require(:car).permit(:name, :model)
        end    
        def find_car
            @car = Car.find(params[:id])
        end    
    end