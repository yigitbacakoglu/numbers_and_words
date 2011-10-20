require 'rubygems'
require 'i18n'
require 'number_to_words_ru/array_additions/translations'
require 'number_to_words_ru/array_additions/helpers'
require 'number_to_words_ru/array_additions/conversion_logic'
require 'number_to_words_ru/array_additions/validations'
require 'number_to_words_ru/figures_array'
require 'number_to_words_ru/integer'
require 'number_to_words_ru/array'

module I18nInitialization
  extend self

  def init
    I18n.load_path << locale_files
  end

  def locale_files
    Dir[File.join(File.dirname(__FILE__), 'locales', '**/*')]
  end
end

I18nInitialization.init
