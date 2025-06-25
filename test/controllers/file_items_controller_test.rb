require "test_helper"

class FileItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @file_item = file_items(:one)
  end

  test "should get index" do
    get file_items_url
    assert_response :success
  end

  test "should get new" do
    get new_file_item_url
    assert_response :success
  end

  test "should create file_item" do
    assert_difference("FileItem.count") do
      post file_items_url, params: { file_item: { folder_id: @file_item.folder_id, name: @file_item.name } }
    end

    assert_redirected_to file_item_url(FileItem.last)
  end

  test "should show file_item" do
    get file_item_url(@file_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_file_item_url(@file_item)
    assert_response :success
  end

  test "should update file_item" do
    patch file_item_url(@file_item), params: { file_item: { folder_id: @file_item.folder_id, name: @file_item.name } }
    assert_redirected_to file_item_url(@file_item)
  end

  test "should destroy file_item" do
    assert_difference("FileItem.count", -1) do
      delete file_item_url(@file_item)
    end

    assert_redirected_to file_items_url
  end
end
