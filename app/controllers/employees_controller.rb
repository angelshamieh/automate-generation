class EmployeesController < ApplicationController
  def home
  end

  def generate
    @groups = Group.generate
  end

end

