# Pomodoro::Gui

[![GemVersion](https://badge.fury.io/rb/pomodoro-gui.svg)](http://badge.fury.io/rb/pomodoro-gui)

Just a simple Pomodoro with a minimal graphical interface made in Ruby with the help of Gosu made for fun.

## About

The Pomodoro Technique is a time management method developed by Francesco Cirillo in the late 1980s. The technique uses a timer to break down work into intervals, traditionally 25 minutes in length, separated by short breaks. These intervals are called pomodoros, the plural in English of the Italian word pomodoro, which means tomato. The method is based on the idea that frequent breaks can improve mental agility. (Wikipedia)

## Original author

Iván González, *a.k.a* [dreamingechoes](https://github.com/dreamingechoes)

## Installation

Due to the fact that the gem uses Gosu to launch the graphical interface, you have to install first the Gosu dependencies:

### For Mac OS X

Gosu is built on top of the SDL 2 library. I recommend installing Homebrew and then running `brew install sdl2`.

### For Linux

You will need the following packages, even though the names will be different in every distribution: libsdl2-dev, libsdl2-ttf-dev, libpango1.0-dev, libgl1-mesa-dev, libfreeimage-dev, libopenal-dev, libsndfile-dev.

More info about this dependencies here: [Gosu's Wiki](https://github.com/gosu/gosu/wiki)

Then, you can install the gem as any other gem:

```sh
$ gem install pomodoro-gui
```

## Usage

Once installed, you can see from the terminal all the options by typing `pomodoro-gui -h`:

```sh
Usage: pomodoro-gui [options]
    -r, --rest [REST]                Choose rest time (in minutes)
    -i, --interval [INTERVAL]        Choose pomodoro length time (in minutes)
        --version                    Show version
    -h, --help                       Show this message
```

To start the pomodoro with the default values, just simply execute `pomodoro-gui`. The default values are 25 minutes for the pomodoros, and 5 minutes for the rest's periods.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dreamingechoes/pomodoro-gui. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
