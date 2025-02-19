# frozen_string_literal: true

module Common
  # health check for system

  protected

  def system_ok?
    !!User.find_by_sql('select 1 = 1;') # TODO: update this line, this is because too poor to know health
  end
end
