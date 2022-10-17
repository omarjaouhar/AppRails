class CarsController < ApplicationController
    def index
        @cars = Car.all
    end   
    def home
    end  
end    