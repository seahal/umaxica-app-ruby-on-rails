# frozen_string_literal: true

class TopController < ApplicationController
  def index
    @todos = Todo.all
  end
end
