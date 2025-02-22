extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int gfp_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct device;
struct completion;
struct completion;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct arch_spinlock;
struct arch_spinlock;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct lockdep_map;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct vm_area_struct;
struct vm_area_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct klist_node;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned char active : 1 ;
};
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct regulator;
struct regulator;
struct virtual_consumer_data {
   struct mutex lock ;
   struct regulator *regulator ;
   bool enabled ;
   int min_uV ;
   int max_uV ;
   int min_uA ;
   int max_uA ;
   unsigned int mode ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{ int tmp ;
  long long *__cil_tmp6 ;
  {
  {
  __cil_tmp6 = (long long *)res;
  tmp = kstrtoll(s, base, __cil_tmp6);
  }
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern bool sysfs_streq(char const * , char const * ) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{ long tmp ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  long __cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )ptr;
  __cil_tmp4 = __cil_tmp3 > 0xfffffffffffff000UL;
  __cil_tmp5 = (long )__cil_tmp4;
  tmp = __builtin_expect(__cil_tmp5, 0L);
  }
  return (tmp);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void *__VERIFIER_nondet_pointer(void) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern struct regulator *regulator_get(struct device * , char const * ) ;
extern void regulator_put(struct regulator * ) ;
extern int regulator_enable(struct regulator * ) ;
extern int regulator_disable(struct regulator * ) ;
extern int regulator_set_voltage(struct regulator * , int , int ) ;
extern int regulator_set_current_limit(struct regulator * , int , int ) ;
extern int regulator_set_mode(struct regulator * , unsigned int ) ;
extern unsigned int regulator_get_mode(struct regulator * ) ;
static void update_voltage_constraints(struct device *dev , struct virtual_consumer_data *data )
{ int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  int __cil_tmp21 ;
  struct _ddebug *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned char __cil_tmp29 ;
  long __cil_tmp30 ;
  long __cil_tmp31 ;
  struct device const *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct regulator *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  int __cil_tmp47 ;
  struct device const *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  bool __cil_tmp57 ;
  struct _ddebug *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned char __cil_tmp65 ;
  long __cil_tmp66 ;
  long __cil_tmp67 ;
  struct device const *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct regulator *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  struct device const *__cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  int __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  int __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  bool __cil_tmp83 ;
  struct _ddebug *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned char __cil_tmp91 ;
  long __cil_tmp92 ;
  long __cil_tmp93 ;
  struct device const *__cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  struct regulator *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  struct device const *__cil_tmp100 ;
  {
  {
  __cil_tmp10 = (unsigned long )data;
  __cil_tmp11 = __cil_tmp10 + 180;
  __cil_tmp12 = *((int *)__cil_tmp11);
  if (__cil_tmp12 != 0) {
    {
    __cil_tmp13 = (unsigned long )data;
    __cil_tmp14 = __cil_tmp13 + 184;
    __cil_tmp15 = *((int *)__cil_tmp14);
    if (__cil_tmp15 != 0) {
      {
      __cil_tmp16 = (unsigned long )data;
      __cil_tmp17 = __cil_tmp16 + 184;
      __cil_tmp18 = *((int *)__cil_tmp17);
      __cil_tmp19 = (unsigned long )data;
      __cil_tmp20 = __cil_tmp19 + 180;
      __cil_tmp21 = *((int *)__cil_tmp20);
      if (__cil_tmp21 <= __cil_tmp18) {
        {
        __cil_tmp22 = & descriptor;
        *((char const **)__cil_tmp22) = "virtual";
        __cil_tmp23 = (unsigned long )(& descriptor) + 8;
        *((char const **)__cil_tmp23) = "update_voltage_constraints";
        __cil_tmp24 = (unsigned long )(& descriptor) + 16;
        *((char const **)__cil_tmp24) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12252/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/virtual.c.p";
        __cil_tmp25 = (unsigned long )(& descriptor) + 24;
        *((char const **)__cil_tmp25) = "Requesting %d-%duV\n";
        __cil_tmp26 = (unsigned long )(& descriptor) + 32;
        *((unsigned int *)__cil_tmp26) = 55U;
        __cil_tmp27 = (unsigned long )(& descriptor) + 35;
        *((unsigned char *)__cil_tmp27) = (unsigned char)1;
        __cil_tmp28 = (unsigned long )(& descriptor) + 35;
        __cil_tmp29 = *((unsigned char *)__cil_tmp28);
        __cil_tmp30 = (long )__cil_tmp29;
        __cil_tmp31 = __cil_tmp30 & 1L;
        tmp = __builtin_expect(__cil_tmp31, 0L);
        }
        if (tmp != 0L) {
          {
          __cil_tmp32 = (struct device const *)dev;
          __cil_tmp33 = (unsigned long )data;
          __cil_tmp34 = __cil_tmp33 + 180;
          __cil_tmp35 = *((int *)__cil_tmp34);
          __cil_tmp36 = (unsigned long )data;
          __cil_tmp37 = __cil_tmp36 + 184;
          __cil_tmp38 = *((int *)__cil_tmp37);
          __dynamic_dev_dbg(& descriptor, __cil_tmp32, "Requesting %d-%duV\n", __cil_tmp35,
                            __cil_tmp38);
          }
        } else {
        }
        {
        __cil_tmp39 = (unsigned long )data;
        __cil_tmp40 = __cil_tmp39 + 168;
        __cil_tmp41 = *((struct regulator **)__cil_tmp40);
        __cil_tmp42 = (unsigned long )data;
        __cil_tmp43 = __cil_tmp42 + 180;
        __cil_tmp44 = *((int *)__cil_tmp43);
        __cil_tmp45 = (unsigned long )data;
        __cil_tmp46 = __cil_tmp45 + 184;
        __cil_tmp47 = *((int *)__cil_tmp46);
        ret = regulator_set_voltage(__cil_tmp41, __cil_tmp44, __cil_tmp47);
        }
        if (ret != 0) {
          {
          __cil_tmp48 = (struct device const *)dev;
          dev_err(__cil_tmp48, "regulator_set_voltage() failed: %d\n", ret);
          }
          return;
        } else {
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp49 = (unsigned long )data;
  __cil_tmp50 = __cil_tmp49 + 180;
  __cil_tmp51 = *((int *)__cil_tmp50);
  if (__cil_tmp51 != 0) {
    {
    __cil_tmp52 = (unsigned long )data;
    __cil_tmp53 = __cil_tmp52 + 184;
    __cil_tmp54 = *((int *)__cil_tmp53);
    if (__cil_tmp54 != 0) {
      {
      __cil_tmp55 = (unsigned long )data;
      __cil_tmp56 = __cil_tmp55 + 176;
      __cil_tmp57 = *((bool *)__cil_tmp56);
      if (! __cil_tmp57) {
        {
        __cil_tmp58 = & descriptor___0;
        *((char const **)__cil_tmp58) = "virtual";
        __cil_tmp59 = (unsigned long )(& descriptor___0) + 8;
        *((char const **)__cil_tmp59) = "update_voltage_constraints";
        __cil_tmp60 = (unsigned long )(& descriptor___0) + 16;
        *((char const **)__cil_tmp60) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12252/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/virtual.c.p";
        __cil_tmp61 = (unsigned long )(& descriptor___0) + 24;
        *((char const **)__cil_tmp61) = "Enabling regulator\n";
        __cil_tmp62 = (unsigned long )(& descriptor___0) + 32;
        *((unsigned int *)__cil_tmp62) = 66U;
        __cil_tmp63 = (unsigned long )(& descriptor___0) + 35;
        *((unsigned char *)__cil_tmp63) = (unsigned char)1;
        __cil_tmp64 = (unsigned long )(& descriptor___0) + 35;
        __cil_tmp65 = *((unsigned char *)__cil_tmp64);
        __cil_tmp66 = (long )__cil_tmp65;
        __cil_tmp67 = __cil_tmp66 & 1L;
        tmp___0 = __builtin_expect(__cil_tmp67, 0L);
        }
        if (tmp___0 != 0L) {
          {
          __cil_tmp68 = (struct device const *)dev;
          __dynamic_dev_dbg(& descriptor___0, __cil_tmp68, "Enabling regulator\n");
          }
        } else {
        }
        {
        __cil_tmp69 = (unsigned long )data;
        __cil_tmp70 = __cil_tmp69 + 168;
        __cil_tmp71 = *((struct regulator **)__cil_tmp70);
        ret = regulator_enable(__cil_tmp71);
        }
        if (ret == 0) {
          __cil_tmp72 = (unsigned long )data;
          __cil_tmp73 = __cil_tmp72 + 176;
          *((bool *)__cil_tmp73) = (bool )1;
        } else {
          {
          __cil_tmp74 = (struct device const *)dev;
          dev_err(__cil_tmp74, "regulator_enable() failed: %d\n", ret);
          }
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp75 = (unsigned long )data;
  __cil_tmp76 = __cil_tmp75 + 180;
  __cil_tmp77 = *((int *)__cil_tmp76);
  if (__cil_tmp77 == 0) {
    goto _L;
  } else {
    {
    __cil_tmp78 = (unsigned long )data;
    __cil_tmp79 = __cil_tmp78 + 184;
    __cil_tmp80 = *((int *)__cil_tmp79);
    if (__cil_tmp80 == 0) {
      _L:
      {
      __cil_tmp81 = (unsigned long )data;
      __cil_tmp82 = __cil_tmp81 + 176;
      __cil_tmp83 = *((bool *)__cil_tmp82);
      if ((int )__cil_tmp83) {
        {
        __cil_tmp84 = & descriptor___1;
        *((char const **)__cil_tmp84) = "virtual";
        __cil_tmp85 = (unsigned long )(& descriptor___1) + 8;
        *((char const **)__cil_tmp85) = "update_voltage_constraints";
        __cil_tmp86 = (unsigned long )(& descriptor___1) + 16;
        *((char const **)__cil_tmp86) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12252/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/virtual.c.p";
        __cil_tmp87 = (unsigned long )(& descriptor___1) + 24;
        *((char const **)__cil_tmp87) = "Disabling regulator\n";
        __cil_tmp88 = (unsigned long )(& descriptor___1) + 32;
        *((unsigned int *)__cil_tmp88) = 76U;
        __cil_tmp89 = (unsigned long )(& descriptor___1) + 35;
        *((unsigned char *)__cil_tmp89) = (unsigned char)1;
        __cil_tmp90 = (unsigned long )(& descriptor___1) + 35;
        __cil_tmp91 = *((unsigned char *)__cil_tmp90);
        __cil_tmp92 = (long )__cil_tmp91;
        __cil_tmp93 = __cil_tmp92 & 1L;
        tmp___1 = __builtin_expect(__cil_tmp93, 0L);
        }
        if (tmp___1 != 0L) {
          {
          __cil_tmp94 = (struct device const *)dev;
          __dynamic_dev_dbg(& descriptor___1, __cil_tmp94, "Disabling regulator\n");
          }
        } else {
        }
        {
        __cil_tmp95 = (unsigned long )data;
        __cil_tmp96 = __cil_tmp95 + 168;
        __cil_tmp97 = *((struct regulator **)__cil_tmp96);
        ret = regulator_disable(__cil_tmp97);
        }
        if (ret == 0) {
          __cil_tmp98 = (unsigned long )data;
          __cil_tmp99 = __cil_tmp98 + 176;
          *((bool *)__cil_tmp99) = (bool )0;
        } else {
          {
          __cil_tmp100 = (struct device const *)dev;
          dev_err(__cil_tmp100, "regulator_disable() failed: %d\n", ret);
          }
        }
      } else {
      }
      }
    } else {
    }
    }
  }
  }
  return;
}
}
static void update_current_limit_constraints(struct device *dev , struct virtual_consumer_data *data )
{ int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  int __cil_tmp18 ;
  struct _ddebug *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned char __cil_tmp26 ;
  long __cil_tmp27 ;
  long __cil_tmp28 ;
  struct device const *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct regulator *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  int __cil_tmp44 ;
  struct device const *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  bool __cil_tmp51 ;
  struct _ddebug *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned char __cil_tmp59 ;
  long __cil_tmp60 ;
  long __cil_tmp61 ;
  struct device const *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  struct regulator *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct device const *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  int __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  bool __cil_tmp77 ;
  struct _ddebug *__cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned char __cil_tmp85 ;
  long __cil_tmp86 ;
  long __cil_tmp87 ;
  struct device const *__cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  struct regulator *__cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  struct device const *__cil_tmp94 ;
  {
  {
  __cil_tmp10 = (unsigned long )data;
  __cil_tmp11 = __cil_tmp10 + 192;
  __cil_tmp12 = *((int *)__cil_tmp11);
  if (__cil_tmp12 != 0) {
    {
    __cil_tmp13 = (unsigned long )data;
    __cil_tmp14 = __cil_tmp13 + 192;
    __cil_tmp15 = *((int *)__cil_tmp14);
    __cil_tmp16 = (unsigned long )data;
    __cil_tmp17 = __cil_tmp16 + 188;
    __cil_tmp18 = *((int *)__cil_tmp17);
    if (__cil_tmp18 <= __cil_tmp15) {
      {
      __cil_tmp19 = & descriptor;
      *((char const **)__cil_tmp19) = "virtual";
      __cil_tmp20 = (unsigned long )(& descriptor) + 8;
      *((char const **)__cil_tmp20) = "update_current_limit_constraints";
      __cil_tmp21 = (unsigned long )(& descriptor) + 16;
      *((char const **)__cil_tmp21) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12252/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/virtual.c.p";
      __cil_tmp22 = (unsigned long )(& descriptor) + 24;
      *((char const **)__cil_tmp22) = "Requesting %d-%duA\n";
      __cil_tmp23 = (unsigned long )(& descriptor) + 32;
      *((unsigned int *)__cil_tmp23) = 94U;
      __cil_tmp24 = (unsigned long )(& descriptor) + 35;
      *((unsigned char *)__cil_tmp24) = (unsigned char)1;
      __cil_tmp25 = (unsigned long )(& descriptor) + 35;
      __cil_tmp26 = *((unsigned char *)__cil_tmp25);
      __cil_tmp27 = (long )__cil_tmp26;
      __cil_tmp28 = __cil_tmp27 & 1L;
      tmp = __builtin_expect(__cil_tmp28, 0L);
      }
      if (tmp != 0L) {
        {
        __cil_tmp29 = (struct device const *)dev;
        __cil_tmp30 = (unsigned long )data;
        __cil_tmp31 = __cil_tmp30 + 188;
        __cil_tmp32 = *((int *)__cil_tmp31);
        __cil_tmp33 = (unsigned long )data;
        __cil_tmp34 = __cil_tmp33 + 192;
        __cil_tmp35 = *((int *)__cil_tmp34);
        __dynamic_dev_dbg(& descriptor, __cil_tmp29, "Requesting %d-%duA\n", __cil_tmp32,
                          __cil_tmp35);
        }
      } else {
      }
      {
      __cil_tmp36 = (unsigned long )data;
      __cil_tmp37 = __cil_tmp36 + 168;
      __cil_tmp38 = *((struct regulator **)__cil_tmp37);
      __cil_tmp39 = (unsigned long )data;
      __cil_tmp40 = __cil_tmp39 + 188;
      __cil_tmp41 = *((int *)__cil_tmp40);
      __cil_tmp42 = (unsigned long )data;
      __cil_tmp43 = __cil_tmp42 + 192;
      __cil_tmp44 = *((int *)__cil_tmp43);
      ret = regulator_set_current_limit(__cil_tmp38, __cil_tmp41, __cil_tmp44);
      }
      if (ret != 0) {
        {
        __cil_tmp45 = (struct device const *)dev;
        dev_err(__cil_tmp45, "regulator_set_current_limit() failed: %d\n", ret);
        }
        return;
      } else {
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp46 = (unsigned long )data;
  __cil_tmp47 = __cil_tmp46 + 192;
  __cil_tmp48 = *((int *)__cil_tmp47);
  if (__cil_tmp48 != 0) {
    {
    __cil_tmp49 = (unsigned long )data;
    __cil_tmp50 = __cil_tmp49 + 176;
    __cil_tmp51 = *((bool *)__cil_tmp50);
    if (! __cil_tmp51) {
      {
      __cil_tmp52 = & descriptor___0;
      *((char const **)__cil_tmp52) = "virtual";
      __cil_tmp53 = (unsigned long )(& descriptor___0) + 8;
      *((char const **)__cil_tmp53) = "update_current_limit_constraints";
      __cil_tmp54 = (unsigned long )(& descriptor___0) + 16;
      *((char const **)__cil_tmp54) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12252/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/virtual.c.p";
      __cil_tmp55 = (unsigned long )(& descriptor___0) + 24;
      *((char const **)__cil_tmp55) = "Enabling regulator\n";
      __cil_tmp56 = (unsigned long )(& descriptor___0) + 32;
      *((unsigned int *)__cil_tmp56) = 106U;
      __cil_tmp57 = (unsigned long )(& descriptor___0) + 35;
      *((unsigned char *)__cil_tmp57) = (unsigned char)1;
      __cil_tmp58 = (unsigned long )(& descriptor___0) + 35;
      __cil_tmp59 = *((unsigned char *)__cil_tmp58);
      __cil_tmp60 = (long )__cil_tmp59;
      __cil_tmp61 = __cil_tmp60 & 1L;
      tmp___0 = __builtin_expect(__cil_tmp61, 0L);
      }
      if (tmp___0 != 0L) {
        {
        __cil_tmp62 = (struct device const *)dev;
        __dynamic_dev_dbg(& descriptor___0, __cil_tmp62, "Enabling regulator\n");
        }
      } else {
      }
      {
      __cil_tmp63 = (unsigned long )data;
      __cil_tmp64 = __cil_tmp63 + 168;
      __cil_tmp65 = *((struct regulator **)__cil_tmp64);
      ret = regulator_enable(__cil_tmp65);
      }
      if (ret == 0) {
        __cil_tmp66 = (unsigned long )data;
        __cil_tmp67 = __cil_tmp66 + 176;
        *((bool *)__cil_tmp67) = (bool )1;
      } else {
        {
        __cil_tmp68 = (struct device const *)dev;
        dev_err(__cil_tmp68, "regulator_enable() failed: %d\n", ret);
        }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp69 = (unsigned long )data;
  __cil_tmp70 = __cil_tmp69 + 188;
  __cil_tmp71 = *((int *)__cil_tmp70);
  if (__cil_tmp71 == 0) {
    goto _L;
  } else {
    {
    __cil_tmp72 = (unsigned long )data;
    __cil_tmp73 = __cil_tmp72 + 192;
    __cil_tmp74 = *((int *)__cil_tmp73);
    if (__cil_tmp74 == 0) {
      _L:
      {
      __cil_tmp75 = (unsigned long )data;
      __cil_tmp76 = __cil_tmp75 + 176;
      __cil_tmp77 = *((bool *)__cil_tmp76);
      if ((int )__cil_tmp77) {
        {
        __cil_tmp78 = & descriptor___1;
        *((char const **)__cil_tmp78) = "virtual";
        __cil_tmp79 = (unsigned long )(& descriptor___1) + 8;
        *((char const **)__cil_tmp79) = "update_current_limit_constraints";
        __cil_tmp80 = (unsigned long )(& descriptor___1) + 16;
        *((char const **)__cil_tmp80) = "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--43_1a--X--cpachecker/linux-3.4/csd_deg_dscv/12252/dscv_tempdir/dscv/ri/43_1a/drivers/regulator/virtual.c.p";
        __cil_tmp81 = (unsigned long )(& descriptor___1) + 24;
        *((char const **)__cil_tmp81) = "Disabling regulator\n";
        __cil_tmp82 = (unsigned long )(& descriptor___1) + 32;
        *((unsigned int *)__cil_tmp82) = 116U;
        __cil_tmp83 = (unsigned long )(& descriptor___1) + 35;
        *((unsigned char *)__cil_tmp83) = (unsigned char)1;
        __cil_tmp84 = (unsigned long )(& descriptor___1) + 35;
        __cil_tmp85 = *((unsigned char *)__cil_tmp84);
        __cil_tmp86 = (long )__cil_tmp85;
        __cil_tmp87 = __cil_tmp86 & 1L;
        tmp___1 = __builtin_expect(__cil_tmp87, 0L);
        }
        if (tmp___1 != 0L) {
          {
          __cil_tmp88 = (struct device const *)dev;
          __dynamic_dev_dbg(& descriptor___1, __cil_tmp88, "Disabling regulator\n");
          }
        } else {
        }
        {
        __cil_tmp89 = (unsigned long )data;
        __cil_tmp90 = __cil_tmp89 + 168;
        __cil_tmp91 = *((struct regulator **)__cil_tmp90);
        ret = regulator_disable(__cil_tmp91);
        }
        if (ret == 0) {
          __cil_tmp92 = (unsigned long )data;
          __cil_tmp93 = __cil_tmp92 + 176;
          *((bool *)__cil_tmp93) = (bool )0;
        } else {
          {
          __cil_tmp94 = (struct device const *)dev;
          dev_err(__cil_tmp94, "regulator_disable() failed: %d\n", ret);
          }
        }
      } else {
      }
      }
    } else {
    }
    }
  }
  }
  return;
}
}
static ssize_t show_min_uV(struct device *dev , struct device_attribute *attr , char *buf )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  data = (struct virtual_consumer_data *)tmp;
  __cil_tmp8 = (unsigned long )data;
  __cil_tmp9 = __cil_tmp8 + 180;
  __cil_tmp10 = *((int *)__cil_tmp9);
  tmp___0 = sprintf(buf, "%d\n", __cil_tmp10);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_min_uV(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  long val ;
  int tmp___0 ;
  struct device const *__cil_tmp9 ;
  struct mutex *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  long *__cil_tmp13 ;
  long __cil_tmp14 ;
  struct mutex *__cil_tmp15 ;
  {
  {
  __cil_tmp9 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp9);
  data = (struct virtual_consumer_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  }
  if (tmp___0 != 0) {
    return ((ssize_t )count);
  } else {
  }
  {
  __cil_tmp10 = (struct mutex *)data;
  mutex_lock_nested(__cil_tmp10, 0U);
  __cil_tmp11 = (unsigned long )data;
  __cil_tmp12 = __cil_tmp11 + 180;
  __cil_tmp13 = & val;
  __cil_tmp14 = *__cil_tmp13;
  *((int *)__cil_tmp12) = (int )__cil_tmp14;
  update_voltage_constraints(dev, data);
  __cil_tmp15 = (struct mutex *)data;
  mutex_unlock(__cil_tmp15);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_max_uV(struct device *dev , struct device_attribute *attr , char *buf )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  data = (struct virtual_consumer_data *)tmp;
  __cil_tmp8 = (unsigned long )data;
  __cil_tmp9 = __cil_tmp8 + 184;
  __cil_tmp10 = *((int *)__cil_tmp9);
  tmp___0 = sprintf(buf, "%d\n", __cil_tmp10);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_max_uV(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  long val ;
  int tmp___0 ;
  struct device const *__cil_tmp9 ;
  struct mutex *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  long *__cil_tmp13 ;
  long __cil_tmp14 ;
  struct mutex *__cil_tmp15 ;
  {
  {
  __cil_tmp9 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp9);
  data = (struct virtual_consumer_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  }
  if (tmp___0 != 0) {
    return ((ssize_t )count);
  } else {
  }
  {
  __cil_tmp10 = (struct mutex *)data;
  mutex_lock_nested(__cil_tmp10, 0U);
  __cil_tmp11 = (unsigned long )data;
  __cil_tmp12 = __cil_tmp11 + 184;
  __cil_tmp13 = & val;
  __cil_tmp14 = *__cil_tmp13;
  *((int *)__cil_tmp12) = (int )__cil_tmp14;
  update_voltage_constraints(dev, data);
  __cil_tmp15 = (struct mutex *)data;
  mutex_unlock(__cil_tmp15);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_min_uA(struct device *dev , struct device_attribute *attr , char *buf )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  data = (struct virtual_consumer_data *)tmp;
  __cil_tmp8 = (unsigned long )data;
  __cil_tmp9 = __cil_tmp8 + 188;
  __cil_tmp10 = *((int *)__cil_tmp9);
  tmp___0 = sprintf(buf, "%d\n", __cil_tmp10);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_min_uA(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  long val ;
  int tmp___0 ;
  struct device const *__cil_tmp9 ;
  struct mutex *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  long *__cil_tmp13 ;
  long __cil_tmp14 ;
  struct mutex *__cil_tmp15 ;
  {
  {
  __cil_tmp9 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp9);
  data = (struct virtual_consumer_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  }
  if (tmp___0 != 0) {
    return ((ssize_t )count);
  } else {
  }
  {
  __cil_tmp10 = (struct mutex *)data;
  mutex_lock_nested(__cil_tmp10, 0U);
  __cil_tmp11 = (unsigned long )data;
  __cil_tmp12 = __cil_tmp11 + 188;
  __cil_tmp13 = & val;
  __cil_tmp14 = *__cil_tmp13;
  *((int *)__cil_tmp12) = (int )__cil_tmp14;
  update_current_limit_constraints(dev, data);
  __cil_tmp15 = (struct mutex *)data;
  mutex_unlock(__cil_tmp15);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_max_uA(struct device *dev , struct device_attribute *attr , char *buf )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  data = (struct virtual_consumer_data *)tmp;
  __cil_tmp8 = (unsigned long )data;
  __cil_tmp9 = __cil_tmp8 + 192;
  __cil_tmp10 = *((int *)__cil_tmp9);
  tmp___0 = sprintf(buf, "%d\n", __cil_tmp10);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_max_uA(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  long val ;
  int tmp___0 ;
  struct device const *__cil_tmp9 ;
  struct mutex *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  long *__cil_tmp13 ;
  long __cil_tmp14 ;
  struct mutex *__cil_tmp15 ;
  {
  {
  __cil_tmp9 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp9);
  data = (struct virtual_consumer_data *)tmp;
  tmp___0 = kstrtol(buf, 10U, & val);
  }
  if (tmp___0 != 0) {
    return ((ssize_t )count);
  } else {
  }
  {
  __cil_tmp10 = (struct mutex *)data;
  mutex_lock_nested(__cil_tmp10, 0U);
  __cil_tmp11 = (unsigned long )data;
  __cil_tmp12 = __cil_tmp11 + 192;
  __cil_tmp13 = & val;
  __cil_tmp14 = *__cil_tmp13;
  *((int *)__cil_tmp12) = (int )__cil_tmp14;
  update_current_limit_constraints(dev, data);
  __cil_tmp15 = (struct mutex *)data;
  mutex_unlock(__cil_tmp15);
  }
  return ((ssize_t )count);
}
}
static ssize_t show_mode(struct device *dev , struct device_attribute *attr , char *buf )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct device const *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  {
  {
  __cil_tmp11 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp11);
  data = (struct virtual_consumer_data *)tmp;
  }
  {
  __cil_tmp12 = (unsigned long )data;
  __cil_tmp13 = __cil_tmp12 + 196;
  __cil_tmp14 = *((unsigned int *)__cil_tmp13);
  if ((int )__cil_tmp14 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp14 == 2) {
    goto case_2;
  } else
  if ((int )__cil_tmp14 == 4) {
    goto case_4;
  } else
  if ((int )__cil_tmp14 == 8) {
    goto case_8;
  } else {
    {
    goto switch_default;
    if (0) {
      case_1:
      {
      tmp___0 = sprintf(buf, "fast\n");
      }
      return ((ssize_t )tmp___0);
      case_2:
      {
      tmp___1 = sprintf(buf, "normal\n");
      }
      return ((ssize_t )tmp___1);
      case_4:
      {
      tmp___2 = sprintf(buf, "idle\n");
      }
      return ((ssize_t )tmp___2);
      case_8:
      {
      tmp___3 = sprintf(buf, "standby\n");
      }
      return ((ssize_t )tmp___3);
      switch_default:
      {
      tmp___4 = sprintf(buf, "unknown\n");
      }
      return ((ssize_t )tmp___4);
    } else {
      switch_break: ;
    }
    }
  }
  }
}
}
static ssize_t set_mode(struct device *dev , struct device_attribute *attr , char const *buf ,
                        size_t count )
{ struct virtual_consumer_data *data ;
  void *tmp ;
  unsigned int mode ;
  int ret ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  struct device const *__cil_tmp13 ;
  struct device const *__cil_tmp14 ;
  struct mutex *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct regulator *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct device const *__cil_tmp21 ;
  struct mutex *__cil_tmp22 ;
  {
  {
  __cil_tmp13 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp13);
  data = (struct virtual_consumer_data *)tmp;
  tmp___3 = sysfs_streq(buf, "fast\n");
  }
  if ((int )tmp___3) {
    mode = 1U;
  } else {
    {
    tmp___2 = sysfs_streq(buf, "normal\n");
    }
    if ((int )tmp___2) {
      mode = 2U;
    } else {
      {
      tmp___1 = sysfs_streq(buf, "idle\n");
      }
      if ((int )tmp___1) {
        mode = 4U;
      } else {
        {
        tmp___0 = sysfs_streq(buf, "standby\n");
        }
        if ((int )tmp___0) {
          mode = 8U;
        } else {
          {
          __cil_tmp14 = (struct device const *)dev;
          dev_err(__cil_tmp14, "Configuring invalid mode\n");
          }
          return ((ssize_t )count);
        }
      }
    }
  }
  {
  __cil_tmp15 = (struct mutex *)data;
  mutex_lock_nested(__cil_tmp15, 0U);
  __cil_tmp16 = (unsigned long )data;
  __cil_tmp17 = __cil_tmp16 + 168;
  __cil_tmp18 = *((struct regulator **)__cil_tmp17);
  ret = regulator_set_mode(__cil_tmp18, mode);
  }
  if (ret == 0) {
    __cil_tmp19 = (unsigned long )data;
    __cil_tmp20 = __cil_tmp19 + 196;
    *((unsigned int *)__cil_tmp20) = mode;
  } else {
    {
    __cil_tmp21 = (struct device const *)dev;
    dev_err(__cil_tmp21, "Failed to configure mode: %d\n", ret);
    }
  }
  {
  __cil_tmp22 = (struct mutex *)data;
  mutex_unlock(__cil_tmp22);
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_min_microvolts = {{"min_microvolts", (umode_t )438U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                                     {(char)0}, {(char)0},
                                                                     {(char)0}, {(char)0},
                                                                     {(char)0}, {(char)0}}}},
    & show_min_uV, & set_min_uV};
static struct device_attribute dev_attr_max_microvolts = {{"max_microvolts", (umode_t )438U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                                     {(char)0}, {(char)0},
                                                                     {(char)0}, {(char)0},
                                                                     {(char)0}, {(char)0}}}},
    & show_max_uV, & set_max_uV};
static struct device_attribute dev_attr_min_microamps = {{"min_microamps", (umode_t )438U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                                    {(char)0}, {(char)0},
                                                                    {(char)0}, {(char)0},
                                                                    {(char)0}, {(char)0}}}},
    & show_min_uA, & set_min_uA};
static struct device_attribute dev_attr_max_microamps = {{"max_microamps", (umode_t )438U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                                    {(char)0}, {(char)0},
                                                                    {(char)0}, {(char)0},
                                                                    {(char)0}, {(char)0}}}},
    & show_max_uA, & set_max_uA};
static struct device_attribute dev_attr_mode = {{"mode", (umode_t )438U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}, {(char)0},
                                                           {(char)0}, {(char)0}}}},
    & show_mode, & set_mode};
static struct attribute *regulator_virtual_attributes[6U] = { & dev_attr_min_microvolts.attr, & dev_attr_max_microvolts.attr, & dev_attr_min_microamps.attr, & dev_attr_max_microamps.attr,
        & dev_attr_mode.attr, (struct attribute *)0};
static struct attribute_group const regulator_virtual_attr_group = {(char const *)0, (umode_t (*)(struct kobject * , struct attribute * , int ))0,
    (struct attribute **)(& regulator_virtual_attributes)};
static int regulator_virtual_probe(struct platform_device *pdev )
{ char *reg_id ;
  struct virtual_consumer_data *drvdata ;
  int ret ;
  void *tmp ;
  struct lock_class_key __key ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  struct virtual_consumer_data *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct mutex *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct device *__cil_tmp21 ;
  char const *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct regulator *__cil_tmp25 ;
  void const *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct regulator *__cil_tmp29 ;
  void const *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct device *__cil_tmp33 ;
  struct device const *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct kobject *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct device *__cil_tmp41 ;
  struct device const *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  struct regulator *__cil_tmp47 ;
  void *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  struct regulator *__cil_tmp51 ;
  void const *__cil_tmp52 ;
  {
  {
  __cil_tmp9 = 16 + 280;
  __cil_tmp10 = (unsigned long )pdev;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
  __cil_tmp12 = *((void **)__cil_tmp11);
  reg_id = (char *)__cil_tmp12;
  tmp = kzalloc(200UL, 208U);
  drvdata = (struct virtual_consumer_data *)tmp;
  }
  {
  __cil_tmp13 = (struct virtual_consumer_data *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = (unsigned long )drvdata;
  if (__cil_tmp15 == __cil_tmp14) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp16 = (struct mutex *)drvdata;
  __mutex_init(__cil_tmp16, "&drvdata->lock", & __key);
  __cil_tmp17 = (unsigned long )drvdata;
  __cil_tmp18 = __cil_tmp17 + 168;
  __cil_tmp19 = (unsigned long )pdev;
  __cil_tmp20 = __cil_tmp19 + 16;
  __cil_tmp21 = (struct device *)__cil_tmp20;
  __cil_tmp22 = (char const *)reg_id;
  *((struct regulator **)__cil_tmp18) = regulator_get(__cil_tmp21, __cil_tmp22);
  __cil_tmp23 = (unsigned long )drvdata;
  __cil_tmp24 = __cil_tmp23 + 168;
  __cil_tmp25 = *((struct regulator **)__cil_tmp24);
  __cil_tmp26 = (void const *)__cil_tmp25;
  tmp___1 = IS_ERR(__cil_tmp26);
  }
  if (tmp___1 != 0L) {
    {
    __cil_tmp27 = (unsigned long )drvdata;
    __cil_tmp28 = __cil_tmp27 + 168;
    __cil_tmp29 = *((struct regulator **)__cil_tmp28);
    __cil_tmp30 = (void const *)__cil_tmp29;
    tmp___0 = PTR_ERR(__cil_tmp30);
    ret = (int )tmp___0;
    __cil_tmp31 = (unsigned long )pdev;
    __cil_tmp32 = __cil_tmp31 + 16;
    __cil_tmp33 = (struct device *)__cil_tmp32;
    __cil_tmp34 = (struct device const *)__cil_tmp33;
    dev_err(__cil_tmp34, "Failed to obtain supply \'%s\': %d\n", reg_id, ret);
    }
    goto err;
  } else {
  }
  {
  __cil_tmp35 = 16 + 16;
  __cil_tmp36 = (unsigned long )pdev;
  __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
  __cil_tmp38 = (struct kobject *)__cil_tmp37;
  ret = sysfs_create_group(__cil_tmp38, & regulator_virtual_attr_group);
  }
  if (ret != 0) {
    {
    __cil_tmp39 = (unsigned long )pdev;
    __cil_tmp40 = __cil_tmp39 + 16;
    __cil_tmp41 = (struct device *)__cil_tmp40;
    __cil_tmp42 = (struct device const *)__cil_tmp41;
    dev_err(__cil_tmp42, "Failed to create attribute group: %d\n", ret);
    }
    goto err_regulator;
  } else {
  }
  {
  __cil_tmp43 = (unsigned long )drvdata;
  __cil_tmp44 = __cil_tmp43 + 196;
  __cil_tmp45 = (unsigned long )drvdata;
  __cil_tmp46 = __cil_tmp45 + 168;
  __cil_tmp47 = *((struct regulator **)__cil_tmp46);
  *((unsigned int *)__cil_tmp44) = regulator_get_mode(__cil_tmp47);
  __cil_tmp48 = (void *)drvdata;
  platform_set_drvdata(pdev, __cil_tmp48);
  }
  return (0);
  err_regulator:
  {
  __cil_tmp49 = (unsigned long )drvdata;
  __cil_tmp50 = __cil_tmp49 + 168;
  __cil_tmp51 = *((struct regulator **)__cil_tmp50);
  regulator_put(__cil_tmp51);
  }
  err:
  {
  __cil_tmp52 = (void const *)drvdata;
  kfree(__cil_tmp52);
  }
  return (ret);
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct platform_device *var_group1 ;
  int res_regulator_virtual_probe_12 ;
  int ldv_s_regulator_virtual_consumer_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_s_regulator_virtual_consumer_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  goto ldv_15526;
  ldv_15525:
  {
  tmp = __VERIFIER_nondet_int();
  }
  if (tmp == 0) {
    goto case_0;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_regulator_virtual_consumer_driver_platform_driver == 0) {
        {
        res_regulator_virtual_probe_12 = regulator_virtual_probe(var_group1);
        ldv_check_return_value(res_regulator_virtual_probe_12);
        }
        if (res_regulator_virtual_probe_12 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_regulator_virtual_consumer_driver_platform_driver = 0;
      } else {
      }
      goto ldv_15523;
      switch_default: ;
      goto ldv_15523;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_15523: ;
  ldv_15526:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 != 0) {
    goto ldv_15525;
  } else
  if (ldv_s_regulator_virtual_consumer_driver_platform_driver != 0) {
    goto ldv_15525;
  } else {
    goto ldv_15527;
  }
  ldv_15527: ;
  ldv_module_exit: ;
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_check_final_state() {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int regulator_disable(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_enable(struct regulator *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct regulator *regulator_get(struct device *arg0, const char *arg1) {
  return (struct regulator *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int regulator_get_mode(struct regulator *arg0) {
  return __VERIFIER_nondet_uint();
}
void regulator_put(struct regulator *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int regulator_set_current_limit(struct regulator *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_set_mode(struct regulator *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regulator_set_voltage(struct regulator *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool sysfs_streq(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_bool();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
