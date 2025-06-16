require "application_system_test_case"

class SampleArticlesTest < ApplicationSystemTestCase
  setup do
    @sample_article = sample_articles(:one)
  end

  test "visiting the index" do
    visit sample_articles_url
    assert_selector "h1", text: "Sample Articles"
  end

  test "creating a Sample article" do
    visit sample_articles_url
    click_on "New Sample Article"

    fill_in "Content", with: @sample_article.content
    fill_in "Title", with: @sample_article.title
    click_on "Create Sample article"

    assert_text "Sample article was successfully created"
    click_on "Back"
  end

  test "updating a Sample article" do
    visit sample_articles_url
    click_on "Edit", match: :first

    fill_in "Content", with: @sample_article.content
    fill_in "Title", with: @sample_article.title
    click_on "Update Sample article"

    assert_text "Sample article was successfully updated"
    click_on "Back"
  end

  test "destroying a Sample article" do
    visit sample_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sample article was successfully destroyed"
  end
end
