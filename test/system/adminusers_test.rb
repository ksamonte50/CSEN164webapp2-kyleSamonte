require "application_system_test_case"

class AdminusersTest < ApplicationSystemTestCase
  setup do
    @adminuser = adminusers(:one)
  end

  test "visiting the index" do
    visit adminusers_url
    assert_selector "h1", text: "Adminusers"
  end

  test "should create adminuser" do
    visit adminusers_url
    click_on "New adminuser"

    fill_in "Name", with: @adminuser.name
    fill_in "Password digest", with: @adminuser.password_digest
    click_on "Create Adminuser"

    assert_text "Adminuser was successfully created"
    click_on "Back"
  end

  test "should update Adminuser" do
    visit adminuser_url(@adminuser)
    click_on "Edit this adminuser", match: :first

    fill_in "Name", with: @adminuser.name
    fill_in "Password digest", with: @adminuser.password_digest
    click_on "Update Adminuser"

    assert_text "Adminuser was successfully updated"
    click_on "Back"
  end

  test "should destroy Adminuser" do
    visit adminuser_url(@adminuser)
    click_on "Destroy this adminuser", match: :first

    assert_text "Adminuser was successfully destroyed"
  end
end
