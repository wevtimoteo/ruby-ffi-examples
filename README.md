My Ruby's C extension
=====================

Just following post [How to create a Ruby extension in C under 5 minutes](http://www.rubyinside.com/how-to-create-a-ruby-extension-in-c-in-under-5-minutes-100.html).

## Compiling

Generate a `Makefile`:

```
ruby extconf.rb
```

Now compile that C extension:

```
make
```

## Running

If you want to run an example:

```
ruby test.rb
```
