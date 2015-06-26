#include "ruby.h"

VALUE MyRubyCExtension = Qnil;

void Init_myrubycextension();

VALUE method_testing(VALUE self);

void Init_myrubycextension() {
  MyRubyCExtension = rb_define_module("MyRubyCExtension");
  rb_define_method(MyRubyCExtension, "testing", method_testing, 0);
}

VALUE method_testing(VALUE self) {
  int x = 42;
  return INT2NUM(x);
}
