class CommentsController < ApplicationController
	layout false
	def new
		respond_to do |format|
		  format.html
		  format.js
		end
	end
end
