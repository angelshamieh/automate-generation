class EmployeesController < ApplicationController
  def home
  end

  def generate
    @groups = Group.generate
    redirect_to generate_path
  end

end

