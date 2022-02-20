local R = require "pears.rule"

require 'pears'.setup(function(conf)
  conf.pair("'", {
    close = "'",
    -- Don't expand a quote if it comes after an alpha character
    should_expand = R.not_(R.start_of_context "[a-zA-Z]")
  })
end)
