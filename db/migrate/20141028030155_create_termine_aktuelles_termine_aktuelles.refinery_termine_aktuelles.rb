# This migration comes from refinery_termine_aktuelles (originally 1)
class CreateTermineAktuellesTermineAktuelles < ActiveRecord::Migration

  def up
    create_table :refinery_termine_aktuelles do |t|
      t.string :title
      t.string :subtitle
      t.string :location
      t.text :description
      t.date :start_date
      t.date :end_date
      t.time :start_time
      t.time :end_time
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-termine_aktuelles"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/termine_aktuelles/termine_aktuelles"})
    end

    drop_table :refinery_termine_aktuelles

  end

end
