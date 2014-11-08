module Refinery
  module TermineAktuelles
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::TermineAktuelles

      engine_name :refinery_termine_aktuelles

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "termine_aktuelles"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.termine_aktuelles_admin_termine_aktuelles_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/termine_aktuelles/termine_aktuelle'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::TermineAktuelles)
      end
    end
  end
end
