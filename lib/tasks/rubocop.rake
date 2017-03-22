# frozen_string_literal: true
# Adds the following rake tasks
# rake rubocop
# rake rubocop:auto_correct

begin
  require 'rubocop/rake_task'
  desc 'Lint all Ruby files'
  RuboCop::RakeTask.new
# rubocop: disable Lint/HandleExceptions
rescue LoadError
end
