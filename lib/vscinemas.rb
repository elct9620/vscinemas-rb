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

  # Return Comings Movie List
  #
  # @return [VSCinemas::MovieList]
  #
  # @since 0.2.0
  def coming
    MovieList.new(type: 'coming', continue: true)
  end
end
