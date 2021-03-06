Ruby FFI Examples
=================

Native way
----------

Just following post [How to create a Ruby extension in C under 5 minutes](http://www.rubyinside.com/how-to-create-a-ruby-extension-in-c-in-under-5-minutes-100.html).

### Compiling

Generate a `Makefile`:

```
ruby extconf.rb
```

Now compile that C extension:

```
make
```

### Running

If you want to run an example:

```
ruby test.rb
```

Using RubyInline gem
--------------------

Testing [RubyInline](https://github.com/seattlerb/rubyinline) things go faster, test it by running:

```
bundle install
ruby rubyinline_example.rb
```

Using FFI gem
-------------

Testing [FFI](https://github.com/ffi/ffi):

```
bundle install
ruby ffi_example.rb
```
