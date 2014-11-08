# encoding: utf-8
require "spec_helper"

describe Refinery do
  describe "TermineAktuelles" do
    describe "Admin" do
      describe "termine_aktuelles" do
        refinery_login_with :refinery_user

        describe "termine_aktuelles list" do
          before do
            FactoryGirl.create(:termine_aktuelle, :title => "UniqueTitleOne")
            FactoryGirl.create(:termine_aktuelle, :title => "UniqueTitleTwo")
          end

          it "shows two items" do
            visit refinery.termine_aktuelles_admin_termine_aktuelles_path
            page.should have_content("UniqueTitleOne")
            page.should have_content("UniqueTitleTwo")
          end
        end

        describe "create" do
          before do
            visit refinery.termine_aktuelles_admin_termine_aktuelles_path

            click_link "Add New Termine Aktuelle"
          end

          context "valid data" do
            it "should succeed" do
              fill_in "Title", :with => "This is a test of the first string field"
              click_button "Save"

              page.should have_content("'This is a test of the first string field' was successfully added.")
              Refinery::TermineAktuelles::TermineAktuelle.count.should == 1
            end
          end

          context "invalid data" do
            it "should fail" do
              click_button "Save"

              page.should have_content("Title can't be blank")
              Refinery::TermineAktuelles::TermineAktuelle.count.should == 0
            end
          end

          context "duplicate" do
            before { FactoryGirl.create(:termine_aktuelle, :title => "UniqueTitle") }

            it "should fail" do
              visit refinery.termine_aktuelles_admin_termine_aktuelles_path

              click_link "Add New Termine Aktuelle"

              fill_in "Title", :with => "UniqueTitle"
              click_button "Save"

              page.should have_content("There were problems")
              Refinery::TermineAktuelles::TermineAktuelle.count.should == 1
            end
          end

        end

        describe "edit" do
          before { FactoryGirl.create(:termine_aktuelle, :title => "A title") }

          it "should succeed" do
            visit refinery.termine_aktuelles_admin_termine_aktuelles_path

            within ".actions" do
              click_link "Edit this termine aktuelle"
            end

            fill_in "Title", :with => "A different title"
            click_button "Save"

            page.should have_content("'A different title' was successfully updated.")
            page.should have_no_content("A title")
          end
        end

        describe "destroy" do
          before { FactoryGirl.create(:termine_aktuelle, :title => "UniqueTitleOne") }

          it "should succeed" do
            visit refinery.termine_aktuelles_admin_termine_aktuelles_path

            click_link "Remove this termine aktuelle forever"

            page.should have_content("'UniqueTitleOne' was successfully removed.")
            Refinery::TermineAktuelles::TermineAktuelle.count.should == 0
          end
        end

      end
    end
  end
end
