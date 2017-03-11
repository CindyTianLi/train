class PageBase

  include Bbuddy::AcceptanceTest::Drivers

  class << self
    def open
      new.await
    end

    alias :assert_is_current_page :open
  end

  def disappear
    wait_for_element_does_not_exist(marked)
  end

  def await
    wait_for_none_animating
    wait_for_element_exists(marked)
    self
  end

end
