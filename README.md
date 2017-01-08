
# RoboSapiens
## WowWee RoboRemote IR Dongle SDK - Quick and Dirt Ruby Lib

For the moment Only RoboSapiens is implemented

## Installation

Later if I consider this to be Rubygems worthy you would:

Add this line to your application's Gemfile:

```ruby
gem 'robo_sapiens'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install robo_sapiens

For the moment, clone this repo anr un:

    $ rake install


## Usage

    require "robo_sapiens"
    
    robot :talk_back
    robot :go_backward
    robot :roar
    robot :power_off
    
Complete list of available commands:

> all_demo, back_step, bulldozer, burp, dance, demo1, demo2, go_backward, go_forward, high5, left_hand_backward, left_hand_forward, left_lean_fwd, left_pic_up, left_sensor_program, left_sensor_program_excute, left_shoulder_backward, left_shoulder_forward, left_strike1, left_strike2, left_strike3, left_sweep, left_throw, left_thump, left_turn_step, listen, main_program, main_program_excute, main_program_play, oops, power_off, reset, right_hand_backward, right_hand_forward, right_lean_bwd, right_pick_up, right_sensor_program, right_sensor_program_excute, right_shoulder_backward, right_shoulder_forward, right_strike1, right_strike2, right_strike3, right_sweep, right_throw, right_thump, right_turn_step, roar, sleep, sonic_sensor_program, sonic_sensor_program_excute, step, stop, talk_back, turn_left, turn_right, waist_left, waist_right, wake_up, whistle

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/oripekelman/robo_sapiens_rb.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

