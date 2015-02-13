# Build the presentation

## Prerequisites

Working in Ubuntu 14.04

```
sudo apt-get update
sudo apt-get install ruby1.9.3 bundler git
```

## Cloning revelations

```
mkdir -p ~/tmp
cd ~/tmp && git clone https://github.com/adrienthebo/revelations.git
```

oviously you should clone fosdem-2015

## Bundling

```
cd ~/tmp
for bun in revelations fosdem-2015; do pushd $bun && bundle install && popd; done
```

## install revelations

```
pushd ~/tmp/revelations && gem build revelations.gemspec && sudo gem install --local revelations-0.1.0.gem && popd
```

## generate slides

```
pushd ~/tmp/fosdem-2015 && bundle exec rev-present && popd
```

the generated slides are available in ~/tmp/fosdem-2015/output

Thanks for the great presentation !

