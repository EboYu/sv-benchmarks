// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Skip function: __VERIFIER_nondet_pointer

// Skip function: __VERIFIER_nondet_ulong

// Function: __const_udelay
// with type: void __const_udelay(unsigned long)
// with return type: void
void __const_udelay(unsigned long arg0) {
  // Void type
  return;
}

// Function: __init_waitqueue_head
// with type: void __init_waitqueue_head(wait_queue_head_t *, const char *, struct lock_class_key *)
// with return type: void
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Void type
  return;
}

// Function: __init_work
// with type: void __init_work(struct work_struct *, int)
// with return type: void
void __init_work(struct work_struct *arg0, int arg1) {
  // Void type
  return;
}

// Function: __list_add
// with type: void __list_add(struct list_head *, struct list_head *, struct list_head *)
// with return type: void
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  // Void type
  return;
}

// Function: __mutex_init
// with type: void __mutex_init(struct mutex *, const char *, struct lock_class_key *)
// with return type: void
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Void type
  return;
}

// Function: __raw_spin_lock_init
// with type: void __raw_spin_lock_init(raw_spinlock_t *, const char *, struct lock_class_key *)
// with return type: void
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  // Void type
  return;
}

// Function: __request_module
// with type: int __request_module(bool , const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: __symbol_get
// with type: void *__symbol_get(const char *)
// with return type: (void)*
void *external_alloc(void);
void *__symbol_get(const char *arg0) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: __symbol_put
// with type: void __symbol_put(const char *)
// with return type: void
void __symbol_put(const char *arg0) {
  // Void type
  return;
}

// Function: __video_register_device
// with type: int __video_register_device(struct video_device *, int, int, int, struct module *)
// with return type: int
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: __wake_up
// with type: void __wake_up(wait_queue_head_t *, unsigned int, int, void *)
// with return type: void
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  // Void type
  return;
}

// Function: _raw_spin_lock_irqsave
// with type: unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *)
// with return type: unsigned long int
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: _raw_spin_unlock_irqrestore
// with type: void _raw_spin_unlock_irqrestore(raw_spinlock_t *, unsigned long)
// with return type: void
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  // Void type
  return;
}

// Skip function: calloc

// Function: del_timer_sync
// with type: int del_timer_sync(struct timer_list *)
// with return type: int
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dvb_dmx_init
// with type: int dvb_dmx_init(struct dvb_demux *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dvb_dmx_init(struct dvb_demux *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dvb_dmx_release
// with type: void dvb_dmx_release(struct dvb_demux *)
// with return type: void
void dvb_dmx_release(struct dvb_demux *arg0) {
  // Void type
  return;
}

// Function: dvb_dmx_swfilter_packets
// with type: void dvb_dmx_swfilter_packets(struct dvb_demux *, const u8 *, size_t )
// with return type: void
void dvb_dmx_swfilter_packets(struct dvb_demux *arg0, const u8 *arg1, size_t arg2) {
  // Void type
  return;
}

// Function: dvb_dmxdev_init
// with type: int dvb_dmxdev_init(struct dmxdev *, struct dvb_adapter *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dvb_dmxdev_init(struct dmxdev *arg0, struct dvb_adapter *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dvb_dmxdev_release
// with type: void dvb_dmxdev_release(struct dmxdev *)
// with return type: void
void dvb_dmxdev_release(struct dmxdev *arg0) {
  // Void type
  return;
}

// Function: dvb_frontend_detach
// with type: void dvb_frontend_detach(struct dvb_frontend *)
// with return type: void
void dvb_frontend_detach(struct dvb_frontend *arg0) {
  // Void type
  return;
}

// Function: dvb_net_init
// with type: int dvb_net_init(struct dvb_adapter *, struct dvb_net *, struct dmx_demux *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dvb_net_init(struct dvb_adapter *arg0, struct dvb_net *arg1, struct dmx_demux *arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dvb_net_release
// with type: void dvb_net_release(struct dvb_net *)
// with return type: void
void dvb_net_release(struct dvb_net *arg0) {
  // Void type
  return;
}

// Function: dvb_register_adapter
// with type: int dvb_register_adapter(struct dvb_adapter *, const char *, struct module *, struct device *, short *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dvb_register_adapter(struct dvb_adapter *arg0, const char *arg1, struct module *arg2, struct device *arg3, short *arg4) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dvb_register_frontend
// with type: int dvb_register_frontend(struct dvb_adapter *, struct dvb_frontend *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dvb_register_frontend(struct dvb_adapter *arg0, struct dvb_frontend *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dvb_unregister_adapter
// with type: int dvb_unregister_adapter(struct dvb_adapter *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dvb_unregister_adapter(struct dvb_adapter *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dvb_unregister_frontend
// with type: int dvb_unregister_frontend(struct dvb_frontend *)
// with return type: int
int __VERIFIER_nondet_int(void);
int dvb_unregister_frontend(struct dvb_frontend *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: external_allocated_data
// with type: void *external_allocated_data()
// with return type: (void)*
void *external_alloc(void);
void *external_allocated_data() {
  // Pointer type
  return (void *)external_alloc();
}

// Skip function: free

// Function: i2c_add_adapter
// with type: int i2c_add_adapter(struct i2c_adapter *)
// with return type: int
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: i2c_del_adapter
// with type: void i2c_del_adapter(struct i2c_adapter *)
// with return type: void
void i2c_del_adapter(struct i2c_adapter *arg0) {
  // Void type
  return;
}

// Function: i2c_master_recv
// with type: int i2c_master_recv(const struct i2c_client *, char *, int)
// with return type: int
int __VERIFIER_nondet_int(void);
int i2c_master_recv(const struct i2c_client *arg0, char *arg1, int arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: init_timer_key
// with type: void init_timer_key(struct timer_list *, unsigned int, const char *, struct lock_class_key *)
// with return type: void
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  // Void type
  return;
}

// Skip function: kfree

// Function: ldv_after_alloc
// with type: void ldv_after_alloc(void *)
// with return type: void
void ldv_after_alloc(void *arg0) {
  // Void type
  return;
}

// Function: ldv_assert
// with type: void ldv_assert(const char *, int)
// with return type: void
void ldv_assert(const char *arg0, int arg1) {
  // Void type
  return;
}

// Function: ldv_check_alloc_flags
// with type: void ldv_check_alloc_flags(gfp_t )
// with return type: void
void ldv_check_alloc_flags(gfp_t arg0) {
  // Void type
  return;
}

// Function: ldv_pre_usb_register_driver
// with type: int ldv_pre_usb_register_driver()
// with return type: int
int __VERIFIER_nondet_int(void);
int ldv_pre_usb_register_driver() {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: ldv_switch_to_interrupt_context
// with type: void ldv_switch_to_interrupt_context()
// with return type: void
void ldv_switch_to_interrupt_context() {
  // Void type
  return;
}

// Function: ldv_switch_to_process_context
// with type: void ldv_switch_to_process_context()
// with return type: void
void ldv_switch_to_process_context() {
  // Void type
  return;
}

// Function: list_del
// with type: void list_del(struct list_head *)
// with return type: void
void list_del(struct list_head *arg0) {
  // Void type
  return;
}

// Function: lockdep_init_map
// with type: void lockdep_init_map(struct lockdep_map *, const char *, struct lock_class_key *, int)
// with return type: void
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  // Void type
  return;
}

// Skip function: malloc

// Skip function: memcpy

// Skip function: memset

// Function: mod_timer
// with type: int mod_timer(struct timer_list *, unsigned long)
// with return type: int
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: msleep
// with type: void msleep(unsigned int)
// with return type: void
void msleep(unsigned int arg0) {
  // Void type
  return;
}

// Function: printk
// with type: int printk(const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: queue_work_on
// with type: bool queue_work_on(int, struct workqueue_struct *, struct work_struct *)
// with return type: bool 
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  // Typedef type
  // Real type: _Bool
  // Simple type
  return __VERIFIER_nondet_bool();
}

// Skip function: snprintf

// Skip function: strcpy

// Function: strlcpy
// with type: size_t strlcpy(char *, const char *, size_t )
// with return type: size_t 
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  // Typedef type
  // Real type: __kernel_size_t 
  // Typedef type
  // Real type: __kernel_ulong_t 
  // Typedef type
  // Real type: unsigned long
  // Simple type
  return __VERIFIER_nondet_ulong();
}

// Function: tveeprom_hauppauge_analog
// with type: void tveeprom_hauppauge_analog(struct i2c_client *, struct tveeprom *, unsigned char *)
// with return type: void
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  // Void type
  return;
}

// Function: tveeprom_read
// with type: int tveeprom_read(struct i2c_client *, unsigned char *, int)
// with return type: int
int __VERIFIER_nondet_int(void);
int tveeprom_read(struct i2c_client *arg0, unsigned char *arg1, int arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: usb_alloc_coherent
// with type: void *usb_alloc_coherent(struct usb_device *, size_t , gfp_t , dma_addr_t *)
// with return type: (void)*
void *external_alloc(void);
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: usb_alloc_urb
// with type: struct urb *usb_alloc_urb(int, gfp_t )
// with return type: (struct urb)*
void *external_alloc(void);
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  // Pointer type
  return (struct urb *)external_alloc();
}

// Function: usb_control_msg
// with type: int usb_control_msg(struct usb_device *, unsigned int, __u8 , __u8 , __u16 , __u16 , void *, __u16 , int)
// with return type: int
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: usb_deregister
// with type: void usb_deregister(struct usb_driver *)
// with return type: void
void usb_deregister(struct usb_driver *arg0) {
  // Void type
  return;
}

// Function: usb_free_coherent
// with type: void usb_free_coherent(struct usb_device *, size_t , void *, dma_addr_t )
// with return type: void
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  // Void type
  return;
}

// Function: usb_free_urb
// with type: void usb_free_urb(struct urb *)
// with return type: void
void usb_free_urb(struct urb *arg0) {
  // Void type
  return;
}

// Function: usb_kill_urb
// with type: void usb_kill_urb(struct urb *)
// with return type: void
void usb_kill_urb(struct urb *arg0) {
  // Void type
  return;
}

// Function: usb_register_driver
// with type: int usb_register_driver(struct usb_driver *, struct module *, const char *)
// with return type: int
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: usb_set_interface
// with type: int usb_set_interface(struct usb_device *, int, int)
// with return type: int
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: usb_submit_urb
// with type: int usb_submit_urb(struct urb *, gfp_t )
// with return type: int
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: usb_unlink_urb
// with type: int usb_unlink_urb(struct urb *)
// with return type: int
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: v4l2_ctrl_handler_free
// with type: void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *)
// with return type: void
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  // Void type
  return;
}

// Function: v4l2_ctrl_handler_init_class
// with type: int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *, unsigned int, struct lock_class_key *, const char *)
// with return type: int
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: v4l2_ctrl_log_status
// with type: int v4l2_ctrl_log_status(struct file *, void *)
// with return type: int
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_log_status(struct file *arg0, void *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: v4l2_ctrl_poll
// with type: unsigned int v4l2_ctrl_poll(struct file *, struct poll_table_struct *)
// with return type: unsigned int
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  // Simple type
  return __VERIFIER_nondet_uint();
}

// Function: v4l2_ctrl_subscribe_event
// with type: int v4l2_ctrl_subscribe_event(struct v4l2_fh *, const struct v4l2_event_subscription *)
// with return type: int
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: v4l2_device_disconnect
// with type: void v4l2_device_disconnect(struct v4l2_device *)
// with return type: void
void v4l2_device_disconnect(struct v4l2_device *arg0) {
  // Void type
  return;
}

// Function: v4l2_device_put
// with type: int v4l2_device_put(struct v4l2_device *)
// with return type: int
int __VERIFIER_nondet_int(void);
int v4l2_device_put(struct v4l2_device *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: v4l2_device_register
// with type: int v4l2_device_register(struct device *, struct v4l2_device *)
// with return type: int
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: v4l2_device_unregister
// with type: void v4l2_device_unregister(struct v4l2_device *)
// with return type: void
void v4l2_device_unregister(struct v4l2_device *arg0) {
  // Void type
  return;
}

// Function: v4l2_event_unsubscribe
// with type: int v4l2_event_unsubscribe(struct v4l2_fh *, const struct v4l2_event_subscription *)
// with return type: int
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: v4l2_fh_add
// with type: void v4l2_fh_add(struct v4l2_fh *)
// with return type: void
void v4l2_fh_add(struct v4l2_fh *arg0) {
  // Void type
  return;
}

// Function: v4l2_fh_del
// with type: void v4l2_fh_del(struct v4l2_fh *)
// with return type: void
void v4l2_fh_del(struct v4l2_fh *arg0) {
  // Void type
  return;
}

// Function: v4l2_fh_exit
// with type: void v4l2_fh_exit(struct v4l2_fh *)
// with return type: void
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  // Void type
  return;
}

// Function: v4l2_fh_init
// with type: void v4l2_fh_init(struct v4l2_fh *, struct video_device *)
// with return type: void
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  // Void type
  return;
}

// Function: v4l2_get_timestamp
// with type: void v4l2_get_timestamp(struct timeval *)
// with return type: void
void v4l2_get_timestamp(struct timeval *arg0) {
  // Void type
  return;
}

// Function: v4l2_i2c_new_subdev
// with type: struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *, struct i2c_adapter *, const char *, u8 , const unsigned short *)
// with return type: (struct v4l2_subdev)*
void *external_alloc(void);
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  // Pointer type
  return (struct v4l2_subdev *)external_alloc();
}

// Function: video_devdata
// with type: struct video_device *video_devdata(struct file *)
// with return type: (struct video_device)*
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  // Pointer type
  return (struct video_device *)external_alloc();
}

// Function: video_device_alloc
// with type: struct video_device *video_device_alloc()
// with return type: (struct video_device)*
void *external_alloc(void);
struct video_device *video_device_alloc() {
  // Pointer type
  return (struct video_device *)external_alloc();
}

// Function: video_device_release
// with type: void video_device_release(struct video_device *)
// with return type: void
void video_device_release(struct video_device *arg0) {
  // Void type
  return;
}

// Function: video_ioctl2
// with type: long int video_ioctl2(struct file *, unsigned int, unsigned long)
// with return type: long int
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  // Simple type
  return __VERIFIER_nondet_long();
}

// Function: video_unregister_device
// with type: void video_unregister_device(struct video_device *)
// with return type: void
void video_unregister_device(struct video_device *arg0) {
  // Void type
  return;
}

// Function: videobuf_dqbuf
// with type: int videobuf_dqbuf(struct videobuf_queue *, struct v4l2_buffer *, int)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_iolock
// with type: int videobuf_iolock(struct videobuf_queue *, struct videobuf_buffer *, struct v4l2_framebuffer *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_mmap_free
// with type: int videobuf_mmap_free(struct videobuf_queue *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_mmap_free(struct videobuf_queue *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_mmap_mapper
// with type: int videobuf_mmap_mapper(struct videobuf_queue *, struct vm_area_struct *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_poll_stream
// with type: unsigned int videobuf_poll_stream(struct file *, struct videobuf_queue *, poll_table *)
// with return type: unsigned int
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  // Simple type
  return __VERIFIER_nondet_uint();
}

// Function: videobuf_qbuf
// with type: int videobuf_qbuf(struct videobuf_queue *, struct v4l2_buffer *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_querybuf
// with type: int videobuf_querybuf(struct videobuf_queue *, struct v4l2_buffer *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_queue_is_busy
// with type: int videobuf_queue_is_busy(struct videobuf_queue *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_queue_is_busy(struct videobuf_queue *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_queue_vmalloc_init
// with type: void videobuf_queue_vmalloc_init(struct videobuf_queue *, const struct videobuf_queue_ops *, struct device *, spinlock_t *, enum v4l2_buf_type , enum v4l2_field , unsigned int, void *, struct mutex *)
// with return type: void
void videobuf_queue_vmalloc_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  // Void type
  return;
}

// Function: videobuf_read_stream
// with type: ssize_t videobuf_read_stream(struct videobuf_queue *, char *, size_t , loff_t *, int, int)
// with return type: ssize_t 
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_stream(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4, int arg5) {
  // Typedef type
  // Real type: __kernel_ssize_t 
  // Typedef type
  // Real type: __kernel_long_t 
  // Typedef type
  // Real type: long
  // Simple type
  return __VERIFIER_nondet_long();
}

// Function: videobuf_reqbufs
// with type: int videobuf_reqbufs(struct videobuf_queue *, struct v4l2_requestbuffers *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_stop
// with type: void videobuf_stop(struct videobuf_queue *)
// with return type: void
void videobuf_stop(struct videobuf_queue *arg0) {
  // Void type
  return;
}

// Function: videobuf_streamoff
// with type: int videobuf_streamoff(struct videobuf_queue *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_streamon
// with type: int videobuf_streamon(struct videobuf_queue *)
// with return type: int
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: videobuf_to_vmalloc
// with type: void *videobuf_to_vmalloc(struct videobuf_buffer *)
// with return type: (void)*
void *external_alloc(void);
void *videobuf_to_vmalloc(struct videobuf_buffer *arg0) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: videobuf_vmalloc_free
// with type: void videobuf_vmalloc_free(struct videobuf_buffer *)
// with return type: void
void videobuf_vmalloc_free(struct videobuf_buffer *arg0) {
  // Void type
  return;
}

