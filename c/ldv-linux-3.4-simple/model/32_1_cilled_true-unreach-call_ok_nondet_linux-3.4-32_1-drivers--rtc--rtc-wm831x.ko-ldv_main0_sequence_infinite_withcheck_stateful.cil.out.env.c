// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Function: __dynamic_dev_dbg
// with type: int __dynamic_dev_dbg(struct _ddebug *descriptor, const struct device *dev, const char *fmt, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dev_err
// with type: int dev_err(const struct device *dev, const char *fmt, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dev_get_drvdata
// with type: void *dev_get_drvdata(const struct device *dev)
// with return type: (void)*
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: dev_set_drvdata
// with type: int dev_set_drvdata(struct device *dev, void *data)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: device_init_wakeup
// with type: int device_init_wakeup(struct device *dev, bool val)
// with return type: int
int __VERIFIER_nondet_int(void);
int device_init_wakeup(struct device *arg0, bool arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: devm_kzalloc
// with type: void *devm_kzalloc(struct device *dev, size_t size, gfp_t gfp)
// with return type: (void)*
void *external_alloc(void);
void *devm_kzalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: free_irq
// with type: void free_irq(unsigned int, void *)
// with return type: void
void free_irq(unsigned int arg0, void *arg1) {
  // Void type
  return;
}

// Function: ldv_check_return_value
// with type: void ldv_check_return_value(int res)
// with return type: void
void ldv_check_return_value(int arg0) {
  // Void type
  return;
}

// Function: ldv_initialize
// with type: void ldv_initialize()
// with return type: void
void ldv_initialize() {
  // Void type
  return;
}

// Skip function: memcmp

// Function: msleep
// with type: void msleep(unsigned int msecs)
// with return type: void
void msleep(unsigned int arg0) {
  // Void type
  return;
}

// Function: platform_driver_register
// with type: int platform_driver_register(struct platform_driver *)
// with return type: int
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: platform_driver_unregister
// with type: void platform_driver_unregister(struct platform_driver *)
// with return type: void
void platform_driver_unregister(struct platform_driver *arg0) {
  // Void type
  return;
}

// Function: platform_get_irq_byname
// with type: int platform_get_irq_byname(struct platform_device *, const char *)
// with return type: int
int __VERIFIER_nondet_int(void);
int platform_get_irq_byname(struct platform_device *arg0, const char *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: request_threaded_irq
// with type: int request_threaded_irq(unsigned int irq, irqreturn_t (*handler)(int, void *), irqreturn_t (*thread_fn)(int, void *), unsigned long flags, const char *name, void *dev)
// with return type: int
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: rtc_device_register
// with type: struct rtc_device *rtc_device_register(const char *name, struct device *dev, const struct rtc_class_ops *ops, struct module *owner)
// with return type: (struct rtc_device)*
void *external_alloc(void);
struct rtc_device *rtc_device_register(const char *arg0, struct device *arg1, const struct rtc_class_ops *arg2, struct module *arg3) {
  // Pointer type
  return (struct rtc_device *)external_alloc();
}

// Function: rtc_device_unregister
// with type: void rtc_device_unregister(struct rtc_device *rtc)
// with return type: void
void rtc_device_unregister(struct rtc_device *arg0) {
  // Void type
  return;
}

// Function: rtc_time_to_tm
// with type: void rtc_time_to_tm(unsigned long time, struct rtc_time *tm)
// with return type: void
void rtc_time_to_tm(unsigned long arg0, struct rtc_time *arg1) {
  // Void type
  return;
}

// Function: rtc_tm_to_time
// with type: int rtc_tm_to_time(struct rtc_time *tm, unsigned long *time)
// with return type: int
int __VERIFIER_nondet_int(void);
int rtc_tm_to_time(struct rtc_time *arg0, unsigned long *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: rtc_update_irq
// with type: void rtc_update_irq(struct rtc_device *rtc, unsigned long num, unsigned long events)
// with return type: void
void rtc_update_irq(struct rtc_device *arg0, unsigned long arg1, unsigned long arg2) {
  // Void type
  return;
}

// Function: rtc_valid_tm
// with type: int rtc_valid_tm(struct rtc_time *tm)
// with return type: int
int __VERIFIER_nondet_int(void);
int rtc_valid_tm(struct rtc_time *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: wm831x_bulk_read
// with type: int wm831x_bulk_read(struct wm831x *wm831x, unsigned short reg, int count, u16 *buf)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_bulk_read(struct wm831x *arg0, unsigned short arg1, int arg2, u16 *arg3) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: wm831x_reg_read
// with type: int wm831x_reg_read(struct wm831x *wm831x, unsigned short reg)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_reg_read(struct wm831x *arg0, unsigned short arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: wm831x_reg_write
// with type: int wm831x_reg_write(struct wm831x *wm831x, unsigned short reg, unsigned short val)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_reg_write(struct wm831x *arg0, unsigned short arg1, unsigned short arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: wm831x_set_bits
// with type: int wm831x_set_bits(struct wm831x *wm831x, unsigned short reg, unsigned short mask, unsigned short val)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_set_bits(struct wm831x *arg0, unsigned short arg1, unsigned short arg2, unsigned short arg3) {
  // Simple type
  return __VERIFIER_nondet_int();
}

