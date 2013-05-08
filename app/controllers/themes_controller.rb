require 'prizm'
class ThemesController < ApplicationController

  def switch
    if params[:image_url]
      @url = params[:image_url]
      begin
        extr = Prizm::Extractor.new(@url)
        @colors = extr.get_colors(7, false).sort { |a, b| b.to_hsla[2] <=> a.to_hsla[2] }.map { |p| extr.to_hex(p) }
        extr = nil
      rescue
        @colors = []
      end

      write_css
    end
  end

  private

  def write_css
       content = <<-RUBY
$white:                 #{@colors[0]};
$grayLighter:           #{@colors[1]};
$grayLight:             #{@colors[2]};
$gray:                  #{@colors[3]};
$linkColor:             #{@colors[4]};
$grayDark:              #{@colors[5]};
$black:                 #{@colors[6]};

$navbarBackgroundHighlight:       $grayDark;

$navbarText:                      $gray;
$navbarLinkColor:                 $gray;
$navbarLinkColorHover:            $grayLighter;
$navbarLinkColorActive:           $grayLighter;

RUBY

    File.open(Rails.root + "app/assets/stylesheets/bootstrap-color-config.css.scss", "w+") do |f|
      f.write(content)
    end
  end
end
