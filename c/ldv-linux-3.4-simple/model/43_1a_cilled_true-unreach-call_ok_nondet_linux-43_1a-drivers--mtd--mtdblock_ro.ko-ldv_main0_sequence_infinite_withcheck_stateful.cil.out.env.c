// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Skip function: __VERIFIER_nondet_pointer

// Function: add_mtd_blktrans_dev
// with type: int add_mtd_blktrans_dev(struct mtd_blktrans_dev *)
// with return type: int
int __VERIFIER_nondet_int(void);
int add_mtd_blktrans_dev(struct mtd_blktrans_dev *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: del_mtd_blktrans_dev
// with type: int del_mtd_blktrans_dev(struct mtd_blktrans_dev *)
// with return type: int
int __VERIFIER_nondet_int(void);
int del_mtd_blktrans_dev(struct mtd_blktrans_dev *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: deregister_mtd_blktrans
// with type: int deregister_mtd_blktrans(struct mtd_blktrans_ops *)
// with return type: int
int __VERIFIER_nondet_int(void);
int deregister_mtd_blktrans(struct mtd_blktrans_ops *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Skip function: kfree

// Function: kmem_cache_alloc
// with type: void *kmem_cache_alloc(struct kmem_cache *, gfp_t )
// with return type: (void)*
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: ldv_check_final_state
// with type: void ldv_check_final_state()
// with return type: void
void ldv_check_final_state() {
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

// Function: ldv_some_page
// with type: struct page *ldv_some_page()
// with return type: (struct page)*
void *external_alloc(void);
struct page *ldv_some_page() {
  // Pointer type
  return (struct page *)external_alloc();
}

// Function: mtd_read
// with type: int mtd_read(struct mtd_info *, loff_t , size_t , size_t *, u_char *)
// with return type: int
int __VERIFIER_nondet_int(void);
int mtd_read(struct mtd_info *arg0, loff_t arg1, size_t arg2, size_t *arg3, u_char *arg4) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: mtd_write
// with type: int mtd_write(struct mtd_info *, loff_t , size_t , size_t *, const u_char *)
// with return type: int
int __VERIFIER_nondet_int(void);
int mtd_write(struct mtd_info *arg0, loff_t arg1, size_t arg2, size_t *arg3, const u_char *arg4) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: register_mtd_blktrans
// with type: int register_mtd_blktrans(struct mtd_blktrans_ops *)
// with return type: int
int __VERIFIER_nondet_int(void);
int register_mtd_blktrans(struct mtd_blktrans_ops *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

