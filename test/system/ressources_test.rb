require "application_system_test_case"

class RessourcesTest < ApplicationSystemTestCase
  setup do
    @ressource = ressources(:one)
  end

  test "visiting the index" do
    visit ressources_url
    assert_selector "h1", text: "Ressources"
  end

  test "creating a Ressource" do
    visit ressources_url
    click_on "New Ressource"

    fill_in "Author", with: @ressource.author_id
    fill_in "Description", with: @ressource.description
    fill_in "Link", with: @ressource.link
    fill_in "Link2", with: @ressource.link2
    fill_in "Mini description", with: @ressource.mini_description
    fill_in "Title", with: @ressource.title
    click_on "Create Ressource"

    assert_text "Ressource was successfully created"
    click_on "Back"
  end

  test "updating a Ressource" do
    visit ressources_url
    click_on "Edit", match: :first

    fill_in "Author", with: @ressource.author_id
    fill_in "Description", with: @ressource.description
    fill_in "Link", with: @ressource.link
    fill_in "Link2", with: @ressource.link2
    fill_in "Mini description", with: @ressource.mini_description
    fill_in "Title", with: @ressource.title
    click_on "Update Ressource"

    assert_text "Ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource" do
    visit ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource was successfully destroyed"
  end
end
