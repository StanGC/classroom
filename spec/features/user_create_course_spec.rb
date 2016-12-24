require 'rails_helper'

describe "user create course", :type => :feature do

  scenario "valid" do
    course = build_stubbed(:course)
    course_from.create course.title course.descruption
    expect(page).to have_text(course.title)
  end

  scenario "invalid" do
    course_form.create "", ""
    expect(page).to have_text t("course.new.add_course")
  end

  private

  def course_form
    sign_in
    home_page.go
    home_page.add_course
  end
end
