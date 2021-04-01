require "application_system_test_case"

class BookmarksTest < ApplicationSystemTestCase
  setup do
    @bookmark = bookmarks(:one)
  end

  test "visiting the index" do
    visit bookmarks_url
    assert_selector "h1", text: "Bookmarks"
  end

  test "creating a Bookmark" do
    visit bookmarks_url
    click_on "New Bookmark"

    fill_in "Category", with: @bookmark.category_id
    fill_in "Id", with: @bookmark.id
    fill_in "Kind", with: @bookmark.kind_id
    fill_in "Name", with: @bookmark.name
    fill_in "Url", with: @bookmark.url
    click_on "Create Bookmark"

    assert_text "Bookmark was successfully created"
    click_on "Back"
  end

  test "updating a Bookmark" do
    visit bookmarks_url
    click_on "Edit", match: :first

    fill_in "Category", with: @bookmark.category_id
    fill_in "Id", with: @bookmark.id
    fill_in "Kind", with: @bookmark.kind_id
    fill_in "Name", with: @bookmark.name
    fill_in "Url", with: @bookmark.url
    click_on "Update Bookmark"

    assert_text "Bookmark was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookmark" do
    visit bookmarks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookmark was successfully destroyed"
  end
end
