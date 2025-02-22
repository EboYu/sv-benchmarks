extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
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
   void (*func)(struct rcu_head *head ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pt_regs;
struct pt_regs;
struct pid;
struct pid;
struct timespec;
struct timespec;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct mm_struct;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_16 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_14 {
   struct __anonstruct____missing_field_name_15 __annonCompField5 ;
   struct __anonstruct____missing_field_name_16 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_14 __annonCompField7 ;
} __attribute__((__packed__)) ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_20 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_20 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct page;
struct thread_struct;
struct thread_struct;
struct mm_struct;
struct desc_struct;
struct task_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_24 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_24 __annonCompField8 ;
};
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct pt_regs;
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct pt_regs;
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_31 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_32 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_30 {
   struct __anonstruct____missing_field_name_31 __annonCompField12 ;
   struct __anonstruct____missing_field_name_32 __annonCompField13 ;
};
union __anonunion____missing_field_name_33 {
   u32 padding1[12] ;
   u32 sw_reserved[12] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_30 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32] ;
   u32 xmm_space[64] ;
   u32 padding[12] ;
   union __anonunion____missing_field_name_33 __annonCompField15 ;
} __attribute__((__aligned__(16))) ;
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2] ;
   u64 reserved2[5] ;
} __attribute__((__packed__)) ;
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
} __attribute__((__packed__, __aligned__(64))) ;
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_38 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_37 {
   s64 lock ;
   struct __anonstruct____missing_field_name_38 __annonCompField18 ;
};
typedef union __anonunion_arch_rwlock_t_37 arch_rwlock_t;
struct task_struct;
struct lock_class_key {
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_40 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_rwlock_t_40 rwlock_t;
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
struct task_struct;
struct __anonstruct_nodemask_t_42 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_42 nodemask_t;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct page;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct device;
struct pci_dev;
struct pci_dev;
struct device;
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
   char start_comm[16] ;
};
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
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
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
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
struct pci_bus;
struct pci_bus;
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct pci_dev;
struct pci_dev;
struct vm_area_struct;
struct vm_area_struct;
struct page;
struct vm_area_struct;
struct completion;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct nsproxy;
struct cred;
struct cred;
struct file;
struct task_struct;
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
struct file;
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
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
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
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
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
struct module;
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
                    size_t count ) ;
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
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
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
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
struct module;
struct tty_struct;
struct tty_struct;
struct tty_driver;
struct console {
   char name[16] ;
   void (*write)(struct console * , char const * , unsigned int ) ;
   int (*read)(struct console * , char * , unsigned int ) ;
   struct tty_driver *(*device)(struct console * , int * ) ;
   void (*unblank)(void) ;
   int (*setup)(struct console * , char * ) ;
   int (*early_setup)(void) ;
   short flags ;
   short index ;
   int cflag ;
   void *data ;
   struct console *next ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
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
   struct kmem_cache_node *node[1 << 10] ;
};
struct circ_buf {
   char *buf ;
   int head ;
   int tail ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct seq_file;
struct module;
struct proc_dir_entry;
struct proc_dir_entry;
struct module;
struct proc_dir_entry;
struct pt_regs;
struct task_struct;
struct mm_struct;
struct pt_regs;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct task_struct;
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
   char start_comm[16] ;
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
   struct hrtimer_clock_base clock_base[3] ;
};
struct device;
struct seq_file;
struct page;
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
struct path;
struct path;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_209 {
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
   unsigned char d_iname[32] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_209 d_u ;
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
} __attribute__((__aligned__((1) << (6) ))) ;
struct dentry;
struct vfsmount;
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
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
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
   struct hlist_head tasks[3] ;
   struct rcu_head rcu ;
   struct upid numbers[1] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct pid_namespace;
struct task_struct;
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct user_namespace;
struct user_namespace;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control *sc ) ;
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
struct nameidata;
struct kiocb;
struct kiocb;
struct kobject;
struct pipe_inode_info;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct vm_area_struct;
struct vfsmount;
struct cred;
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
   char d_padding4[8] ;
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
struct super_block;
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
   int (*check_quota_file)(struct super_block *sb , int type ) ;
   int (*read_file_info)(struct super_block *sb , int type ) ;
   int (*write_file_info)(struct super_block *sb , int type ) ;
   int (*free_file_info)(struct super_block *sb , int type ) ;
   int (*read_dqblk)(struct dquot *dquot ) ;
   int (*commit_dqblk)(struct dquot *dquot ) ;
   int (*release_dqblk)(struct dquot *dquot ) ;
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
struct path;
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
   struct inode *files[2] ;
   struct mem_dqinfo info[2] ;
   struct quota_format_ops const *ops[2] ;
};
struct page;
struct address_space;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_217 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_216 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_217 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_216 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page *page , struct writeback_control *wbc ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page *page ) ;
   int (*readpages)(struct file *filp , struct address_space *mapping , struct list_head *pages ,
                    unsigned int nr_pages ) ;
   int (*write_begin)(struct file * , struct address_space *mapping , loff_t pos ,
                      unsigned int len , unsigned int flags , struct page **pagep ,
                      void **fsdata ) ;
   int (*write_end)(struct file * , struct address_space *mapping , loff_t pos , unsigned int len ,
                    unsigned int copied , struct page *page , void *fsdata ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const *iov , loff_t offset ,
                        unsigned long nr_segs ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct backing_dev_info;
struct backing_dev_info;
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
} __attribute__((__aligned__(sizeof(long )))) ;
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
union __anonunion____missing_field_name_218 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_219 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_220 {
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
   union __anonunion____missing_field_name_218 __annonCompField33 ;
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
   union __anonunion____missing_field_name_219 __annonCompField34 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_220 __annonCompField35 ;
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
union __anonunion_f_u_221 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_221 f_u ;
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
struct __anonstruct_afs_223 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_222 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_223 afs ;
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
   union __anonunion_fl_u_222 fl_u ;
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
   spinlock_t s_inode_lru_lock __attribute__((__aligned__((1) << (6) ))) ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32] ;
   u8 s_uuid[16] ;
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
   int (*flush)(struct file * , fl_owner_t id ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int datasync ) ;
   int (*aio_fsync)(struct kiocb * , int datasync ) ;
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
   long (*fallocate)(struct file *file , int mode , loff_t offset , loff_t len ) ;
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
   int (*getattr)(struct vfsmount *mnt , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 start , u64 len ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
struct seq_file;
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block *sb ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int flags ) ;
   int (*write_inode)(struct inode * , struct writeback_control *wbc ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block *sb , int wait ) ;
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
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5] ;
   __u16 x_sflag ;
};
struct file_operations;
struct inode;
struct module;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_struct;
struct tty_driver;
struct serial_icounter_struct;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver *driver , struct inode *inode ,
                                int idx ) ;
   int (*install)(struct tty_driver *driver , struct tty_struct *tty ) ;
   void (*remove)(struct tty_driver *driver , struct tty_struct *tty ) ;
   int (*open)(struct tty_struct *tty , struct file *filp ) ;
   void (*close)(struct tty_struct *tty , struct file *filp ) ;
   void (*shutdown)(struct tty_struct *tty ) ;
   void (*cleanup)(struct tty_struct *tty ) ;
   int (*write)(struct tty_struct *tty , unsigned char const *buf , int count ) ;
   int (*put_char)(struct tty_struct *tty , unsigned char ch ) ;
   void (*flush_chars)(struct tty_struct *tty ) ;
   int (*write_room)(struct tty_struct *tty ) ;
   int (*chars_in_buffer)(struct tty_struct *tty ) ;
   int (*ioctl)(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
   long (*compat_ioctl)(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
   void (*set_termios)(struct tty_struct *tty , struct ktermios *old ) ;
   void (*throttle)(struct tty_struct *tty ) ;
   void (*unthrottle)(struct tty_struct *tty ) ;
   void (*stop)(struct tty_struct *tty ) ;
   void (*start)(struct tty_struct *tty ) ;
   void (*hangup)(struct tty_struct *tty ) ;
   int (*break_ctl)(struct tty_struct *tty , int state ) ;
   void (*flush_buffer)(struct tty_struct *tty ) ;
   void (*set_ldisc)(struct tty_struct *tty ) ;
   void (*wait_until_sent)(struct tty_struct *tty , int timeout ) ;
   void (*send_xchar)(struct tty_struct *tty , char ch ) ;
   int (*tiocmget)(struct tty_struct *tty ) ;
   int (*tiocmset)(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
   int (*resize)(struct tty_struct *tty , struct winsize *ws ) ;
   int (*set_termiox)(struct tty_struct *tty , struct termiox *tnew ) ;
   int (*get_icount)(struct tty_struct *tty , struct serial_icounter_struct *icount ) ;
   int (*poll_init)(struct tty_driver *driver , int line , char *options ) ;
   int (*poll_get_char)(struct tty_driver *driver , int line ) ;
   void (*poll_put_char)(struct tty_driver *driver , int line , char ch ) ;
   struct file_operations const *proc_fops ;
};
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev cdev ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   int flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
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
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
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
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
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
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
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
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
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
   void (*release)(struct device *dev ) ;
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
   unsigned int active : 1 ;
};
struct pps_event_time {
   struct timespec ts_real ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct *tty ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct *tty ) ;
   ssize_t (*read)(struct tty_struct *tty , struct file *file , unsigned char *buf ,
                   size_t nr ) ;
   ssize_t (*write)(struct tty_struct *tty , struct file *file , unsigned char const *buf ,
                    size_t nr ) ;
   int (*ioctl)(struct tty_struct *tty , struct file *file , unsigned int cmd , unsigned long arg ) ;
   long (*compat_ioctl)(struct tty_struct *tty , struct file *file , unsigned int cmd ,
                        unsigned long arg ) ;
   void (*set_termios)(struct tty_struct *tty , struct ktermios *old ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct *tty ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const *cp , char *fp ,
                       int count ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int , struct pps_event_time * ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   atomic_t users ;
};
struct tty_buffer {
   struct tty_buffer *next ;
   char *char_buf_ptr ;
   unsigned char *flag_buf_ptr ;
   int used ;
   int size ;
   int commit ;
   int read ;
   unsigned long data[0] ;
};
struct tty_bufhead {
   struct work_struct work ;
   spinlock_t lock ;
   struct tty_buffer *head ;
   struct tty_buffer *tail ;
   struct tty_buffer *free ;
   int memory_used ;
};
struct device;
struct signal_struct;
struct signal_struct;
struct tty_port;
struct tty_port;
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port *port ) ;
   void (*dtr_rts)(struct tty_port *port , int raise ) ;
   void (*shutdown)(struct tty_port *port ) ;
   void (*drop)(struct tty_port *port ) ;
   int (*activate)(struct tty_port *port , struct tty_struct *tty ) ;
   void (*destruct)(struct tty_port *port ) ;
};
struct tty_port {
   struct tty_struct *tty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_operations;
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct mutex ldisc_mutex ;
   struct tty_ldisc *ldisc ;
   struct mutex termios_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios *termios ;
   struct ktermios *termios_locked ;
   struct termiox *termiox ;
   char name[64] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char low_latency : 1 ;
   unsigned char warned : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   struct tty_bufhead buf ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned int column ;
   unsigned char lnext : 1 ;
   unsigned char erasing : 1 ;
   unsigned char raw : 1 ;
   unsigned char real_raw : 1 ;
   unsigned char icanon : 1 ;
   unsigned char closing : 1 ;
   unsigned char echo_overrun : 1 ;
   unsigned short minimum_to_wake ;
   unsigned long overrun_time ;
   int num_overrun ;
   unsigned long process_char_map[256UL / (8UL * sizeof(unsigned long ))] ;
   char *read_buf ;
   int read_head ;
   int read_tail ;
   int read_cnt ;
   unsigned long read_flags[4096UL / (8UL * sizeof(unsigned long ))] ;
   unsigned char *echo_buf ;
   unsigned int echo_pos ;
   unsigned int echo_cnt ;
   int canon_data ;
   unsigned long canon_head ;
   unsigned int canon_column ;
   struct mutex atomic_read_lock ;
   struct mutex atomic_write_lock ;
   struct mutex output_lock ;
   struct mutex echo_lock ;
   unsigned char *write_buf ;
   int write_cnt ;
   spinlock_t read_lock ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct serial_struct {
   int type ;
   int line ;
   unsigned int port ;
   int irq ;
   int flags ;
   int xmit_fifo_size ;
   int custom_divisor ;
   int baud_base ;
   unsigned short close_delay ;
   char io_type ;
   char reserved_char[1] ;
   int hub6 ;
   unsigned short closing_wait ;
   unsigned short closing_wait2 ;
   unsigned char *iomem_base ;
   unsigned short iomem_reg_shift ;
   unsigned int port_high ;
   unsigned long iomap_base ;
};
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9] ;
};
struct address_space;
union __anonunion____missing_field_name_227 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_231 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_230 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_231 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_229 {
   union __anonunion____missing_field_name_230 __annonCompField38 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_228 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_229 __annonCompField39 ;
};
struct __anonstruct____missing_field_name_226 {
   union __anonunion____missing_field_name_227 __annonCompField36 ;
   union __anonunion____missing_field_name_228 __annonCompField40 ;
};
struct __anonstruct____missing_field_name_233 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_232 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_233 __annonCompField42 ;
};
union __anonunion____missing_field_name_234 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_226 __annonCompField41 ;
   union __anonunion____missing_field_name_232 __annonCompField43 ;
   union __anonunion____missing_field_name_234 __annonCompField44 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_236 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_235 {
   struct __anonstruct_vm_set_236 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_235 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file *filp , unsigned long addr , unsigned long len ,
                                      unsigned long pgoff , unsigned long flags ) ;
   void (*unmap_area)(struct mm_struct *mm , unsigned long addr ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long reserved_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
typedef unsigned long cputime_t;
struct task_struct;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct siginfo;
struct __anonstruct_sigset_t_238 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_238 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_240 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_241 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_242 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_243 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_244 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_245 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_239 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_240 _kill ;
   struct __anonstruct__timer_241 _timer ;
   struct __anonstruct__rt_242 _rt ;
   struct __anonstruct__sigchld_243 _sigchld ;
   struct __anonstruct__sigfault_244 _sigfault ;
   struct __anonstruct__sigpoll_245 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_239 _sifields ;
};
typedef struct siginfo siginfo_t;
struct siginfo;
struct task_struct;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct timespec;
struct pt_regs;
struct __anonstruct_seccomp_t_248 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_248 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct task_struct;
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct task_struct;
struct latency_record {
   unsigned long backtrace[12] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key;
struct seq_file;
struct user_struct;
struct signal_struct;
struct cred;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_249 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_250 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_251 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_249 __annonCompField45 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_250 type_data ;
   union __anonunion_payload_251 payload ;
};
struct audit_context;
struct audit_context;
struct user_struct;
struct cred;
struct inode;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32] ;
   gid_t *blocks[0] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct futex_pi_state;
struct robust_list_head;
struct robust_list_head;
struct bio_list;
struct bio_list;
struct fs_struct;
struct fs_struct;
struct perf_event_context;
struct perf_event_context;
struct blk_plug;
struct blk_plug;
struct seq_file;
struct cfs_rq;
struct cfs_rq;
struct task_struct;
struct nsproxy;
struct user_namespace;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
struct kioctx;
union __anonunion_ki_obj_253 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_253 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct rcu_head rcu_head ;
};
struct mm_struct;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct autogroup;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct io_context;
struct audit_context;
struct mempolicy;
struct pipe_inode_info;
struct rq;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*dequeue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*yield_task)(struct rq *rq ) ;
   bool (*yield_to_task)(struct rq *rq , struct task_struct *p , bool preempt ) ;
   void (*check_preempt_curr)(struct rq *rq , struct task_struct *p , int flags ) ;
   struct task_struct *(*pick_next_task)(struct rq *rq ) ;
   void (*put_prev_task)(struct rq *rq , struct task_struct *p ) ;
   int (*select_task_rq)(struct task_struct *p , int sd_flag , int flags ) ;
   void (*pre_schedule)(struct rq *this_rq , struct task_struct *task ) ;
   void (*post_schedule)(struct rq *this_rq ) ;
   void (*task_waking)(struct task_struct *task ) ;
   void (*task_woken)(struct rq *this_rq , struct task_struct *task ) ;
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask const *newmask ) ;
   void (*rq_online)(struct rq *rq ) ;
   void (*rq_offline)(struct rq *rq ) ;
   void (*set_curr_task)(struct rq *rq ) ;
   void (*task_tick)(struct rq *rq , struct task_struct *p , int queued ) ;
   void (*task_fork)(struct task_struct *p ) ;
   void (*switched_from)(struct rq *this_rq , struct task_struct *task ) ;
   void (*switched_to)(struct rq *this_rq , struct task_struct *task ) ;
   void (*prio_changed)(struct rq *this_rq , struct task_struct *task , int oldprio ) ;
   unsigned int (*get_rr_interval)(struct rq *rq , struct task_struct *task ) ;
   void (*task_move_group)(struct task_struct *p , int on_rq ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct css_set;
struct compat_robust_list_head;
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int did_exec : 1 ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   unsigned int irq_thread : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct cred *replacement_session_keyring ;
   char comm[16] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void *priv ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
struct pid_namespace;
struct uart_port;
struct uart_port;
struct serial_struct;
struct device;
struct uart_ops {
   unsigned int (*tx_empty)(struct uart_port * ) ;
   void (*set_mctrl)(struct uart_port * , unsigned int mctrl ) ;
   unsigned int (*get_mctrl)(struct uart_port * ) ;
   void (*stop_tx)(struct uart_port * ) ;
   void (*start_tx)(struct uart_port * ) ;
   void (*send_xchar)(struct uart_port * , char ch ) ;
   void (*stop_rx)(struct uart_port * ) ;
   void (*enable_ms)(struct uart_port * ) ;
   void (*break_ctl)(struct uart_port * , int ctl ) ;
   int (*startup)(struct uart_port * ) ;
   void (*shutdown)(struct uart_port * ) ;
   void (*flush_buffer)(struct uart_port * ) ;
   void (*set_termios)(struct uart_port * , struct ktermios *new , struct ktermios *old ) ;
   void (*set_ldisc)(struct uart_port * , int new ) ;
   void (*pm)(struct uart_port * , unsigned int state , unsigned int oldstate ) ;
   int (*set_wake)(struct uart_port * , unsigned int state ) ;
   char const *(*type)(struct uart_port * ) ;
   void (*release_port)(struct uart_port * ) ;
   int (*request_port)(struct uart_port * ) ;
   void (*config_port)(struct uart_port * , int ) ;
   int (*verify_port)(struct uart_port * , struct serial_struct * ) ;
   int (*ioctl)(struct uart_port * , unsigned int , unsigned long ) ;
   void (*poll_put_char)(struct uart_port * , unsigned char ) ;
   int (*poll_get_char)(struct uart_port * ) ;
};
struct uart_icount {
   __u32 cts ;
   __u32 dsr ;
   __u32 rng ;
   __u32 dcd ;
   __u32 rx ;
   __u32 tx ;
   __u32 frame ;
   __u32 overrun ;
   __u32 parity ;
   __u32 brk ;
   __u32 buf_overrun ;
};
typedef unsigned int upf_t;
struct uart_state;
struct uart_port {
   spinlock_t lock ;
   unsigned long iobase ;
   unsigned char *membase ;
   unsigned int (*serial_in)(struct uart_port * , int ) ;
   void (*serial_out)(struct uart_port * , int , int ) ;
   void (*set_termios)(struct uart_port * , struct ktermios *new , struct ktermios *old ) ;
   int (*handle_irq)(struct uart_port * ) ;
   void (*pm)(struct uart_port * , unsigned int state , unsigned int old ) ;
   unsigned int irq ;
   unsigned long irqflags ;
   unsigned int uartclk ;
   unsigned int fifosize ;
   unsigned char x_char ;
   unsigned char regshift ;
   unsigned char iotype ;
   unsigned char unused1 ;
   unsigned int read_status_mask ;
   unsigned int ignore_status_mask ;
   struct uart_state *state ;
   struct uart_icount icount ;
   struct console *cons ;
   unsigned long sysrq ;
   upf_t flags ;
   unsigned int mctrl ;
   unsigned int timeout ;
   unsigned int type ;
   struct uart_ops const *ops ;
   unsigned int custom_divisor ;
   unsigned int line ;
   resource_size_t mapbase ;
   struct device *dev ;
   unsigned char hub6 ;
   unsigned char suspended ;
   unsigned char irq_wake ;
   unsigned char unused[2] ;
   void *private_data ;
};
struct uart_state {
   struct tty_port port ;
   int pm_state ;
   struct circ_buf xmit ;
   struct uart_port *uart_port ;
};
struct module;
struct tty_driver;
struct uart_driver {
   struct module *owner ;
   char const *driver_name ;
   char const *dev_name ;
   int major ;
   int minor ;
   int nr ;
   struct console *cons ;
   struct uart_state *state ;
   struct tty_driver *tty_driver ;
};
struct dma_attrs {
   unsigned long flags[((4UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct task_struct;
struct task_struct;
struct mempolicy;
struct anon_vma;
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct mm_struct;
struct vm_area_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct *area ) ;
   void (*close)(struct vm_area_struct *area ) ;
   int (*fault)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*page_mkwrite)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*access)(struct vm_area_struct *vma , unsigned long addr , void *buf , int len ,
                 int write ) ;
   int (*set_policy)(struct vm_area_struct *vma , struct mempolicy *new ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct *vma , unsigned long addr ) ;
   int (*migrate)(struct vm_area_struct *vma , nodemask_t const *from , nodemask_t const *to ,
                  unsigned long flags ) ;
};
struct inode;
struct page;
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct dma_map_ops {
   void *(*alloc)(struct device *dev , size_t size , dma_addr_t *dma_handle , gfp_t gfp ,
                  struct dma_attrs *attrs ) ;
   void (*free)(struct device *dev , size_t size , void *vaddr , dma_addr_t dma_handle ,
                struct dma_attrs *attrs ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs *attrs ) ;
   dma_addr_t (*map_page)(struct device *dev , struct page *page , unsigned long offset ,
                          size_t size , enum dma_data_direction dir , struct dma_attrs *attrs ) ;
   void (*unmap_page)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ,
                      struct dma_attrs *attrs ) ;
   int (*map_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                 struct dma_attrs *attrs ) ;
   void (*unmap_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                    struct dma_attrs *attrs ) ;
   void (*sync_single_for_cpu)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                               enum dma_data_direction dir ) ;
   void (*sync_single_for_device)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                                  enum dma_data_direction dir ) ;
   void (*sync_sg_for_cpu)(struct device *dev , struct scatterlist *sg , int nents ,
                           enum dma_data_direction dir ) ;
   void (*sync_sg_for_device)(struct device *dev , struct scatterlist *sg , int nents ,
                              enum dma_data_direction dir ) ;
   int (*mapping_error)(struct device *dev , dma_addr_t dma_addr ) ;
   int (*dma_supported)(struct device *dev , u64 mask ) ;
   int (*set_dma_mask)(struct device *dev , u64 mask ) ;
   int is_phys ;
};
struct device;
struct scatterlist;
struct bus_type;
struct device;
struct dma_attrs;
struct scatterlist;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct device;
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pcie_link_state;
struct pci_vpd;
struct pci_vpd;
struct pci_sriov;
struct pci_sriov;
struct pci_ats;
struct pci_ats;
struct pci_driver;
union __anonunion____missing_field_name_257 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 pcie_type : 4 ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17] ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int is_pcie : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17] ;
   struct bin_attribute *res_attr_wc[17] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_257 __annonCompField47 ;
   struct pci_ats *ats ;
};
struct pci_ops;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4] ;
   struct list_head resources ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char secondary ;
   unsigned char subordinate ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus *bus , unsigned int devfn , int where , int size , u32 *val ) ;
   int (*write)(struct pci_bus *bus , unsigned int devfn , int where , int size ,
                u32 val ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev *dev , enum pci_channel_state error ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev *dev ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev *dev ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev *dev ) ;
   void (*resume)(struct pci_dev *dev ) ;
};
struct module;
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev *dev , struct pci_device_id const *id ) ;
   void (*remove)(struct pci_dev *dev ) ;
   int (*suspend)(struct pci_dev *dev , pm_message_t state ) ;
   int (*suspend_late)(struct pci_dev *dev , pm_message_t state ) ;
   int (*resume_early)(struct pci_dev *dev ) ;
   int (*resume)(struct pci_dev *dev ) ;
   void (*shutdown)(struct pci_dev *dev ) ;
   struct pci_error_handlers *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct seq_operations;
struct file;
struct path;
struct inode;
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
   void *(*start)(struct seq_file *m , loff_t *pos ) ;
   void (*stop)(struct seq_file *m , void *v ) ;
   void *(*next)(struct seq_file *m , void *v , loff_t *pos ) ;
   int (*show)(struct seq_file *m , void *v ) ;
};
struct file_operations;
struct hsu_dma_buffer {
   u8 *buf ;
   dma_addr_t dma_addr ;
   u32 dma_size ;
   u32 ofs ;
};
struct uart_hsu_port;
struct hsu_dma_chan {
   u32 id ;
   enum dma_data_direction dirt ;
   struct uart_hsu_port *uport ;
   void *reg ;
};
struct uart_hsu_port {
   struct uart_port port ;
   unsigned char ier ;
   unsigned char lcr ;
   unsigned char mcr ;
   unsigned int lsr_break_flag ;
   char name[12] ;
   int index ;
   struct device *dev ;
   struct hsu_dma_chan *txc ;
   struct hsu_dma_chan *rxc ;
   struct hsu_dma_buffer txbuf ;
   struct hsu_dma_buffer rxbuf ;
   int use_dma ;
   int running ;
   int dma_tx_on ;
};
struct hsu_port {
   void *reg ;
   unsigned long paddr ;
   unsigned long iolen ;
   u32 irq ;
   struct uart_hsu_port port[3] ;
   struct hsu_dma_chan chans[10] ;
   struct dentry *debugfs ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern int ( sprintf)(char *buf , char const *fmt , ...) ;
extern int ( snprintf)(char *buf , size_t size , char const *fmt
                                               , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void __cmpxchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v ) __attribute__((__no_instrument_function__)) ;
__inline static int atomic_read(atomic_t const *v )
{ int const *__cil_tmp2 ;
  int volatile *__cil_tmp3 ;
  int volatile __cil_tmp4 ;
  {
  {
  __cil_tmp2 = (int const *)v;
  __cil_tmp3 = (int volatile *)__cil_tmp2;
  __cil_tmp4 = *__cil_tmp3;
  return ((int )__cil_tmp4);
  }
}
}
__inline static void atomic_inc(atomic_t *v ) __attribute__((__no_instrument_function__)) ;
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "incl %0": "+m" (*((int *)v)));
  return;
}
}
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new ) __attribute__((__no_instrument_function__)) ;
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{ int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  int *__cil_tmp11 ;
  int *__cil_tmp12 ;
  int *__cil_tmp13 ;
  int *__cil_tmp14 ;
  {
  __old = old;
  __new = new;
  if ((int )4UL == 1) {
    goto case_1;
  } else
  if ((int )4UL == 2) {
    goto case_2;
  } else
  if ((int )4UL == 4) {
    goto case_4;
  } else
  if ((int )4UL == 8) {
    goto case_8;
  } else {
    {
    goto switch_default;
    if (0) {
      case_1:
      __cil_tmp11 = (int *)v;
      __ptr = (u8 volatile *)__cil_tmp11;
      __asm__ volatile (".section .smp_locks,\"a\"\n"
                           ".balign 4\n"
                           ".long 671f - .\n"
                           ".previous\n"
                           "671:"
                           "\n\tlock; "
                           "cmpxchgb %2,%1": "=a" (__ret), "+m" (*__ptr): "q" (__new),
                           "0" (__old): "memory");
      goto switch_break;
      case_2:
      __cil_tmp12 = (int *)v;
      __ptr___0 = (u16 volatile *)__cil_tmp12;
      __asm__ volatile (".section .smp_locks,\"a\"\n"
                           ".balign 4\n"
                           ".long 671f - .\n"
                           ".previous\n"
                           "671:"
                           "\n\tlock; "
                           "cmpxchgw %2,%1": "=a" (__ret), "+m" (*__ptr___0): "r" (__new),
                           "0" (__old): "memory");
      goto switch_break;
      case_4:
      __cil_tmp13 = (int *)v;
      __ptr___1 = (u32 volatile *)__cil_tmp13;
      __asm__ volatile (".section .smp_locks,\"a\"\n"
                           ".balign 4\n"
                           ".long 671f - .\n"
                           ".previous\n"
                           "671:"
                           "\n\tlock; "
                           "cmpxchgl %2,%1": "=a" (__ret), "+m" (*__ptr___1): "r" (__new),
                           "0" (__old): "memory");
      goto switch_break;
      case_8:
      __cil_tmp14 = (int *)v;
      __ptr___2 = (u64 volatile *)__cil_tmp14;
      __asm__ volatile (".section .smp_locks,\"a\"\n"
                           ".balign 4\n"
                           ".long 671f - .\n"
                           ".previous\n"
                           "671:"
                           "\n\tlock; "
                           "cmpxchgq %2,%1": "=a" (__ret), "+m" (*__ptr___2): "r" (__new),
                           "0" (__old): "memory");
      goto switch_break;
      switch_default:
      {
      __cmpxchg_wrong_size();
      }
    } else {
      switch_break: ;
    }
    }
  }
  return (__ret);
}
}
__inline static int __atomic_add_unless(atomic_t *v , int a , int u ) __attribute__((__no_instrument_function__)) ;
__inline static int __atomic_add_unless(atomic_t *v , int a , int u )
{ int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  atomic_t const *__cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  long __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  long __cil_tmp17 ;
  {
  {
  __cil_tmp8 = (atomic_t const *)v;
  c = atomic_read(__cil_tmp8);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp9 = c == u;
    __cil_tmp10 = ! __cil_tmp9;
    __cil_tmp11 = ! __cil_tmp10;
    __cil_tmp12 = (long )__cil_tmp11;
    tmp = ldv__builtin_expect(__cil_tmp12, 0L);
    }
    if (tmp) {
      goto while_break;
    } else {
    }
    {
    __cil_tmp13 = c + a;
    old = atomic_cmpxchg(v, c, __cil_tmp13);
    __cil_tmp14 = old == c;
    __cil_tmp15 = ! __cil_tmp14;
    __cil_tmp16 = ! __cil_tmp15;
    __cil_tmp17 = (long )__cil_tmp16;
    tmp___0 = ldv__builtin_expect(__cil_tmp17, 1L);
    }
    if (tmp___0) {
      goto while_break;
    } else {
    }
    c = old;
  }
  while_break: ;
  }
  return (c);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u ) __attribute__((__no_instrument_function__)) ;
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{ int tmp ;
  {
  {
  tmp = __atomic_add_unless(v, a, u);
  }
  return (tmp != u);
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t *lock , unsigned long flags ) __attribute__((__section__(".spinlock.text"))) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return ((struct raw_spinlock *)lock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{ struct raw_spinlock *__cil_tmp5 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp5 = (struct raw_spinlock *)lock;
    _raw_spin_unlock_irqrestore(__cil_tmp5, flags);
    }
    goto while_break;
  }
  while_break: ;
  }
  return;
}
}
extern void __wake_up(wait_queue_head_t *q , unsigned int mode , int nr , void *key ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t start ,
                                         resource_size_t n , char const *name ,
                                         int flags ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
__inline static unsigned char readb(void const volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned char readb(void const volatile *addr )
{ unsigned char ret ;
  unsigned char volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned char volatile *)addr;
  __asm__ volatile ("mov"
                       "b"
                       " %1,%0": "=q" (ret): "m" (*__cil_tmp3): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void const volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int readl(void const volatile *addr )
{ unsigned int ret ;
  unsigned int volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned int volatile *)addr;
  __asm__ volatile ("mov"
                       "l"
                       " %1,%0": "=r" (ret): "m" (*__cil_tmp3): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void writeb(unsigned char val , void volatile *addr )
{ unsigned char volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned char volatile *)addr;
  __asm__ volatile ("mov"
                       "b"
                       " %0,%1": : "q" (val), "m" (*__cil_tmp3): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void writel(unsigned int val , void volatile *addr )
{ unsigned int volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned int volatile *)addr;
  __asm__ volatile ("mov"
                       "l"
                       " %0,%1": : "r" (val), "m" (*__cil_tmp3): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t offset , unsigned long size ) ;
extern struct kernel_param_ops param_ops_int ;
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp = kmalloc(size, __cil_tmp4);
  }
  return (tmp);
}
}
extern void __const_udelay(unsigned long xloops ) ;
extern int __attribute__((__warn_unused_result__)) request_threaded_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         irqreturn_t (*thread_fn)(int ,
                                                                                                  void * ) ,
                                                                         unsigned long flags ,
                                                                         char const *name ,
                                                                         void *dev ) ;
__inline static int __attribute__((__warn_unused_result__)) request_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         unsigned long flags ,
                                                                         char const *name ,
                                                                         void *dev ) __attribute__((__no_instrument_function__)) ;
__inline static int __attribute__((__warn_unused_result__)) request_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         unsigned long flags ,
                                                                         char const *name ,
                                                                         void *dev )
{ int tmp ;
  void *__cil_tmp7 ;
  irqreturn_t (*__cil_tmp8)(int , void * ) ;
  {
  {
  __cil_tmp7 = (void *)0;
  __cil_tmp8 = (irqreturn_t (*)(int , void * ))__cil_tmp7;
  tmp = (int )request_threaded_irq(irq, handler, __cil_tmp8, flags, name, dev);
  }
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern loff_t default_llseek(struct file *file , loff_t offset , int origin ) ;
extern int simple_open(struct inode *inode , struct file *file ) ;
extern ssize_t simple_read_from_buffer(void *to , size_t count , loff_t *ppos , void const *from ,
                                       size_t available ) ;
extern void *dev_get_drvdata(struct device const *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern int ( dev_err)(struct device const *dev , char const *fmt
                                              , ...) ;
extern int ( dev_warn)(struct device const *dev , char const *fmt
                                               , ...) ;
extern void do_SAK(struct tty_struct *tty ) ;
extern void tty_flip_buffer_push(struct tty_struct *tty ) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_struct *tty , unsigned char const *chars ,
                                             char flag , size_t size ) ;
__inline static int tty_insert_flip_string(struct tty_struct *tty , unsigned char const *chars ,
                                           size_t size ) __attribute__((__no_instrument_function__)) ;
__inline static int tty_insert_flip_string(struct tty_struct *tty , unsigned char const *chars ,
                                           size_t size )
{ int tmp ;
  {
  {
  tmp = tty_insert_flip_string_fixed_flag(tty, chars, (char)0, size);
  }
  return (tmp);
}
}
extern void uart_write_wakeup(struct uart_port *port ) ;
extern void uart_update_timeout(struct uart_port *port , unsigned int cflag , unsigned int baud ) ;
extern unsigned int uart_get_baud_rate(struct uart_port *port , struct ktermios *termios ,
                                       struct ktermios *old , unsigned int min , unsigned int max ) ;
extern unsigned int uart_get_divisor(struct uart_port *port , unsigned int baud ) ;
extern int uart_register_driver(struct uart_driver *uart ) ;
extern void uart_unregister_driver(struct uart_driver *uart ) ;
extern int uart_add_one_port(struct uart_driver *reg , struct uart_port *port ) ;
extern int uart_remove_one_port(struct uart_driver *reg , struct uart_port *port ) ;
extern int uart_suspend_port(struct uart_driver *reg , struct uart_port *port ) ;
extern int uart_resume_port(struct uart_driver *reg , struct uart_port *port ) ;
__inline static int uart_tx_stopped(struct uart_port *port ) __attribute__((__no_instrument_function__)) ;
__inline static int uart_tx_stopped(struct uart_port *port )
{ struct tty_struct *tty ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct uart_state *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  {
  __cil_tmp3 = (unsigned long )port;
  __cil_tmp4 = __cil_tmp3 + 120;
  __cil_tmp5 = *((struct uart_state **)__cil_tmp4);
  tty = *((struct tty_struct **)__cil_tmp5);
  {
  __cil_tmp6 = (unsigned long )tty;
  __cil_tmp7 = __cil_tmp6 + 340;
  if (*((unsigned char *)__cil_tmp7)) {
    return (1);
  } else
  if (tty->hw_stopped) {
    return (1);
  } else {
  }
  }
  return (0);
}
}
extern void uart_handle_dcd_change(struct uart_port *uport , unsigned int status ) ;
extern void uart_handle_cts_change(struct uart_port *uport , unsigned int status ) ;
extern void uart_insert_char(struct uart_port *port , unsigned int status , unsigned int overrun ,
                             unsigned int ch , unsigned int flag ) ;
__inline static int uart_handle_break(struct uart_port *port ) __attribute__((__no_instrument_function__)) ;
__inline static int uart_handle_break(struct uart_port *port )
{ struct uart_state *state ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  int __cil_tmp5 ;
  upf_t __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  upf_t __cil_tmp9 ;
  struct tty_struct *__cil_tmp10 ;
  {
  __cil_tmp3 = (unsigned long )port;
  __cil_tmp4 = __cil_tmp3 + 120;
  state = *((struct uart_state **)__cil_tmp4);
  {
  __cil_tmp5 = 1 << 2;
  __cil_tmp6 = (upf_t )__cil_tmp5;
  __cil_tmp7 = (unsigned long )port;
  __cil_tmp8 = __cil_tmp7 + 192;
  __cil_tmp9 = *((upf_t *)__cil_tmp8);
  if (__cil_tmp9 & __cil_tmp6) {
    {
    __cil_tmp10 = *((struct tty_struct **)state);
    do_SAK(__cil_tmp10);
    }
  } else {
  }
  }
  return (0);
}
}
__inline static int valid_dma_direction(int dma_direction ) __attribute__((__no_instrument_function__)) ;
__inline static int valid_dma_direction(int dma_direction )
{ int tmp___7 ;
  {
  if (dma_direction == 0) {
    tmp___7 = 1;
  } else
  if (dma_direction == 1) {
    tmp___7 = 1;
  } else
  if (dma_direction == 2) {
    tmp___7 = 1;
  } else {
    tmp___7 = 0;
  }
  return (tmp___7);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n ) __attribute__((__no_instrument_function__)) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device *dev , struct page *page , size_t offset ,
                               size_t size , int direction , dma_addr_t dma_addr ,
                               bool map_single ) ;
extern void debug_dma_sync_single_for_cpu(struct device *dev , dma_addr_t dma_handle ,
                                          size_t size , int direction ) ;
extern void debug_dma_sync_single_for_device(struct device *dev , dma_addr_t dma_handle ,
                                             size_t size , int direction ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{ long tmp___7 ;
  int __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct dma_map_ops *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  {
  {
  __cil_tmp3 = ! dev;
  __cil_tmp4 = ! __cil_tmp3;
  __cil_tmp5 = ! __cil_tmp4;
  __cil_tmp6 = (long )__cil_tmp5;
  tmp___7 = ldv__builtin_expect(__cil_tmp6, 0L);
  }
  if (tmp___7) {
    return (dma_ops);
  } else {
    {
    __cil_tmp7 = 632 + 8;
    __cil_tmp8 = (unsigned long )dev;
    __cil_tmp9 = __cil_tmp8 + __cil_tmp7;
    __cil_tmp10 = *((struct dma_map_ops **)__cil_tmp9);
    if (! __cil_tmp10) {
      return (dma_ops);
    } else {
      {
      __cil_tmp11 = 632 + 8;
      __cil_tmp12 = (unsigned long )dev;
      __cil_tmp13 = __cil_tmp12 + __cil_tmp11;
      return (*((struct dma_map_ops **)__cil_tmp13));
      }
    }
    }
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs ) __attribute__((__no_instrument_function__)) ;
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp___7 ;
  dma_addr_t addr ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  unsigned long tmp___11 ;
  unsigned long tmp___12 ;
  unsigned int __cil_tmp14 ;
  int __cil_tmp15 ;
  long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  dma_addr_t (*__cil_tmp20)(struct device *dev , struct page *page , unsigned long offset ,
                            size_t size , enum dma_data_direction dir , struct dma_attrs *attrs ) ;
  unsigned long __cil_tmp21 ;
  struct page *__cil_tmp22 ;
  struct page *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct page *__cil_tmp32 ;
  struct page *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  int __cil_tmp40 ;
  bool __cil_tmp41 ;
  {
  {
  tmp___7 = get_dma_ops(dev);
  ops = tmp___7;
  __cil_tmp14 = (unsigned int )size;
  kmemcheck_mark_initialized(ptr, __cil_tmp14);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp15 = (int )dir;
    tmp___8 = valid_dma_direction(__cil_tmp15);
    }
    if (tmp___8) {
      tmp___9 = 0;
    } else {
      tmp___9 = 1;
    }
    {
    __cil_tmp16 = (long )tmp___9;
    tmp___10 = ldv__builtin_expect(__cil_tmp16, 0L);
    }
    if (tmp___10) {
      {
      while (1) {
        while_continue___0: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/asm-generic/dma-mapping-common.h"),
                             "i" (19), "i" (12UL));
        {
        while (1) {
          while_continue___1: ;
        }
        while_break___1: ;
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp17 = (unsigned long )ptr;
  tmp___11 = __phys_addr(__cil_tmp17);
  __cil_tmp18 = (unsigned long )ops;
  __cil_tmp19 = __cil_tmp18 + 24;
  __cil_tmp20 = *((dma_addr_t (**)(struct device *dev , struct page *page , unsigned long offset ,
                                   size_t size , enum dma_data_direction dir , struct dma_attrs *attrs ))__cil_tmp19);
  __cil_tmp21 = tmp___11 >> 12;
  __cil_tmp22 = (struct page *)0xffffea0000000000UL;
  __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
  __cil_tmp24 = 1UL << 12;
  __cil_tmp25 = __cil_tmp24 - 1UL;
  __cil_tmp26 = ~ __cil_tmp25;
  __cil_tmp27 = ~ __cil_tmp26;
  __cil_tmp28 = (unsigned long )ptr;
  __cil_tmp29 = __cil_tmp28 & __cil_tmp27;
  addr = (*__cil_tmp20)(dev, __cil_tmp23, __cil_tmp29, size, dir, attrs);
  __cil_tmp30 = (unsigned long )ptr;
  tmp___12 = __phys_addr(__cil_tmp30);
  __cil_tmp31 = tmp___12 >> 12;
  __cil_tmp32 = (struct page *)0xffffea0000000000UL;
  __cil_tmp33 = __cil_tmp32 + __cil_tmp31;
  __cil_tmp34 = 1UL << 12;
  __cil_tmp35 = __cil_tmp34 - 1UL;
  __cil_tmp36 = ~ __cil_tmp35;
  __cil_tmp37 = ~ __cil_tmp36;
  __cil_tmp38 = (unsigned long )ptr;
  __cil_tmp39 = __cil_tmp38 & __cil_tmp37;
  __cil_tmp40 = (int )dir;
  __cil_tmp41 = (bool )1;
  debug_dma_map_page(dev, __cil_tmp33, __cil_tmp39, size, __cil_tmp40, addr, __cil_tmp41);
  }
  return (addr);
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir ) __attribute__((__no_instrument_function__)) ;
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  int __cil_tmp10 ;
  long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void (*__cil_tmp16)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ) ;
  int __cil_tmp17 ;
  {
  {
  tmp___7 = get_dma_ops(dev);
  ops = tmp___7;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp10 = (int )dir;
    tmp___8 = valid_dma_direction(__cil_tmp10);
    }
    if (tmp___8) {
      tmp___9 = 0;
    } else {
      tmp___9 = 1;
    }
    {
    __cil_tmp11 = (long )tmp___9;
    tmp___10 = ldv__builtin_expect(__cil_tmp11, 0L);
    }
    if (tmp___10) {
      {
      while (1) {
        while_continue___0: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/asm-generic/dma-mapping-common.h"),
                             "i" (103), "i" (12UL));
        {
        while (1) {
          while_continue___1: ;
        }
        while_break___1: ;
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp12 = (unsigned long )ops;
  __cil_tmp13 = __cil_tmp12 + 56;
  if (*((void (**)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ))__cil_tmp13)) {
    {
    __cil_tmp14 = (unsigned long )ops;
    __cil_tmp15 = __cil_tmp14 + 56;
    __cil_tmp16 = *((void (**)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                               enum dma_data_direction dir ))__cil_tmp15);
    (*__cil_tmp16)(dev, addr, size, dir);
    }
  } else {
  }
  }
  {
  __cil_tmp17 = (int )dir;
  debug_dma_sync_single_for_cpu(dev, addr, size, __cil_tmp17);
  }
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir ) __attribute__((__no_instrument_function__)) ;
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{ struct dma_map_ops *ops ;
  struct dma_map_ops *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  int __cil_tmp10 ;
  long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void (*__cil_tmp16)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ) ;
  int __cil_tmp17 ;
  {
  {
  tmp___7 = get_dma_ops(dev);
  ops = tmp___7;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp10 = (int )dir;
    tmp___8 = valid_dma_direction(__cil_tmp10);
    }
    if (tmp___8) {
      tmp___9 = 0;
    } else {
      tmp___9 = 1;
    }
    {
    __cil_tmp11 = (long )tmp___9;
    tmp___10 = ldv__builtin_expect(__cil_tmp11, 0L);
    }
    if (tmp___10) {
      {
      while (1) {
        while_continue___0: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/asm-generic/dma-mapping-common.h"),
                             "i" (115), "i" (12UL));
        {
        while (1) {
          while_continue___1: ;
        }
        while_break___1: ;
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp12 = (unsigned long )ops;
  __cil_tmp13 = __cil_tmp12 + 64;
  if (*((void (**)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ))__cil_tmp13)) {
    {
    __cil_tmp14 = (unsigned long )ops;
    __cil_tmp15 = __cil_tmp14 + 64;
    __cil_tmp16 = *((void (**)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                               enum dma_data_direction dir ))__cil_tmp15);
    (*__cil_tmp16)(dev, addr, size, dir);
    }
  } else {
  }
  }
  {
  __cil_tmp17 = (int )dir;
  debug_dma_sync_single_for_device(dev, addr, size, __cil_tmp17);
  }
  return;
}
}
extern int __attribute__((__warn_unused_result__)) pci_enable_device(struct pci_dev *dev ) ;
extern void pci_disable_device(struct pci_dev *dev ) ;
extern int pci_save_state(struct pci_dev *dev ) ;
extern void pci_restore_state(struct pci_dev *dev ) ;
extern int pci_set_power_state(struct pci_dev *dev , pci_power_t state ) ;
extern pci_power_t pci_choose_state(struct pci_dev *dev , int stateevent ) ;
extern int __attribute__((__warn_unused_result__)) __pci_register_driver(struct pci_driver * ,
                                                                          struct module * ,
                                                                          char const *mod_name ) ;
extern void pci_unregister_driver(struct pci_driver *dev ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev ) __attribute__((__no_instrument_function__)) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{ void *tmp___7 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device const *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device const *)__cil_tmp5;
  tmp___7 = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp___7);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data ) __attribute__((__no_instrument_function__)) ;
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern struct dentry *debugfs_create_file(char const *name , umode_t mode , struct dentry *parent ,
                                          void *data , struct file_operations const *fops ) ;
extern struct dentry *debugfs_create_dir(char const *name , struct dentry *parent ) ;
extern void debugfs_remove_recursive(struct dentry *dentry ) ;
extern int __pm_runtime_idle(struct device *dev , int rpmflags ) ;
extern int __pm_runtime_resume(struct device *dev , int rpmflags ) ;
extern int pm_schedule_suspend(struct device *dev , unsigned int delay ) ;
extern void pm_runtime_allow(struct device *dev ) ;
extern void pm_runtime_forbid(struct device *dev ) ;
__inline static void pm_runtime_get_noresume(struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static void pm_runtime_get_noresume(struct device *dev )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  atomic_t *__cil_tmp5 ;
  {
  {
  __cil_tmp2 = 192 + 272;
  __cil_tmp3 = (unsigned long )dev;
  __cil_tmp4 = __cil_tmp3 + __cil_tmp2;
  __cil_tmp5 = (atomic_t *)__cil_tmp4;
  atomic_inc(__cil_tmp5);
  }
  return;
}
}
__inline static void pm_runtime_put_noidle(struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static void pm_runtime_put_noidle(struct device *dev )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  atomic_t *__cil_tmp5 ;
  {
  {
  __cil_tmp2 = 192 + 272;
  __cil_tmp3 = (unsigned long )dev;
  __cil_tmp4 = __cil_tmp3 + __cil_tmp2;
  __cil_tmp5 = (atomic_t *)__cil_tmp4;
  atomic_add_unless(__cil_tmp5, -1, 0);
  }
  return;
}
}
__inline static int pm_runtime_get_sync(struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static int pm_runtime_get_sync(struct device *dev )
{ int tmp___7 ;
  {
  {
  tmp___7 = __pm_runtime_resume(dev, 4);
  }
  return (tmp___7);
}
}
__inline static int pm_runtime_put(struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static int pm_runtime_put(struct device *dev )
{ int tmp___7 ;
  {
  {
  tmp___7 = __pm_runtime_idle(dev, 5);
  }
  return (tmp___7);
}
}
static int hsu_dma_enable ;
static char const __param_str_hsu_dma_enable[15] =
  { (char const )'h', (char const )'s', (char const )'u', (char const )'_',
        (char const )'d', (char const )'m', (char const )'a', (char const )'_',
        (char const )'e', (char const )'n', (char const )'a', (char const )'b',
        (char const )'l', (char const )'e', (char const )'\000'};
static struct kernel_param const __param_hsu_dma_enable __attribute__((__used__,
__unused__, __section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_hsu_dma_enable, (struct kernel_param_ops const *)(& param_ops_int),
    (u16 )0, (s16 )0, {(void *)(& hsu_dma_enable)}};
static char const __mod_hsu_dma_enabletype53[28] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'h', (char const )'s', (char const )'u',
        (char const )'_', (char const )'d', (char const )'m', (char const )'a',
        (char const )'_', (char const )'e', (char const )'n', (char const )'a',
        (char const )'b', (char const )'l', (char const )'e', (char const )':',
        (char const )'i', (char const )'n', (char const )'t', (char const )'\000'};
static char const __mod_hsu_dma_enable55[131] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'h', (char const )'s', (char const )'u',
        (char const )'_', (char const )'d', (char const )'m', (char const )'a',
        (char const )'_', (char const )'e', (char const )'n', (char const )'a',
        (char const )'b', (char const )'l', (char const )'e', (char const )':',
        (char const )'I', (char const )'t', (char const )' ', (char const )'i',
        (char const )'s', (char const )' ', (char const )'a', (char const )' ',
        (char const )'b', (char const )'i', (char const )'t', (char const )'m',
        (char const )'a', (char const )'p', (char const )' ', (char const )'t',
        (char const )'o', (char const )' ', (char const )'s', (char const )'e',
        (char const )'t', (char const )' ', (char const )'w', (char const )'o',
        (char const )'r', (char const )'k', (char const )'i', (char const )'n',
        (char const )'g', (char const )' ', (char const )'m', (char const )'o',
        (char const )'d', (char const )'e', (char const )',', (char const )' ',
        (char const )'i', (char const )'f', (char const )' ', (char const )'b',
        (char const )'i', (char const )'t', (char const )'[', (char const )'x',
        (char const )']', (char const )' ', (char const )'i', (char const )'s',
        (char const )' ', (char const )'1', (char const )',', (char const )' ',
        (char const )'t', (char const )'h', (char const )'e', (char const )'n',
        (char const )' ', (char const )'p', (char const )'o', (char const )'r',
        (char const )'t', (char const )'[', (char const )'x', (char const )']',
        (char const )' ', (char const )'w', (char const )'i', (char const )'l',
        (char const )'l', (char const )' ', (char const )'w', (char const )'o',
        (char const )'r', (char const )'k', (char const )' ', (char const )'i',
        (char const )'n', (char const )' ', (char const )'D', (char const )'M',
        (char const )'A', (char const )' ', (char const )'m', (char const )'o',
        (char const )'d', (char const )'e', (char const )',', (char const )' ',
        (char const )'o', (char const )'t', (char const )'h', (char const )'e',
        (char const )'r', (char const )'w', (char const )'i', (char const )'s',
        (char const )'e', (char const )' ', (char const )'i', (char const )'n',
        (char const )' ', (char const )'P', (char const )'I', (char const )'O',
        (char const )' ', (char const )'m', (char const )'o', (char const )'d',
        (char const )'e', (char const )'.', (char const )'\000'};
__inline static unsigned int serial_in(struct uart_hsu_port *up___0 , int offset ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int serial_in(struct uart_hsu_port *up___0 , int offset )
{ unsigned int val ;
  unsigned char tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  void const volatile *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned char *__cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  void const volatile *__cil_tmp16 ;
  {
  if (offset > 6) {
    {
    offset = offset << 2;
    __cil_tmp5 = 0 + 32;
    __cil_tmp6 = (unsigned long )up___0;
    __cil_tmp7 = __cil_tmp6 + __cil_tmp5;
    __cil_tmp8 = *((unsigned char **)__cil_tmp7);
    __cil_tmp9 = __cil_tmp8 + offset;
    __cil_tmp10 = (void const volatile *)__cil_tmp9;
    val = readl(__cil_tmp10);
    }
  } else {
    {
    __cil_tmp11 = 0 + 32;
    __cil_tmp12 = (unsigned long )up___0;
    __cil_tmp13 = __cil_tmp12 + __cil_tmp11;
    __cil_tmp14 = *((unsigned char **)__cil_tmp13);
    __cil_tmp15 = __cil_tmp14 + offset;
    __cil_tmp16 = (void const volatile *)__cil_tmp15;
    tmp___7 = readb(__cil_tmp16);
    val = (unsigned int )tmp___7;
    }
  }
  return (val);
}
}
__inline static void serial_out(struct uart_hsu_port *up___0 , int offset , int value ) __attribute__((__no_instrument_function__)) ;
__inline static void serial_out(struct uart_hsu_port *up___0 , int offset , int value )
{ unsigned char val ;
  unsigned int __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  void volatile *__cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned char *__cil_tmp16 ;
  unsigned char *__cil_tmp17 ;
  void volatile *__cil_tmp18 ;
  {
  if (offset > 6) {
    {
    offset = offset << 2;
    __cil_tmp5 = (unsigned int )value;
    __cil_tmp6 = 0 + 32;
    __cil_tmp7 = (unsigned long )up___0;
    __cil_tmp8 = __cil_tmp7 + __cil_tmp6;
    __cil_tmp9 = *((unsigned char **)__cil_tmp8);
    __cil_tmp10 = __cil_tmp9 + offset;
    __cil_tmp11 = (void volatile *)__cil_tmp10;
    writel(__cil_tmp5, __cil_tmp11);
    }
  } else {
    {
    __cil_tmp12 = value & 255;
    val = (unsigned char )__cil_tmp12;
    __cil_tmp13 = 0 + 32;
    __cil_tmp14 = (unsigned long )up___0;
    __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
    __cil_tmp16 = *((unsigned char **)__cil_tmp15);
    __cil_tmp17 = __cil_tmp16 + offset;
    __cil_tmp18 = (void volatile *)__cil_tmp17;
    writeb(val, __cil_tmp18);
    }
  }
  return;
}
}
static ssize_t port_show_regs(struct file *file , char *user_buf , size_t count ,
                              loff_t *ppos )
{ struct uart_hsu_port *up___0 ;
  char *buf ;
  u32 len ;
  ssize_t ret ;
  void *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned int tmp___10 ;
  int tmp___11 ;
  unsigned int tmp___12 ;
  int tmp___13 ;
  unsigned int tmp___14 ;
  int tmp___15 ;
  unsigned int tmp___16 ;
  int tmp___17 ;
  unsigned int tmp___18 ;
  int tmp___19 ;
  unsigned int tmp___20 ;
  int tmp___21 ;
  unsigned int tmp___22 ;
  int tmp___23 ;
  unsigned int tmp___24 ;
  int tmp___25 ;
  unsigned int tmp___26 ;
  int tmp___27 ;
  unsigned int tmp___28 ;
  int tmp___29 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  void *__cil_tmp34 ;
  size_t __cil_tmp35 ;
  char *__cil_tmp36 ;
  u32 __cil_tmp37 ;
  size_t __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  u32 __cil_tmp42 ;
  char *__cil_tmp43 ;
  u32 __cil_tmp44 ;
  size_t __cil_tmp45 ;
  u32 __cil_tmp46 ;
  char *__cil_tmp47 ;
  u32 __cil_tmp48 ;
  size_t __cil_tmp49 ;
  u32 __cil_tmp50 ;
  char *__cil_tmp51 ;
  u32 __cil_tmp52 ;
  size_t __cil_tmp53 ;
  u32 __cil_tmp54 ;
  char *__cil_tmp55 ;
  u32 __cil_tmp56 ;
  size_t __cil_tmp57 ;
  u32 __cil_tmp58 ;
  char *__cil_tmp59 ;
  u32 __cil_tmp60 ;
  size_t __cil_tmp61 ;
  u32 __cil_tmp62 ;
  char *__cil_tmp63 ;
  u32 __cil_tmp64 ;
  size_t __cil_tmp65 ;
  u32 __cil_tmp66 ;
  char *__cil_tmp67 ;
  u32 __cil_tmp68 ;
  size_t __cil_tmp69 ;
  u32 __cil_tmp70 ;
  char *__cil_tmp71 ;
  u32 __cil_tmp72 ;
  size_t __cil_tmp73 ;
  u32 __cil_tmp74 ;
  char *__cil_tmp75 ;
  u32 __cil_tmp76 ;
  size_t __cil_tmp77 ;
  u32 __cil_tmp78 ;
  char *__cil_tmp79 ;
  u32 __cil_tmp80 ;
  size_t __cil_tmp81 ;
  u32 __cil_tmp82 ;
  char *__cil_tmp83 ;
  u32 __cil_tmp84 ;
  size_t __cil_tmp85 ;
  u32 __cil_tmp86 ;
  void *__cil_tmp87 ;
  void const *__cil_tmp88 ;
  size_t __cil_tmp89 ;
  void const *__cil_tmp90 ;
  {
  {
  __cil_tmp32 = (unsigned long )file;
  __cil_tmp33 = __cil_tmp32 + 200;
  __cil_tmp34 = *((void **)__cil_tmp33);
  up___0 = (struct uart_hsu_port *)__cil_tmp34;
  len = (u32 )0;
  __cil_tmp35 = (size_t )1024;
  tmp___7 = kzalloc(__cil_tmp35, 208U);
  buf = (char *)tmp___7;
  }
  if (! buf) {
    return ((ssize_t )0);
  } else {
  }
  {
  __cil_tmp36 = buf + len;
  __cil_tmp37 = 1024U - len;
  __cil_tmp38 = (size_t )__cil_tmp37;
  __cil_tmp39 = (unsigned long )up___0;
  __cil_tmp40 = __cil_tmp39 + 276;
  __cil_tmp41 = *((int *)__cil_tmp40);
  tmp___8 = snprintf(__cil_tmp36, __cil_tmp38, "MFD HSU port[%d] regs:\n", __cil_tmp41);
  __cil_tmp42 = (u32 )tmp___8;
  len = len + __cil_tmp42;
  __cil_tmp43 = buf + len;
  __cil_tmp44 = 1024U - len;
  __cil_tmp45 = (size_t )__cil_tmp44;
  tmp___9 = snprintf(__cil_tmp43, __cil_tmp45, "=================================\n");
  __cil_tmp46 = (u32 )tmp___9;
  len = len + __cil_tmp46;
  tmp___10 = serial_in(up___0, 1);
  __cil_tmp47 = buf + len;
  __cil_tmp48 = 1024U - len;
  __cil_tmp49 = (size_t )__cil_tmp48;
  tmp___11 = snprintf(__cil_tmp47, __cil_tmp49, "IER: \t\t0x%08x\n", tmp___10);
  __cil_tmp50 = (u32 )tmp___11;
  len = len + __cil_tmp50;
  tmp___12 = serial_in(up___0, 2);
  __cil_tmp51 = buf + len;
  __cil_tmp52 = 1024U - len;
  __cil_tmp53 = (size_t )__cil_tmp52;
  tmp___13 = snprintf(__cil_tmp51, __cil_tmp53, "IIR: \t\t0x%08x\n", tmp___12);
  __cil_tmp54 = (u32 )tmp___13;
  len = len + __cil_tmp54;
  tmp___14 = serial_in(up___0, 3);
  __cil_tmp55 = buf + len;
  __cil_tmp56 = 1024U - len;
  __cil_tmp57 = (size_t )__cil_tmp56;
  tmp___15 = snprintf(__cil_tmp55, __cil_tmp57, "LCR: \t\t0x%08x\n", tmp___14);
  __cil_tmp58 = (u32 )tmp___15;
  len = len + __cil_tmp58;
  tmp___16 = serial_in(up___0, 4);
  __cil_tmp59 = buf + len;
  __cil_tmp60 = 1024U - len;
  __cil_tmp61 = (size_t )__cil_tmp60;
  tmp___17 = snprintf(__cil_tmp59, __cil_tmp61, "MCR: \t\t0x%08x\n", tmp___16);
  __cil_tmp62 = (u32 )tmp___17;
  len = len + __cil_tmp62;
  tmp___18 = serial_in(up___0, 5);
  __cil_tmp63 = buf + len;
  __cil_tmp64 = 1024U - len;
  __cil_tmp65 = (size_t )__cil_tmp64;
  tmp___19 = snprintf(__cil_tmp63, __cil_tmp65, "LSR: \t\t0x%08x\n", tmp___18);
  __cil_tmp66 = (u32 )tmp___19;
  len = len + __cil_tmp66;
  tmp___20 = serial_in(up___0, 6);
  __cil_tmp67 = buf + len;
  __cil_tmp68 = 1024U - len;
  __cil_tmp69 = (size_t )__cil_tmp68;
  tmp___21 = snprintf(__cil_tmp67, __cil_tmp69, "MSR: \t\t0x%08x\n", tmp___20);
  __cil_tmp70 = (u32 )tmp___21;
  len = len + __cil_tmp70;
  tmp___22 = serial_in(up___0, 8);
  __cil_tmp71 = buf + len;
  __cil_tmp72 = 1024U - len;
  __cil_tmp73 = (size_t )__cil_tmp72;
  tmp___23 = snprintf(__cil_tmp71, __cil_tmp73, "FOR: \t\t0x%08x\n", tmp___22);
  __cil_tmp74 = (u32 )tmp___23;
  len = len + __cil_tmp74;
  tmp___24 = serial_in(up___0, 12);
  __cil_tmp75 = buf + len;
  __cil_tmp76 = 1024U - len;
  __cil_tmp77 = (size_t )__cil_tmp76;
  tmp___25 = snprintf(__cil_tmp75, __cil_tmp77, "PS: \t\t0x%08x\n", tmp___24);
  __cil_tmp78 = (u32 )tmp___25;
  len = len + __cil_tmp78;
  tmp___26 = serial_in(up___0, 13);
  __cil_tmp79 = buf + len;
  __cil_tmp80 = 1024U - len;
  __cil_tmp81 = (size_t )__cil_tmp80;
  tmp___27 = snprintf(__cil_tmp79, __cil_tmp81, "MUL: \t\t0x%08x\n", tmp___26);
  __cil_tmp82 = (u32 )tmp___27;
  len = len + __cil_tmp82;
  tmp___28 = serial_in(up___0, 14);
  __cil_tmp83 = buf + len;
  __cil_tmp84 = 1024U - len;
  __cil_tmp85 = (size_t )__cil_tmp84;
  tmp___29 = snprintf(__cil_tmp83, __cil_tmp85, "DIV: \t\t0x%08x\n", tmp___28);
  __cil_tmp86 = (u32 )tmp___29;
  len = len + __cil_tmp86;
  }
  if (len > 1024U) {
    len = (u32 )1024;
  } else {
  }
  {
  __cil_tmp87 = (void *)user_buf;
  __cil_tmp88 = (void const *)buf;
  __cil_tmp89 = (size_t )len;
  ret = simple_read_from_buffer(__cil_tmp87, count, ppos, __cil_tmp88, __cil_tmp89);
  __cil_tmp90 = (void const *)buf;
  kfree(__cil_tmp90);
  }
  return (ret);
}
}
static ssize_t dma_show_regs(struct file *file , char *user_buf , size_t count , loff_t *ppos )
{ struct hsu_dma_chan *chan ;
  char *buf ;
  u32 len ;
  ssize_t ret ;
  void *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned int tmp___10 ;
  int tmp___11 ;
  unsigned int tmp___12 ;
  int tmp___13 ;
  unsigned int tmp___14 ;
  int tmp___15 ;
  unsigned int tmp___16 ;
  int tmp___17 ;
  unsigned int tmp___18 ;
  int tmp___19 ;
  unsigned int tmp___20 ;
  int tmp___21 ;
  unsigned int tmp___22 ;
  int tmp___23 ;
  unsigned int tmp___24 ;
  int tmp___25 ;
  unsigned int tmp___26 ;
  int tmp___27 ;
  unsigned int tmp___28 ;
  int tmp___29 ;
  unsigned int tmp___30 ;
  int tmp___31 ;
  unsigned int tmp___32 ;
  int tmp___33 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  void *__cil_tmp38 ;
  size_t __cil_tmp39 ;
  char *__cil_tmp40 ;
  u32 __cil_tmp41 ;
  size_t __cil_tmp42 ;
  u32 __cil_tmp43 ;
  u32 __cil_tmp44 ;
  char *__cil_tmp45 ;
  u32 __cil_tmp46 ;
  size_t __cil_tmp47 ;
  u32 __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  void *__cil_tmp51 ;
  void *__cil_tmp52 ;
  void const volatile *__cil_tmp53 ;
  char *__cil_tmp54 ;
  u32 __cil_tmp55 ;
  size_t __cil_tmp56 ;
  u32 __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  void *__cil_tmp60 ;
  void *__cil_tmp61 ;
  void const volatile *__cil_tmp62 ;
  char *__cil_tmp63 ;
  u32 __cil_tmp64 ;
  size_t __cil_tmp65 ;
  u32 __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  void *__cil_tmp69 ;
  void *__cil_tmp70 ;
  void const volatile *__cil_tmp71 ;
  char *__cil_tmp72 ;
  u32 __cil_tmp73 ;
  size_t __cil_tmp74 ;
  u32 __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  void *__cil_tmp78 ;
  void *__cil_tmp79 ;
  void const volatile *__cil_tmp80 ;
  char *__cil_tmp81 ;
  u32 __cil_tmp82 ;
  size_t __cil_tmp83 ;
  u32 __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  void *__cil_tmp87 ;
  void *__cil_tmp88 ;
  void const volatile *__cil_tmp89 ;
  char *__cil_tmp90 ;
  u32 __cil_tmp91 ;
  size_t __cil_tmp92 ;
  u32 __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  void *__cil_tmp96 ;
  void *__cil_tmp97 ;
  void const volatile *__cil_tmp98 ;
  char *__cil_tmp99 ;
  u32 __cil_tmp100 ;
  size_t __cil_tmp101 ;
  u32 __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  void *__cil_tmp105 ;
  void *__cil_tmp106 ;
  void const volatile *__cil_tmp107 ;
  char *__cil_tmp108 ;
  u32 __cil_tmp109 ;
  size_t __cil_tmp110 ;
  u32 __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  void *__cil_tmp114 ;
  void *__cil_tmp115 ;
  void const volatile *__cil_tmp116 ;
  char *__cil_tmp117 ;
  u32 __cil_tmp118 ;
  size_t __cil_tmp119 ;
  u32 __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  void *__cil_tmp123 ;
  void *__cil_tmp124 ;
  void const volatile *__cil_tmp125 ;
  char *__cil_tmp126 ;
  u32 __cil_tmp127 ;
  size_t __cil_tmp128 ;
  u32 __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  void *__cil_tmp132 ;
  void *__cil_tmp133 ;
  void const volatile *__cil_tmp134 ;
  char *__cil_tmp135 ;
  u32 __cil_tmp136 ;
  size_t __cil_tmp137 ;
  u32 __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  void *__cil_tmp141 ;
  void *__cil_tmp142 ;
  void const volatile *__cil_tmp143 ;
  char *__cil_tmp144 ;
  u32 __cil_tmp145 ;
  size_t __cil_tmp146 ;
  u32 __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  void *__cil_tmp150 ;
  void *__cil_tmp151 ;
  void const volatile *__cil_tmp152 ;
  char *__cil_tmp153 ;
  u32 __cil_tmp154 ;
  size_t __cil_tmp155 ;
  u32 __cil_tmp156 ;
  void *__cil_tmp157 ;
  void const *__cil_tmp158 ;
  size_t __cil_tmp159 ;
  void const *__cil_tmp160 ;
  {
  {
  __cil_tmp36 = (unsigned long )file;
  __cil_tmp37 = __cil_tmp36 + 200;
  __cil_tmp38 = *((void **)__cil_tmp37);
  chan = (struct hsu_dma_chan *)__cil_tmp38;
  len = (u32 )0;
  __cil_tmp39 = (size_t )1024;
  tmp___7 = kzalloc(__cil_tmp39, 208U);
  buf = (char *)tmp___7;
  }
  if (! buf) {
    return ((ssize_t )0);
  } else {
  }
  {
  __cil_tmp40 = buf + len;
  __cil_tmp41 = 1024U - len;
  __cil_tmp42 = (size_t )__cil_tmp41;
  __cil_tmp43 = *((u32 *)chan);
  tmp___8 = snprintf(__cil_tmp40, __cil_tmp42, "MFD HSU DMA channel [%d] regs:\n",
                     __cil_tmp43);
  __cil_tmp44 = (u32 )tmp___8;
  len = len + __cil_tmp44;
  __cil_tmp45 = buf + len;
  __cil_tmp46 = 1024U - len;
  __cil_tmp47 = (size_t )__cil_tmp46;
  tmp___9 = snprintf(__cil_tmp45, __cil_tmp47, "=================================\n");
  __cil_tmp48 = (u32 )tmp___9;
  len = len + __cil_tmp48;
  __cil_tmp49 = (unsigned long )chan;
  __cil_tmp50 = __cil_tmp49 + 16;
  __cil_tmp51 = *((void **)__cil_tmp50);
  __cil_tmp52 = __cil_tmp51 + 4;
  __cil_tmp53 = (void const volatile *)__cil_tmp52;
  tmp___10 = readl(__cil_tmp53);
  __cil_tmp54 = buf + len;
  __cil_tmp55 = 1024U - len;
  __cil_tmp56 = (size_t )__cil_tmp55;
  tmp___11 = snprintf(__cil_tmp54, __cil_tmp56, "CR: \t\t0x%08x\n", tmp___10);
  __cil_tmp57 = (u32 )tmp___11;
  len = len + __cil_tmp57;
  __cil_tmp58 = (unsigned long )chan;
  __cil_tmp59 = __cil_tmp58 + 16;
  __cil_tmp60 = *((void **)__cil_tmp59);
  __cil_tmp61 = __cil_tmp60 + 8;
  __cil_tmp62 = (void const volatile *)__cil_tmp61;
  tmp___12 = readl(__cil_tmp62);
  __cil_tmp63 = buf + len;
  __cil_tmp64 = 1024U - len;
  __cil_tmp65 = (size_t )__cil_tmp64;
  tmp___13 = snprintf(__cil_tmp63, __cil_tmp65, "DCR: \t\t0x%08x\n", tmp___12);
  __cil_tmp66 = (u32 )tmp___13;
  len = len + __cil_tmp66;
  __cil_tmp67 = (unsigned long )chan;
  __cil_tmp68 = __cil_tmp67 + 16;
  __cil_tmp69 = *((void **)__cil_tmp68);
  __cil_tmp70 = __cil_tmp69 + 16;
  __cil_tmp71 = (void const volatile *)__cil_tmp70;
  tmp___14 = readl(__cil_tmp71);
  __cil_tmp72 = buf + len;
  __cil_tmp73 = 1024U - len;
  __cil_tmp74 = (size_t )__cil_tmp73;
  tmp___15 = snprintf(__cil_tmp72, __cil_tmp74, "BSR: \t\t0x%08x\n", tmp___14);
  __cil_tmp75 = (u32 )tmp___15;
  len = len + __cil_tmp75;
  __cil_tmp76 = (unsigned long )chan;
  __cil_tmp77 = __cil_tmp76 + 16;
  __cil_tmp78 = *((void **)__cil_tmp77);
  __cil_tmp79 = __cil_tmp78 + 20;
  __cil_tmp80 = (void const volatile *)__cil_tmp79;
  tmp___16 = readl(__cil_tmp80);
  __cil_tmp81 = buf + len;
  __cil_tmp82 = 1024U - len;
  __cil_tmp83 = (size_t )__cil_tmp82;
  tmp___17 = snprintf(__cil_tmp81, __cil_tmp83, "MOTSR: \t\t0x%08x\n", tmp___16);
  __cil_tmp84 = (u32 )tmp___17;
  len = len + __cil_tmp84;
  __cil_tmp85 = (unsigned long )chan;
  __cil_tmp86 = __cil_tmp85 + 16;
  __cil_tmp87 = *((void **)__cil_tmp86);
  __cil_tmp88 = __cil_tmp87 + 32;
  __cil_tmp89 = (void const volatile *)__cil_tmp88;
  tmp___18 = readl(__cil_tmp89);
  __cil_tmp90 = buf + len;
  __cil_tmp91 = 1024U - len;
  __cil_tmp92 = (size_t )__cil_tmp91;
  tmp___19 = snprintf(__cil_tmp90, __cil_tmp92, "D0SAR: \t\t0x%08x\n", tmp___18);
  __cil_tmp93 = (u32 )tmp___19;
  len = len + __cil_tmp93;
  __cil_tmp94 = (unsigned long )chan;
  __cil_tmp95 = __cil_tmp94 + 16;
  __cil_tmp96 = *((void **)__cil_tmp95);
  __cil_tmp97 = __cil_tmp96 + 36;
  __cil_tmp98 = (void const volatile *)__cil_tmp97;
  tmp___20 = readl(__cil_tmp98);
  __cil_tmp99 = buf + len;
  __cil_tmp100 = 1024U - len;
  __cil_tmp101 = (size_t )__cil_tmp100;
  tmp___21 = snprintf(__cil_tmp99, __cil_tmp101, "D0TSR: \t\t0x%08x\n", tmp___20);
  __cil_tmp102 = (u32 )tmp___21;
  len = len + __cil_tmp102;
  __cil_tmp103 = (unsigned long )chan;
  __cil_tmp104 = __cil_tmp103 + 16;
  __cil_tmp105 = *((void **)__cil_tmp104);
  __cil_tmp106 = __cil_tmp105 + 40;
  __cil_tmp107 = (void const volatile *)__cil_tmp106;
  tmp___22 = readl(__cil_tmp107);
  __cil_tmp108 = buf + len;
  __cil_tmp109 = 1024U - len;
  __cil_tmp110 = (size_t )__cil_tmp109;
  tmp___23 = snprintf(__cil_tmp108, __cil_tmp110, "D0SAR: \t\t0x%08x\n", tmp___22);
  __cil_tmp111 = (u32 )tmp___23;
  len = len + __cil_tmp111;
  __cil_tmp112 = (unsigned long )chan;
  __cil_tmp113 = __cil_tmp112 + 16;
  __cil_tmp114 = *((void **)__cil_tmp113);
  __cil_tmp115 = __cil_tmp114 + 44;
  __cil_tmp116 = (void const volatile *)__cil_tmp115;
  tmp___24 = readl(__cil_tmp116);
  __cil_tmp117 = buf + len;
  __cil_tmp118 = 1024U - len;
  __cil_tmp119 = (size_t )__cil_tmp118;
  tmp___25 = snprintf(__cil_tmp117, __cil_tmp119, "D0TSR: \t\t0x%08x\n", tmp___24);
  __cil_tmp120 = (u32 )tmp___25;
  len = len + __cil_tmp120;
  __cil_tmp121 = (unsigned long )chan;
  __cil_tmp122 = __cil_tmp121 + 16;
  __cil_tmp123 = *((void **)__cil_tmp122);
  __cil_tmp124 = __cil_tmp123 + 48;
  __cil_tmp125 = (void const volatile *)__cil_tmp124;
  tmp___26 = readl(__cil_tmp125);
  __cil_tmp126 = buf + len;
  __cil_tmp127 = 1024U - len;
  __cil_tmp128 = (size_t )__cil_tmp127;
  tmp___27 = snprintf(__cil_tmp126, __cil_tmp128, "D0SAR: \t\t0x%08x\n", tmp___26);
  __cil_tmp129 = (u32 )tmp___27;
  len = len + __cil_tmp129;
  __cil_tmp130 = (unsigned long )chan;
  __cil_tmp131 = __cil_tmp130 + 16;
  __cil_tmp132 = *((void **)__cil_tmp131);
  __cil_tmp133 = __cil_tmp132 + 52;
  __cil_tmp134 = (void const volatile *)__cil_tmp133;
  tmp___28 = readl(__cil_tmp134);
  __cil_tmp135 = buf + len;
  __cil_tmp136 = 1024U - len;
  __cil_tmp137 = (size_t )__cil_tmp136;
  tmp___29 = snprintf(__cil_tmp135, __cil_tmp137, "D0TSR: \t\t0x%08x\n", tmp___28);
  __cil_tmp138 = (u32 )tmp___29;
  len = len + __cil_tmp138;
  __cil_tmp139 = (unsigned long )chan;
  __cil_tmp140 = __cil_tmp139 + 16;
  __cil_tmp141 = *((void **)__cil_tmp140);
  __cil_tmp142 = __cil_tmp141 + 56;
  __cil_tmp143 = (void const volatile *)__cil_tmp142;
  tmp___30 = readl(__cil_tmp143);
  __cil_tmp144 = buf + len;
  __cil_tmp145 = 1024U - len;
  __cil_tmp146 = (size_t )__cil_tmp145;
  tmp___31 = snprintf(__cil_tmp144, __cil_tmp146, "D0SAR: \t\t0x%08x\n", tmp___30);
  __cil_tmp147 = (u32 )tmp___31;
  len = len + __cil_tmp147;
  __cil_tmp148 = (unsigned long )chan;
  __cil_tmp149 = __cil_tmp148 + 16;
  __cil_tmp150 = *((void **)__cil_tmp149);
  __cil_tmp151 = __cil_tmp150 + 60;
  __cil_tmp152 = (void const volatile *)__cil_tmp151;
  tmp___32 = readl(__cil_tmp152);
  __cil_tmp153 = buf + len;
  __cil_tmp154 = 1024U - len;
  __cil_tmp155 = (size_t )__cil_tmp154;
  tmp___33 = snprintf(__cil_tmp153, __cil_tmp155, "D0TSR: \t\t0x%08x\n", tmp___32);
  __cil_tmp156 = (u32 )tmp___33;
  len = len + __cil_tmp156;
  }
  if (len > 1024U) {
    len = (u32 )1024;
  } else {
  }
  {
  __cil_tmp157 = (void *)user_buf;
  __cil_tmp158 = (void const *)buf;
  __cil_tmp159 = (size_t )len;
  ret = simple_read_from_buffer(__cil_tmp157, count, ppos, __cil_tmp158, __cil_tmp159);
  __cil_tmp160 = (void const *)buf;
  kfree(__cil_tmp160);
  }
  return (ret);
}
}
static struct file_operations const port_regs_ops =
     {& __this_module, & default_llseek, & port_show_regs, (ssize_t (*)(struct file * ,
                                                                      char const * ,
                                                                      size_t , loff_t * ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (int (*)(struct file * , void * , int (*)(void * , char const * , int , loff_t ,
                                              u64 , unsigned int ) ))0, (unsigned int (*)(struct file * ,
                                                                                            struct poll_table_struct * ))0,
    (long (*)(struct file * , unsigned int , unsigned long ))0, (long (*)(struct file * ,
                                                                            unsigned int ,
                                                                            unsigned long ))0,
    (int (*)(struct file * , struct vm_area_struct * ))0, & simple_open, (int (*)(struct file * ,
                                                                                  fl_owner_t id ))0,
    (int (*)(struct inode * , struct file * ))0, (int (*)(struct file * , loff_t ,
                                                          loff_t , int datasync ))0,
    (int (*)(struct kiocb * , int datasync ))0, (int (*)(int , struct file * , int ))0,
    (int (*)(struct file * , int , struct file_lock * ))0, (ssize_t (*)(struct file * ,
                                                                         struct page * ,
                                                                         int , size_t ,
                                                                         loff_t * ,
                                                                         int ))0,
    (unsigned long (*)(struct file * , unsigned long , unsigned long , unsigned long ,
                       unsigned long ))0, (int (*)(int ))0, (int (*)(struct file * ,
                                                                       int , struct file_lock * ))0,
    (ssize_t (*)(struct pipe_inode_info * , struct file * , loff_t * , size_t , unsigned int ))0,
    (ssize_t (*)(struct file * , loff_t * , struct pipe_inode_info * , size_t , unsigned int ))0,
    (int (*)(struct file * , long , struct file_lock ** ))0, (long (*)(struct file *file ,
                                                                        int mode ,
                                                                        loff_t offset ,
                                                                        loff_t len ))0};
static struct file_operations const dma_regs_ops =
     {& __this_module, & default_llseek, & dma_show_regs, (ssize_t (*)(struct file * ,
                                                                     char const * ,
                                                                     size_t , loff_t * ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (int (*)(struct file * , void * , int (*)(void * , char const * , int , loff_t ,
                                              u64 , unsigned int ) ))0, (unsigned int (*)(struct file * ,
                                                                                            struct poll_table_struct * ))0,
    (long (*)(struct file * , unsigned int , unsigned long ))0, (long (*)(struct file * ,
                                                                            unsigned int ,
                                                                            unsigned long ))0,
    (int (*)(struct file * , struct vm_area_struct * ))0, & simple_open, (int (*)(struct file * ,
                                                                                  fl_owner_t id ))0,
    (int (*)(struct inode * , struct file * ))0, (int (*)(struct file * , loff_t ,
                                                          loff_t , int datasync ))0,
    (int (*)(struct kiocb * , int datasync ))0, (int (*)(int , struct file * , int ))0,
    (int (*)(struct file * , int , struct file_lock * ))0, (ssize_t (*)(struct file * ,
                                                                         struct page * ,
                                                                         int , size_t ,
                                                                         loff_t * ,
                                                                         int ))0,
    (unsigned long (*)(struct file * , unsigned long , unsigned long , unsigned long ,
                       unsigned long ))0, (int (*)(int ))0, (int (*)(struct file * ,
                                                                       int , struct file_lock * ))0,
    (ssize_t (*)(struct pipe_inode_info * , struct file * , loff_t * , size_t , unsigned int ))0,
    (ssize_t (*)(struct file * , loff_t * , struct pipe_inode_info * , size_t , unsigned int ))0,
    (int (*)(struct file * , long , struct file_lock ** ))0, (long (*)(struct file *file ,
                                                                        int mode ,
                                                                        loff_t offset ,
                                                                        loff_t len ))0};
static int hsu_debugfs_init(struct hsu_port *hsu )
{ int i ;
  char name[32] ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  struct dentry *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct dentry *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  char *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  char *__cil_tmp16 ;
  char const *__cil_tmp17 ;
  umode_t __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct dentry *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct uart_hsu_port *__cil_tmp26 ;
  void *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  char *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  char *__cil_tmp33 ;
  char const *__cil_tmp34 ;
  umode_t __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct dentry *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  struct hsu_dma_chan *__cil_tmp43 ;
  void *__cil_tmp44 ;
  {
  {
  __cil_tmp4 = (unsigned long )hsu;
  __cil_tmp5 = __cil_tmp4 + 1376;
  __cil_tmp6 = (void *)0;
  __cil_tmp7 = (struct dentry *)__cil_tmp6;
  *((struct dentry **)__cil_tmp5) = debugfs_create_dir("hsu", __cil_tmp7);
  }
  {
  __cil_tmp8 = (unsigned long )hsu;
  __cil_tmp9 = __cil_tmp8 + 1376;
  __cil_tmp10 = *((struct dentry **)__cil_tmp9);
  if (! __cil_tmp10) {
    return (-12);
  } else {
  }
  }
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < 3) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp11 = 0 * 1UL;
    __cil_tmp12 = (unsigned long )(name) + __cil_tmp11;
    __cil_tmp13 = (char *)__cil_tmp12;
    snprintf(__cil_tmp13, 32UL, "port_%d_regs", i);
    __cil_tmp14 = 0 * 1UL;
    __cil_tmp15 = (unsigned long )(name) + __cil_tmp14;
    __cil_tmp16 = (char *)__cil_tmp15;
    __cil_tmp17 = (char const *)__cil_tmp16;
    __cil_tmp18 = (umode_t )33060;
    __cil_tmp19 = (unsigned long )hsu;
    __cil_tmp20 = __cil_tmp19 + 1376;
    __cil_tmp21 = *((struct dentry **)__cil_tmp20);
    __cil_tmp22 = i * 368UL;
    __cil_tmp23 = 32 + __cil_tmp22;
    __cil_tmp24 = (unsigned long )hsu;
    __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
    __cil_tmp26 = (struct uart_hsu_port *)__cil_tmp25;
    __cil_tmp27 = (void *)__cil_tmp26;
    debugfs_create_file(__cil_tmp17, __cil_tmp18, __cil_tmp21, __cil_tmp27, & port_regs_ops);
    i = i + 1;
    }
  }
  while_break: ;
  }
  i = 0;
  {
  while (1) {
    while_continue___0: ;
    if (i < 6) {
    } else {
      goto while_break___0;
    }
    {
    __cil_tmp28 = 0 * 1UL;
    __cil_tmp29 = (unsigned long )(name) + __cil_tmp28;
    __cil_tmp30 = (char *)__cil_tmp29;
    snprintf(__cil_tmp30, 32UL, "dma_chan_%d_regs", i);
    __cil_tmp31 = 0 * 1UL;
    __cil_tmp32 = (unsigned long )(name) + __cil_tmp31;
    __cil_tmp33 = (char *)__cil_tmp32;
    __cil_tmp34 = (char const *)__cil_tmp33;
    __cil_tmp35 = (umode_t )33060;
    __cil_tmp36 = (unsigned long )hsu;
    __cil_tmp37 = __cil_tmp36 + 1376;
    __cil_tmp38 = *((struct dentry **)__cil_tmp37);
    __cil_tmp39 = i * 24UL;
    __cil_tmp40 = 1136 + __cil_tmp39;
    __cil_tmp41 = (unsigned long )hsu;
    __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
    __cil_tmp43 = (struct hsu_dma_chan *)__cil_tmp42;
    __cil_tmp44 = (void *)__cil_tmp43;
    debugfs_create_file(__cil_tmp34, __cil_tmp35, __cil_tmp38, __cil_tmp44, & dma_regs_ops);
    i = i + 1;
    }
  }
  while_break___0: ;
  }
  return (0);
}
}
static void hsu_debugfs_remove(struct hsu_port *hsu )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct dentry *__cil_tmp6 ;
  {
  {
  __cil_tmp2 = (unsigned long )hsu;
  __cil_tmp3 = __cil_tmp2 + 1376;
  if (*((struct dentry **)__cil_tmp3)) {
    {
    __cil_tmp4 = (unsigned long )hsu;
    __cil_tmp5 = __cil_tmp4 + 1376;
    __cil_tmp6 = *((struct dentry **)__cil_tmp5);
    debugfs_remove_recursive(__cil_tmp6);
    }
  } else {
  }
  }
  return;
}
}
static void serial_hsu_enable_ms(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  struct uart_hsu_port *__cil_tmp4 ;
  struct uart_port *__cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  char *__cil_tmp7 ;
  char *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned char __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char __cil_tmp18 ;
  int __cil_tmp19 ;
  {
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp4 = (struct uart_hsu_port *)0;
  __cil_tmp5 = (struct uart_port *)__cil_tmp4;
  __cil_tmp6 = (unsigned int )__cil_tmp5;
  __cil_tmp7 = (char *)__mptr;
  __cil_tmp8 = __cil_tmp7 - __cil_tmp6;
  up___0 = (struct uart_hsu_port *)__cil_tmp8;
  __cil_tmp9 = (unsigned long )up___0;
  __cil_tmp10 = __cil_tmp9 + 256;
  __cil_tmp11 = (unsigned long )up___0;
  __cil_tmp12 = __cil_tmp11 + 256;
  __cil_tmp13 = *((unsigned char *)__cil_tmp12);
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 | 8;
  *((unsigned char *)__cil_tmp10) = (unsigned char )__cil_tmp15;
  __cil_tmp16 = (unsigned long )up___0;
  __cil_tmp17 = __cil_tmp16 + 256;
  __cil_tmp18 = *((unsigned char *)__cil_tmp17);
  __cil_tmp19 = (int )__cil_tmp18;
  serial_out(up___0, 1, __cil_tmp19);
  }
  return;
}
}
void hsu_dma_tx(struct uart_hsu_port *up___0 )
{ struct circ_buf *xmit ;
  struct hsu_dma_buffer *dbuf ;
  int count ;
  int end ;
  int n ;
  int tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct uart_state *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  u32 __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  u32 __cil_tmp27 ;
  u32 __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  u32 __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  __u32 __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct hsu_dma_chan *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  void *__cil_tmp57 ;
  void *__cil_tmp58 ;
  void volatile *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  int __cil_tmp65 ;
  int __cil_tmp66 ;
  struct uart_port *__cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct device *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  dma_addr_t __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  u32 __cil_tmp77 ;
  size_t __cil_tmp78 ;
  enum dma_data_direction __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  int __cil_tmp90 ;
  int __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  int __cil_tmp98 ;
  dma_addr_t __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  dma_addr_t __cil_tmp102 ;
  dma_addr_t __cil_tmp103 ;
  unsigned int __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  struct hsu_dma_chan *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  void *__cil_tmp110 ;
  void *__cil_tmp111 ;
  void volatile *__cil_tmp112 ;
  unsigned int __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  struct hsu_dma_chan *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  void *__cil_tmp119 ;
  void *__cil_tmp120 ;
  void volatile *__cil_tmp121 ;
  int __cil_tmp122 ;
  int __cil_tmp123 ;
  int __cil_tmp124 ;
  int __cil_tmp125 ;
  int __cil_tmp126 ;
  int __cil_tmp127 ;
  unsigned int __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  struct hsu_dma_chan *__cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  void *__cil_tmp134 ;
  void *__cil_tmp135 ;
  void volatile *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  struct hsu_dma_chan *__cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  void *__cil_tmp144 ;
  void *__cil_tmp145 ;
  void volatile *__cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  int __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  int __cil_tmp154 ;
  int __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  struct uart_port *__cil_tmp158 ;
  {
  __cil_tmp9 = 0 + 120;
  __cil_tmp10 = (unsigned long )up___0;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
  __cil_tmp12 = *((struct uart_state **)__cil_tmp11);
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  __cil_tmp14 = __cil_tmp13 + 360;
  xmit = (struct circ_buf *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )up___0;
  __cil_tmp16 = __cil_tmp15 + 304;
  dbuf = (struct hsu_dma_buffer *)__cil_tmp16;
  {
  __cil_tmp17 = (unsigned long )up___0;
  __cil_tmp18 = __cil_tmp17 + 360;
  if (*((int *)__cil_tmp18)) {
    return;
  } else {
  }
  }
  {
  __cil_tmp19 = (unsigned long )xmit;
  __cil_tmp20 = __cil_tmp19 + 12;
  __cil_tmp21 = (unsigned long )dbuf;
  __cil_tmp22 = __cil_tmp21 + 20;
  __cil_tmp23 = *((u32 *)__cil_tmp22);
  __cil_tmp24 = (unsigned long )xmit;
  __cil_tmp25 = __cil_tmp24 + 12;
  __cil_tmp26 = *((int *)__cil_tmp25);
  __cil_tmp27 = (u32 )__cil_tmp26;
  __cil_tmp28 = __cil_tmp27 + __cil_tmp23;
  *((int *)__cil_tmp20) = (int )__cil_tmp28;
  __cil_tmp29 = (unsigned long )xmit;
  __cil_tmp30 = __cil_tmp29 + 12;
  __cil_tmp31 = 1UL << 12;
  __cil_tmp32 = __cil_tmp31 - 1UL;
  __cil_tmp33 = (unsigned long )xmit;
  __cil_tmp34 = __cil_tmp33 + 12;
  __cil_tmp35 = *((int *)__cil_tmp34);
  __cil_tmp36 = (unsigned long )__cil_tmp35;
  __cil_tmp37 = __cil_tmp36 & __cil_tmp32;
  *((int *)__cil_tmp30) = (int )__cil_tmp37;
  __cil_tmp38 = 128 + 20;
  __cil_tmp39 = 0 + __cil_tmp38;
  __cil_tmp40 = (unsigned long )up___0;
  __cil_tmp41 = __cil_tmp40 + __cil_tmp39;
  __cil_tmp42 = (unsigned long )dbuf;
  __cil_tmp43 = __cil_tmp42 + 20;
  __cil_tmp44 = *((u32 *)__cil_tmp43);
  __cil_tmp45 = 128 + 20;
  __cil_tmp46 = 0 + __cil_tmp45;
  __cil_tmp47 = (unsigned long )up___0;
  __cil_tmp48 = __cil_tmp47 + __cil_tmp46;
  __cil_tmp49 = *((__u32 *)__cil_tmp48);
  *((__u32 *)__cil_tmp41) = __cil_tmp49 + __cil_tmp44;
  __cil_tmp50 = (unsigned long )dbuf;
  __cil_tmp51 = __cil_tmp50 + 20;
  *((u32 *)__cil_tmp51) = (u32 )0;
  __cil_tmp52 = (unsigned long )up___0;
  __cil_tmp53 = __cil_tmp52 + 288;
  __cil_tmp54 = *((struct hsu_dma_chan **)__cil_tmp53);
  __cil_tmp55 = (unsigned long )__cil_tmp54;
  __cil_tmp56 = __cil_tmp55 + 16;
  __cil_tmp57 = *((void **)__cil_tmp56);
  __cil_tmp58 = __cil_tmp57 + 4;
  __cil_tmp59 = (void volatile *)__cil_tmp58;
  writel(0U, __cil_tmp59);
  }
  {
  __cil_tmp60 = (unsigned long )xmit;
  __cil_tmp61 = __cil_tmp60 + 12;
  __cil_tmp62 = *((int *)__cil_tmp61);
  __cil_tmp63 = (unsigned long )xmit;
  __cil_tmp64 = __cil_tmp63 + 8;
  __cil_tmp65 = *((int *)__cil_tmp64);
  __cil_tmp66 = __cil_tmp65 == __cil_tmp62;
  if (! __cil_tmp66) {
    {
    __cil_tmp67 = (struct uart_port *)up___0;
    tmp___8 = uart_tx_stopped(__cil_tmp67);
    }
    if (tmp___8) {
    } else {
      {
      __cil_tmp68 = 0 + 232;
      __cil_tmp69 = (unsigned long )up___0;
      __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
      __cil_tmp71 = *((struct device **)__cil_tmp70);
      __cil_tmp72 = (unsigned long )dbuf;
      __cil_tmp73 = __cil_tmp72 + 8;
      __cil_tmp74 = *((dma_addr_t *)__cil_tmp73);
      __cil_tmp75 = (unsigned long )dbuf;
      __cil_tmp76 = __cil_tmp75 + 16;
      __cil_tmp77 = *((u32 *)__cil_tmp76);
      __cil_tmp78 = (size_t )__cil_tmp77;
      __cil_tmp79 = (enum dma_data_direction )1;
      dma_sync_single_for_device(__cil_tmp71, __cil_tmp74, __cil_tmp78, __cil_tmp79);
      __cil_tmp80 = (unsigned long )xmit;
      __cil_tmp81 = __cil_tmp80 + 12;
      __cil_tmp82 = *((int *)__cil_tmp81);
      __cil_tmp83 = (unsigned long )__cil_tmp82;
      __cil_tmp84 = 1UL << 12;
      __cil_tmp85 = __cil_tmp84 - __cil_tmp83;
      end = (int )__cil_tmp85;
      __cil_tmp86 = 1UL << 12;
      __cil_tmp87 = __cil_tmp86 - 1UL;
      __cil_tmp88 = (unsigned long )xmit;
      __cil_tmp89 = __cil_tmp88 + 8;
      __cil_tmp90 = *((int *)__cil_tmp89);
      __cil_tmp91 = __cil_tmp90 + end;
      __cil_tmp92 = (unsigned long )__cil_tmp91;
      __cil_tmp93 = __cil_tmp92 & __cil_tmp87;
      n = (int )__cil_tmp93;
      }
      if (n < end) {
        tmp___7 = n;
      } else {
        tmp___7 = end;
      }
      {
      count = tmp___7;
      __cil_tmp94 = (unsigned long )dbuf;
      __cil_tmp95 = __cil_tmp94 + 20;
      *((u32 *)__cil_tmp95) = (u32 )count;
      __cil_tmp96 = (unsigned long )xmit;
      __cil_tmp97 = __cil_tmp96 + 12;
      __cil_tmp98 = *((int *)__cil_tmp97);
      __cil_tmp99 = (dma_addr_t )__cil_tmp98;
      __cil_tmp100 = (unsigned long )dbuf;
      __cil_tmp101 = __cil_tmp100 + 8;
      __cil_tmp102 = *((dma_addr_t *)__cil_tmp101);
      __cil_tmp103 = __cil_tmp102 + __cil_tmp99;
      __cil_tmp104 = (unsigned int )__cil_tmp103;
      __cil_tmp105 = (unsigned long )up___0;
      __cil_tmp106 = __cil_tmp105 + 288;
      __cil_tmp107 = *((struct hsu_dma_chan **)__cil_tmp106);
      __cil_tmp108 = (unsigned long )__cil_tmp107;
      __cil_tmp109 = __cil_tmp108 + 16;
      __cil_tmp110 = *((void **)__cil_tmp109);
      __cil_tmp111 = __cil_tmp110 + 32;
      __cil_tmp112 = (void volatile *)__cil_tmp111;
      writel(__cil_tmp104, __cil_tmp112);
      __cil_tmp113 = (unsigned int )count;
      __cil_tmp114 = (unsigned long )up___0;
      __cil_tmp115 = __cil_tmp114 + 288;
      __cil_tmp116 = *((struct hsu_dma_chan **)__cil_tmp115);
      __cil_tmp117 = (unsigned long )__cil_tmp116;
      __cil_tmp118 = __cil_tmp117 + 16;
      __cil_tmp119 = *((void **)__cil_tmp118);
      __cil_tmp120 = __cil_tmp119 + 36;
      __cil_tmp121 = (void volatile *)__cil_tmp120;
      writel(__cil_tmp113, __cil_tmp121);
      __cil_tmp122 = 1 << 24;
      __cil_tmp123 = 1 << 16;
      __cil_tmp124 = 1 << 8;
      __cil_tmp125 = 1 | __cil_tmp124;
      __cil_tmp126 = __cil_tmp125 | __cil_tmp123;
      __cil_tmp127 = __cil_tmp126 | __cil_tmp122;
      __cil_tmp128 = (unsigned int )__cil_tmp127;
      __cil_tmp129 = (unsigned long )up___0;
      __cil_tmp130 = __cil_tmp129 + 288;
      __cil_tmp131 = *((struct hsu_dma_chan **)__cil_tmp130);
      __cil_tmp132 = (unsigned long )__cil_tmp131;
      __cil_tmp133 = __cil_tmp132 + 16;
      __cil_tmp134 = *((void **)__cil_tmp133);
      __cil_tmp135 = __cil_tmp134 + 8;
      __cil_tmp136 = (void volatile *)__cil_tmp135;
      writel(__cil_tmp128, __cil_tmp136);
      __cil_tmp137 = (unsigned long )up___0;
      __cil_tmp138 = __cil_tmp137 + 360;
      *((int *)__cil_tmp138) = 1;
      __cil_tmp139 = (unsigned long )up___0;
      __cil_tmp140 = __cil_tmp139 + 288;
      __cil_tmp141 = *((struct hsu_dma_chan **)__cil_tmp140);
      __cil_tmp142 = (unsigned long )__cil_tmp141;
      __cil_tmp143 = __cil_tmp142 + 16;
      __cil_tmp144 = *((void **)__cil_tmp143);
      __cil_tmp145 = __cil_tmp144 + 4;
      __cil_tmp146 = (void volatile *)__cil_tmp145;
      writel(1U, __cil_tmp146);
      }
    }
  } else {
  }
  }
  {
  __cil_tmp147 = 1UL << 12;
  __cil_tmp148 = __cil_tmp147 - 1UL;
  __cil_tmp149 = (unsigned long )xmit;
  __cil_tmp150 = __cil_tmp149 + 12;
  __cil_tmp151 = *((int *)__cil_tmp150);
  __cil_tmp152 = (unsigned long )xmit;
  __cil_tmp153 = __cil_tmp152 + 8;
  __cil_tmp154 = *((int *)__cil_tmp153);
  __cil_tmp155 = __cil_tmp154 - __cil_tmp151;
  __cil_tmp156 = (unsigned long )__cil_tmp155;
  __cil_tmp157 = __cil_tmp156 & __cil_tmp148;
  if (__cil_tmp157 < 256UL) {
    {
    __cil_tmp158 = (struct uart_port *)up___0;
    uart_write_wakeup(__cil_tmp158);
    }
  } else {
  }
  }
  return;
}
}
void hsu_dma_start_rx_chan(struct hsu_dma_chan *rxc , struct hsu_dma_buffer *dbuf )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void *__cil_tmp7 ;
  void *__cil_tmp8 ;
  void volatile *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  void *__cil_tmp13 ;
  void volatile *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  dma_addr_t __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  void *__cil_tmp21 ;
  void *__cil_tmp22 ;
  void volatile *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u32 __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  void *__cil_tmp29 ;
  void *__cil_tmp30 ;
  void volatile *__cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  void *__cil_tmp41 ;
  void *__cil_tmp42 ;
  void volatile *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  void *__cil_tmp46 ;
  void *__cil_tmp47 ;
  void volatile *__cil_tmp48 ;
  {
  {
  __cil_tmp3 = (unsigned long )dbuf;
  __cil_tmp4 = __cil_tmp3 + 20;
  *((u32 *)__cil_tmp4) = (u32 )0;
  __cil_tmp5 = (unsigned long )rxc;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = *((void **)__cil_tmp6);
  __cil_tmp8 = __cil_tmp7 + 16;
  __cil_tmp9 = (void volatile *)__cil_tmp8;
  writel(32U, __cil_tmp9);
  __cil_tmp10 = (unsigned long )rxc;
  __cil_tmp11 = __cil_tmp10 + 16;
  __cil_tmp12 = *((void **)__cil_tmp11);
  __cil_tmp13 = __cil_tmp12 + 20;
  __cil_tmp14 = (void volatile *)__cil_tmp13;
  writel(4U, __cil_tmp14);
  __cil_tmp15 = (unsigned long )dbuf;
  __cil_tmp16 = __cil_tmp15 + 8;
  __cil_tmp17 = *((dma_addr_t *)__cil_tmp16);
  __cil_tmp18 = (unsigned int )__cil_tmp17;
  __cil_tmp19 = (unsigned long )rxc;
  __cil_tmp20 = __cil_tmp19 + 16;
  __cil_tmp21 = *((void **)__cil_tmp20);
  __cil_tmp22 = __cil_tmp21 + 32;
  __cil_tmp23 = (void volatile *)__cil_tmp22;
  writel(__cil_tmp18, __cil_tmp23);
  __cil_tmp24 = (unsigned long )dbuf;
  __cil_tmp25 = __cil_tmp24 + 16;
  __cil_tmp26 = *((u32 *)__cil_tmp25);
  __cil_tmp27 = (unsigned long )rxc;
  __cil_tmp28 = __cil_tmp27 + 16;
  __cil_tmp29 = *((void **)__cil_tmp28);
  __cil_tmp30 = __cil_tmp29 + 36;
  __cil_tmp31 = (void volatile *)__cil_tmp30;
  writel(__cil_tmp26, __cil_tmp31);
  __cil_tmp32 = 1 << 24;
  __cil_tmp33 = 1 << 16;
  __cil_tmp34 = 1 << 8;
  __cil_tmp35 = 1 | __cil_tmp34;
  __cil_tmp36 = __cil_tmp35 | __cil_tmp33;
  __cil_tmp37 = __cil_tmp36 | __cil_tmp32;
  __cil_tmp38 = (unsigned int )__cil_tmp37;
  __cil_tmp39 = (unsigned long )rxc;
  __cil_tmp40 = __cil_tmp39 + 16;
  __cil_tmp41 = *((void **)__cil_tmp40);
  __cil_tmp42 = __cil_tmp41 + 8;
  __cil_tmp43 = (void volatile *)__cil_tmp42;
  writel(__cil_tmp38, __cil_tmp43);
  __cil_tmp44 = (unsigned long )rxc;
  __cil_tmp45 = __cil_tmp44 + 16;
  __cil_tmp46 = *((void **)__cil_tmp45);
  __cil_tmp47 = __cil_tmp46 + 4;
  __cil_tmp48 = (void volatile *)__cil_tmp47;
  writel(3U, __cil_tmp48);
  }
  return;
}
}
static void serial_hsu_start_tx(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  struct uart_hsu_port *__cil_tmp4 ;
  struct uart_port *__cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  char *__cil_tmp7 ;
  char *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned char __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned char __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned char __cil_tmp25 ;
  int __cil_tmp26 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp4 = (struct uart_hsu_port *)0;
  __cil_tmp5 = (struct uart_port *)__cil_tmp4;
  __cil_tmp6 = (unsigned int )__cil_tmp5;
  __cil_tmp7 = (char *)__mptr;
  __cil_tmp8 = __cil_tmp7 - __cil_tmp6;
  up___0 = (struct uart_hsu_port *)__cil_tmp8;
  {
  __cil_tmp9 = (unsigned long )up___0;
  __cil_tmp10 = __cil_tmp9 + 352;
  if (*((int *)__cil_tmp10)) {
    {
    hsu_dma_tx(up___0);
    }
  } else {
    {
    __cil_tmp11 = (unsigned long )up___0;
    __cil_tmp12 = __cil_tmp11 + 256;
    __cil_tmp13 = *((unsigned char *)__cil_tmp12);
    __cil_tmp14 = (int )__cil_tmp13;
    __cil_tmp15 = __cil_tmp14 & 2;
    if (! __cil_tmp15) {
      {
      __cil_tmp16 = (unsigned long )up___0;
      __cil_tmp17 = __cil_tmp16 + 256;
      __cil_tmp18 = (unsigned long )up___0;
      __cil_tmp19 = __cil_tmp18 + 256;
      __cil_tmp20 = *((unsigned char *)__cil_tmp19);
      __cil_tmp21 = (int )__cil_tmp20;
      __cil_tmp22 = __cil_tmp21 | 2;
      *((unsigned char *)__cil_tmp17) = (unsigned char )__cil_tmp22;
      __cil_tmp23 = (unsigned long )up___0;
      __cil_tmp24 = __cil_tmp23 + 256;
      __cil_tmp25 = *((unsigned char *)__cil_tmp24);
      __cil_tmp26 = (int )__cil_tmp25;
      serial_out(up___0, 1, __cil_tmp26);
      }
    } else {
    }
    }
  }
  }
  return;
}
}
static void serial_hsu_stop_tx(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  struct hsu_dma_chan *txc ;
  struct uart_hsu_port *__cil_tmp5 ;
  struct uart_port *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  char *__cil_tmp8 ;
  char *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void *__cil_tmp16 ;
  void *__cil_tmp17 ;
  void volatile *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned char __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned char __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned char __cil_tmp32 ;
  int __cil_tmp33 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp5 = (struct uart_hsu_port *)0;
  __cil_tmp6 = (struct uart_port *)__cil_tmp5;
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  __cil_tmp8 = (char *)__mptr;
  __cil_tmp9 = __cil_tmp8 - __cil_tmp7;
  up___0 = (struct uart_hsu_port *)__cil_tmp9;
  __cil_tmp10 = (unsigned long )up___0;
  __cil_tmp11 = __cil_tmp10 + 288;
  txc = *((struct hsu_dma_chan **)__cil_tmp11);
  {
  __cil_tmp12 = (unsigned long )up___0;
  __cil_tmp13 = __cil_tmp12 + 352;
  if (*((int *)__cil_tmp13)) {
    {
    __cil_tmp14 = (unsigned long )txc;
    __cil_tmp15 = __cil_tmp14 + 16;
    __cil_tmp16 = *((void **)__cil_tmp15);
    __cil_tmp17 = __cil_tmp16 + 4;
    __cil_tmp18 = (void volatile *)__cil_tmp17;
    writel(0U, __cil_tmp18);
    }
  } else {
    {
    __cil_tmp19 = (unsigned long )up___0;
    __cil_tmp20 = __cil_tmp19 + 256;
    __cil_tmp21 = *((unsigned char *)__cil_tmp20);
    __cil_tmp22 = (int )__cil_tmp21;
    if (__cil_tmp22 & 2) {
      {
      __cil_tmp23 = (unsigned long )up___0;
      __cil_tmp24 = __cil_tmp23 + 256;
      __cil_tmp25 = (unsigned long )up___0;
      __cil_tmp26 = __cil_tmp25 + 256;
      __cil_tmp27 = *((unsigned char *)__cil_tmp26);
      __cil_tmp28 = (int )__cil_tmp27;
      __cil_tmp29 = __cil_tmp28 & -3;
      *((unsigned char *)__cil_tmp24) = (unsigned char )__cil_tmp29;
      __cil_tmp30 = (unsigned long )up___0;
      __cil_tmp31 = __cil_tmp30 + 256;
      __cil_tmp32 = *((unsigned char *)__cil_tmp31);
      __cil_tmp33 = (int )__cil_tmp32;
      serial_out(up___0, 1, __cil_tmp33);
      }
    } else {
    }
    }
  }
  }
  return;
}
}
void hsu_dma_rx(struct uart_hsu_port *up___0 , u32 int_sts )
{ struct hsu_dma_buffer *dbuf ;
  struct hsu_dma_chan *chan ;
  struct uart_port *port ;
  struct tty_struct *tty ;
  int count ;
  unsigned int tmp___7 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct uart_state *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void *__cil_tmp18 ;
  void *__cil_tmp19 ;
  void volatile *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  void *__cil_tmp23 ;
  void *__cil_tmp24 ;
  void const volatile *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  dma_addr_t __cil_tmp28 ;
  dma_addr_t __cil_tmp29 ;
  dma_addr_t __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  void *__cil_tmp33 ;
  void *__cil_tmp34 ;
  void volatile *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct device *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  dma_addr_t __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  u32 __cil_tmp44 ;
  size_t __cil_tmp45 ;
  enum dma_data_direction __cil_tmp46 ;
  u8 *__cil_tmp47 ;
  unsigned char const *__cil_tmp48 ;
  size_t __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  __u32 __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  __u32 __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  struct device *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  dma_addr_t __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  u32 __cil_tmp67 ;
  size_t __cil_tmp68 ;
  enum dma_data_direction __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  dma_addr_t __cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  void *__cil_tmp76 ;
  void *__cil_tmp77 ;
  void volatile *__cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  u32 __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  void *__cil_tmp84 ;
  void *__cil_tmp85 ;
  void volatile *__cil_tmp86 ;
  int __cil_tmp87 ;
  int __cil_tmp88 ;
  int __cil_tmp89 ;
  int __cil_tmp90 ;
  int __cil_tmp91 ;
  int __cil_tmp92 ;
  unsigned int __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  void *__cil_tmp96 ;
  void *__cil_tmp97 ;
  void volatile *__cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  void *__cil_tmp101 ;
  void *__cil_tmp102 ;
  void volatile *__cil_tmp103 ;
  {
  __cil_tmp9 = (unsigned long )up___0;
  __cil_tmp10 = __cil_tmp9 + 328;
  dbuf = (struct hsu_dma_buffer *)__cil_tmp10;
  __cil_tmp11 = (unsigned long )up___0;
  __cil_tmp12 = __cil_tmp11 + 296;
  chan = *((struct hsu_dma_chan **)__cil_tmp12);
  port = (struct uart_port *)up___0;
  __cil_tmp13 = (unsigned long )port;
  __cil_tmp14 = __cil_tmp13 + 120;
  __cil_tmp15 = *((struct uart_state **)__cil_tmp14);
  tty = *((struct tty_struct **)__cil_tmp15);
  if (! tty) {
    return;
  } else {
  }
  if (int_sts & 3840U) {
    {
    __const_udelay(8590UL);
    }
  } else {
  }
  {
  __cil_tmp16 = (unsigned long )chan;
  __cil_tmp17 = __cil_tmp16 + 16;
  __cil_tmp18 = *((void **)__cil_tmp17);
  __cil_tmp19 = __cil_tmp18 + 4;
  __cil_tmp20 = (void volatile *)__cil_tmp19;
  writel(0U, __cil_tmp20);
  __cil_tmp21 = (unsigned long )chan;
  __cil_tmp22 = __cil_tmp21 + 16;
  __cil_tmp23 = *((void **)__cil_tmp22);
  __cil_tmp24 = __cil_tmp23 + 32;
  __cil_tmp25 = (void const volatile *)__cil_tmp24;
  tmp___7 = readl(__cil_tmp25);
  __cil_tmp26 = (unsigned long )dbuf;
  __cil_tmp27 = __cil_tmp26 + 8;
  __cil_tmp28 = *((dma_addr_t *)__cil_tmp27);
  __cil_tmp29 = (dma_addr_t )tmp___7;
  __cil_tmp30 = __cil_tmp29 - __cil_tmp28;
  count = (int )__cil_tmp30;
  }
  if (! count) {
    {
    __cil_tmp31 = (unsigned long )chan;
    __cil_tmp32 = __cil_tmp31 + 16;
    __cil_tmp33 = *((void **)__cil_tmp32);
    __cil_tmp34 = __cil_tmp33 + 4;
    __cil_tmp35 = (void volatile *)__cil_tmp34;
    writel(3U, __cil_tmp35);
    }
    return;
  } else {
  }
  {
  __cil_tmp36 = (unsigned long )port;
  __cil_tmp37 = __cil_tmp36 + 232;
  __cil_tmp38 = *((struct device **)__cil_tmp37);
  __cil_tmp39 = (unsigned long )dbuf;
  __cil_tmp40 = __cil_tmp39 + 8;
  __cil_tmp41 = *((dma_addr_t *)__cil_tmp40);
  __cil_tmp42 = (unsigned long )dbuf;
  __cil_tmp43 = __cil_tmp42 + 16;
  __cil_tmp44 = *((u32 *)__cil_tmp43);
  __cil_tmp45 = (size_t )__cil_tmp44;
  __cil_tmp46 = (enum dma_data_direction )2;
  dma_sync_single_for_cpu(__cil_tmp38, __cil_tmp41, __cil_tmp45, __cil_tmp46);
  __cil_tmp47 = *((u8 **)dbuf);
  __cil_tmp48 = (unsigned char const *)__cil_tmp47;
  __cil_tmp49 = (size_t )count;
  tty_insert_flip_string(tty, __cil_tmp48, __cil_tmp49);
  __cil_tmp50 = 128 + 16;
  __cil_tmp51 = (unsigned long )port;
  __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
  __cil_tmp53 = (__u32 )count;
  __cil_tmp54 = 128 + 16;
  __cil_tmp55 = (unsigned long )port;
  __cil_tmp56 = __cil_tmp55 + __cil_tmp54;
  __cil_tmp57 = *((__u32 *)__cil_tmp56);
  *((__u32 *)__cil_tmp52) = __cil_tmp57 + __cil_tmp53;
  __cil_tmp58 = 0 + 232;
  __cil_tmp59 = (unsigned long )up___0;
  __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
  __cil_tmp61 = *((struct device **)__cil_tmp60);
  __cil_tmp62 = (unsigned long )dbuf;
  __cil_tmp63 = __cil_tmp62 + 8;
  __cil_tmp64 = *((dma_addr_t *)__cil_tmp63);
  __cil_tmp65 = (unsigned long )dbuf;
  __cil_tmp66 = __cil_tmp65 + 16;
  __cil_tmp67 = *((u32 *)__cil_tmp66);
  __cil_tmp68 = (size_t )__cil_tmp67;
  __cil_tmp69 = (enum dma_data_direction )2;
  dma_sync_single_for_device(__cil_tmp61, __cil_tmp64, __cil_tmp68, __cil_tmp69);
  __cil_tmp70 = (unsigned long )dbuf;
  __cil_tmp71 = __cil_tmp70 + 8;
  __cil_tmp72 = *((dma_addr_t *)__cil_tmp71);
  __cil_tmp73 = (unsigned int )__cil_tmp72;
  __cil_tmp74 = (unsigned long )chan;
  __cil_tmp75 = __cil_tmp74 + 16;
  __cil_tmp76 = *((void **)__cil_tmp75);
  __cil_tmp77 = __cil_tmp76 + 32;
  __cil_tmp78 = (void volatile *)__cil_tmp77;
  writel(__cil_tmp73, __cil_tmp78);
  __cil_tmp79 = (unsigned long )dbuf;
  __cil_tmp80 = __cil_tmp79 + 16;
  __cil_tmp81 = *((u32 *)__cil_tmp80);
  __cil_tmp82 = (unsigned long )chan;
  __cil_tmp83 = __cil_tmp82 + 16;
  __cil_tmp84 = *((void **)__cil_tmp83);
  __cil_tmp85 = __cil_tmp84 + 36;
  __cil_tmp86 = (void volatile *)__cil_tmp85;
  writel(__cil_tmp81, __cil_tmp86);
  __cil_tmp87 = 1 << 24;
  __cil_tmp88 = 1 << 16;
  __cil_tmp89 = 1 << 8;
  __cil_tmp90 = 1 | __cil_tmp89;
  __cil_tmp91 = __cil_tmp90 | __cil_tmp88;
  __cil_tmp92 = __cil_tmp91 | __cil_tmp87;
  __cil_tmp93 = (unsigned int )__cil_tmp92;
  __cil_tmp94 = (unsigned long )chan;
  __cil_tmp95 = __cil_tmp94 + 16;
  __cil_tmp96 = *((void **)__cil_tmp95);
  __cil_tmp97 = __cil_tmp96 + 8;
  __cil_tmp98 = (void volatile *)__cil_tmp97;
  writel(__cil_tmp93, __cil_tmp98);
  tty_flip_buffer_push(tty);
  __cil_tmp99 = (unsigned long )chan;
  __cil_tmp100 = __cil_tmp99 + 16;
  __cil_tmp101 = *((void **)__cil_tmp100);
  __cil_tmp102 = __cil_tmp101 + 4;
  __cil_tmp103 = (void volatile *)__cil_tmp102;
  writel(3U, __cil_tmp103);
  }
  return;
}
}
static void serial_hsu_stop_rx(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  struct hsu_dma_chan *chan ;
  struct uart_hsu_port *__cil_tmp5 ;
  struct uart_port *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  char *__cil_tmp8 ;
  char *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void *__cil_tmp16 ;
  void *__cil_tmp17 ;
  void volatile *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned char __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned char __cil_tmp35 ;
  int __cil_tmp36 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp5 = (struct uart_hsu_port *)0;
  __cil_tmp6 = (struct uart_port *)__cil_tmp5;
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  __cil_tmp8 = (char *)__mptr;
  __cil_tmp9 = __cil_tmp8 - __cil_tmp7;
  up___0 = (struct uart_hsu_port *)__cil_tmp9;
  __cil_tmp10 = (unsigned long )up___0;
  __cil_tmp11 = __cil_tmp10 + 296;
  chan = *((struct hsu_dma_chan **)__cil_tmp11);
  {
  __cil_tmp12 = (unsigned long )up___0;
  __cil_tmp13 = __cil_tmp12 + 352;
  if (*((int *)__cil_tmp13)) {
    {
    __cil_tmp14 = (unsigned long )chan;
    __cil_tmp15 = __cil_tmp14 + 16;
    __cil_tmp16 = *((void **)__cil_tmp15);
    __cil_tmp17 = __cil_tmp16 + 4;
    __cil_tmp18 = (void volatile *)__cil_tmp17;
    writel(2U, __cil_tmp18);
    }
  } else {
    {
    __cil_tmp19 = (unsigned long )up___0;
    __cil_tmp20 = __cil_tmp19 + 256;
    __cil_tmp21 = (unsigned long )up___0;
    __cil_tmp22 = __cil_tmp21 + 256;
    __cil_tmp23 = *((unsigned char *)__cil_tmp22);
    __cil_tmp24 = (int )__cil_tmp23;
    __cil_tmp25 = __cil_tmp24 & -5;
    *((unsigned char *)__cil_tmp20) = (unsigned char )__cil_tmp25;
    __cil_tmp26 = 0 + 108;
    __cil_tmp27 = (unsigned long )up___0;
    __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
    __cil_tmp29 = 0 + 108;
    __cil_tmp30 = (unsigned long )up___0;
    __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
    __cil_tmp32 = *((unsigned int *)__cil_tmp31);
    *((unsigned int *)__cil_tmp28) = __cil_tmp32 & 4294967294U;
    __cil_tmp33 = (unsigned long )up___0;
    __cil_tmp34 = __cil_tmp33 + 256;
    __cil_tmp35 = *((unsigned char *)__cil_tmp34);
    __cil_tmp36 = (int )__cil_tmp35;
    serial_out(up___0, 1, __cil_tmp36);
    }
  }
  }
  return;
}
}
__inline static void receive_chars(struct uart_hsu_port *up___0 , int *status ) __attribute__((__no_instrument_function__)) ;
__inline static void receive_chars(struct uart_hsu_port *up___0 , int *status )
{ struct tty_struct *tty ;
  unsigned int ch ;
  unsigned int flag ;
  unsigned int max_count ;
  int tmp___7 ;
  long tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct uart_state *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  __u32 __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct device *__cil_tmp31 ;
  struct device const *__cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  __u32 __cil_tmp44 ;
  struct uart_port *__cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  __u32 __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  __u32 __cil_tmp65 ;
  int __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  __u32 __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned int __cil_tmp79 ;
  int __cil_tmp80 ;
  unsigned int __cil_tmp81 ;
  unsigned int __cil_tmp82 ;
  int __cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  struct uart_port *__cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned int __cil_tmp88 ;
  int __cil_tmp89 ;
  {
  __cil_tmp11 = 0 + 120;
  __cil_tmp12 = (unsigned long )up___0;
  __cil_tmp13 = __cil_tmp12 + __cil_tmp11;
  __cil_tmp14 = *((struct uart_state **)__cil_tmp13);
  tty = *((struct tty_struct **)__cil_tmp14);
  max_count = 256U;
  if (! tty) {
    return;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    ch = serial_in(up___0, 0);
    flag = 0U;
    __cil_tmp15 = 128 + 16;
    __cil_tmp16 = 0 + __cil_tmp15;
    __cil_tmp17 = (unsigned long )up___0;
    __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
    __cil_tmp19 = 128 + 16;
    __cil_tmp20 = 0 + __cil_tmp19;
    __cil_tmp21 = (unsigned long )up___0;
    __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
    __cil_tmp23 = *((__u32 *)__cil_tmp22);
    *((__u32 *)__cil_tmp18) = __cil_tmp23 + 1U;
    __cil_tmp24 = *status;
    __cil_tmp25 = __cil_tmp24 & 30;
    __cil_tmp26 = ! __cil_tmp25;
    __cil_tmp27 = ! __cil_tmp26;
    __cil_tmp28 = (long )__cil_tmp27;
    tmp___8 = ldv__builtin_expect(__cil_tmp28, 0L);
    }
    if (tmp___8) {
      {
      __cil_tmp29 = (unsigned long )up___0;
      __cil_tmp30 = __cil_tmp29 + 280;
      __cil_tmp31 = *((struct device **)__cil_tmp30);
      __cil_tmp32 = (struct device const *)__cil_tmp31;
      __cil_tmp33 = *status;
      dev_warn(__cil_tmp32, "We really rush into ERR/BI casestatus = 0x%02x", __cil_tmp33);
      }
      {
      __cil_tmp34 = *status;
      if (__cil_tmp34 & 16) {
        {
        __cil_tmp35 = *status;
        *status = __cil_tmp35 & -13;
        __cil_tmp36 = 128 + 36;
        __cil_tmp37 = 0 + __cil_tmp36;
        __cil_tmp38 = (unsigned long )up___0;
        __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
        __cil_tmp40 = 128 + 36;
        __cil_tmp41 = 0 + __cil_tmp40;
        __cil_tmp42 = (unsigned long )up___0;
        __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
        __cil_tmp44 = *((__u32 *)__cil_tmp43);
        *((__u32 *)__cil_tmp39) = __cil_tmp44 + 1U;
        __cil_tmp45 = (struct uart_port *)up___0;
        tmp___7 = uart_handle_break(__cil_tmp45);
        }
        if (tmp___7) {
          goto ignore_char;
        } else {
        }
      } else {
        {
        __cil_tmp46 = *status;
        if (__cil_tmp46 & 4) {
          __cil_tmp47 = 128 + 32;
          __cil_tmp48 = 0 + __cil_tmp47;
          __cil_tmp49 = (unsigned long )up___0;
          __cil_tmp50 = __cil_tmp49 + __cil_tmp48;
          __cil_tmp51 = 128 + 32;
          __cil_tmp52 = 0 + __cil_tmp51;
          __cil_tmp53 = (unsigned long )up___0;
          __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
          __cil_tmp55 = *((__u32 *)__cil_tmp54);
          *((__u32 *)__cil_tmp50) = __cil_tmp55 + 1U;
        } else {
          {
          __cil_tmp56 = *status;
          if (__cil_tmp56 & 8) {
            __cil_tmp57 = 128 + 24;
            __cil_tmp58 = 0 + __cil_tmp57;
            __cil_tmp59 = (unsigned long )up___0;
            __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
            __cil_tmp61 = 128 + 24;
            __cil_tmp62 = 0 + __cil_tmp61;
            __cil_tmp63 = (unsigned long )up___0;
            __cil_tmp64 = __cil_tmp63 + __cil_tmp62;
            __cil_tmp65 = *((__u32 *)__cil_tmp64);
            *((__u32 *)__cil_tmp60) = __cil_tmp65 + 1U;
          } else {
          }
          }
        }
        }
      }
      }
      {
      __cil_tmp66 = *status;
      if (__cil_tmp66 & 2) {
        __cil_tmp67 = 128 + 28;
        __cil_tmp68 = 0 + __cil_tmp67;
        __cil_tmp69 = (unsigned long )up___0;
        __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
        __cil_tmp71 = 128 + 28;
        __cil_tmp72 = 0 + __cil_tmp71;
        __cil_tmp73 = (unsigned long )up___0;
        __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
        __cil_tmp75 = *((__u32 *)__cil_tmp74);
        *((__u32 *)__cil_tmp70) = __cil_tmp75 + 1U;
      } else {
      }
      }
      __cil_tmp76 = 0 + 108;
      __cil_tmp77 = (unsigned long )up___0;
      __cil_tmp78 = __cil_tmp77 + __cil_tmp76;
      __cil_tmp79 = *((unsigned int *)__cil_tmp78);
      __cil_tmp80 = *status;
      __cil_tmp81 = (unsigned int )__cil_tmp80;
      __cil_tmp82 = __cil_tmp81 & __cil_tmp79;
      *status = (int )__cil_tmp82;
      {
      __cil_tmp83 = *status;
      if (__cil_tmp83 & 16) {
        flag = 1U;
      } else {
        {
        __cil_tmp84 = *status;
        if (__cil_tmp84 & 4) {
          flag = 3U;
        } else {
          {
          __cil_tmp85 = *status;
          if (__cil_tmp85 & 8) {
            flag = 2U;
          } else {
          }
          }
        }
        }
      }
      }
    } else {
    }
    {
    __cil_tmp86 = (struct uart_port *)up___0;
    __cil_tmp87 = *status;
    __cil_tmp88 = (unsigned int )__cil_tmp87;
    uart_insert_char(__cil_tmp86, __cil_tmp88, 2U, ch, flag);
    }
    ignore_char:
    {
    tmp___9 = serial_in(up___0, 5);
    *status = (int )tmp___9;
    }
    {
    __cil_tmp89 = *status;
    if (__cil_tmp89 & 1) {
      tmp___10 = max_count;
      max_count = max_count - 1U;
      if (tmp___10) {
      } else {
        goto while_break;
      }
    } else {
      goto while_break;
    }
    }
  }
  while_break: ;
  }
  {
  tty_flip_buffer_push(tty);
  }
  return;
}
}
static void transmit_chars(struct uart_hsu_port *up___0 )
{ struct circ_buf *xmit ;
  int count ;
  int tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct uart_state *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned char __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  __u32 __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  int __cil_tmp36 ;
  struct uart_port *__cil_tmp37 ;
  struct uart_port *__cil_tmp38 ;
  struct uart_port *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  int __cil_tmp47 ;
  char *__cil_tmp48 ;
  char *__cil_tmp49 ;
  char __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  int __cil_tmp58 ;
  int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  __u32 __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  int __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  int __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  struct uart_port *__cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  int __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  int __cil_tmp94 ;
  struct uart_port *__cil_tmp95 ;
  {
  __cil_tmp5 = 0 + 120;
  __cil_tmp6 = (unsigned long )up___0;
  __cil_tmp7 = __cil_tmp6 + __cil_tmp5;
  __cil_tmp8 = *((struct uart_state **)__cil_tmp7);
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = __cil_tmp9 + 360;
  xmit = (struct circ_buf *)__cil_tmp10;
  {
  __cil_tmp11 = 0 + 104;
  __cil_tmp12 = (unsigned long )up___0;
  __cil_tmp13 = __cil_tmp12 + __cil_tmp11;
  if (*((unsigned char *)__cil_tmp13)) {
    {
    __cil_tmp14 = 0 + 104;
    __cil_tmp15 = (unsigned long )up___0;
    __cil_tmp16 = __cil_tmp15 + __cil_tmp14;
    __cil_tmp17 = *((unsigned char *)__cil_tmp16);
    __cil_tmp18 = (int )__cil_tmp17;
    serial_out(up___0, 0, __cil_tmp18);
    __cil_tmp19 = 128 + 20;
    __cil_tmp20 = 0 + __cil_tmp19;
    __cil_tmp21 = (unsigned long )up___0;
    __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
    __cil_tmp23 = 128 + 20;
    __cil_tmp24 = 0 + __cil_tmp23;
    __cil_tmp25 = (unsigned long )up___0;
    __cil_tmp26 = __cil_tmp25 + __cil_tmp24;
    __cil_tmp27 = *((__u32 *)__cil_tmp26);
    *((__u32 *)__cil_tmp22) = __cil_tmp27 + 1U;
    __cil_tmp28 = 0 + 104;
    __cil_tmp29 = (unsigned long )up___0;
    __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
    *((unsigned char *)__cil_tmp30) = (unsigned char)0;
    }
    return;
  } else {
  }
  }
  {
  __cil_tmp31 = (unsigned long )xmit;
  __cil_tmp32 = __cil_tmp31 + 12;
  __cil_tmp33 = *((int *)__cil_tmp32);
  __cil_tmp34 = (unsigned long )xmit;
  __cil_tmp35 = __cil_tmp34 + 8;
  __cil_tmp36 = *((int *)__cil_tmp35);
  if (__cil_tmp36 == __cil_tmp33) {
    {
    __cil_tmp37 = (struct uart_port *)up___0;
    serial_hsu_stop_tx(__cil_tmp37);
    }
    return;
  } else {
    {
    __cil_tmp38 = (struct uart_port *)up___0;
    tmp___7 = uart_tx_stopped(__cil_tmp38);
    }
    if (tmp___7) {
      {
      __cil_tmp39 = (struct uart_port *)up___0;
      serial_hsu_stop_tx(__cil_tmp39);
      }
      return;
    } else {
    }
  }
  }
  __cil_tmp40 = 0 + 100;
  __cil_tmp41 = (unsigned long )up___0;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  __cil_tmp43 = *((unsigned int *)__cil_tmp42);
  __cil_tmp44 = __cil_tmp43 / 2U;
  count = (int )__cil_tmp44;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp45 = (unsigned long )xmit;
    __cil_tmp46 = __cil_tmp45 + 12;
    __cil_tmp47 = *((int *)__cil_tmp46);
    __cil_tmp48 = *((char **)xmit);
    __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
    __cil_tmp50 = *__cil_tmp49;
    __cil_tmp51 = (int )__cil_tmp50;
    serial_out(up___0, 0, __cil_tmp51);
    __cil_tmp52 = (unsigned long )xmit;
    __cil_tmp53 = __cil_tmp52 + 12;
    __cil_tmp54 = 1UL << 12;
    __cil_tmp55 = __cil_tmp54 - 1UL;
    __cil_tmp56 = (unsigned long )xmit;
    __cil_tmp57 = __cil_tmp56 + 12;
    __cil_tmp58 = *((int *)__cil_tmp57);
    __cil_tmp59 = __cil_tmp58 + 1;
    __cil_tmp60 = (unsigned long )__cil_tmp59;
    __cil_tmp61 = __cil_tmp60 & __cil_tmp55;
    *((int *)__cil_tmp53) = (int )__cil_tmp61;
    __cil_tmp62 = 128 + 20;
    __cil_tmp63 = 0 + __cil_tmp62;
    __cil_tmp64 = (unsigned long )up___0;
    __cil_tmp65 = __cil_tmp64 + __cil_tmp63;
    __cil_tmp66 = 128 + 20;
    __cil_tmp67 = 0 + __cil_tmp66;
    __cil_tmp68 = (unsigned long )up___0;
    __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
    __cil_tmp70 = *((__u32 *)__cil_tmp69);
    *((__u32 *)__cil_tmp65) = __cil_tmp70 + 1U;
    }
    {
    __cil_tmp71 = (unsigned long )xmit;
    __cil_tmp72 = __cil_tmp71 + 12;
    __cil_tmp73 = *((int *)__cil_tmp72);
    __cil_tmp74 = (unsigned long )xmit;
    __cil_tmp75 = __cil_tmp74 + 8;
    __cil_tmp76 = *((int *)__cil_tmp75);
    if (__cil_tmp76 == __cil_tmp73) {
      goto while_break;
    } else {
    }
    }
    count = count - 1;
    if (count > 0) {
    } else {
      goto while_break;
    }
  }
  while_break: ;
  }
  {
  __cil_tmp77 = 1UL << 12;
  __cil_tmp78 = __cil_tmp77 - 1UL;
  __cil_tmp79 = (unsigned long )xmit;
  __cil_tmp80 = __cil_tmp79 + 12;
  __cil_tmp81 = *((int *)__cil_tmp80);
  __cil_tmp82 = (unsigned long )xmit;
  __cil_tmp83 = __cil_tmp82 + 8;
  __cil_tmp84 = *((int *)__cil_tmp83);
  __cil_tmp85 = __cil_tmp84 - __cil_tmp81;
  __cil_tmp86 = (unsigned long )__cil_tmp85;
  __cil_tmp87 = __cil_tmp86 & __cil_tmp78;
  if (__cil_tmp87 < 256UL) {
    {
    __cil_tmp88 = (struct uart_port *)up___0;
    uart_write_wakeup(__cil_tmp88);
    }
  } else {
  }
  }
  {
  __cil_tmp89 = (unsigned long )xmit;
  __cil_tmp90 = __cil_tmp89 + 12;
  __cil_tmp91 = *((int *)__cil_tmp90);
  __cil_tmp92 = (unsigned long )xmit;
  __cil_tmp93 = __cil_tmp92 + 8;
  __cil_tmp94 = *((int *)__cil_tmp93);
  if (__cil_tmp94 == __cil_tmp91) {
    {
    __cil_tmp95 = (struct uart_port *)up___0;
    serial_hsu_stop_tx(__cil_tmp95);
    }
  } else {
  }
  }
  return;
}
}
__inline static void check_modem_status(struct uart_hsu_port *up___0 ) __attribute__((__no_instrument_function__)) ;
__inline static void check_modem_status(struct uart_hsu_port *up___0 )
{ int status ;
  unsigned int tmp___7 ;
  int __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  __u32 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  __u32 __cil_tmp22 ;
  struct uart_port *__cil_tmp23 ;
  int __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  struct uart_port *__cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct uart_state *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  wait_queue_head_t *__cil_tmp36 ;
  void *__cil_tmp37 ;
  {
  {
  tmp___7 = serial_in(up___0, 6);
  status = (int )tmp___7;
  }
  {
  __cil_tmp4 = status & 15;
  if (__cil_tmp4 == 0) {
    return;
  } else {
  }
  }
  if (status & 4) {
    __cil_tmp5 = 128 + 8;
    __cil_tmp6 = 0 + __cil_tmp5;
    __cil_tmp7 = (unsigned long )up___0;
    __cil_tmp8 = __cil_tmp7 + __cil_tmp6;
    __cil_tmp9 = 128 + 8;
    __cil_tmp10 = 0 + __cil_tmp9;
    __cil_tmp11 = (unsigned long )up___0;
    __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
    __cil_tmp13 = *((__u32 *)__cil_tmp12);
    *((__u32 *)__cil_tmp8) = __cil_tmp13 + 1U;
  } else {
  }
  if (status & 2) {
    __cil_tmp14 = 128 + 4;
    __cil_tmp15 = 0 + __cil_tmp14;
    __cil_tmp16 = (unsigned long )up___0;
    __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
    __cil_tmp18 = 128 + 4;
    __cil_tmp19 = 0 + __cil_tmp18;
    __cil_tmp20 = (unsigned long )up___0;
    __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
    __cil_tmp22 = *((__u32 *)__cil_tmp21);
    *((__u32 *)__cil_tmp17) = __cil_tmp22 + 1U;
  } else {
  }
  if (status & 8) {
    {
    __cil_tmp23 = (struct uart_port *)up___0;
    __cil_tmp24 = status & 128;
    __cil_tmp25 = (unsigned int )__cil_tmp24;
    uart_handle_dcd_change(__cil_tmp23, __cil_tmp25);
    }
  } else {
  }
  if (status & 1) {
    {
    __cil_tmp26 = (struct uart_port *)up___0;
    __cil_tmp27 = status & 16;
    __cil_tmp28 = (unsigned int )__cil_tmp27;
    uart_handle_cts_change(__cil_tmp26, __cil_tmp28);
    }
  } else {
  }
  {
  __cil_tmp29 = 0 + 128;
  __cil_tmp30 = 0 + 120;
  __cil_tmp31 = (unsigned long )up___0;
  __cil_tmp32 = __cil_tmp31 + __cil_tmp30;
  __cil_tmp33 = *((struct uart_state **)__cil_tmp32);
  __cil_tmp34 = (unsigned long )__cil_tmp33;
  __cil_tmp35 = __cil_tmp34 + __cil_tmp29;
  __cil_tmp36 = (wait_queue_head_t *)__cil_tmp35;
  __cil_tmp37 = (void *)0;
  __wake_up(__cil_tmp36, 1U, 1, __cil_tmp37);
  }
  return;
}
}
static irqreturn_t port_irq(int irq , void *dev_id )
{ struct uart_hsu_port *up___0 ;
  unsigned int iir ;
  unsigned int lsr ;
  unsigned long flags ;
  long tmp___7 ;
  raw_spinlock_t *tmp___8 ;
  long tmp___9 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  long __cil_tmp18 ;
  spinlock_t *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned int *__cil_tmp22 ;
  unsigned int *__cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct device *__cil_tmp31 ;
  struct device const *__cil_tmp32 ;
  unsigned int *__cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  spinlock_t *__cil_tmp35 ;
  spinlock_t *__cil_tmp36 ;
  unsigned int *__cil_tmp37 ;
  unsigned int *__cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  int *__cil_tmp40 ;
  unsigned int *__cil_tmp41 ;
  unsigned int __cil_tmp42 ;
  spinlock_t *__cil_tmp43 ;
  {
  {
  up___0 = (struct uart_hsu_port *)dev_id;
  __cil_tmp12 = (unsigned long )up___0;
  __cil_tmp13 = __cil_tmp12 + 356;
  __cil_tmp14 = *((int *)__cil_tmp13);
  __cil_tmp15 = ! __cil_tmp14;
  __cil_tmp16 = ! __cil_tmp15;
  __cil_tmp17 = ! __cil_tmp16;
  __cil_tmp18 = (long )__cil_tmp17;
  tmp___7 = ldv__builtin_expect(__cil_tmp18, 0L);
  }
  if (tmp___7) {
    return ((irqreturn_t )0);
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp19 = (spinlock_t *)up___0;
      tmp___8 = spinlock_check(__cil_tmp19);
      flags = _raw_spin_lock_irqsave(tmp___8);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp20 = (unsigned long )up___0;
  __cil_tmp21 = __cil_tmp20 + 352;
  if (*((int *)__cil_tmp21)) {
    {
    __cil_tmp22 = & lsr;
    *__cil_tmp22 = serial_in(up___0, 5);
    __cil_tmp23 = & lsr;
    __cil_tmp24 = *__cil_tmp23;
    __cil_tmp25 = __cil_tmp24 & 30U;
    __cil_tmp26 = ! __cil_tmp25;
    __cil_tmp27 = ! __cil_tmp26;
    __cil_tmp28 = (long )__cil_tmp27;
    tmp___9 = ldv__builtin_expect(__cil_tmp28, 0L);
    }
    if (tmp___9) {
      {
      __cil_tmp29 = (unsigned long )up___0;
      __cil_tmp30 = __cil_tmp29 + 280;
      __cil_tmp31 = *((struct device **)__cil_tmp30);
      __cil_tmp32 = (struct device const *)__cil_tmp31;
      __cil_tmp33 = & lsr;
      __cil_tmp34 = *__cil_tmp33;
      dev_warn(__cil_tmp32, "Got lsr irq while using DMA, lsr = 0x%2x\n", __cil_tmp34);
      }
    } else {
    }
    {
    check_modem_status(up___0);
    __cil_tmp35 = (spinlock_t *)up___0;
    spin_unlock_irqrestore(__cil_tmp35, flags);
    }
    return ((irqreturn_t )1);
  } else {
  }
  }
  {
  iir = serial_in(up___0, 2);
  }
  if (iir & 1U) {
    {
    __cil_tmp36 = (spinlock_t *)up___0;
    spin_unlock_irqrestore(__cil_tmp36, flags);
    }
    return ((irqreturn_t )0);
  } else {
  }
  {
  __cil_tmp37 = & lsr;
  *__cil_tmp37 = serial_in(up___0, 5);
  }
  {
  __cil_tmp38 = & lsr;
  __cil_tmp39 = *__cil_tmp38;
  if (__cil_tmp39 & 1U) {
    {
    __cil_tmp40 = (int *)(& lsr);
    receive_chars(up___0, __cil_tmp40);
    }
  } else {
  }
  }
  {
  check_modem_status(up___0);
  }
  {
  __cil_tmp41 = & lsr;
  __cil_tmp42 = *__cil_tmp41;
  if (__cil_tmp42 & 32U) {
    {
    transmit_chars(up___0);
    }
  } else {
  }
  }
  {
  __cil_tmp43 = (spinlock_t *)up___0;
  spin_unlock_irqrestore(__cil_tmp43, flags);
  }
  return ((irqreturn_t )1);
}
}
__inline static void dma_chan_irq(struct hsu_dma_chan *chan ) __attribute__((__no_instrument_function__)) ;
__inline static void dma_chan_irq(struct hsu_dma_chan *chan )
{ struct uart_hsu_port *up___0 ;
  unsigned long flags ;
  u32 int_sts ;
  raw_spinlock_t *tmp___7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  spinlock_t *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  void *__cil_tmp19 ;
  void *__cil_tmp20 ;
  void const volatile *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  enum dma_data_direction __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  enum dma_data_direction __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  void *__cil_tmp32 ;
  void *__cil_tmp33 ;
  void volatile *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  spinlock_t *__cil_tmp37 ;
  {
  __cil_tmp8 = (unsigned long )chan;
  __cil_tmp9 = __cil_tmp8 + 8;
  up___0 = *((struct uart_hsu_port **)__cil_tmp9);
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp10 = (spinlock_t *)up___0;
      tmp___7 = spinlock_check(__cil_tmp10);
      flags = _raw_spin_lock_irqsave(tmp___7);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp11 = (unsigned long )up___0;
  __cil_tmp12 = __cil_tmp11 + 352;
  __cil_tmp13 = *((int *)__cil_tmp12);
  if (! __cil_tmp13) {
    goto exit;
  } else {
    {
    __cil_tmp14 = (unsigned long )up___0;
    __cil_tmp15 = __cil_tmp14 + 356;
    __cil_tmp16 = *((int *)__cil_tmp15);
    if (! __cil_tmp16) {
      goto exit;
    } else {
    }
    }
  }
  }
  {
  __cil_tmp17 = (unsigned long )chan;
  __cil_tmp18 = __cil_tmp17 + 16;
  __cil_tmp19 = *((void **)__cil_tmp18);
  __cil_tmp20 = __cil_tmp19 + 0;
  __cil_tmp21 = (void const volatile *)__cil_tmp20;
  int_sts = readl(__cil_tmp21);
  }
  {
  __cil_tmp22 = (unsigned long )chan;
  __cil_tmp23 = __cil_tmp22 + 4;
  __cil_tmp24 = *((enum dma_data_direction *)__cil_tmp23);
  __cil_tmp25 = (unsigned int )__cil_tmp24;
  if (__cil_tmp25 == 2U) {
    {
    hsu_dma_rx(up___0, int_sts);
    }
  } else {
  }
  }
  {
  __cil_tmp26 = (unsigned long )chan;
  __cil_tmp27 = __cil_tmp26 + 4;
  __cil_tmp28 = *((enum dma_data_direction *)__cil_tmp27);
  __cil_tmp29 = (unsigned int )__cil_tmp28;
  if (__cil_tmp29 == 1U) {
    {
    __cil_tmp30 = (unsigned long )chan;
    __cil_tmp31 = __cil_tmp30 + 16;
    __cil_tmp32 = *((void **)__cil_tmp31);
    __cil_tmp33 = __cil_tmp32 + 4;
    __cil_tmp34 = (void volatile *)__cil_tmp33;
    writel(0U, __cil_tmp34);
    __cil_tmp35 = (unsigned long )up___0;
    __cil_tmp36 = __cil_tmp35 + 360;
    *((int *)__cil_tmp36) = 0;
    hsu_dma_tx(up___0);
    }
  } else {
  }
  }
  exit:
  {
  __cil_tmp37 = (spinlock_t *)up___0;
  spin_unlock_irqrestore(__cil_tmp37, flags);
  }
  return;
}
}
static irqreturn_t dma_irq(int irq , void *dev_id )
{ struct hsu_port *hsu ;
  u32 int_sts ;
  u32 i ;
  void *__cil_tmp6 ;
  void *__cil_tmp7 ;
  void const volatile *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct hsu_dma_chan *__cil_tmp13 ;
  {
  {
  hsu = (struct hsu_port *)dev_id;
  __cil_tmp6 = *((void **)hsu);
  __cil_tmp7 = __cil_tmp6 + 1028;
  __cil_tmp8 = (void const volatile *)__cil_tmp7;
  int_sts = readl(__cil_tmp8);
  i = (u32 )0;
  }
  {
  while (1) {
    while_continue: ;
    if (i < 6U) {
    } else {
      goto while_break;
    }
    if (int_sts & 1U) {
      {
      __cil_tmp9 = i * 24UL;
      __cil_tmp10 = 1136 + __cil_tmp9;
      __cil_tmp11 = (unsigned long )hsu;
      __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
      __cil_tmp13 = (struct hsu_dma_chan *)__cil_tmp12;
      dma_chan_irq(__cil_tmp13);
      }
    } else {
    }
    int_sts = int_sts >> 1;
    i = i + 1U;
  }
  while_break: ;
  }
  return ((irqreturn_t )1);
}
}
static unsigned int serial_hsu_tx_empty(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  unsigned int ret ;
  raw_spinlock_t *tmp___7 ;
  unsigned int tmp___9 ;
  struct uart_hsu_port *__cil_tmp11 ;
  struct uart_port *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  char *__cil_tmp14 ;
  char *__cil_tmp15 ;
  spinlock_t *__cil_tmp16 ;
  spinlock_t *__cil_tmp17 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp11 = (struct uart_hsu_port *)0;
  __cil_tmp12 = (struct uart_port *)__cil_tmp11;
  __cil_tmp13 = (unsigned int )__cil_tmp12;
  __cil_tmp14 = (char *)__mptr;
  __cil_tmp15 = __cil_tmp14 - __cil_tmp13;
  up___0 = (struct uart_hsu_port *)__cil_tmp15;
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp16 = (spinlock_t *)up___0;
      tmp___7 = spinlock_check(__cil_tmp16);
      flags = _raw_spin_lock_irqsave(tmp___7);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  tmp___9 = serial_in(up___0, 5);
  }
  if (tmp___9 & 64U) {
    ret = 1U;
  } else {
    ret = 0U;
  }
  {
  __cil_tmp17 = (spinlock_t *)up___0;
  spin_unlock_irqrestore(__cil_tmp17, flags);
  }
  return (ret);
}
}
static unsigned int serial_hsu_get_mctrl(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned char status ;
  unsigned int ret ;
  unsigned int tmp___7 ;
  struct uart_hsu_port *__cil_tmp7 ;
  struct uart_port *__cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  char *__cil_tmp10 ;
  char *__cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  {
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp7 = (struct uart_hsu_port *)0;
  __cil_tmp8 = (struct uart_port *)__cil_tmp7;
  __cil_tmp9 = (unsigned int )__cil_tmp8;
  __cil_tmp10 = (char *)__mptr;
  __cil_tmp11 = __cil_tmp10 - __cil_tmp9;
  up___0 = (struct uart_hsu_port *)__cil_tmp11;
  tmp___7 = serial_in(up___0, 6);
  status = (unsigned char )tmp___7;
  ret = 0U;
  }
  {
  __cil_tmp12 = (int )status;
  if (__cil_tmp12 & 128) {
    ret = ret | 64U;
  } else {
  }
  }
  {
  __cil_tmp13 = (int )status;
  if (__cil_tmp13 & 64) {
    ret = ret | 128U;
  } else {
  }
  }
  {
  __cil_tmp14 = (int )status;
  if (__cil_tmp14 & 32) {
    ret = ret | 256U;
  } else {
  }
  }
  {
  __cil_tmp15 = (int )status;
  if (__cil_tmp15 & 16) {
    ret = ret | 32U;
  } else {
  }
  }
  return (ret);
}
}
static void serial_hsu_set_mctrl(struct uart_port *port , unsigned int mctrl )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned char mcr ;
  struct uart_hsu_port *__cil_tmp6 ;
  struct uart_port *__cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  char *__cil_tmp9 ;
  char *__cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned char __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp6 = (struct uart_hsu_port *)0;
  __cil_tmp7 = (struct uart_port *)__cil_tmp6;
  __cil_tmp8 = (unsigned int )__cil_tmp7;
  __cil_tmp9 = (char *)__mptr;
  __cil_tmp10 = __cil_tmp9 - __cil_tmp8;
  up___0 = (struct uart_hsu_port *)__cil_tmp10;
  mcr = (unsigned char)0;
  if (mctrl & 4U) {
    __cil_tmp11 = (int )mcr;
    __cil_tmp12 = __cil_tmp11 | 2;
    mcr = (unsigned char )__cil_tmp12;
  } else {
  }
  if (mctrl & 2U) {
    __cil_tmp13 = (int )mcr;
    __cil_tmp14 = __cil_tmp13 | 1;
    mcr = (unsigned char )__cil_tmp14;
  } else {
  }
  if (mctrl & 8192U) {
    __cil_tmp15 = (int )mcr;
    __cil_tmp16 = __cil_tmp15 | 4;
    mcr = (unsigned char )__cil_tmp16;
  } else {
  }
  if (mctrl & 16384U) {
    __cil_tmp17 = (int )mcr;
    __cil_tmp18 = __cil_tmp17 | 8;
    mcr = (unsigned char )__cil_tmp18;
  } else {
  }
  if (mctrl & 32768U) {
    __cil_tmp19 = (int )mcr;
    __cil_tmp20 = __cil_tmp19 | 16;
    mcr = (unsigned char )__cil_tmp20;
  } else {
  }
  {
  __cil_tmp21 = (unsigned long )up___0;
  __cil_tmp22 = __cil_tmp21 + 258;
  __cil_tmp23 = *((unsigned char *)__cil_tmp22);
  __cil_tmp24 = (int )__cil_tmp23;
  __cil_tmp25 = (int )mcr;
  __cil_tmp26 = __cil_tmp25 | __cil_tmp24;
  mcr = (unsigned char )__cil_tmp26;
  __cil_tmp27 = (int )mcr;
  serial_out(up___0, 4, __cil_tmp27);
  }
  return;
}
}
static void serial_hsu_break_ctl(struct uart_port *port , int break_state )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  raw_spinlock_t *tmp___7 ;
  struct uart_hsu_port *__cil_tmp9 ;
  struct uart_port *__cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  char *__cil_tmp12 ;
  char *__cil_tmp13 ;
  spinlock_t *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned char __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned char __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned char __cil_tmp31 ;
  int __cil_tmp32 ;
  spinlock_t *__cil_tmp33 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp9 = (struct uart_hsu_port *)0;
  __cil_tmp10 = (struct uart_port *)__cil_tmp9;
  __cil_tmp11 = (unsigned int )__cil_tmp10;
  __cil_tmp12 = (char *)__mptr;
  __cil_tmp13 = __cil_tmp12 - __cil_tmp11;
  up___0 = (struct uart_hsu_port *)__cil_tmp13;
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp14 = (spinlock_t *)up___0;
      tmp___7 = spinlock_check(__cil_tmp14);
      flags = _raw_spin_lock_irqsave(tmp___7);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  if (break_state == -1) {
    __cil_tmp15 = (unsigned long )up___0;
    __cil_tmp16 = __cil_tmp15 + 257;
    __cil_tmp17 = (unsigned long )up___0;
    __cil_tmp18 = __cil_tmp17 + 257;
    __cil_tmp19 = *((unsigned char *)__cil_tmp18);
    __cil_tmp20 = (int )__cil_tmp19;
    __cil_tmp21 = __cil_tmp20 | 64;
    *((unsigned char *)__cil_tmp16) = (unsigned char )__cil_tmp21;
  } else {
    __cil_tmp22 = (unsigned long )up___0;
    __cil_tmp23 = __cil_tmp22 + 257;
    __cil_tmp24 = (unsigned long )up___0;
    __cil_tmp25 = __cil_tmp24 + 257;
    __cil_tmp26 = *((unsigned char *)__cil_tmp25);
    __cil_tmp27 = (int )__cil_tmp26;
    __cil_tmp28 = __cil_tmp27 & -65;
    *((unsigned char *)__cil_tmp23) = (unsigned char )__cil_tmp28;
  }
  {
  __cil_tmp29 = (unsigned long )up___0;
  __cil_tmp30 = __cil_tmp29 + 257;
  __cil_tmp31 = *((unsigned char *)__cil_tmp30);
  __cil_tmp32 = (int )__cil_tmp31;
  serial_out(up___0, 3, __cil_tmp32);
  __cil_tmp33 = (spinlock_t *)up___0;
  spin_unlock_irqrestore(__cil_tmp33, flags);
  }
  return;
}
}
static int serial_hsu_startup(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  raw_spinlock_t *tmp___7 ;
  struct hsu_dma_buffer *dbuf ;
  struct circ_buf *xmit ;
  void *tmp___8 ;
  struct uart_hsu_port *__cil_tmp11 ;
  struct uart_port *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  char *__cil_tmp14 ;
  char *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct device *__cil_tmp18 ;
  spinlock_t *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  struct uart_port *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned char __cil_tmp41 ;
  int __cil_tmp42 ;
  spinlock_t *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct uart_state *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  size_t __cil_tmp55 ;
  u8 *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  struct device *__cil_tmp63 ;
  u8 *__cil_tmp64 ;
  void *__cil_tmp65 ;
  size_t __cil_tmp66 ;
  enum dma_data_direction __cil_tmp67 ;
  void *__cil_tmp68 ;
  struct dma_attrs *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  struct hsu_dma_chan *__cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  char *__cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  struct device *__cil_tmp82 ;
  u8 *__cil_tmp83 ;
  void *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  enum dma_data_direction __cil_tmp86 ;
  void *__cil_tmp87 ;
  struct dma_attrs *__cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  struct hsu_dma_chan *__cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  void *__cil_tmp97 ;
  void *__cil_tmp98 ;
  void volatile *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  struct hsu_dma_chan *__cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  void *__cil_tmp105 ;
  void *__cil_tmp106 ;
  void volatile *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  {
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp11 = (struct uart_hsu_port *)0;
  __cil_tmp12 = (struct uart_port *)__cil_tmp11;
  __cil_tmp13 = (unsigned int )__cil_tmp12;
  __cil_tmp14 = (char *)__mptr;
  __cil_tmp15 = __cil_tmp14 - __cil_tmp13;
  up___0 = (struct uart_hsu_port *)__cil_tmp15;
  __cil_tmp16 = (unsigned long )up___0;
  __cil_tmp17 = __cil_tmp16 + 280;
  __cil_tmp18 = *((struct device **)__cil_tmp17);
  pm_runtime_get_sync(__cil_tmp18);
  serial_out(up___0, 2, 1);
  serial_out(up___0, 2, 7);
  serial_out(up___0, 2, 0);
  serial_in(up___0, 5);
  serial_in(up___0, 0);
  serial_in(up___0, 2);
  serial_in(up___0, 6);
  serial_out(up___0, 3, 3);
  }
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp19 = (spinlock_t *)up___0;
      tmp___7 = spinlock_check(__cil_tmp19);
      flags = _raw_spin_lock_irqsave(tmp___7);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp20 = 0 + 196;
  __cil_tmp21 = (unsigned long )up___0;
  __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
  __cil_tmp23 = 0 + 196;
  __cil_tmp24 = (unsigned long )up___0;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
  __cil_tmp26 = *((unsigned int *)__cil_tmp25);
  *((unsigned int *)__cil_tmp22) = __cil_tmp26 | 16384U;
  __cil_tmp27 = (struct uart_port *)up___0;
  __cil_tmp28 = 0 + 196;
  __cil_tmp29 = (unsigned long )up___0;
  __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
  __cil_tmp31 = *((unsigned int *)__cil_tmp30);
  serial_hsu_set_mctrl(__cil_tmp27, __cil_tmp31);
  }
  {
  __cil_tmp32 = (unsigned long )up___0;
  __cil_tmp33 = __cil_tmp32 + 352;
  __cil_tmp34 = *((int *)__cil_tmp33);
  if (! __cil_tmp34) {
    __cil_tmp35 = (unsigned long )up___0;
    __cil_tmp36 = __cil_tmp35 + 256;
    *((unsigned char *)__cil_tmp36) = (unsigned char)21;
  } else {
    __cil_tmp37 = (unsigned long )up___0;
    __cil_tmp38 = __cil_tmp37 + 256;
    *((unsigned char *)__cil_tmp38) = (unsigned char)0;
  }
  }
  {
  __cil_tmp39 = (unsigned long )up___0;
  __cil_tmp40 = __cil_tmp39 + 256;
  __cil_tmp41 = *((unsigned char *)__cil_tmp40);
  __cil_tmp42 = (int )__cil_tmp41;
  serial_out(up___0, 1, __cil_tmp42);
  __cil_tmp43 = (spinlock_t *)up___0;
  spin_unlock_irqrestore(__cil_tmp43, flags);
  }
  {
  __cil_tmp44 = (unsigned long )up___0;
  __cil_tmp45 = __cil_tmp44 + 352;
  if (*((int *)__cil_tmp45)) {
    {
    __cil_tmp46 = (unsigned long )port;
    __cil_tmp47 = __cil_tmp46 + 120;
    __cil_tmp48 = *((struct uart_state **)__cil_tmp47);
    __cil_tmp49 = (unsigned long )__cil_tmp48;
    __cil_tmp50 = __cil_tmp49 + 360;
    xmit = (struct circ_buf *)__cil_tmp50;
    __cil_tmp51 = (unsigned long )up___0;
    __cil_tmp52 = __cil_tmp51 + 360;
    *((int *)__cil_tmp52) = 0;
    __cil_tmp53 = (unsigned long )up___0;
    __cil_tmp54 = __cil_tmp53 + 328;
    dbuf = (struct hsu_dma_buffer *)__cil_tmp54;
    __cil_tmp55 = (size_t )2048;
    tmp___8 = kzalloc(__cil_tmp55, 208U);
    *((u8 **)dbuf) = (u8 *)tmp___8;
    }
    {
    __cil_tmp56 = *((u8 **)dbuf);
    if (! __cil_tmp56) {
      __cil_tmp57 = (unsigned long )up___0;
      __cil_tmp58 = __cil_tmp57 + 352;
      *((int *)__cil_tmp58) = 0;
      goto exit;
    } else {
    }
    }
    {
    __cil_tmp59 = (unsigned long )dbuf;
    __cil_tmp60 = __cil_tmp59 + 8;
    __cil_tmp61 = (unsigned long )port;
    __cil_tmp62 = __cil_tmp61 + 232;
    __cil_tmp63 = *((struct device **)__cil_tmp62);
    __cil_tmp64 = *((u8 **)dbuf);
    __cil_tmp65 = (void *)__cil_tmp64;
    __cil_tmp66 = (size_t )2048;
    __cil_tmp67 = (enum dma_data_direction )2;
    __cil_tmp68 = (void *)0;
    __cil_tmp69 = (struct dma_attrs *)__cil_tmp68;
    *((dma_addr_t *)__cil_tmp60) = dma_map_single_attrs(__cil_tmp63, __cil_tmp65,
                                                        __cil_tmp66, __cil_tmp67,
                                                        __cil_tmp69);
    __cil_tmp70 = (unsigned long )dbuf;
    __cil_tmp71 = __cil_tmp70 + 16;
    *((u32 *)__cil_tmp71) = (u32 )2048;
    __cil_tmp72 = (unsigned long )up___0;
    __cil_tmp73 = __cil_tmp72 + 296;
    __cil_tmp74 = *((struct hsu_dma_chan **)__cil_tmp73);
    hsu_dma_start_rx_chan(__cil_tmp74, dbuf);
    __cil_tmp75 = (unsigned long )up___0;
    __cil_tmp76 = __cil_tmp75 + 304;
    dbuf = (struct hsu_dma_buffer *)__cil_tmp76;
    __cil_tmp77 = *((char **)xmit);
    *((u8 **)dbuf) = (u8 *)__cil_tmp77;
    __cil_tmp78 = (unsigned long )dbuf;
    __cil_tmp79 = __cil_tmp78 + 8;
    __cil_tmp80 = (unsigned long )port;
    __cil_tmp81 = __cil_tmp80 + 232;
    __cil_tmp82 = *((struct device **)__cil_tmp81);
    __cil_tmp83 = *((u8 **)dbuf);
    __cil_tmp84 = (void *)__cil_tmp83;
    __cil_tmp85 = 1UL << 12;
    __cil_tmp86 = (enum dma_data_direction )1;
    __cil_tmp87 = (void *)0;
    __cil_tmp88 = (struct dma_attrs *)__cil_tmp87;
    *((dma_addr_t *)__cil_tmp79) = dma_map_single_attrs(__cil_tmp82, __cil_tmp84,
                                                        __cil_tmp85, __cil_tmp86,
                                                        __cil_tmp88);
    __cil_tmp89 = (unsigned long )dbuf;
    __cil_tmp90 = __cil_tmp89 + 16;
    __cil_tmp91 = 1UL << 12;
    *((u32 *)__cil_tmp90) = (u32 )__cil_tmp91;
    __cil_tmp92 = (unsigned long )up___0;
    __cil_tmp93 = __cil_tmp92 + 288;
    __cil_tmp94 = *((struct hsu_dma_chan **)__cil_tmp93);
    __cil_tmp95 = (unsigned long )__cil_tmp94;
    __cil_tmp96 = __cil_tmp95 + 16;
    __cil_tmp97 = *((void **)__cil_tmp96);
    __cil_tmp98 = __cil_tmp97 + 16;
    __cil_tmp99 = (void volatile *)__cil_tmp98;
    writel(32U, __cil_tmp99);
    __cil_tmp100 = (unsigned long )up___0;
    __cil_tmp101 = __cil_tmp100 + 288;
    __cil_tmp102 = *((struct hsu_dma_chan **)__cil_tmp101);
    __cil_tmp103 = (unsigned long )__cil_tmp102;
    __cil_tmp104 = __cil_tmp103 + 16;
    __cil_tmp105 = *((void **)__cil_tmp104);
    __cil_tmp106 = __cil_tmp105 + 20;
    __cil_tmp107 = (void volatile *)__cil_tmp106;
    writel(4U, __cil_tmp107);
    __cil_tmp108 = (unsigned long )dbuf;
    __cil_tmp109 = __cil_tmp108 + 20;
    *((u32 *)__cil_tmp109) = (u32 )0;
    }
  } else {
  }
  }
  exit:
  {
  serial_in(up___0, 5);
  serial_in(up___0, 0);
  serial_in(up___0, 2);
  serial_in(up___0, 6);
  __cil_tmp110 = (unsigned long )up___0;
  __cil_tmp111 = __cil_tmp110 + 356;
  *((int *)__cil_tmp111) = 1;
  }
  return (0);
}
}
static void serial_hsu_shutdown(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned long flags ;
  raw_spinlock_t *tmp___7 ;
  unsigned int tmp___8 ;
  struct uart_hsu_port *__cil_tmp9 ;
  struct uart_port *__cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  char *__cil_tmp12 ;
  char *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  spinlock_t *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  struct uart_port *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  spinlock_t *__cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct device *__cil_tmp36 ;
  {
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp9 = (struct uart_hsu_port *)0;
  __cil_tmp10 = (struct uart_port *)__cil_tmp9;
  __cil_tmp11 = (unsigned int )__cil_tmp10;
  __cil_tmp12 = (char *)__mptr;
  __cil_tmp13 = __cil_tmp12 - __cil_tmp11;
  up___0 = (struct uart_hsu_port *)__cil_tmp13;
  __cil_tmp14 = (unsigned long )up___0;
  __cil_tmp15 = __cil_tmp14 + 256;
  *((unsigned char *)__cil_tmp15) = (unsigned char)0;
  serial_out(up___0, 1, 0);
  __cil_tmp16 = (unsigned long )up___0;
  __cil_tmp17 = __cil_tmp16 + 356;
  *((int *)__cil_tmp17) = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp18 = (spinlock_t *)up___0;
      tmp___7 = spinlock_check(__cil_tmp18);
      flags = _raw_spin_lock_irqsave(tmp___7);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp19 = 0 + 196;
  __cil_tmp20 = (unsigned long )up___0;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = 0 + 196;
  __cil_tmp23 = (unsigned long )up___0;
  __cil_tmp24 = __cil_tmp23 + __cil_tmp22;
  __cil_tmp25 = *((unsigned int *)__cil_tmp24);
  *((unsigned int *)__cil_tmp21) = __cil_tmp25 & 4294950911U;
  __cil_tmp26 = (struct uart_port *)up___0;
  __cil_tmp27 = 0 + 196;
  __cil_tmp28 = (unsigned long )up___0;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  __cil_tmp30 = *((unsigned int *)__cil_tmp29);
  serial_hsu_set_mctrl(__cil_tmp26, __cil_tmp30);
  __cil_tmp31 = (spinlock_t *)up___0;
  spin_unlock_irqrestore(__cil_tmp31, flags);
  tmp___8 = serial_in(up___0, 3);
  __cil_tmp32 = tmp___8 & 4294967231U;
  __cil_tmp33 = (int )__cil_tmp32;
  serial_out(up___0, 3, __cil_tmp33);
  serial_out(up___0, 2, 7);
  serial_out(up___0, 2, 0);
  __cil_tmp34 = (unsigned long )up___0;
  __cil_tmp35 = __cil_tmp34 + 280;
  __cil_tmp36 = *((struct device **)__cil_tmp35);
  pm_runtime_put(__cil_tmp36);
  }
  return;
}
}
static void serial_hsu_set_termios(struct uart_port *port , struct ktermios *termios ,
                                   struct ktermios *old )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  unsigned char cval ;
  unsigned char fcr ;
  unsigned long flags ;
  unsigned int baud ;
  unsigned int quot ;
  u32 ps ;
  u32 mul ;
  raw_spinlock_t *tmp___7 ;
  struct uart_hsu_port *__cil_tmp16 ;
  struct uart_port *__cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  char *__cil_tmp19 ;
  char *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  tcflag_t __cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  tcflag_t __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  tcflag_t __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  tcflag_t __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  tcflag_t __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  int __cil_tmp57 ;
  int __cil_tmp58 ;
  spinlock_t *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  tcflag_t __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  tcflag_t __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  tcflag_t __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned int __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  tcflag_t __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned int __cil_tmp92 ;
  tcflag_t __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned int __cil_tmp100 ;
  tcflag_t __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  tcflag_t __cil_tmp111 ;
  unsigned int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned int __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned char __cil_tmp124 ;
  int __cil_tmp125 ;
  int __cil_tmp126 ;
  int __cil_tmp127 ;
  upf_t __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  upf_t __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned char __cil_tmp137 ;
  int __cil_tmp138 ;
  int __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  tcflag_t __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned char __cil_tmp147 ;
  int __cil_tmp148 ;
  int __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  tcflag_t __cil_tmp152 ;
  unsigned int __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned char __cil_tmp158 ;
  int __cil_tmp159 ;
  int __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned char __cil_tmp163 ;
  int __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  tcflag_t __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned char __cil_tmp172 ;
  int __cil_tmp173 ;
  int __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned char __cil_tmp179 ;
  int __cil_tmp180 ;
  int __cil_tmp181 ;
  int __cil_tmp182 ;
  int __cil_tmp183 ;
  unsigned int __cil_tmp184 ;
  int __cil_tmp185 ;
  unsigned int __cil_tmp186 ;
  int __cil_tmp187 ;
  int __cil_tmp188 ;
  int __cil_tmp189 ;
  int __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  struct uart_port *__cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned int __cil_tmp197 ;
  int __cil_tmp198 ;
  spinlock_t *__cil_tmp199 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp16 = (struct uart_hsu_port *)0;
  __cil_tmp17 = (struct uart_port *)__cil_tmp16;
  __cil_tmp18 = (unsigned int )__cil_tmp17;
  __cil_tmp19 = (char *)__mptr;
  __cil_tmp20 = __cil_tmp19 - __cil_tmp18;
  up___0 = (struct uart_hsu_port *)__cil_tmp20;
  fcr = (unsigned char)0;
  {
  __cil_tmp21 = (unsigned long )termios;
  __cil_tmp22 = __cil_tmp21 + 8;
  __cil_tmp23 = *((tcflag_t *)__cil_tmp22);
  __cil_tmp24 = __cil_tmp23 & 48U;
  if ((int )__cil_tmp24 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp24 == 16) {
    goto case_16;
  } else
  if ((int )__cil_tmp24 == 32) {
    goto case_32;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      cval = (unsigned char)0;
      goto switch_break;
      case_16:
      cval = (unsigned char)1;
      goto switch_break;
      case_32:
      cval = (unsigned char)2;
      goto switch_break;
      switch_default:
      cval = (unsigned char)3;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  }
  __cil_tmp25 = (unsigned long )termios;
  __cil_tmp26 = __cil_tmp25 + 8;
  __cil_tmp27 = (unsigned long )termios;
  __cil_tmp28 = __cil_tmp27 + 8;
  __cil_tmp29 = *((tcflag_t *)__cil_tmp28);
  *((tcflag_t *)__cil_tmp26) = __cil_tmp29 & 3221225471U;
  {
  __cil_tmp30 = (unsigned long )termios;
  __cil_tmp31 = __cil_tmp30 + 8;
  __cil_tmp32 = *((tcflag_t *)__cil_tmp31);
  if (__cil_tmp32 & 64U) {
    __cil_tmp33 = (int )cval;
    __cil_tmp34 = __cil_tmp33 | 4;
    cval = (unsigned char )__cil_tmp34;
  } else {
  }
  }
  {
  __cil_tmp35 = (unsigned long )termios;
  __cil_tmp36 = __cil_tmp35 + 8;
  __cil_tmp37 = *((tcflag_t *)__cil_tmp36);
  if (__cil_tmp37 & 256U) {
    __cil_tmp38 = (int )cval;
    __cil_tmp39 = __cil_tmp38 | 8;
    cval = (unsigned char )__cil_tmp39;
  } else {
  }
  }
  {
  __cil_tmp40 = (unsigned long )termios;
  __cil_tmp41 = __cil_tmp40 + 8;
  __cil_tmp42 = *((tcflag_t *)__cil_tmp41);
  __cil_tmp43 = __cil_tmp42 & 512U;
  if (! __cil_tmp43) {
    __cil_tmp44 = (int )cval;
    __cil_tmp45 = __cil_tmp44 | 16;
    cval = (unsigned char )__cil_tmp45;
  } else {
  }
  }
  {
  baud = uart_get_baud_rate(port, termios, old, 0U, 4000000U);
  quot = 1U;
  ps = (u32 )16;
  mul = (u32 )13824;
  }
  if ((int )baud == 3500000) {
    goto case_3500000;
  } else
  if ((int )baud == 1843200) {
    goto case_1843200;
  } else
  if ((int )baud == 3000000) {
    goto case_3000000;
  } else
  if ((int )baud == 2500000) {
    goto case_3000000;
  } else
  if ((int )baud == 2000000) {
    goto case_3000000;
  } else
  if ((int )baud == 1500000) {
    goto case_3000000;
  } else
  if ((int )baud == 1000000) {
    goto case_3000000;
  } else
  if ((int )baud == 500000) {
    goto case_3000000;
  } else {
    {
    goto switch_default___0;
    if (0) {
      case_3500000:
      mul = (u32 )13125;
      ps = (u32 )12;
      goto switch_break___0;
      case_1843200:
      mul = (u32 )9216;
      goto switch_break___0;
      case_3000000:
      case_2500000:
      case_2000000:
      case_1500000:
      case_1000000:
      case_500000:
      __cil_tmp46 = baud / 500000U;
      mul = __cil_tmp46 * 2500U;
      goto switch_break___0;
      switch_default___0:
      quot = 0U;
    } else {
      switch_break___0: ;
    }
    }
  }
  if (! quot) {
    {
    quot = uart_get_divisor(port, baud);
    }
  } else {
  }
  {
  __cil_tmp47 = 0 + 96;
  __cil_tmp48 = (unsigned long )up___0;
  __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
  __cil_tmp50 = *((unsigned int *)__cil_tmp49);
  __cil_tmp51 = __cil_tmp50 / quot;
  if (__cil_tmp51 < 38400U) {
    fcr = (unsigned char)1;
  } else {
    {
    __cil_tmp52 = 0 + 96;
    __cil_tmp53 = (unsigned long )up___0;
    __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
    __cil_tmp55 = *((unsigned int *)__cil_tmp54);
    __cil_tmp56 = __cil_tmp55 / quot;
    if (__cil_tmp56 < 3686400U) {
      fcr = (unsigned char)65;
    } else {
      fcr = (unsigned char)129;
    }
    }
  }
  }
  __cil_tmp57 = (int )fcr;
  __cil_tmp58 = __cil_tmp57 | 32;
  fcr = (unsigned char )__cil_tmp58;
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp59 = (spinlock_t *)up___0;
      tmp___7 = spinlock_check(__cil_tmp59);
      flags = _raw_spin_lock_irqsave(tmp___7);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp60 = (unsigned long )termios;
  __cil_tmp61 = __cil_tmp60 + 8;
  __cil_tmp62 = *((tcflag_t *)__cil_tmp61);
  uart_update_timeout(port, __cil_tmp62, baud);
  __cil_tmp63 = 0 + 108;
  __cil_tmp64 = (unsigned long )up___0;
  __cil_tmp65 = __cil_tmp64 + __cil_tmp63;
  *((unsigned int *)__cil_tmp65) = 35U;
  }
  {
  __cil_tmp66 = *((tcflag_t *)termios);
  if (__cil_tmp66 & 16U) {
    __cil_tmp67 = 0 + 108;
    __cil_tmp68 = (unsigned long )up___0;
    __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
    __cil_tmp70 = 0 + 108;
    __cil_tmp71 = (unsigned long )up___0;
    __cil_tmp72 = __cil_tmp71 + __cil_tmp70;
    __cil_tmp73 = *((unsigned int *)__cil_tmp72);
    *((unsigned int *)__cil_tmp69) = __cil_tmp73 | 12U;
  } else {
  }
  }
  {
  __cil_tmp74 = *((tcflag_t *)termios);
  if (__cil_tmp74 & 10U) {
    __cil_tmp75 = 0 + 108;
    __cil_tmp76 = (unsigned long )up___0;
    __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
    __cil_tmp78 = 0 + 108;
    __cil_tmp79 = (unsigned long )up___0;
    __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
    __cil_tmp81 = *((unsigned int *)__cil_tmp80);
    *((unsigned int *)__cil_tmp77) = __cil_tmp81 | 16U;
  } else {
  }
  }
  __cil_tmp82 = 0 + 112;
  __cil_tmp83 = (unsigned long )up___0;
  __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
  *((unsigned int *)__cil_tmp84) = 0U;
  {
  __cil_tmp85 = *((tcflag_t *)termios);
  if (__cil_tmp85 & 4U) {
    __cil_tmp86 = 0 + 112;
    __cil_tmp87 = (unsigned long )up___0;
    __cil_tmp88 = __cil_tmp87 + __cil_tmp86;
    __cil_tmp89 = 0 + 112;
    __cil_tmp90 = (unsigned long )up___0;
    __cil_tmp91 = __cil_tmp90 + __cil_tmp89;
    __cil_tmp92 = *((unsigned int *)__cil_tmp91);
    *((unsigned int *)__cil_tmp88) = __cil_tmp92 | 12U;
  } else {
  }
  }
  {
  __cil_tmp93 = *((tcflag_t *)termios);
  if (__cil_tmp93 & 1U) {
    __cil_tmp94 = 0 + 112;
    __cil_tmp95 = (unsigned long )up___0;
    __cil_tmp96 = __cil_tmp95 + __cil_tmp94;
    __cil_tmp97 = 0 + 112;
    __cil_tmp98 = (unsigned long )up___0;
    __cil_tmp99 = __cil_tmp98 + __cil_tmp97;
    __cil_tmp100 = *((unsigned int *)__cil_tmp99);
    *((unsigned int *)__cil_tmp96) = __cil_tmp100 | 16U;
    {
    __cil_tmp101 = *((tcflag_t *)termios);
    if (__cil_tmp101 & 4U) {
      __cil_tmp102 = 0 + 112;
      __cil_tmp103 = (unsigned long )up___0;
      __cil_tmp104 = __cil_tmp103 + __cil_tmp102;
      __cil_tmp105 = 0 + 112;
      __cil_tmp106 = (unsigned long )up___0;
      __cil_tmp107 = __cil_tmp106 + __cil_tmp105;
      __cil_tmp108 = *((unsigned int *)__cil_tmp107);
      *((unsigned int *)__cil_tmp104) = __cil_tmp108 | 2U;
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp109 = (unsigned long )termios;
  __cil_tmp110 = __cil_tmp109 + 8;
  __cil_tmp111 = *((tcflag_t *)__cil_tmp110);
  __cil_tmp112 = __cil_tmp111 & 128U;
  if (__cil_tmp112 == 0U) {
    __cil_tmp113 = 0 + 112;
    __cil_tmp114 = (unsigned long )up___0;
    __cil_tmp115 = __cil_tmp114 + __cil_tmp113;
    __cil_tmp116 = 0 + 112;
    __cil_tmp117 = (unsigned long )up___0;
    __cil_tmp118 = __cil_tmp117 + __cil_tmp116;
    __cil_tmp119 = *((unsigned int *)__cil_tmp118);
    *((unsigned int *)__cil_tmp115) = __cil_tmp119 | 1U;
  } else {
  }
  }
  __cil_tmp120 = (unsigned long )up___0;
  __cil_tmp121 = __cil_tmp120 + 256;
  __cil_tmp122 = (unsigned long )up___0;
  __cil_tmp123 = __cil_tmp122 + 256;
  __cil_tmp124 = *((unsigned char *)__cil_tmp123);
  __cil_tmp125 = (int )__cil_tmp124;
  __cil_tmp126 = __cil_tmp125 & -9;
  *((unsigned char *)__cil_tmp121) = (unsigned char )__cil_tmp126;
  {
  __cil_tmp127 = 1 << 11;
  __cil_tmp128 = (upf_t )__cil_tmp127;
  __cil_tmp129 = 0 + 192;
  __cil_tmp130 = (unsigned long )up___0;
  __cil_tmp131 = __cil_tmp130 + __cil_tmp129;
  __cil_tmp132 = *((upf_t *)__cil_tmp131);
  if (__cil_tmp132 & __cil_tmp128) {
    __cil_tmp133 = (unsigned long )up___0;
    __cil_tmp134 = __cil_tmp133 + 256;
    __cil_tmp135 = (unsigned long )up___0;
    __cil_tmp136 = __cil_tmp135 + 256;
    __cil_tmp137 = *((unsigned char *)__cil_tmp136);
    __cil_tmp138 = (int )__cil_tmp137;
    __cil_tmp139 = __cil_tmp138 | 8;
    *((unsigned char *)__cil_tmp134) = (unsigned char )__cil_tmp139;
  } else {
    {
    __cil_tmp140 = (unsigned long )termios;
    __cil_tmp141 = __cil_tmp140 + 8;
    __cil_tmp142 = *((tcflag_t *)__cil_tmp141);
    if (__cil_tmp142 & 2147483648U) {
      __cil_tmp143 = (unsigned long )up___0;
      __cil_tmp144 = __cil_tmp143 + 256;
      __cil_tmp145 = (unsigned long )up___0;
      __cil_tmp146 = __cil_tmp145 + 256;
      __cil_tmp147 = *((unsigned char *)__cil_tmp146);
      __cil_tmp148 = (int )__cil_tmp147;
      __cil_tmp149 = __cil_tmp148 | 8;
      *((unsigned char *)__cil_tmp144) = (unsigned char )__cil_tmp149;
    } else {
      {
      __cil_tmp150 = (unsigned long )termios;
      __cil_tmp151 = __cil_tmp150 + 8;
      __cil_tmp152 = *((tcflag_t *)__cil_tmp151);
      __cil_tmp153 = __cil_tmp152 & 2048U;
      if (! __cil_tmp153) {
        __cil_tmp154 = (unsigned long )up___0;
        __cil_tmp155 = __cil_tmp154 + 256;
        __cil_tmp156 = (unsigned long )up___0;
        __cil_tmp157 = __cil_tmp156 + 256;
        __cil_tmp158 = *((unsigned char *)__cil_tmp157);
        __cil_tmp159 = (int )__cil_tmp158;
        __cil_tmp160 = __cil_tmp159 | 8;
        *((unsigned char *)__cil_tmp155) = (unsigned char )__cil_tmp160;
      } else {
      }
      }
    }
    }
  }
  }
  {
  __cil_tmp161 = (unsigned long )up___0;
  __cil_tmp162 = __cil_tmp161 + 256;
  __cil_tmp163 = *((unsigned char *)__cil_tmp162);
  __cil_tmp164 = (int )__cil_tmp163;
  serial_out(up___0, 1, __cil_tmp164);
  }
  {
  __cil_tmp165 = (unsigned long )termios;
  __cil_tmp166 = __cil_tmp165 + 8;
  __cil_tmp167 = *((tcflag_t *)__cil_tmp166);
  if (__cil_tmp167 & 2147483648U) {
    __cil_tmp168 = (unsigned long )up___0;
    __cil_tmp169 = __cil_tmp168 + 258;
    __cil_tmp170 = (unsigned long )up___0;
    __cil_tmp171 = __cil_tmp170 + 258;
    __cil_tmp172 = *((unsigned char *)__cil_tmp171);
    __cil_tmp173 = (int )__cil_tmp172;
    __cil_tmp174 = __cil_tmp173 | 34;
    *((unsigned char *)__cil_tmp169) = (unsigned char )__cil_tmp174;
  } else {
    __cil_tmp175 = (unsigned long )up___0;
    __cil_tmp176 = __cil_tmp175 + 258;
    __cil_tmp177 = (unsigned long )up___0;
    __cil_tmp178 = __cil_tmp177 + 258;
    __cil_tmp179 = *((unsigned char *)__cil_tmp178);
    __cil_tmp180 = (int )__cil_tmp179;
    __cil_tmp181 = __cil_tmp180 & -33;
    *((unsigned char *)__cil_tmp176) = (unsigned char )__cil_tmp181;
  }
  }
  {
  __cil_tmp182 = (int )cval;
  __cil_tmp183 = __cil_tmp182 | 128;
  serial_out(up___0, 3, __cil_tmp183);
  __cil_tmp184 = quot & 255U;
  __cil_tmp185 = (int )__cil_tmp184;
  serial_out(up___0, 0, __cil_tmp185);
  __cil_tmp186 = quot >> 8;
  __cil_tmp187 = (int )__cil_tmp186;
  serial_out(up___0, 1, __cil_tmp187);
  __cil_tmp188 = (int )cval;
  serial_out(up___0, 3, __cil_tmp188);
  __cil_tmp189 = (int )mul;
  serial_out(up___0, 13, __cil_tmp189);
  __cil_tmp190 = (int )ps;
  serial_out(up___0, 12, __cil_tmp190);
  __cil_tmp191 = (unsigned long )up___0;
  __cil_tmp192 = __cil_tmp191 + 257;
  *((unsigned char *)__cil_tmp192) = cval;
  __cil_tmp193 = (struct uart_port *)up___0;
  __cil_tmp194 = 0 + 196;
  __cil_tmp195 = (unsigned long )up___0;
  __cil_tmp196 = __cil_tmp195 + __cil_tmp194;
  __cil_tmp197 = *((unsigned int *)__cil_tmp196);
  serial_hsu_set_mctrl(__cil_tmp193, __cil_tmp197);
  __cil_tmp198 = (int )fcr;
  serial_out(up___0, 2, __cil_tmp198);
  __cil_tmp199 = (spinlock_t *)up___0;
  spin_unlock_irqrestore(__cil_tmp199, flags);
  }
  return;
}
}
static void serial_hsu_pm(struct uart_port *port , unsigned int state , unsigned int oldstate )
{
  {
  return;
}
}
static void serial_hsu_release_port(struct uart_port *port )
{
  {
  return;
}
}
static int serial_hsu_request_port(struct uart_port *port )
{
  {
  return (0);
}
}
static void serial_hsu_config_port(struct uart_port *port , int flags )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  struct uart_hsu_port *__cil_tmp5 ;
  struct uart_port *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  char *__cil_tmp8 ;
  char *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp5 = (struct uart_hsu_port *)0;
  __cil_tmp6 = (struct uart_port *)__cil_tmp5;
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  __cil_tmp8 = (char *)__mptr;
  __cil_tmp9 = __cil_tmp8 - __cil_tmp7;
  up___0 = (struct uart_hsu_port *)__cil_tmp9;
  __cil_tmp10 = 0 + 204;
  __cil_tmp11 = (unsigned long )up___0;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  *((unsigned int *)__cil_tmp12) = 95U;
  return;
}
}
static int serial_hsu_verify_port(struct uart_port *port , struct serial_struct *ser )
{
  {
  return (-22);
}
}
static char const *serial_hsu_type(struct uart_port *port )
{ struct uart_hsu_port *up___0 ;
  struct uart_port const *__mptr ;
  struct uart_hsu_port *__cil_tmp4 ;
  struct uart_port *__cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  char *__cil_tmp7 ;
  char *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  char *__cil_tmp13 ;
  {
  __mptr = (struct uart_port const *)port;
  __cil_tmp4 = (struct uart_hsu_port *)0;
  __cil_tmp5 = (struct uart_port *)__cil_tmp4;
  __cil_tmp6 = (unsigned int )__cil_tmp5;
  __cil_tmp7 = (char *)__mptr;
  __cil_tmp8 = __cil_tmp7 - __cil_tmp6;
  up___0 = (struct uart_hsu_port *)__cil_tmp8;
  {
  __cil_tmp9 = 0 * 1UL;
  __cil_tmp10 = 264 + __cil_tmp9;
  __cil_tmp11 = (unsigned long )up___0;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  __cil_tmp13 = (char *)__cil_tmp12;
  return ((char const *)__cil_tmp13);
  }
}
}
static struct uart_hsu_port *serial_hsu_ports[3] ;
static struct uart_driver serial_hsu_reg ;
struct uart_ops serial_hsu_pops =
     {& serial_hsu_tx_empty, & serial_hsu_set_mctrl, & serial_hsu_get_mctrl, & serial_hsu_stop_tx,
    & serial_hsu_start_tx, (void (*)(struct uart_port * , char ch ))0, & serial_hsu_stop_rx,
    & serial_hsu_enable_ms, & serial_hsu_break_ctl, & serial_hsu_startup, & serial_hsu_shutdown,
    (void (*)(struct uart_port * ))0, & serial_hsu_set_termios, (void (*)(struct uart_port * ,
                                                                          int new ))0,
    & serial_hsu_pm, (int (*)(struct uart_port * , unsigned int state ))0, & serial_hsu_type,
    & serial_hsu_release_port, & serial_hsu_request_port, & serial_hsu_config_port,
    & serial_hsu_verify_port, (int (*)(struct uart_port * , unsigned int , unsigned long ))0,
    (void (*)(struct uart_port * , unsigned char ))0, (int (*)(struct uart_port * ))0};
static struct uart_driver serial_hsu_reg =
     {& __this_module, "MFD serial", "ttyMFD", 4, 128, 3, (struct console *)((void *)0),
    (struct uart_state *)0, (struct tty_driver *)0};
static int serial_hsu_suspend(struct pci_dev *pdev , int state_event12 )
{ void *priv ;
  void *tmp___7 ;
  struct uart_hsu_port *up___0 ;
  pci_power_t tmp___8 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned short __cil_tmp9 ;
  int __cil_tmp10 ;
  struct uart_port *__cil_tmp11 ;
  {
  {
  tmp___7 = pci_get_drvdata(pdev);
  priv = tmp___7;
  }
  if (priv) {
    {
    __cil_tmp7 = (unsigned long )pdev;
    __cil_tmp8 = __cil_tmp7 + 62;
    __cil_tmp9 = *((unsigned short *)__cil_tmp8);
    __cil_tmp10 = (int )__cil_tmp9;
    if (__cil_tmp10 != 2078) {
      {
      up___0 = (struct uart_hsu_port *)priv;
      __cil_tmp11 = (struct uart_port *)up___0;
      uart_suspend_port(& serial_hsu_reg, __cil_tmp11);
      }
    } else {
    }
    }
  } else {
  }
  {
  pci_save_state(pdev);
  tmp___8 = pci_choose_state(pdev, state_event12);
  pci_set_power_state(pdev, tmp___8);
  }
  return (0);
}
}
static int serial_hsu_resume(struct pci_dev *pdev )
{ void *priv ;
  void *tmp___7 ;
  struct uart_hsu_port *up___0 ;
  int ret ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct device *__cil_tmp8 ;
  struct device const *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  int __cil_tmp13 ;
  struct uart_port *__cil_tmp14 ;
  {
  {
  tmp___7 = pci_get_drvdata(pdev);
  priv = tmp___7;
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  ret = (int )pci_enable_device(pdev);
  }
  if (ret) {
    {
    __cil_tmp6 = (unsigned long )pdev;
    __cil_tmp7 = __cil_tmp6 + 144;
    __cil_tmp8 = (struct device *)__cil_tmp7;
    __cil_tmp9 = (struct device const *)__cil_tmp8;
    dev_warn(__cil_tmp9, "HSU: can\'t re-enable device, try to continue\n");
    }
  } else {
  }
  if (priv) {
    {
    __cil_tmp10 = (unsigned long )pdev;
    __cil_tmp11 = __cil_tmp10 + 62;
    __cil_tmp12 = *((unsigned short *)__cil_tmp11);
    __cil_tmp13 = (int )__cil_tmp12;
    if (__cil_tmp13 != 2078) {
      {
      up___0 = (struct uart_hsu_port *)priv;
      __cil_tmp14 = (struct uart_port *)up___0;
      uart_resume_port(& serial_hsu_reg, __cil_tmp14);
      }
    } else {
    }
    }
  } else {
  }
  return (0);
}
}
static int serial_hsu_runtime_idle(struct device *dev )
{ int err ;
  {
  {
  err = pm_schedule_suspend(dev, 500U);
  }
  if (err) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int serial_hsu_runtime_suspend(struct device *dev )
{
  {
  return (0);
}
}
static int serial_hsu_runtime_resume(struct device *dev )
{
  {
  return (0);
}
}
static struct dev_pm_ops const serial_hsu_pm_ops =
     {(int (*)(struct device *dev ))0, (void (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
    (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
    (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
    (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
    (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
    (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
    (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0, & serial_hsu_runtime_suspend,
    & serial_hsu_runtime_resume, & serial_hsu_runtime_idle};
static struct hsu_port *phsu ;
static int serial_hsu_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{ struct uart_hsu_port *uport ;
  int index ;
  int ret ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned short __cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned short __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct device *__cil_tmp19 ;
  struct device const *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  void *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  struct device *__cil_tmp27 ;
  struct device const *__cil_tmp28 ;
  void *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  char *__cil_tmp55 ;
  char const *__cil_tmp56 ;
  void *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  struct device *__cil_tmp60 ;
  struct device const *__cil_tmp61 ;
  struct uart_port *__cil_tmp62 ;
  void *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  struct device *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  struct device *__cil_tmp69 ;
  {
  {
  __cil_tmp6 = (unsigned long )pdev;
  __cil_tmp7 = __cil_tmp6 + 60;
  __cil_tmp8 = *((unsigned short *)__cil_tmp7);
  __cil_tmp9 = (int )__cil_tmp8;
  __cil_tmp10 = (unsigned long )pdev;
  __cil_tmp11 = __cil_tmp10 + 62;
  __cil_tmp12 = *((unsigned short *)__cil_tmp11);
  __cil_tmp13 = (int )__cil_tmp12;
  printk("<6>HSU: found PCI Serial controller(ID: %04x:%04x)\n", __cil_tmp9, __cil_tmp13);
  }
  {
  __cil_tmp14 = (unsigned long )pdev;
  __cil_tmp15 = __cil_tmp14 + 62;
  __cil_tmp16 = *((unsigned short *)__cil_tmp15);
  if ((int )__cil_tmp16 == 2075) {
    goto case_2075;
  } else
  if ((int )__cil_tmp16 == 2076) {
    goto case_2076;
  } else
  if ((int )__cil_tmp16 == 2077) {
    goto case_2077;
  } else
  if ((int )__cil_tmp16 == 2078) {
    goto case_2078;
  } else {
    {
    goto switch_default;
    if (0) {
      case_2075:
      index = 0;
      goto switch_break;
      case_2076:
      index = 1;
      goto switch_break;
      case_2077:
      index = 2;
      goto switch_break;
      case_2078:
      index = 3;
      goto switch_break;
      switch_default:
      {
      __cil_tmp17 = (unsigned long )pdev;
      __cil_tmp18 = __cil_tmp17 + 144;
      __cil_tmp19 = (struct device *)__cil_tmp18;
      __cil_tmp20 = (struct device const *)__cil_tmp19;
      dev_err(__cil_tmp20, "HSU: out of index!");
      }
      return (-19);
    } else {
      switch_break: ;
    }
    }
  }
  }
  {
  ret = (int )pci_enable_device(pdev);
  }
  if (ret) {
    return (ret);
  } else {
  }
  if (index == 3) {
    {
    __cil_tmp21 = (unsigned long )pdev;
    __cil_tmp22 = __cil_tmp21 + 916;
    __cil_tmp23 = *((unsigned int *)__cil_tmp22);
    __cil_tmp24 = (void *)phsu;
    ret = (int )request_irq(__cil_tmp23, & dma_irq, 0UL, "hsu_dma", __cil_tmp24);
    }
    if (ret) {
      {
      __cil_tmp25 = (unsigned long )pdev;
      __cil_tmp26 = __cil_tmp25 + 144;
      __cil_tmp27 = (struct device *)__cil_tmp26;
      __cil_tmp28 = (struct device const *)__cil_tmp27;
      dev_err(__cil_tmp28, "can not get IRQ\n");
      }
      goto err_disable;
    } else {
    }
    {
    __cil_tmp29 = (void *)phsu;
    pci_set_drvdata(pdev, __cil_tmp29);
    }
  } else {
    {
    __cil_tmp30 = index * 368UL;
    __cil_tmp31 = 32 + __cil_tmp30;
    __cil_tmp32 = (unsigned long )phsu;
    __cil_tmp33 = __cil_tmp32 + __cil_tmp31;
    uport = (struct uart_hsu_port *)__cil_tmp33;
    __cil_tmp34 = 0 + 80;
    __cil_tmp35 = (unsigned long )uport;
    __cil_tmp36 = __cil_tmp35 + __cil_tmp34;
    __cil_tmp37 = (unsigned long )pdev;
    __cil_tmp38 = __cil_tmp37 + 916;
    *((unsigned int *)__cil_tmp36) = *((unsigned int *)__cil_tmp38);
    __cil_tmp39 = 0 + 232;
    __cil_tmp40 = (unsigned long )uport;
    __cil_tmp41 = __cil_tmp40 + __cil_tmp39;
    __cil_tmp42 = (unsigned long )pdev;
    __cil_tmp43 = __cil_tmp42 + 144;
    *((struct device **)__cil_tmp41) = (struct device *)__cil_tmp43;
    __cil_tmp44 = (unsigned long )uport;
    __cil_tmp45 = __cil_tmp44 + 280;
    __cil_tmp46 = (unsigned long )pdev;
    __cil_tmp47 = __cil_tmp46 + 144;
    *((struct device **)__cil_tmp45) = (struct device *)__cil_tmp47;
    __cil_tmp48 = (unsigned long )pdev;
    __cil_tmp49 = __cil_tmp48 + 916;
    __cil_tmp50 = *((unsigned int *)__cil_tmp49);
    __cil_tmp51 = 0 * 1UL;
    __cil_tmp52 = 264 + __cil_tmp51;
    __cil_tmp53 = (unsigned long )uport;
    __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
    __cil_tmp55 = (char *)__cil_tmp54;
    __cil_tmp56 = (char const *)__cil_tmp55;
    __cil_tmp57 = (void *)uport;
    ret = (int )request_irq(__cil_tmp50, & port_irq, 0UL, __cil_tmp56, __cil_tmp57);
    }
    if (ret) {
      {
      __cil_tmp58 = (unsigned long )pdev;
      __cil_tmp59 = __cil_tmp58 + 144;
      __cil_tmp60 = (struct device *)__cil_tmp59;
      __cil_tmp61 = (struct device const *)__cil_tmp60;
      dev_err(__cil_tmp61, "can not get IRQ\n");
      }
      goto err_disable;
    } else {
    }
    {
    __cil_tmp62 = (struct uart_port *)uport;
    uart_add_one_port(& serial_hsu_reg, __cil_tmp62);
    __cil_tmp63 = (void *)uport;
    pci_set_drvdata(pdev, __cil_tmp63);
    }
  }
  {
  __cil_tmp64 = (unsigned long )pdev;
  __cil_tmp65 = __cil_tmp64 + 144;
  __cil_tmp66 = (struct device *)__cil_tmp65;
  pm_runtime_put_noidle(__cil_tmp66);
  __cil_tmp67 = (unsigned long )pdev;
  __cil_tmp68 = __cil_tmp67 + 144;
  __cil_tmp69 = (struct device *)__cil_tmp68;
  pm_runtime_allow(__cil_tmp69);
  }
  return (0);
  err_disable:
  {
  pci_disable_device(pdev);
  }
  return (ret);
}
}
static void hsu_global_init(void)
{ struct hsu_port *hsu ;
  struct uart_hsu_port *uport ;
  struct hsu_dma_chan *dchan ;
  int i ;
  int ret ;
  void *tmp___7 ;
  struct resource *tmp___8 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  resource_size_t __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  resource_size_t __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  resource_size_t __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  void *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  resource_size_t __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  resource_size_t __cil_tmp46 ;
  resource_size_t __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  int __cil_tmp51 ;
  void *__cil_tmp52 ;
  void *__cil_tmp53 ;
  void *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  char *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  int __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  int __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  int __cil_tmp87 ;
  int __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  int __cil_tmp97 ;
  int *__cil_tmp98 ;
  int __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  int __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  int __cil_tmp121 ;
  void *__cil_tmp122 ;
  void *__cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  resource_size_t __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  resource_size_t __cil_tmp131 ;
  void const *__cil_tmp132 ;
  {
  {
  tmp___7 = kzalloc(1384UL, 208U);
  hsu = (struct hsu_port *)tmp___7;
  }
  if (! hsu) {
    return;
  } else {
  }
  {
  __cil_tmp8 = (unsigned long )hsu;
  __cil_tmp9 = __cil_tmp8 + 8;
  *((unsigned long *)__cil_tmp9) = 4288839680UL;
  __cil_tmp10 = (unsigned long )hsu;
  __cil_tmp11 = __cil_tmp10 + 16;
  *((unsigned long *)__cil_tmp11) = 4096UL;
  __cil_tmp12 = (unsigned long )hsu;
  __cil_tmp13 = __cil_tmp12 + 8;
  __cil_tmp14 = *((unsigned long *)__cil_tmp13);
  __cil_tmp15 = (resource_size_t )__cil_tmp14;
  __cil_tmp16 = (unsigned long )hsu;
  __cil_tmp17 = __cil_tmp16 + 16;
  __cil_tmp18 = *((unsigned long *)__cil_tmp17);
  __cil_tmp19 = (resource_size_t )__cil_tmp18;
  tmp___8 = __request_region(& iomem_resource, __cil_tmp15, __cil_tmp19, "HSU global",
                             0);
  }
  if (tmp___8) {
  } else {
    {
    printk("<4>HSU: error in request mem region\n");
    }
  }
  {
  __cil_tmp20 = (unsigned long )hsu;
  __cil_tmp21 = __cil_tmp20 + 8;
  __cil_tmp22 = *((unsigned long *)__cil_tmp21);
  __cil_tmp23 = (resource_size_t )__cil_tmp22;
  __cil_tmp24 = (unsigned long )hsu;
  __cil_tmp25 = __cil_tmp24 + 16;
  __cil_tmp26 = *((unsigned long *)__cil_tmp25);
  *((void **)hsu) = ioremap_nocache(__cil_tmp23, __cil_tmp26);
  }
  {
  __cil_tmp27 = *((void **)hsu);
  if (! __cil_tmp27) {
    {
    printk("<3>HSU: error in ioremap\n");
    ret = -12;
    }
    goto err_free_region;
  } else {
  }
  }
  __cil_tmp28 = 0 * 368UL;
  __cil_tmp29 = 32 + __cil_tmp28;
  __cil_tmp30 = (unsigned long )hsu;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  uport = (struct uart_hsu_port *)__cil_tmp31;
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < 3) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp32 = 0 + 204;
    __cil_tmp33 = (unsigned long )uport;
    __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
    *((unsigned int *)__cil_tmp34) = 95U;
    __cil_tmp35 = 0 + 106;
    __cil_tmp36 = (unsigned long )uport;
    __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
    *((unsigned char *)__cil_tmp37) = (unsigned char)2;
    __cil_tmp38 = 0 + 224;
    __cil_tmp39 = (unsigned long )uport;
    __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
    __cil_tmp41 = i * 128;
    __cil_tmp42 = (resource_size_t )__cil_tmp41;
    __cil_tmp43 = (unsigned long )hsu;
    __cil_tmp44 = __cil_tmp43 + 8;
    __cil_tmp45 = *((unsigned long *)__cil_tmp44);
    __cil_tmp46 = (resource_size_t )__cil_tmp45;
    __cil_tmp47 = __cil_tmp46 + 128ULL;
    *((resource_size_t *)__cil_tmp40) = __cil_tmp47 + __cil_tmp42;
    __cil_tmp48 = 0 + 32;
    __cil_tmp49 = (unsigned long )uport;
    __cil_tmp50 = __cil_tmp49 + __cil_tmp48;
    __cil_tmp51 = i * 128;
    __cil_tmp52 = *((void **)hsu);
    __cil_tmp53 = __cil_tmp52 + 128;
    __cil_tmp54 = __cil_tmp53 + __cil_tmp51;
    *((unsigned char **)__cil_tmp50) = (unsigned char *)__cil_tmp54;
    __cil_tmp55 = 0 * 1UL;
    __cil_tmp56 = 264 + __cil_tmp55;
    __cil_tmp57 = (unsigned long )uport;
    __cil_tmp58 = __cil_tmp57 + __cil_tmp56;
    __cil_tmp59 = (char *)__cil_tmp58;
    sprintf(__cil_tmp59, "hsu_port%d", i);
    __cil_tmp60 = 0 + 100;
    __cil_tmp61 = (unsigned long )uport;
    __cil_tmp62 = __cil_tmp61 + __cil_tmp60;
    *((unsigned int *)__cil_tmp62) = 64U;
    __cil_tmp63 = 0 + 208;
    __cil_tmp64 = (unsigned long )uport;
    __cil_tmp65 = __cil_tmp64 + __cil_tmp63;
    *((struct uart_ops const **)__cil_tmp65) = (struct uart_ops const *)(& serial_hsu_pops);
    __cil_tmp66 = 0 + 220;
    __cil_tmp67 = (unsigned long )uport;
    __cil_tmp68 = __cil_tmp67 + __cil_tmp66;
    *((unsigned int *)__cil_tmp68) = (unsigned int )i;
    __cil_tmp69 = 0 + 192;
    __cil_tmp70 = (unsigned long )uport;
    __cil_tmp71 = __cil_tmp70 + __cil_tmp69;
    __cil_tmp72 = 1 << 31;
    *((upf_t *)__cil_tmp71) = (upf_t )__cil_tmp72;
    __cil_tmp73 = 0 + 96;
    __cil_tmp74 = (unsigned long )uport;
    __cil_tmp75 = __cil_tmp74 + __cil_tmp73;
    *((unsigned int *)__cil_tmp75) = 44236800U;
    __cil_tmp76 = (unsigned long )uport;
    __cil_tmp77 = __cil_tmp76 + 356;
    *((int *)__cil_tmp77) = 0;
    __cil_tmp78 = (unsigned long )uport;
    __cil_tmp79 = __cil_tmp78 + 288;
    __cil_tmp80 = i * 2;
    __cil_tmp81 = __cil_tmp80 * 24UL;
    __cil_tmp82 = 1136 + __cil_tmp81;
    __cil_tmp83 = (unsigned long )hsu;
    __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
    *((struct hsu_dma_chan **)__cil_tmp79) = (struct hsu_dma_chan *)__cil_tmp84;
    __cil_tmp85 = (unsigned long )uport;
    __cil_tmp86 = __cil_tmp85 + 296;
    __cil_tmp87 = i * 2;
    __cil_tmp88 = __cil_tmp87 + 1;
    __cil_tmp89 = __cil_tmp88 * 24UL;
    __cil_tmp90 = 1136 + __cil_tmp89;
    __cil_tmp91 = (unsigned long )hsu;
    __cil_tmp92 = __cil_tmp91 + __cil_tmp90;
    *((struct hsu_dma_chan **)__cil_tmp86) = (struct hsu_dma_chan *)__cil_tmp92;
    __cil_tmp93 = i * 8UL;
    __cil_tmp94 = (unsigned long )(serial_hsu_ports) + __cil_tmp93;
    *((struct uart_hsu_port **)__cil_tmp94) = uport;
    __cil_tmp95 = (unsigned long )uport;
    __cil_tmp96 = __cil_tmp95 + 276;
    *((int *)__cil_tmp96) = i;
    }
    {
    __cil_tmp97 = 1 << i;
    __cil_tmp98 = & hsu_dma_enable;
    __cil_tmp99 = *__cil_tmp98;
    if (__cil_tmp99 & __cil_tmp97) {
      __cil_tmp100 = (unsigned long )uport;
      __cil_tmp101 = __cil_tmp100 + 352;
      *((int *)__cil_tmp101) = 1;
    } else {
      __cil_tmp102 = (unsigned long )uport;
      __cil_tmp103 = __cil_tmp102 + 352;
      *((int *)__cil_tmp103) = 0;
    }
    }
    uport = uport + 1;
    i = i + 1;
  }
  while_break: ;
  }
  __cil_tmp104 = 0 * 24UL;
  __cil_tmp105 = 1136 + __cil_tmp104;
  __cil_tmp106 = (unsigned long )hsu;
  __cil_tmp107 = __cil_tmp106 + __cil_tmp105;
  dchan = (struct hsu_dma_chan *)__cil_tmp107;
  i = 0;
  {
  while (1) {
    while_continue___0: ;
    if (i < 6) {
    } else {
      goto while_break___0;
    }
    *((u32 *)dchan) = (u32 )i;
    if (i & 1) {
      __cil_tmp108 = (unsigned long )dchan;
      __cil_tmp109 = __cil_tmp108 + 4;
      *((enum dma_data_direction *)__cil_tmp109) = (enum dma_data_direction )2;
    } else {
      __cil_tmp110 = (unsigned long )dchan;
      __cil_tmp111 = __cil_tmp110 + 4;
      *((enum dma_data_direction *)__cil_tmp111) = (enum dma_data_direction )1;
    }
    __cil_tmp112 = (unsigned long )dchan;
    __cil_tmp113 = __cil_tmp112 + 8;
    __cil_tmp114 = i / 2;
    __cil_tmp115 = __cil_tmp114 * 368UL;
    __cil_tmp116 = 32 + __cil_tmp115;
    __cil_tmp117 = (unsigned long )hsu;
    __cil_tmp118 = __cil_tmp117 + __cil_tmp116;
    *((struct uart_hsu_port **)__cil_tmp113) = (struct uart_hsu_port *)__cil_tmp118;
    __cil_tmp119 = (unsigned long )dchan;
    __cil_tmp120 = __cil_tmp119 + 16;
    __cil_tmp121 = i * 64;
    __cil_tmp122 = *((void **)hsu);
    __cil_tmp123 = __cil_tmp122 + 1280;
    *((void **)__cil_tmp120) = __cil_tmp123 + __cil_tmp121;
    dchan = dchan + 1;
    i = i + 1;
  }
  while_break___0: ;
  }
  {
  phsu = hsu;
  hsu_debugfs_init(hsu);
  }
  return;
  err_free_region:
  {
  __cil_tmp124 = (unsigned long )hsu;
  __cil_tmp125 = __cil_tmp124 + 8;
  __cil_tmp126 = *((unsigned long *)__cil_tmp125);
  __cil_tmp127 = (resource_size_t )__cil_tmp126;
  __cil_tmp128 = (unsigned long )hsu;
  __cil_tmp129 = __cil_tmp128 + 16;
  __cil_tmp130 = *((unsigned long *)__cil_tmp129);
  __cil_tmp131 = (resource_size_t )__cil_tmp130;
  __release_region(& iomem_resource, __cil_tmp127, __cil_tmp131);
  __cil_tmp132 = (void const *)hsu;
  kfree(__cil_tmp132);
  }
  return;
}
}
static void serial_hsu_remove(struct pci_dev *pdev )
{ void *priv ;
  void *tmp___7 ;
  struct uart_hsu_port *up___0 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct device *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned short __cil_tmp13 ;
  int __cil_tmp14 ;
  struct uart_port *__cil_tmp15 ;
  void *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  {
  {
  tmp___7 = pci_get_drvdata(pdev);
  priv = tmp___7;
  }
  if (! priv) {
    return;
  } else {
  }
  {
  __cil_tmp5 = (unsigned long )pdev;
  __cil_tmp6 = __cil_tmp5 + 144;
  __cil_tmp7 = (struct device *)__cil_tmp6;
  pm_runtime_forbid(__cil_tmp7);
  __cil_tmp8 = (unsigned long )pdev;
  __cil_tmp9 = __cil_tmp8 + 144;
  __cil_tmp10 = (struct device *)__cil_tmp9;
  pm_runtime_get_noresume(__cil_tmp10);
  }
  {
  __cil_tmp11 = (unsigned long )pdev;
  __cil_tmp12 = __cil_tmp11 + 62;
  __cil_tmp13 = *((unsigned short *)__cil_tmp12);
  __cil_tmp14 = (int )__cil_tmp13;
  if (__cil_tmp14 != 2078) {
    {
    up___0 = (struct uart_hsu_port *)priv;
    __cil_tmp15 = (struct uart_port *)up___0;
    uart_remove_one_port(& serial_hsu_reg, __cil_tmp15);
    }
  } else {
  }
  }
  {
  __cil_tmp16 = (void *)0;
  pci_set_drvdata(pdev, __cil_tmp16);
  __cil_tmp17 = (unsigned long )pdev;
  __cil_tmp18 = __cil_tmp17 + 916;
  __cil_tmp19 = *((unsigned int *)__cil_tmp18);
  free_irq(__cil_tmp19, priv);
  pci_disable_device(pdev);
  }
  return;
}
}
static struct pci_device_id const pci_ids[4] __attribute__((__section__(".devinit.rodata"))) = { {(__u32 )32902,
      (__u32 )2075, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )32902, (__u32 )2076, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )32902, (__u32 )2077, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )32902, (__u32 )2078, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL}};
static struct pci_driver hsu_pci_driver =
     {{(struct list_head *)0, (struct list_head *)0}, "HSU serial", pci_ids, & serial_hsu_probe,
    & serial_hsu_remove, & serial_hsu_suspend, (int (*)(struct pci_dev *dev , pm_message_t state ))0,
    (int (*)(struct pci_dev *dev ))0, & serial_hsu_resume, (void (*)(struct pci_dev *dev ))0,
    (struct pci_error_handlers *)0, {(char const *)0, (struct bus_type *)0, (struct module *)0,
                                     (char const *)0, (_Bool)0, (struct of_device_id const *)0,
                                     (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
                                     (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                pm_message_t state ))0,
                                     (int (*)(struct device *dev ))0, (struct attribute_group const **)0,
                                     & serial_hsu_pm_ops, (struct driver_private *)0},
    {{{{{{0U}}, 0U, 0U, (void *)0}}}, {(struct list_head *)0, (struct list_head *)0}}};
static int hsu_pci_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int hsu_pci_init(void)
{ int ret ;
  int tmp___7 ;
  {
  {
  hsu_global_init();
  ret = uart_register_driver(& serial_hsu_reg);
  }
  if (ret) {
    return (ret);
  } else {
  }
  {
  tmp___7 = (int )__pci_register_driver(& hsu_pci_driver, & __this_module, "mfd");
  }
  return (tmp___7);
}
}
static void hsu_pci_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void hsu_pci_exit(void)
{ void const *__cil_tmp1 ;
  {
  {
  pci_unregister_driver(& hsu_pci_driver);
  uart_unregister_driver(& serial_hsu_reg);
  hsu_debugfs_remove(phsu);
  __cil_tmp1 = (void const *)phsu;
  kfree(__cil_tmp1);
  }
  return;
}
}
int init_module(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = hsu_pci_init();
  }
  return (tmp___7);
}
}
void cleanup_module(void)
{
  {
  {
  hsu_pci_exit();
  }
  return;
}
}
static char const __mod_license1506[15] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )' ',
        (char const )'v', (char const )'2', (char const )'\000'};
static char const __mod_alias1507[28] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'l', (char const )'i', (char const )'a',
        (char const )'s', (char const )'=', (char const )'p', (char const )'l',
        (char const )'a', (char const )'t', (char const )'f', (char const )'o',
        (char const )'r', (char const )'m', (char const )':', (char const )'m',
        (char const )'e', (char const )'d', (char const )'f', (char const )'i',
        (char const )'e', (char const )'l', (char const )'d', (char const )'-',
        (char const )'h', (char const )'s', (char const )'u', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static ssize_t res_port_show_regs_2 ;
static ssize_t res_dma_show_regs_3 ;
static int res_serial_hsu_probe_43 ;
void main(void)
{ struct file *var_group1 ;
  char *var_port_show_regs_2_p1 ;
  size_t var_port_show_regs_2_p2 ;
  loff_t *var_port_show_regs_2_p3 ;
  char *var_dma_show_regs_3_p1 ;
  size_t var_dma_show_regs_3_p2 ;
  loff_t *var_dma_show_regs_3_p3 ;
  struct uart_port *var_group3 ;
  unsigned int var_serial_hsu_set_mctrl_23_p1 ;
  int var_serial_hsu_break_ctl_24_p1 ;
  struct ktermios *var_group4 ;
  struct ktermios *var_serial_hsu_set_termios_27_p2 ;
  unsigned int var_serial_hsu_pm_28_p1 ;
  unsigned int var_serial_hsu_pm_28_p2 ;
  int var_serial_hsu_config_port_31_p1 ;
  struct serial_struct *var_group5 ;
  struct device *var_group6 ;
  struct pci_dev *var_group7 ;
  struct pci_device_id const *var_serial_hsu_probe_43_p1 ;
  pm_message_t var_serial_hsu_suspend_38_p1 ;
  int var_dma_irq_20_p0 ;
  void *var_dma_irq_20_p1 ;
  int var_port_irq_18_p0 ;
  void *var_port_irq_18_p1 ;
  int tmp___7 ;
  int ldv_s_port_regs_ops_file_operations ;
  int ldv_s_dma_regs_ops_file_operations ;
  int ldv_s_hsu_pci_driver_pci_driver ;
  int tmp___8 ;
  int tmp___9 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int var_serial_hsu_suspend_38_p1_event36 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp___7 = hsu_pci_init();
  }
  if (tmp___7) {
    goto ldv_final;
  } else {
  }
  ldv_s_port_regs_ops_file_operations = 0;
  ldv_s_dma_regs_ops_file_operations = 0;
  ldv_s_hsu_pci_driver_pci_driver = 0;
  {
  while (1) {
    while_continue: ;
    {
    tmp___9 = __VERIFIER_nondet_int();
    }
    if (tmp___9) {
    } else {
      {
      __cil_tmp31 = ldv_s_port_regs_ops_file_operations == 0;
      if (! __cil_tmp31) {
      } else {
        {
        __cil_tmp32 = ldv_s_dma_regs_ops_file_operations == 0;
        if (! __cil_tmp32) {
        } else {
          {
          __cil_tmp33 = ldv_s_hsu_pci_driver_pci_driver == 0;
          if (! __cil_tmp33) {
          } else {
            goto while_break;
          }
          }
        }
        }
      }
      }
    }
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8 == 0) {
      goto case_0;
    } else
    if (tmp___8 == 1) {
      goto case_1;
    } else
    if (tmp___8 == 2) {
      goto case_2;
    } else
    if (tmp___8 == 3) {
      goto case_3;
    } else
    if (tmp___8 == 4) {
      goto case_4;
    } else
    if (tmp___8 == 5) {
      goto case_5;
    } else
    if (tmp___8 == 6) {
      goto case_6;
    } else
    if (tmp___8 == 7) {
      goto case_7;
    } else
    if (tmp___8 == 8) {
      goto case_8;
    } else
    if (tmp___8 == 9) {
      goto case_9;
    } else
    if (tmp___8 == 10) {
      goto case_10;
    } else
    if (tmp___8 == 11) {
      goto case_11;
    } else
    if (tmp___8 == 12) {
      goto case_12;
    } else
    if (tmp___8 == 13) {
      goto case_13;
    } else
    if (tmp___8 == 14) {
      goto case_14;
    } else
    if (tmp___8 == 15) {
      goto case_15;
    } else
    if (tmp___8 == 16) {
      goto case_16;
    } else
    if (tmp___8 == 17) {
      goto case_17;
    } else
    if (tmp___8 == 18) {
      goto case_18;
    } else
    if (tmp___8 == 19) {
      goto case_19;
    } else
    if (tmp___8 == 20) {
      goto case_20;
    } else
    if (tmp___8 == 21) {
      goto case_21;
    } else
    if (tmp___8 == 22) {
      goto case_22;
    } else
    if (tmp___8 == 23) {
      goto case_23;
    } else
    if (tmp___8 == 24) {
      goto case_24;
    } else
    if (tmp___8 == 25) {
      goto case_25;
    } else
    if (tmp___8 == 26) {
      goto case_26;
    } else
    if (tmp___8 == 27) {
      goto case_27;
    } else
    if (tmp___8 == 28) {
      goto case_28;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_port_regs_ops_file_operations == 0) {
          {
          res_port_show_regs_2 = port_show_regs(var_group1, var_port_show_regs_2_p1,
                                                var_port_show_regs_2_p2, var_port_show_regs_2_p3);
          __cil_tmp34 = (int )res_port_show_regs_2;
          ldv_check_return_value(__cil_tmp34);
          }
          if (res_port_show_regs_2 < 0L) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_port_regs_ops_file_operations = 0;
        } else {
        }
        goto switch_break;
        case_1:
        if (ldv_s_dma_regs_ops_file_operations == 0) {
          {
          res_dma_show_regs_3 = dma_show_regs(var_group1, var_dma_show_regs_3_p1,
                                              var_dma_show_regs_3_p2, var_dma_show_regs_3_p3);
          __cil_tmp35 = (int )res_dma_show_regs_3;
          ldv_check_return_value(__cil_tmp35);
          }
          if (res_dma_show_regs_3 < 0L) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_dma_regs_ops_file_operations = 0;
        } else {
        }
        goto switch_break;
        case_2: ;
        goto switch_break;
        case_3: ;
        goto switch_break;
        case_4:
        {
        serial_hsu_tx_empty(var_group3);
        }
        goto switch_break;
        case_5:
        {
        serial_hsu_set_mctrl(var_group3, var_serial_hsu_set_mctrl_23_p1);
        }
        goto switch_break;
        case_6:
        {
        serial_hsu_get_mctrl(var_group3);
        }
        goto switch_break;
        case_7:
        {
        serial_hsu_stop_tx(var_group3);
        }
        goto switch_break;
        case_8:
        {
        serial_hsu_start_tx(var_group3);
        }
        goto switch_break;
        case_9:
        {
        serial_hsu_stop_rx(var_group3);
        }
        goto switch_break;
        case_10:
        {
        serial_hsu_enable_ms(var_group3);
        }
        goto switch_break;
        case_11:
        {
        serial_hsu_break_ctl(var_group3, var_serial_hsu_break_ctl_24_p1);
        }
        goto switch_break;
        case_12:
        {
        serial_hsu_startup(var_group3);
        }
        goto switch_break;
        case_13:
        {
        serial_hsu_shutdown(var_group3);
        }
        goto switch_break;
        case_14:
        {
        serial_hsu_set_termios(var_group3, var_group4, var_serial_hsu_set_termios_27_p2);
        }
        goto switch_break;
        case_15:
        {
        serial_hsu_pm(var_group3, var_serial_hsu_pm_28_p1, var_serial_hsu_pm_28_p2);
        }
        goto switch_break;
        case_16:
        {
        serial_hsu_type(var_group3);
        }
        goto switch_break;
        case_17:
        {
        serial_hsu_release_port(var_group3);
        }
        goto switch_break;
        case_18:
        {
        serial_hsu_request_port(var_group3);
        }
        goto switch_break;
        case_19:
        {
        serial_hsu_config_port(var_group3, var_serial_hsu_config_port_31_p1);
        }
        goto switch_break;
        case_20:
        {
        serial_hsu_verify_port(var_group3, var_group5);
        }
        goto switch_break;
        case_21:
        {
        serial_hsu_runtime_suspend(var_group6);
        }
        goto switch_break;
        case_22:
        {
        serial_hsu_runtime_resume(var_group6);
        }
        goto switch_break;
        case_23:
        {
        serial_hsu_runtime_idle(var_group6);
        }
        goto switch_break;
        case_24:
        if (ldv_s_hsu_pci_driver_pci_driver == 0) {
          {
          res_serial_hsu_probe_43 = serial_hsu_probe(var_group7, var_serial_hsu_probe_43_p1);
          ldv_check_return_value(res_serial_hsu_probe_43);
          }
          if (res_serial_hsu_probe_43) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_hsu_pci_driver_pci_driver = 0;
        } else {
        }
        goto switch_break;
        case_25:
        {
        serial_hsu_suspend(var_group7, var_serial_hsu_suspend_38_p1_event36);
        }
        goto switch_break;
        case_26:
        {
        serial_hsu_resume(var_group7);
        }
        goto switch_break;
        case_27:
        {
        LDV_IN_INTERRUPT = 2;
        dma_irq(var_dma_irq_20_p0, var_dma_irq_20_p1);
        LDV_IN_INTERRUPT = 1;
        }
        goto switch_break;
        case_28:
        {
        LDV_IN_INTERRUPT = 2;
        port_irq(var_port_irq_18_p0, var_port_irq_18_p1);
        LDV_IN_INTERRUPT = 1;
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  ldv_module_exit:
  {
  hsu_pci_exit();
  }
  ldv_final:
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
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_idle(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_resume(struct device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
void *external_alloc(void);
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return (struct resource *)external_alloc();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void *external_alloc(void);
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return (struct dentry *)external_alloc();
}
void *external_alloc(void);
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return (struct dentry *)external_alloc();
}
void debugfs_remove_recursive(struct dentry *arg0) {
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
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void do_SAK(struct tty_struct *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void pm_runtime_allow(struct device *arg0) {
  return;
}
void pm_runtime_forbid(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pm_schedule_suspend(struct device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
void tty_flip_buffer_push(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_struct *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_add_one_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int uart_get_baud_rate(struct uart_port *arg0, struct ktermios *arg1, struct ktermios *arg2, unsigned int arg3, unsigned int arg4) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int uart_get_divisor(struct uart_port *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_uint();
}
void uart_handle_cts_change(struct uart_port *arg0, unsigned int arg1) {
  return;
}
void uart_handle_dcd_change(struct uart_port *arg0, unsigned int arg1) {
  return;
}
void uart_insert_char(struct uart_port *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int uart_register_driver(struct uart_driver *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_remove_one_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_resume_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int uart_suspend_port(struct uart_driver *arg0, struct uart_port *arg1) {
  return __VERIFIER_nondet_int();
}
void uart_unregister_driver(struct uart_driver *arg0) {
  return;
}
void uart_update_timeout(struct uart_port *arg0, unsigned int arg1, unsigned int arg2) {
  return;
}
void uart_write_wakeup(struct uart_port *arg0) {
  return;
}
void *__VERIFIER_nondet_pointer(void);
void *external_alloc(void) {
  return __VERIFIER_nondet_pointer();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
