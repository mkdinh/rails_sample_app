require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

	def setup
		@title = "Sample App using Ruby on Rails"
	end

	test 'should get root' do
		get root_path
		assert_response :success
	end

	test "should get home" do
		get root_path
		assert_response :success
		assert_select 'title', "Home | #{@title}"
	end

	test "should get help" do
		get help_path
		assert_response :success
		assert_select 'title', "Help | #{@title}"
	end

	test 'should get about' do
		get about_path
		assert_response :success
		assert_select 'title', "About | #{@title}"
	end

	test 'should get contact' do
		get contact_path
		assert_response :success
		assert_select 'title', "Contact | #{@title}"
	end

end
