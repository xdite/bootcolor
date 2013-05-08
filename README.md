# BootColor


The original idea is from [lavish](http://lavishbootstrap.com/). An online bootstrap theme generator.
I decide to wrap it as a gem.


## Installation

Add these lines to your application's Gemfile:

    gem "bootcolor"

And then execute:

    $ bundle

You should create a `bootstrap-wrapper.css.scss` and mount in `application.css.scss`

``` 
//= require bootstrap-wrapper.css.scss
```

And add these two lines in `bootstrap-wrapper.css.css` (i.e. Bootcolor required `anjlab-bootstrap-rails` )

```
@import "bootstrap-color-config";
@import "twitter/bootstrap";

```

Create empty `bootstrap-color-config.css.scss`

`$ touch app/assets/stylesheets/bootstrap-color-config.css.scss`

## Usage

visit <http://your.project.url/switch_theme>, paste the image url, what BootColor do is generate bootstrap theme variable for you.


## Thanks

Special thanks for [mquan](https://github.com/mquan/lavish) for this idea.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
