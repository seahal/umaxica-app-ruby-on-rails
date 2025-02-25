# frozen_string_literal: true

module Health
  extend ActiveSupport::Concern

  def show
    expires_in 1.second, public: true # this page wouldn't include private data

    if !!User.find_by_sql('select 1 = 1;')
      @title = 'ok'
      @message = 'There are no erros this system'
      render status: 200
    else
      @title = 'failure'
      @message = 'System health check failed'
      render status: 500
    end
  end
end
