require "application_system_test_case"

class FileItemsTest < ApplicationSystemTestCase
  setup do
    @file_item = file_items(:one)
  end

  test "visiting the index" do
    visit file_items_url
    assert_selector "h1", text: "File items"
  end

  test "should create file item" do
    visit file_items_url
    click_on "New file item"

    fill_in "Folder", with: @file_item.folder_id
    fill_in "Name", with: @file_item.name
    click_on "Create File item"

    assert_text "File item was successfully created"
    click_on "Back"
  end

  test "should update File item" do
    visit file_item_url(@file_item)
    click_on "Edit this file item", match: :first

    fill_in "Folder", with: @file_item.folder_id
    fill_in "Name", with: @file_item.name
    click_on "Update File item"

    assert_text "File item was successfully updated"
    click_on "Back"
  end

  test "should destroy File item" do
    visit file_item_url(@file_item)
    click_on "Destroy this file item", match: :first

    assert_text "File item was successfully destroyed"
  end
end
