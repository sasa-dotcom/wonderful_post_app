require "test_helper"

class SampleArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_article = sample_articles(:one)
  end

  test "should get index" do
    get sample_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_article_url
    assert_response :success
  end

  test "should create sample_article" do
    assert_difference('SampleArticle.count') do
      post sample_articles_url, params: { sample_article: { content: @sample_article.content, title: @sample_article.title } }
    end

    assert_redirected_to sample_article_url(SampleArticle.last)
  end

  test "should show sample_article" do
    get sample_article_url(@sample_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_article_url(@sample_article)
    assert_response :success
  end

  test "should update sample_article" do
    patch sample_article_url(@sample_article), params: { sample_article: { content: @sample_article.content, title: @sample_article.title } }
    assert_redirected_to sample_article_url(@sample_article)
  end

  test "should destroy sample_article" do
    assert_difference('SampleArticle.count', -1) do
      delete sample_article_url(@sample_article)
    end

    assert_redirected_to sample_articles_url
  end
end
