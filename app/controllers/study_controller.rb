# frozen_string_literal: true

class StudyController < ApplicationController
  def hello_importmap; end

  def new_turbo
    @post = Post.new

    respond_to do |f|
      f.html {}
    end
  end

  def create_turbo
    @post = Post.new(post_params)

    respond_to do |f|
      if @post.save
        f.turbo_stream { render turbo_stream: turbo_stream.prepend('posts', partial: 'post') }
      else
        f.html { render :new_turbo, status: :unprocessable_entity }
      end
    end
  end

  private

  def post_params
    params.require(:post).permit(:title)
  end
end
