class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(10)
	end

	def new
		@project = Project.new
	end

	def create
		new_project = params[:project]
		name = new_project[:name]
		description = new_project[:description]
		p = Project.new(name: name, description: description)
		p.save

		redirect_to '/projects'
	end

	def show
		unless @project = Project.find_by(id: params[:id])
		render 'no_projects_found'
	end

	def update
		new_project = params[:project]
		name = new_project[:name]
		description = new_project [:description]

		project = Project.find(params[:id])
		project.update_attributes(name: name, description: description)

		redirect_to "/projects"
	end

	def destroy
		project = Project.find(params[:id])
		project.destroy
		redirect_to '/projects'
	end

end
