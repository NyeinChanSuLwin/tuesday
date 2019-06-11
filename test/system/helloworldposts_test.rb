require "application_system_test_case"

class HelloworldpostsTest < ApplicationSystemTestCase
  setup do
    @helloworldpost = helloworldposts(:one)
  end

  test "visiting the index" do
    visit helloworldposts_url
    assert_selector "h1", text: "Helloworldposts"
  end

  test "creating a Helloworldpost" do
    visit helloworldposts_url
    click_on "New Helloworldpost"

    fill_in "Description", with: @helloworldpost.description
    fill_in "Title", with: @helloworldpost.title
    click_on "Create Helloworldpost"

    assert_text "Helloworldpost was successfully created"
    click_on "Back"
  end

  test "updating a Helloworldpost" do
    visit helloworldposts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @helloworldpost.description
    fill_in "Title", with: @helloworldpost.title
    click_on "Update Helloworldpost"

    assert_text "Helloworldpost was successfully updated"
    click_on "Back"
  end

  test "destroying a Helloworldpost" do
    visit helloworldposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Helloworldpost was successfully destroyed"
  end
end
