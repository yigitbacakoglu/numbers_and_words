# frozen_string_literal: true

Hash[
  NumbersAndWords::I18n::Pluralization.languages.map do |language|
    [language.to_sym, {
      i18n: {
        plural: {
          rule: "NumbersAndWords::I18n::Plurals::#{language.split('-').collect(&:capitalize).join}::RULE".constantize
        }
      }
    }]
  end
]
