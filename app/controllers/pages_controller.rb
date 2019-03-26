class PagesController < ApplicationController

    def about
        @title = "About Us"
        @content = "This is the content page"
    end
end
