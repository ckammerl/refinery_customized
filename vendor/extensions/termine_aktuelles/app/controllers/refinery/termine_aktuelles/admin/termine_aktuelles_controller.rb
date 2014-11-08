module Refinery
  module TermineAktuelles
    module Admin
      class TermineAktuellesController < ::Refinery::AdminController

        crudify :'refinery/termine_aktuelles/termine_aktuelle',
                :xhr_paging => true

      end
    end
  end
end
