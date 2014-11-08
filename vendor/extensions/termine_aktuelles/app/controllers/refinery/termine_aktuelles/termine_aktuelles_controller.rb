module Refinery
  module TermineAktuelles
    class TermineAktuellesController < ::ApplicationController

      before_filter :find_all_termine_aktuelles
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @termine_aktuelle in the line below:
        present(@page)
      end

      def show
        @termine_aktuelle = TermineAktuelle.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @termine_aktuelle in the line below:
        present(@page)


        # redirect ('/refinery/termine_aktuelles/termine_aktuelles#index')

      end

    protected

      def find_all_termine_aktuelles
        @termine_aktuelles = TermineAktuelle.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/termine_aktuelles").first
      end

    end
  end
end
