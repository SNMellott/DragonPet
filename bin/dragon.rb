#!/usr/bin/env ruby

$LOAD_PATH.unshift(
  File.expand_path(
    '../../lib',
    __FILE__
  )
)
require 'game'

Game.new.start
