extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __u8 uint8_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct seq_file;
struct seq_file;
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
struct seq_operations;
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
struct __anonstruct_ldv_5914_31 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_30 {
   s64 lock ;
   struct __anonstruct_ldv_5914_31 ldv_5914 ;
};
typedef union __anonunion_arch_rwlock_t_30 arch_rwlock_t;
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
typedef struct raw_spinlock raw_spinlock_t;
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
struct __anonstruct_rwlock_t_34 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_34 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
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
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
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
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
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
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct cred;
struct cred;
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
struct rtc_time {
   int tm_sec ;
   int tm_min ;
   int tm_hour ;
   int tm_mday ;
   int tm_mon ;
   int tm_year ;
   int tm_wday ;
   int tm_yday ;
   int tm_isdst ;
};
struct rtc_wkalrm {
   unsigned char enabled ;
   unsigned char pending ;
   struct rtc_time time ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
struct path;
struct path;
struct inode;
struct inode;
struct dentry;
struct dentry;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct file_operations;
struct file_operations;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct backing_dev_info;
struct block_device;
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct nameidata;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_137 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_137 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct prio_tree_node;
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct export_operations;
struct export_operations;
struct iovec;
struct iovec;
struct kiocb;
struct kiocb;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_140 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_139 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_140 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_139 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
};
struct request_queue;
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_18694_141 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_18713_142 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_lock;
union __anonunion_ldv_18729_143 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_18694_141 ldv_18694 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_18713_142 ldv_18713 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_18729_143 ldv_18729 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   uid_t uid ;
   uid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_144 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_144 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_146 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_145 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_146 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_145 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct rtc_class_ops {
   int (*open)(struct device * ) ;
   void (*release)(struct device * ) ;
   int (*ioctl)(struct device * , unsigned int , unsigned long ) ;
   int (*read_time)(struct device * , struct rtc_time * ) ;
   int (*set_time)(struct device * , struct rtc_time * ) ;
   int (*read_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*set_alarm)(struct device * , struct rtc_wkalrm * ) ;
   int (*proc)(struct device * , struct seq_file * ) ;
   int (*set_mmss)(struct device * , unsigned long ) ;
   int (*read_callback)(struct device * , int ) ;
   int (*alarm_irq_enable)(struct device * , unsigned int ) ;
};
struct rtc_task {
   void (*func)(void * ) ;
   void *private_data ;
};
struct rtc_timer {
   struct rtc_task task ;
   struct timerqueue_node node ;
   ktime_t period ;
   int enabled ;
};
struct rtc_device {
   struct device dev ;
   struct module *owner ;
   int id ;
   char name[20U] ;
   struct rtc_class_ops const *ops ;
   struct mutex ops_lock ;
   struct cdev char_dev ;
   unsigned long flags ;
   unsigned long irq_data ;
   spinlock_t irq_lock ;
   wait_queue_head_t irq_queue ;
   struct fasync_struct *async_queue ;
   struct rtc_task *irq_task ;
   spinlock_t irq_task_lock ;
   int irq_freq ;
   int max_user_freq ;
   struct timerqueue_head timerqueue ;
   struct rtc_timer aie_timer ;
   struct rtc_timer uie_rtctimer ;
   struct hrtimer pie_timer ;
   int pie_enabled ;
   struct work_struct irqwork ;
   int uie_unsupported ;
   struct work_struct uie_task ;
   struct timer_list uie_timer ;
   unsigned int oldsecs ;
   unsigned char uie_irq_active : 1 ;
   unsigned char stop_uie_polling : 1 ;
   unsigned char uie_task_active : 1 ;
   unsigned char uie_timer_active : 1 ;
};
struct regmap;
struct regmap;
struct mfd_cell {
   char const *name ;
   int id ;
   atomic_t *usage_count ;
   int (*enable)(struct platform_device * ) ;
   int (*disable)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * ) ;
   int (*resume)(struct platform_device * ) ;
   void *platform_data ;
   size_t pdata_size ;
   int num_resources ;
   struct resource const *resources ;
   bool ignore_resource_conflicts ;
   bool pm_runtime_no_callbacks ;
};
struct da9052 {
   struct device *dev ;
   struct regmap *regmap ;
   int irq_base ;
   u8 chip_id ;
   int chip_irq ;
};
struct da9052_rtc {
   struct rtc_device *rtc ;
   struct da9052 *da9052 ;
   int irq ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
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
extern struct module __this_module ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void *devm_kzalloc(struct device * , size_t , gfp_t ) ;
extern void devm_kfree(struct device * , void * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int platform_get_irq_byname(struct platform_device * , char const * ) ;
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
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
extern void free_irq(unsigned int , void * ) ;
extern int rtc_valid_tm(struct rtc_time * ) ;
extern struct rtc_device *rtc_device_register(char const * , struct device * , struct rtc_class_ops const * ,
                                              struct module * ) ;
extern void rtc_update_irq(struct rtc_device * , unsigned long , unsigned long ) ;
extern int regmap_raw_write(struct regmap * , unsigned int , void const * , size_t ) ;
extern int regmap_read(struct regmap * , unsigned int , unsigned int * ) ;
extern int regmap_bulk_read(struct regmap * , unsigned int , void * , size_t ) ;
extern int regmap_update_bits(struct regmap * , unsigned int , unsigned int , unsigned int ) ;
__inline static int da9052_reg_read(struct da9052 *da9052 , unsigned char reg )
{ int val ;
  int ret ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct regmap *__cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  unsigned int *__cil_tmp9 ;
  int *__cil_tmp10 ;
  {
  {
  __cil_tmp5 = (unsigned long )da9052;
  __cil_tmp6 = __cil_tmp5 + 8;
  __cil_tmp7 = *((struct regmap **)__cil_tmp6);
  __cil_tmp8 = (unsigned int )reg;
  __cil_tmp9 = (unsigned int *)(& val);
  ret = regmap_read(__cil_tmp7, __cil_tmp8, __cil_tmp9);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp10 = & val;
  return (*__cil_tmp10);
  }
}
}
__inline static int da9052_group_read(struct da9052 *da9052 , unsigned char reg ,
                                      unsigned int reg_cnt , unsigned char *val )
{ int tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct regmap *__cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  void *__cil_tmp10 ;
  size_t __cil_tmp11 ;
  {
  {
  __cil_tmp6 = (unsigned long )da9052;
  __cil_tmp7 = __cil_tmp6 + 8;
  __cil_tmp8 = *((struct regmap **)__cil_tmp7);
  __cil_tmp9 = (unsigned int )reg;
  __cil_tmp10 = (void *)val;
  __cil_tmp11 = (size_t )reg_cnt;
  tmp = regmap_bulk_read(__cil_tmp8, __cil_tmp9, __cil_tmp10, __cil_tmp11);
  }
  return (tmp);
}
}
__inline static int da9052_group_write(struct da9052 *da9052 , unsigned char reg ,
                                       unsigned int reg_cnt , unsigned char *val )
{ int tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct regmap *__cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  void const *__cil_tmp10 ;
  size_t __cil_tmp11 ;
  {
  {
  __cil_tmp6 = (unsigned long )da9052;
  __cil_tmp7 = __cil_tmp6 + 8;
  __cil_tmp8 = *((struct regmap **)__cil_tmp7);
  __cil_tmp9 = (unsigned int )reg;
  __cil_tmp10 = (void const *)val;
  __cil_tmp11 = (size_t )reg_cnt;
  tmp = regmap_raw_write(__cil_tmp8, __cil_tmp9, __cil_tmp10, __cil_tmp11);
  }
  return (tmp);
}
}
__inline static int da9052_reg_update(struct da9052 *da9052 , unsigned char reg ,
                                      unsigned char bit_mask , unsigned char reg_val )
{ int tmp ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct regmap *__cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  {
  {
  __cil_tmp6 = (unsigned long )da9052;
  __cil_tmp7 = __cil_tmp6 + 8;
  __cil_tmp8 = *((struct regmap **)__cil_tmp7);
  __cil_tmp9 = (unsigned int )reg;
  __cil_tmp10 = (unsigned int )bit_mask;
  __cil_tmp11 = (unsigned int )reg_val;
  tmp = regmap_update_bits(__cil_tmp8, __cil_tmp9, __cil_tmp10, __cil_tmp11);
  }
  return (tmp);
}
}
static int da9052_rtc_enable_alarm(struct da9052 *da9052 , bool enable )
{ int ret ;
  struct device *__cil_tmp4 ;
  struct device const *__cil_tmp5 ;
  struct device *__cil_tmp6 ;
  struct device const *__cil_tmp7 ;
  {
  if ((int )enable) {
    {
    ret = da9052_reg_update(da9052, (unsigned char)121, (unsigned char)64, (unsigned char)64);
    }
    if (ret != 0) {
      {
      __cil_tmp4 = *((struct device **)da9052);
      __cil_tmp5 = (struct device const *)__cil_tmp4;
      dev_err(__cil_tmp5, "%s: Failed to enable ALM: %d\n", "da9052_rtc_enable_alarm",
              ret);
      }
    } else {
    }
  } else {
    {
    ret = da9052_reg_update(da9052, (unsigned char)121, (unsigned char)64, (unsigned char)0);
    }
    if (ret != 0) {
      {
      __cil_tmp6 = *((struct device **)da9052);
      __cil_tmp7 = (struct device const *)__cil_tmp6;
      dev_err(__cil_tmp7, "%s: Write error: %d\n", "da9052_rtc_enable_alarm", ret);
      }
    } else {
    }
  }
  return (ret);
}
}
static irqreturn_t da9052_rtc_irq(int irq , void *data )
{ struct da9052_rtc *rtc ;
  int ret ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct da9052 *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct da9052 *__cil_tmp10 ;
  struct device *__cil_tmp11 ;
  struct device const *__cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct da9052 *__cil_tmp16 ;
  bool __cil_tmp17 ;
  struct rtc_device *__cil_tmp18 ;
  struct rtc_device *__cil_tmp19 ;
  {
  {
  rtc = (struct da9052_rtc *)data;
  __cil_tmp5 = (unsigned long )rtc;
  __cil_tmp6 = __cil_tmp5 + 8;
  __cil_tmp7 = *((struct da9052 **)__cil_tmp6);
  ret = da9052_reg_read(__cil_tmp7, (unsigned char)117);
  }
  if (ret < 0) {
    {
    __cil_tmp8 = (unsigned long )rtc;
    __cil_tmp9 = __cil_tmp8 + 8;
    __cil_tmp10 = *((struct da9052 **)__cil_tmp9);
    __cil_tmp11 = *((struct device **)__cil_tmp10);
    __cil_tmp12 = (struct device const *)__cil_tmp11;
    dev_err(__cil_tmp12, "%s: Read error: %d\n", "da9052_rtc_irq", ret);
    }
    return ((irqreturn_t )0);
  } else {
  }
  {
  __cil_tmp13 = ret & 64;
  if (__cil_tmp13 != 0) {
    {
    __cil_tmp14 = (unsigned long )rtc;
    __cil_tmp15 = __cil_tmp14 + 8;
    __cil_tmp16 = *((struct da9052 **)__cil_tmp15);
    __cil_tmp17 = (bool )0;
    da9052_rtc_enable_alarm(__cil_tmp16, __cil_tmp17);
    __cil_tmp18 = *((struct rtc_device **)rtc);
    rtc_update_irq(__cil_tmp18, 1UL, 160UL);
    }
  } else {
    {
    __cil_tmp19 = *((struct rtc_device **)rtc);
    rtc_update_irq(__cil_tmp19, 1UL, 192UL);
    }
  }
  }
  return ((irqreturn_t )1);
}
}
static int da9052_read_alarm(struct da9052 *da9052 , struct rtc_time *rtc_tm )
{ int ret ;
  uint8_t v[5U] ;
  unsigned char *__cil_tmp5 ;
  struct device *__cil_tmp6 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  uint8_t __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  uint8_t __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  uint8_t __cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  uint8_t __cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  uint8_t __cil_tmp38 ;
  int __cil_tmp39 ;
  {
  {
  __cil_tmp5 = (unsigned char *)(& v);
  ret = da9052_group_read(da9052, (unsigned char)117, 5U, __cil_tmp5);
  }
  if (ret != 0) {
    {
    __cil_tmp6 = *((struct device **)da9052);
    __cil_tmp7 = (struct device const *)__cil_tmp6;
    dev_err(__cil_tmp7, "%s: Failed to group read ALM: %d\n", "da9052_read_alarm",
            ret);
    }
    return (ret);
  } else {
  }
  {
  __cil_tmp8 = (unsigned long )rtc_tm;
  __cil_tmp9 = __cil_tmp8 + 20;
  __cil_tmp10 = 4 * 1UL;
  __cil_tmp11 = (unsigned long )(v) + __cil_tmp10;
  __cil_tmp12 = *((uint8_t *)__cil_tmp11);
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = __cil_tmp13 & 63;
  *((int *)__cil_tmp9) = __cil_tmp14 + 100;
  __cil_tmp15 = (unsigned long )rtc_tm;
  __cil_tmp16 = __cil_tmp15 + 16;
  __cil_tmp17 = 3 * 1UL;
  __cil_tmp18 = (unsigned long )(v) + __cil_tmp17;
  __cil_tmp19 = *((uint8_t *)__cil_tmp18);
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 & 15;
  *((int *)__cil_tmp16) = __cil_tmp21 + -1;
  __cil_tmp22 = (unsigned long )rtc_tm;
  __cil_tmp23 = __cil_tmp22 + 12;
  __cil_tmp24 = 2 * 1UL;
  __cil_tmp25 = (unsigned long )(v) + __cil_tmp24;
  __cil_tmp26 = *((uint8_t *)__cil_tmp25);
  __cil_tmp27 = (int )__cil_tmp26;
  *((int *)__cil_tmp23) = __cil_tmp27 & 31;
  __cil_tmp28 = (unsigned long )rtc_tm;
  __cil_tmp29 = __cil_tmp28 + 8;
  __cil_tmp30 = 1 * 1UL;
  __cil_tmp31 = (unsigned long )(v) + __cil_tmp30;
  __cil_tmp32 = *((uint8_t *)__cil_tmp31);
  __cil_tmp33 = (int )__cil_tmp32;
  *((int *)__cil_tmp29) = __cil_tmp33 & 31;
  __cil_tmp34 = (unsigned long )rtc_tm;
  __cil_tmp35 = __cil_tmp34 + 4;
  __cil_tmp36 = 0 * 1UL;
  __cil_tmp37 = (unsigned long )(v) + __cil_tmp36;
  __cil_tmp38 = *((uint8_t *)__cil_tmp37);
  __cil_tmp39 = (int )__cil_tmp38;
  *((int *)__cil_tmp35) = __cil_tmp39 & 63;
  ret = rtc_valid_tm(rtc_tm);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (ret);
}
}
static int da9052_set_alarm(struct da9052 *da9052 , struct rtc_time *rtc_tm )
{ int ret ;
  uint8_t v[3U] ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned char __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned char __cil_tmp20 ;
  struct device *__cil_tmp21 ;
  struct device const *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned char __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned char __cil_tmp44 ;
  struct device *__cil_tmp45 ;
  struct device const *__cil_tmp46 ;
  {
  {
  __cil_tmp5 = (unsigned long )rtc_tm;
  __cil_tmp6 = __cil_tmp5 + 20;
  __cil_tmp7 = (unsigned long )rtc_tm;
  __cil_tmp8 = __cil_tmp7 + 20;
  __cil_tmp9 = *((int *)__cil_tmp8);
  *((int *)__cil_tmp6) = __cil_tmp9 + -100;
  __cil_tmp10 = (unsigned long )rtc_tm;
  __cil_tmp11 = __cil_tmp10 + 16;
  __cil_tmp12 = (unsigned long )rtc_tm;
  __cil_tmp13 = __cil_tmp12 + 16;
  __cil_tmp14 = *((int *)__cil_tmp13);
  *((int *)__cil_tmp11) = __cil_tmp14 + 1;
  __cil_tmp15 = (unsigned long )rtc_tm;
  __cil_tmp16 = __cil_tmp15 + 4;
  __cil_tmp17 = *((int *)__cil_tmp16);
  __cil_tmp18 = (unsigned char )__cil_tmp17;
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = (unsigned char )__cil_tmp19;
  ret = da9052_reg_update(da9052, (unsigned char)117, (unsigned char)63, __cil_tmp20);
  }
  if (ret != 0) {
    {
    __cil_tmp21 = *((struct device **)da9052);
    __cil_tmp22 = (struct device const *)__cil_tmp21;
    dev_err(__cil_tmp22, "%s: Failed to write ALRM MIN: %d\n", "da9052_set_alarm",
            ret);
    }
    return (ret);
  } else {
  }
  {
  __cil_tmp23 = 0 * 1UL;
  __cil_tmp24 = (unsigned long )(v) + __cil_tmp23;
  __cil_tmp25 = (unsigned long )rtc_tm;
  __cil_tmp26 = __cil_tmp25 + 8;
  __cil_tmp27 = *((int *)__cil_tmp26);
  *((uint8_t *)__cil_tmp24) = (uint8_t )__cil_tmp27;
  __cil_tmp28 = 1 * 1UL;
  __cil_tmp29 = (unsigned long )(v) + __cil_tmp28;
  __cil_tmp30 = (unsigned long )rtc_tm;
  __cil_tmp31 = __cil_tmp30 + 12;
  __cil_tmp32 = *((int *)__cil_tmp31);
  *((uint8_t *)__cil_tmp29) = (uint8_t )__cil_tmp32;
  __cil_tmp33 = 2 * 1UL;
  __cil_tmp34 = (unsigned long )(v) + __cil_tmp33;
  __cil_tmp35 = (unsigned long )rtc_tm;
  __cil_tmp36 = __cil_tmp35 + 16;
  __cil_tmp37 = *((int *)__cil_tmp36);
  *((uint8_t *)__cil_tmp34) = (uint8_t )__cil_tmp37;
  __cil_tmp38 = (unsigned char *)(& v);
  ret = da9052_group_write(da9052, (unsigned char)118, 3U, __cil_tmp38);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp39 = (unsigned long )rtc_tm;
  __cil_tmp40 = __cil_tmp39 + 20;
  __cil_tmp41 = *((int *)__cil_tmp40);
  __cil_tmp42 = (unsigned char )__cil_tmp41;
  __cil_tmp43 = (int )__cil_tmp42;
  __cil_tmp44 = (unsigned char )__cil_tmp43;
  ret = da9052_reg_update(da9052, (unsigned char)121, (unsigned char)63, __cil_tmp44);
  }
  if (ret != 0) {
    {
    __cil_tmp45 = *((struct device **)da9052);
    __cil_tmp46 = (struct device const *)__cil_tmp45;
    dev_err(__cil_tmp46, "%s: Failed to write ALRM YEAR: %d\n", "da9052_set_alarm",
            ret);
    }
  } else {
  }
  return (ret);
}
}
static int da9052_rtc_get_alarm_status(struct da9052 *da9052 )
{ int ret ;
  struct device *__cil_tmp3 ;
  struct device const *__cil_tmp4 ;
  {
  {
  ret = da9052_reg_read(da9052, (unsigned char)121);
  }
  if (ret < 0) {
    {
    __cil_tmp3 = *((struct device **)da9052);
    __cil_tmp4 = (struct device const *)__cil_tmp3;
    dev_err(__cil_tmp4, "%s: Failed to read ALM: %d\n", "da9052_rtc_get_alarm_status",
            ret);
    }
    return (ret);
  } else {
  }
  ret = ret & 64;
  return (ret > 0);
}
}
static int da9052_rtc_read_time(struct device *dev , struct rtc_time *rtc_tm )
{ struct da9052_rtc *rtc ;
  void *tmp ;
  uint8_t v[6U] ;
  int ret ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct da9052 *__cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct da9052 *__cil_tmp14 ;
  struct device *__cil_tmp15 ;
  struct device const *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  uint8_t __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  uint8_t __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  uint8_t __cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  uint8_t __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  uint8_t __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  uint8_t __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  struct da9052 *__cil_tmp55 ;
  struct device *__cil_tmp56 ;
  struct device const *__cil_tmp57 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  rtc = (struct da9052_rtc *)tmp;
  __cil_tmp8 = (unsigned long )rtc;
  __cil_tmp9 = __cil_tmp8 + 8;
  __cil_tmp10 = *((struct da9052 **)__cil_tmp9);
  __cil_tmp11 = (unsigned char *)(& v);
  ret = da9052_group_read(__cil_tmp10, (unsigned char)111, 6U, __cil_tmp11);
  }
  if (ret < 0) {
    {
    __cil_tmp12 = (unsigned long )rtc;
    __cil_tmp13 = __cil_tmp12 + 8;
    __cil_tmp14 = *((struct da9052 **)__cil_tmp13);
    __cil_tmp15 = *((struct device **)__cil_tmp14);
    __cil_tmp16 = (struct device const *)__cil_tmp15;
    dev_err(__cil_tmp16, "%s: Failed to read RTC time : %d\n", "da9052_rtc_read_time",
            ret);
    }
    return (ret);
  } else {
  }
  {
  __cil_tmp17 = (unsigned long )rtc_tm;
  __cil_tmp18 = __cil_tmp17 + 20;
  __cil_tmp19 = 5 * 1UL;
  __cil_tmp20 = (unsigned long )(v) + __cil_tmp19;
  __cil_tmp21 = *((uint8_t *)__cil_tmp20);
  __cil_tmp22 = (int )__cil_tmp21;
  __cil_tmp23 = __cil_tmp22 & 63;
  *((int *)__cil_tmp18) = __cil_tmp23 + 100;
  __cil_tmp24 = (unsigned long )rtc_tm;
  __cil_tmp25 = __cil_tmp24 + 16;
  __cil_tmp26 = 4 * 1UL;
  __cil_tmp27 = (unsigned long )(v) + __cil_tmp26;
  __cil_tmp28 = *((uint8_t *)__cil_tmp27);
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 & 15;
  *((int *)__cil_tmp25) = __cil_tmp30 + -1;
  __cil_tmp31 = (unsigned long )rtc_tm;
  __cil_tmp32 = __cil_tmp31 + 12;
  __cil_tmp33 = 3 * 1UL;
  __cil_tmp34 = (unsigned long )(v) + __cil_tmp33;
  __cil_tmp35 = *((uint8_t *)__cil_tmp34);
  __cil_tmp36 = (int )__cil_tmp35;
  *((int *)__cil_tmp32) = __cil_tmp36 & 31;
  __cil_tmp37 = (unsigned long )rtc_tm;
  __cil_tmp38 = __cil_tmp37 + 8;
  __cil_tmp39 = 2 * 1UL;
  __cil_tmp40 = (unsigned long )(v) + __cil_tmp39;
  __cil_tmp41 = *((uint8_t *)__cil_tmp40);
  __cil_tmp42 = (int )__cil_tmp41;
  *((int *)__cil_tmp38) = __cil_tmp42 & 31;
  __cil_tmp43 = (unsigned long )rtc_tm;
  __cil_tmp44 = __cil_tmp43 + 4;
  __cil_tmp45 = 1 * 1UL;
  __cil_tmp46 = (unsigned long )(v) + __cil_tmp45;
  __cil_tmp47 = *((uint8_t *)__cil_tmp46);
  __cil_tmp48 = (int )__cil_tmp47;
  *((int *)__cil_tmp44) = __cil_tmp48 & 63;
  __cil_tmp49 = 0 * 1UL;
  __cil_tmp50 = (unsigned long )(v) + __cil_tmp49;
  __cil_tmp51 = *((uint8_t *)__cil_tmp50);
  __cil_tmp52 = (int )__cil_tmp51;
  *((int *)rtc_tm) = __cil_tmp52 & 63;
  ret = rtc_valid_tm(rtc_tm);
  }
  if (ret != 0) {
    {
    __cil_tmp53 = (unsigned long )rtc;
    __cil_tmp54 = __cil_tmp53 + 8;
    __cil_tmp55 = *((struct da9052 **)__cil_tmp54);
    __cil_tmp56 = *((struct device **)__cil_tmp55);
    __cil_tmp57 = (struct device const *)__cil_tmp56;
    dev_err(__cil_tmp57, "%s: rtc_valid_tm failed: %d\n", "da9052_rtc_read_time",
            ret);
    }
    return (ret);
  } else {
  }
  return (0);
}
}
static int da9052_rtc_set_time(struct device *dev , struct rtc_time *tm )
{ struct da9052_rtc *rtc ;
  uint8_t v[6U] ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  int __cil_tmp30 ;
  uint8_t __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  int __cil_tmp38 ;
  uint8_t __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct da9052 *__cil_tmp44 ;
  unsigned char *__cil_tmp45 ;
  {
  {
  __cil_tmp7 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp7);
  rtc = (struct da9052_rtc *)tmp;
  __cil_tmp8 = 0 * 1UL;
  __cil_tmp9 = (unsigned long )(v) + __cil_tmp8;
  __cil_tmp10 = *((int *)tm);
  *((uint8_t *)__cil_tmp9) = (uint8_t )__cil_tmp10;
  __cil_tmp11 = 1 * 1UL;
  __cil_tmp12 = (unsigned long )(v) + __cil_tmp11;
  __cil_tmp13 = (unsigned long )tm;
  __cil_tmp14 = __cil_tmp13 + 4;
  __cil_tmp15 = *((int *)__cil_tmp14);
  *((uint8_t *)__cil_tmp12) = (uint8_t )__cil_tmp15;
  __cil_tmp16 = 2 * 1UL;
  __cil_tmp17 = (unsigned long )(v) + __cil_tmp16;
  __cil_tmp18 = (unsigned long )tm;
  __cil_tmp19 = __cil_tmp18 + 8;
  __cil_tmp20 = *((int *)__cil_tmp19);
  *((uint8_t *)__cil_tmp17) = (uint8_t )__cil_tmp20;
  __cil_tmp21 = 3 * 1UL;
  __cil_tmp22 = (unsigned long )(v) + __cil_tmp21;
  __cil_tmp23 = (unsigned long )tm;
  __cil_tmp24 = __cil_tmp23 + 12;
  __cil_tmp25 = *((int *)__cil_tmp24);
  *((uint8_t *)__cil_tmp22) = (uint8_t )__cil_tmp25;
  __cil_tmp26 = 4 * 1UL;
  __cil_tmp27 = (unsigned long )(v) + __cil_tmp26;
  __cil_tmp28 = (unsigned long )tm;
  __cil_tmp29 = __cil_tmp28 + 16;
  __cil_tmp30 = *((int *)__cil_tmp29);
  __cil_tmp31 = (uint8_t )__cil_tmp30;
  __cil_tmp32 = (unsigned int )__cil_tmp31;
  __cil_tmp33 = __cil_tmp32 + 1U;
  *((uint8_t *)__cil_tmp27) = (uint8_t )__cil_tmp33;
  __cil_tmp34 = 5 * 1UL;
  __cil_tmp35 = (unsigned long )(v) + __cil_tmp34;
  __cil_tmp36 = (unsigned long )tm;
  __cil_tmp37 = __cil_tmp36 + 20;
  __cil_tmp38 = *((int *)__cil_tmp37);
  __cil_tmp39 = (uint8_t )__cil_tmp38;
  __cil_tmp40 = (unsigned int )__cil_tmp39;
  __cil_tmp41 = __cil_tmp40 + 156U;
  *((uint8_t *)__cil_tmp35) = (uint8_t )__cil_tmp41;
  __cil_tmp42 = (unsigned long )rtc;
  __cil_tmp43 = __cil_tmp42 + 8;
  __cil_tmp44 = *((struct da9052 **)__cil_tmp43);
  __cil_tmp45 = (unsigned char *)(& v);
  tmp___0 = da9052_group_write(__cil_tmp44, (unsigned char)111, 6U, __cil_tmp45);
  }
  return (tmp___0);
}
}
static int da9052_rtc_read_alarm(struct device *dev , struct rtc_wkalrm *alrm )
{ int ret ;
  struct rtc_time *tm ;
  struct da9052_rtc *rtc ;
  void *tmp ;
  int tmp___0 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device const *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct da9052 *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct da9052 *__cil_tmp16 ;
  {
  {
  __cil_tmp8 = (unsigned long )alrm;
  __cil_tmp9 = __cil_tmp8 + 4;
  tm = (struct rtc_time *)__cil_tmp9;
  __cil_tmp10 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp10);
  rtc = (struct da9052_rtc *)tmp;
  __cil_tmp11 = (unsigned long )rtc;
  __cil_tmp12 = __cil_tmp11 + 8;
  __cil_tmp13 = *((struct da9052 **)__cil_tmp12);
  ret = da9052_read_alarm(__cil_tmp13, tm);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp14 = (unsigned long )rtc;
  __cil_tmp15 = __cil_tmp14 + 8;
  __cil_tmp16 = *((struct da9052 **)__cil_tmp15);
  tmp___0 = da9052_rtc_get_alarm_status(__cil_tmp16);
  *((unsigned char *)alrm) = (unsigned char )tmp___0;
  }
  return (0);
}
}
static int da9052_rtc_set_alarm(struct device *dev , struct rtc_wkalrm *alrm )
{ int ret ;
  struct rtc_time *tm ;
  struct da9052_rtc *rtc ;
  void *tmp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct device const *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct da9052 *__cil_tmp12 ;
  bool __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct da9052 *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct da9052 *__cil_tmp19 ;
  bool __cil_tmp20 ;
  {
  {
  __cil_tmp7 = (unsigned long )alrm;
  __cil_tmp8 = __cil_tmp7 + 4;
  tm = (struct rtc_time *)__cil_tmp8;
  __cil_tmp9 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp9);
  rtc = (struct da9052_rtc *)tmp;
  __cil_tmp10 = (unsigned long )rtc;
  __cil_tmp11 = __cil_tmp10 + 8;
  __cil_tmp12 = *((struct da9052 **)__cil_tmp11);
  __cil_tmp13 = (bool )0;
  ret = da9052_rtc_enable_alarm(__cil_tmp12, __cil_tmp13);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp14 = (unsigned long )rtc;
  __cil_tmp15 = __cil_tmp14 + 8;
  __cil_tmp16 = *((struct da9052 **)__cil_tmp15);
  ret = da9052_set_alarm(__cil_tmp16, tm);
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp17 = (unsigned long )rtc;
  __cil_tmp18 = __cil_tmp17 + 8;
  __cil_tmp19 = *((struct da9052 **)__cil_tmp18);
  __cil_tmp20 = (bool )1;
  ret = da9052_rtc_enable_alarm(__cil_tmp19, __cil_tmp20);
  }
  return (ret);
}
}
static int da9052_rtc_alarm_irq_enable(struct device *dev , unsigned int enabled )
{ struct da9052_rtc *rtc ;
  void *tmp ;
  int tmp___0 ;
  struct device const *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct da9052 *__cil_tmp9 ;
  int __cil_tmp10 ;
  bool __cil_tmp11 ;
  {
  {
  __cil_tmp6 = (struct device const *)dev;
  tmp = dev_get_drvdata(__cil_tmp6);
  rtc = (struct da9052_rtc *)tmp;
  __cil_tmp7 = (unsigned long )rtc;
  __cil_tmp8 = __cil_tmp7 + 8;
  __cil_tmp9 = *((struct da9052 **)__cil_tmp8);
  __cil_tmp10 = enabled != 0U;
  __cil_tmp11 = (bool )__cil_tmp10;
  tmp___0 = da9052_rtc_enable_alarm(__cil_tmp9, __cil_tmp11);
  }
  return (tmp___0);
}
}
static struct rtc_class_ops const da9052_rtc_ops =
     {(int (*)(struct device * ))0, (void (*)(struct device * ))0, (int (*)(struct device * ,
                                                                          unsigned int ,
                                                                          unsigned long ))0,
    & da9052_rtc_read_time, & da9052_rtc_set_time, & da9052_rtc_read_alarm, & da9052_rtc_set_alarm,
    (int (*)(struct device * , struct seq_file * ))0, (int (*)(struct device * , unsigned long ))0,
    (int (*)(struct device * , int ))0, & da9052_rtc_alarm_irq_enable};
static int da9052_rtc_probe(struct platform_device *pdev )
{ struct da9052_rtc *rtc ;
  int ret ;
  void *tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device *__cil_tmp10 ;
  struct da9052_rtc *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct device *__cil_tmp16 ;
  struct device const *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  void *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  irqreturn_t (*__cil_tmp27)(int , void * ) ;
  void *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct da9052 *__cil_tmp31 ;
  struct device *__cil_tmp32 ;
  struct device const *__cil_tmp33 ;
  char const *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  struct device *__cil_tmp37 ;
  struct rtc_device *__cil_tmp38 ;
  void const *__cil_tmp39 ;
  struct rtc_device *__cil_tmp40 ;
  void const *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  void *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  struct device *__cil_tmp49 ;
  void *__cil_tmp50 ;
  {
  {
  __cil_tmp8 = (unsigned long )pdev;
  __cil_tmp9 = __cil_tmp8 + 16;
  __cil_tmp10 = (struct device *)__cil_tmp9;
  tmp = devm_kzalloc(__cil_tmp10, 24UL, 208U);
  rtc = (struct da9052_rtc *)tmp;
  }
  {
  __cil_tmp11 = (struct da9052_rtc *)0;
  __cil_tmp12 = (unsigned long )__cil_tmp11;
  __cil_tmp13 = (unsigned long )rtc;
  if (__cil_tmp13 == __cil_tmp12) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp14 = (unsigned long )pdev;
  __cil_tmp15 = __cil_tmp14 + 16;
  __cil_tmp16 = *((struct device **)__cil_tmp15);
  __cil_tmp17 = (struct device const *)__cil_tmp16;
  tmp___0 = dev_get_drvdata(__cil_tmp17);
  __cil_tmp18 = (unsigned long )rtc;
  __cil_tmp19 = __cil_tmp18 + 8;
  *((struct da9052 **)__cil_tmp19) = (struct da9052 *)tmp___0;
  __cil_tmp20 = (void *)rtc;
  platform_set_drvdata(pdev, __cil_tmp20);
  __cil_tmp21 = (unsigned long )rtc;
  __cil_tmp22 = __cil_tmp21 + 16;
  *((int *)__cil_tmp22) = platform_get_irq_byname(pdev, "ALM");
  __cil_tmp23 = (unsigned long )rtc;
  __cil_tmp24 = __cil_tmp23 + 16;
  __cil_tmp25 = *((int *)__cil_tmp24);
  __cil_tmp26 = (unsigned int )__cil_tmp25;
  __cil_tmp27 = (irqreturn_t (*)(int , void * ))0;
  __cil_tmp28 = (void *)rtc;
  ret = request_threaded_irq(__cil_tmp26, __cil_tmp27, & da9052_rtc_irq, 8200UL, "ALM",
                             __cil_tmp28);
  }
  if (ret != 0) {
    {
    __cil_tmp29 = (unsigned long )rtc;
    __cil_tmp30 = __cil_tmp29 + 8;
    __cil_tmp31 = *((struct da9052 **)__cil_tmp30);
    __cil_tmp32 = *((struct device **)__cil_tmp31);
    __cil_tmp33 = (struct device const *)__cil_tmp32;
    dev_err(__cil_tmp33, "%s: irq registration failed: %d\n", "da9052_rtc_probe",
            ret);
    }
    goto err_mem;
  } else {
  }
  {
  __cil_tmp34 = *((char const **)pdev);
  __cil_tmp35 = (unsigned long )pdev;
  __cil_tmp36 = __cil_tmp35 + 16;
  __cil_tmp37 = (struct device *)__cil_tmp36;
  *((struct rtc_device **)rtc) = rtc_device_register(__cil_tmp34, __cil_tmp37, & da9052_rtc_ops,
                                                     & __this_module);
  __cil_tmp38 = *((struct rtc_device **)rtc);
  __cil_tmp39 = (void const *)__cil_tmp38;
  tmp___2 = IS_ERR(__cil_tmp39);
  }
  if (tmp___2 != 0L) {
    {
    __cil_tmp40 = *((struct rtc_device **)rtc);
    __cil_tmp41 = (void const *)__cil_tmp40;
    tmp___1 = PTR_ERR(__cil_tmp41);
    ret = (int )tmp___1;
    }
    goto err_free_irq;
  } else {
  }
  return (0);
  err_free_irq:
  {
  __cil_tmp42 = (unsigned long )rtc;
  __cil_tmp43 = __cil_tmp42 + 16;
  __cil_tmp44 = *((int *)__cil_tmp43);
  __cil_tmp45 = (unsigned int )__cil_tmp44;
  __cil_tmp46 = (void *)rtc;
  free_irq(__cil_tmp45, __cil_tmp46);
  }
  err_mem:
  {
  __cil_tmp47 = (unsigned long )pdev;
  __cil_tmp48 = __cil_tmp47 + 16;
  __cil_tmp49 = (struct device *)__cil_tmp48;
  __cil_tmp50 = (void *)rtc;
  devm_kfree(__cil_tmp49, __cil_tmp50);
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
{ struct device *var_group1 ;
  struct rtc_time *var_group2 ;
  struct rtc_wkalrm *var_group3 ;
  unsigned int var_da9052_rtc_alarm_irq_enable_9_p1 ;
  struct platform_device *var_group4 ;
  int res_da9052_rtc_probe_10 ;
  int var_da9052_rtc_irq_1_p0 ;
  void *var_da9052_rtc_irq_1_p1 ;
  int ldv_s_da9052_rtc_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_s_da9052_rtc_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  goto ldv_21262;
  ldv_21261:
  {
  tmp = __VERIFIER_nondet_int();
  }
  if (tmp == 0) {
    goto case_0;
  } else
  if (tmp == 1) {
    goto case_1;
  } else
  if (tmp == 2) {
    goto case_2;
  } else
  if (tmp == 3) {
    goto case_3;
  } else
  if (tmp == 4) {
    goto case_4;
  } else
  if (tmp == 5) {
    goto case_5;
  } else
  if (tmp == 6) {
    goto case_6;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      da9052_rtc_read_time(var_group1, var_group2);
      }
      goto ldv_21252;
      case_1:
      {
      da9052_rtc_set_time(var_group1, var_group2);
      }
      goto ldv_21252;
      case_2:
      {
      da9052_rtc_read_alarm(var_group1, var_group3);
      }
      goto ldv_21252;
      case_3:
      {
      da9052_rtc_set_alarm(var_group1, var_group3);
      }
      goto ldv_21252;
      case_4:
      {
      da9052_rtc_alarm_irq_enable(var_group1, var_da9052_rtc_alarm_irq_enable_9_p1);
      }
      goto ldv_21252;
      case_5: ;
      if (ldv_s_da9052_rtc_driver_platform_driver == 0) {
        {
        res_da9052_rtc_probe_10 = da9052_rtc_probe(var_group4);
        ldv_check_return_value(res_da9052_rtc_probe_10);
        }
        if (res_da9052_rtc_probe_10 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_da9052_rtc_driver_platform_driver = 0;
      } else {
      }
      goto ldv_21252;
      case_6:
      {
      LDV_IN_INTERRUPT = 2;
      da9052_rtc_irq(var_da9052_rtc_irq_1_p0, var_da9052_rtc_irq_1_p1);
      LDV_IN_INTERRUPT = 1;
      }
      goto ldv_21252;
      switch_default: ;
      goto ldv_21252;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_21252: ;
  ldv_21262:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 != 0) {
    goto ldv_21261;
  } else
  if (ldv_s_da9052_rtc_driver_platform_driver != 0) {
    goto ldv_21261;
  } else {
    goto ldv_21263;
  }
  ldv_21263: ;
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
void devm_kfree(struct device *arg0, void *arg1) {
  return;
}
void *external_alloc(void);
void *devm_kzalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
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
int __VERIFIER_nondet_int(void);
int platform_get_irq_byname(struct platform_device *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_bulk_read(struct regmap *arg0, unsigned int arg1, void *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_raw_write(struct regmap *arg0, unsigned int arg1, const void *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_read(struct regmap *arg0, unsigned int arg1, unsigned int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int regmap_update_bits(struct regmap *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct rtc_device *rtc_device_register(const char *arg0, struct device *arg1, const struct rtc_class_ops *arg2, struct module *arg3) {
  return (struct rtc_device *)external_alloc();
}
void rtc_update_irq(struct rtc_device *arg0, unsigned long arg1, unsigned long arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int rtc_valid_tm(struct rtc_time *arg0) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
