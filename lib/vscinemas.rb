# frozen_string_literal: true

require_relative 'vscinemas/version'
require 'nokogiri'
require 'date'
require 'net/http'

# The VSCinemas Film Poller
#
# @since 0.1.0
module VSCinemas
  # @since 0.1.0
  ENDPOINT = 'https://www.vscinemas.com.tw'

  # @since 0.1.0
  PATH = '/vsweb/film/index.aspx'

  require_relative 'vscinemas/movie_item'
  require_relative 'vscinemas/movie_list'

  module_function

  # Return Movie List
  #
  # @return [VSCinemas::MovieList]
  #
  # @since 0.1.0
  def movies
    MovieList.new(continue: true)
  end

  alias films movies
end
