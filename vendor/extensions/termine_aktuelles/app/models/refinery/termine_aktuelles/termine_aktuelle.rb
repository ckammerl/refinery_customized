module Refinery
  module TermineAktuelles
    class TermineAktuelle < Refinery::Core::BaseModel
      self.table_name = 'refinery_termine_aktuelles'

      attr_accessible :title, :subtitle, :location, :description, :start_date, :end_date, :start_time, :end_time, :position

      validates :title, :presence => true, :uniqueness => true
    end
  end
end
