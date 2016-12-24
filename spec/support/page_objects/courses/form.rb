require_relative "../base"

module PageObjects
  module Courses
    class Form < Base
      def create(title, desciption)
        fill_form :course, :new, title: title
        find('[name="course[description]"]', visible: false).set
        click_on "Submit"
      end
    end
  end
end
