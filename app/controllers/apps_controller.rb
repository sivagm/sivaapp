class AppsController < ApplicationController
	def new
	end
	def index
		@app = App.all

	end
	def show
		@app = App.find(params[:id])

	end
	def create
		@app = App.new(define_params)
	
		@app.save

		redirect_to :action => 'show',:id => @app
	end
	private
	def define_params
      params.require(:app).permit(:title,:description)
	end

end
