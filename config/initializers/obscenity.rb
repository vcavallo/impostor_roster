Obscenity.configure do |config|
  config.blacklist   = "lib/profanity_list.yml"
  config.replacement = :stars
end
