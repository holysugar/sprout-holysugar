default["rbenv"]["user_installs"] = [
  { "user" => node["current_user"],
    "rubies" => ["2.0.0-p247", "1.9.3-p448"],
    "global" => "2.0.0-p247",
    "gems" => {
      "2.0.0-p247" => [
        { "name" => "bundler" },
        { "name" => "rake" }
      ],
      "1.9.3-p448" => [
        { "name" => "bundler" },
        { "name" => "rake" }
      ]
    }
  }
]
