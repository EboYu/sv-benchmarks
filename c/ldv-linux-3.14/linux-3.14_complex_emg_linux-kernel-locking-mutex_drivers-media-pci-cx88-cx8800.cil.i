struct device;
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
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
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
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
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct mutex;
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
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
typedef void (*ctor_fn_t)(void);
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
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
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField4 ;
   struct __anonstruct____missing_field_name_13 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField6 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_18 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_18 __annonCompField7 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_20 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_19 {
   s64 lock ;
   struct __anonstruct____missing_field_name_20 __annonCompField8 ;
};
typedef union __anonunion_arch_rwlock_t_19 arch_rwlock_t;
struct net_device;
struct file_operations;
struct completion;
struct pid;
struct lockdep_map;
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
union __anonunion____missing_field_name_21 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_21 __annonCompField9 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_26 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_27 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_25 {
   struct __anonstruct____missing_field_name_26 __annonCompField13 ;
   struct __anonstruct____missing_field_name_27 __annonCompField14 ;
};
union __anonunion____missing_field_name_28 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_25 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_28 __annonCompField16 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
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
   u32 ymmh_space[64U] ;
};
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
};
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
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
   unsigned char fpu_counter ;
};
typedef atomic64_t atomic_long_t;
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
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_32 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_31 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_32 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_31 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_33 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_33 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_38 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_38 seqlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_u_39 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_40 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   union __anonunion_u_39 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_40 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_41 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_41 kuid_t;
struct __anonstruct_kgid_t_42 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_42 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
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
};
struct kref {
   atomic_t refcount ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct __anonstruct_nodemask_t_43 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_43 nodemask_t;
struct path;
struct inode;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
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
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
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
   unsigned int memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_108 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_108 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
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
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
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
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion____missing_field_name_136 {
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
   u8 msi_cap ;
   u8 msix_cap ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
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
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_136 __annonCompField33 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct msi_chip;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   struct msi_chip *msi ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_139 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_140 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField35 ;
   struct __anonstruct____missing_field_name_140 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_141 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_143 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_147 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_146 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_147 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_145 {
   union __anonunion____missing_field_name_146 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_144 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_145 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField39 ;
   union __anonunion____missing_field_name_144 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_149 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_148 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_149 __annonCompField45 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_150 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_141 __annonCompField38 ;
   struct __anonstruct____missing_field_name_142 __annonCompField44 ;
   union __anonunion____missing_field_name_148 __annonCompField46 ;
   union __anonunion____missing_field_name_150 __annonCompField47 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_152 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_151 {
   struct __anonstruct_linear_152 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_151 shared ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
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
   unsigned long def_flags ;
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
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct mem_cgroup;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
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
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct____missing_field_name_154 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_155 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField48 ;
   struct __anonstruct____missing_field_name_155 __annonCompField49 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_153 __annonCompField50 ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct____missing_field_name_157 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_156 {
   struct __anonstruct____missing_field_name_157 __annonCompField51 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_156 __annonCompField52 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_162 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_162 __annonCompField53 ;
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
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
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
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
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
   bool sig_ok ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
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
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_166 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_166 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_169 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_171 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_172 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_173 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_174 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_167 {
   int _pad[28U] ;
   struct __anonstruct__kill_168 _kill ;
   struct __anonstruct__timer_169 _timer ;
   struct __anonstruct__rt_170 _rt ;
   struct __anonstruct__sigchld_171 _sigchld ;
   struct __anonstruct__sigfault_172 _sigfault ;
   struct __anonstruct__sigpoll_173 _sigpoll ;
   struct __anonstruct__sigsys_174 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_167 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
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
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_177 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_178 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_180 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_179 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_180 __annonCompField57 ;
};
union __anonunion_type_data_181 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_183 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_182 {
   union __anonunion_payload_183 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_177 __annonCompField55 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_178 __annonCompField56 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_179 __annonCompField58 ;
   union __anonunion_type_data_181 type_data ;
   union __anonunion____missing_field_name_182 __annonCompField59 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
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
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
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
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
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
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
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
   struct cputime prev_cputime ;
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
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
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
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
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
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
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
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
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
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
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
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_board_info;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
struct i2c_algo_bit_data {
   void *data ;
   void (*setsda)(void * , int ) ;
   void (*setscl)(void * , int ) ;
   int (*getsda)(void * ) ;
   int (*getscl)(void * ) ;
   int (*pre_xfer)(struct i2c_adapter * ) ;
   void (*post_xfer)(struct i2c_adapter * ) ;
   int udelay ;
   int timeout ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_185 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_185 __annonCompField61 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_186 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_186 __annonCompField62 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_187 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_187 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_188 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_188 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_189 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_189 __annonCompField63 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_190 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_190 __annonCompField64 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_191 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_191 __annonCompField65 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion____missing_field_name_192 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_192 __annonCompField66 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_194 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_193 {
   struct __anonstruct_raw_194 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_193 __annonCompField67 ;
};
struct __anonstruct_stop_196 {
   __u64 pts ;
};
struct __anonstruct_start_197 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_198 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_195 {
   struct __anonstruct_stop_196 stop ;
   struct __anonstruct_start_197 start ;
   struct __anonstruct_raw_198 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_195 __annonCompField68 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_200 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_200 fmt ;
};
union __anonunion_parm_201 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_201 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_204 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_204 __annonCompField71 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_206 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_205 {
   struct __anonstruct____missing_field_name_206 __annonCompField72 ;
};
struct lockref {
   union __anonunion____missing_field_name_205 __annonCompField73 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_208 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_207 {
   struct __anonstruct____missing_field_name_208 __annonCompField74 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_207 __annonCompField75 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_209 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_209 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
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
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct cgroup_subsys_state;
struct export_operations;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
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
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_210 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_210 kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_211 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_211 __annonCompField76 ;
   enum quota_type type ;
};
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
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
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
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
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
union __anonunion_arg_213 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_212 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_213 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_212 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
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
struct inode_operations;
union __anonunion____missing_field_name_214 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_215 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_216 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_214 __annonCompField77 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_215 __annonCompField78 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_216 __annonCompField79 ;
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
   kuid_t uid ;
   kuid_t euid ;
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
union __anonunion_f_u_217 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_217 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
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
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct net;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_219 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_218 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_219 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
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
   union __anonunion_fl_u_218 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
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
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
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
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
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
   int (*iterate)(struct file * , struct dir_context * ) ;
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
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
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
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_226 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_227 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_228 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_225 {
   struct __anonstruct_v4l_226 v4l ;
   struct __anonstruct_fb_227 fb ;
   struct __anonstruct_alsa_228 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_225 info ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct v4l2_device;
struct v4l2_subdev;
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_231 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_232 {
   char const *name ;
};
struct __anonstruct_i2c_233 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_234 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_230 {
   struct __anonstruct_of_231 of ;
   struct __anonstruct_device_name_232 device_name ;
   struct __anonstruct_i2c_233 i2c ;
   struct __anonstruct_custom_234 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_230 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct video_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_235 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_235 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct sk_buff;
typedef s32 dma_cookie_t;
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct____missing_field_name_240 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_239 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_240 __annonCompField82 ;
};
union __anonunion____missing_field_name_241 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_242 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_239 __annonCompField83 ;
   __u32 priority ;
   __u8 local_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_rxhash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   union __anonunion____missing_field_name_241 __annonCompField84 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_242 __annonCompField85 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct videobuf_buffer;
struct videobuf_queue;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned int streaming : 1 ;
   unsigned int reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct videobuf_dmabuf {
   u32 magic ;
   int offset ;
   size_t size ;
   struct page **pages ;
   void *vaddr ;
   dma_addr_t bus_addr ;
   struct scatterlist *sglist ;
   int sglen ;
   int nr_pages ;
   int direction ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_243 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_244 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_245 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_246 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_243 __annonCompField86 ;
   union __anonunion____missing_field_name_244 __annonCompField87 ;
   unsigned long flags ;
   union __anonunion_cur_245 cur ;
   union __anonunion____missing_field_name_246 __annonCompField88 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
enum cx2341x_port {
    CX2341X_PORT_MEMORY = 0,
    CX2341X_PORT_STREAMING = 1,
    CX2341X_PORT_SERIAL = 2
} ;
struct cx2341x_handler;
struct cx2341x_handler_ops {
   int (*s_audio_sampling_freq)(struct cx2341x_handler * , u32 ) ;
   int (*s_audio_mode)(struct cx2341x_handler * , u32 ) ;
   int (*s_video_encoding)(struct cx2341x_handler * , u32 ) ;
   int (*s_stream_vbi_fmt)(struct cx2341x_handler * , u32 ) ;
};
struct __anonstruct____missing_field_name_247 {
   struct v4l2_ctrl *audio_sampling_freq ;
   struct v4l2_ctrl *audio_encoding ;
   struct v4l2_ctrl *audio_l2_bitrate ;
   struct v4l2_ctrl *audio_mode ;
   struct v4l2_ctrl *audio_mode_extension ;
   struct v4l2_ctrl *audio_emphasis ;
   struct v4l2_ctrl *audio_crc ;
   struct v4l2_ctrl *audio_ac3_bitrate ;
};
struct __anonstruct____missing_field_name_248 {
   struct v4l2_ctrl *video_b_frames ;
   struct v4l2_ctrl *video_gop_size ;
};
struct __anonstruct____missing_field_name_249 {
   struct v4l2_ctrl *stream_type ;
   struct v4l2_ctrl *video_encoding ;
   struct v4l2_ctrl *video_bitrate_mode ;
   struct v4l2_ctrl *video_bitrate ;
   struct v4l2_ctrl *video_bitrate_peak ;
};
struct __anonstruct____missing_field_name_250 {
   struct v4l2_ctrl *video_mute ;
   struct v4l2_ctrl *video_mute_yuv ;
};
struct __anonstruct____missing_field_name_251 {
   struct v4l2_ctrl *video_spatial_filter_mode ;
   struct v4l2_ctrl *video_temporal_filter_mode ;
   struct v4l2_ctrl *video_median_filter_type ;
};
struct __anonstruct____missing_field_name_252 {
   struct v4l2_ctrl *video_luma_spatial_filter_type ;
   struct v4l2_ctrl *video_chroma_spatial_filter_type ;
};
struct __anonstruct____missing_field_name_253 {
   struct v4l2_ctrl *video_spatial_filter ;
   struct v4l2_ctrl *video_temporal_filter ;
};
struct __anonstruct____missing_field_name_254 {
   struct v4l2_ctrl *video_luma_median_filter_top ;
   struct v4l2_ctrl *video_luma_median_filter_bottom ;
   struct v4l2_ctrl *video_chroma_median_filter_top ;
   struct v4l2_ctrl *video_chroma_median_filter_bottom ;
};
struct cx2341x_handler {
   u32 capabilities ;
   enum cx2341x_port port ;
   u16 width ;
   u16 height ;
   u16 is_50hz ;
   u32 audio_properties ;
   struct v4l2_ctrl_handler hdl ;
   void *priv ;
   int (*func)(void * , u32 , int , int , u32 * ) ;
   struct cx2341x_handler_ops const *ops ;
   struct v4l2_ctrl *stream_vbi_fmt ;
   struct __anonstruct____missing_field_name_247 __annonCompField89 ;
   struct __anonstruct____missing_field_name_248 __annonCompField90 ;
   struct __anonstruct____missing_field_name_249 __annonCompField91 ;
   struct __anonstruct____missing_field_name_250 __annonCompField92 ;
   struct __anonstruct____missing_field_name_251 __annonCompField93 ;
   struct __anonstruct____missing_field_name_252 __annonCompField94 ;
   struct __anonstruct____missing_field_name_253 __annonCompField95 ;
   struct __anonstruct____missing_field_name_254 __annonCompField96 ;
};
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_260 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_260 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct __anonstruct_sync_serial_settings_261 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_261 sync_serial_settings;
struct __anonstruct_te1_settings_262 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_262 te1_settings;
struct __anonstruct_raw_hdlc_proto_263 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_263 raw_hdlc_proto;
struct __anonstruct_fr_proto_264 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_264 fr_proto;
struct __anonstruct_fr_proto_pvc_265 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_265 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_266 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_266 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_267 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_267 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_268 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_268 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_269 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_270 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_269 ifr_ifrn ;
   union __anonunion_ifr_ifru_270 ifr_ifru ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[97U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports sysctl_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   kgid_t sysctl_ping_group_range[2U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t rt_genid ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   u8 gencursor ;
   u8 genctr ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   spinlock_t xfrm_policy_sk_bundle_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
   struct callback_head rcu ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   unsigned long flags ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup_name {
   struct callback_head callback_head ;
   char name[] ;
};
struct cgroup {
   unsigned long flags ;
   int id ;
   int nr_css ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   u64 serial_nr ;
   struct cgroup_name *name ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct list_head cset_links ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct cgroup_subsys_state dummy_css ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
   struct simple_xattrs xattrs ;
};
struct cgroupfs_root {
   struct super_block *sb ;
   unsigned long subsys_mask ;
   int hierarchy_id ;
   struct cgroup top_cgroup ;
   int number_of_cgroups ;
   struct list_head root_list ;
   unsigned long flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cgrp_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup_subsys_state * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup_subsys_state * , unsigned int ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int subsys_id ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
   __u32 linkstate ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_port_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
};
enum ldv_31452 {
    NETREG_UNINITIALIZED = 0,
    NETREG_REGISTERED = 1,
    NETREG_UNREGISTERING = 2,
    NETREG_UNREGISTERED = 3,
    NETREG_RELEASED = 4,
    NETREG_DUMMY = 5
} ;
enum ldv_31453 {
    RTNL_LINK_INITIALIZED = 0,
    RTNL_LINK_INITIALIZING = 1
} ;
struct __anonstruct_adj_list_297 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_298 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_299 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct __anonstruct_adj_list_297 adj_list ;
   struct __anonstruct_all_adj_list_298 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   enum ldv_31452 reg_state : 8 ;
   bool dismantle ;
   enum ldv_31453 rtnl_link_state : 16 ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion____missing_field_name_299 __annonCompField99 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct ipv4_devconf {
   void *sysctl ;
   int data[28U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_MULTISTREAM = 67108864,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = 2147483648U
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11,
    FEC_2_5 = 12
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12,
    QAM_4_NR = 13
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6,
    TRANSMISSION_MODE_C1 = 7,
    TRANSMISSION_MODE_C3780 = 8
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7,
    GUARD_INTERVAL_PN420 = 8,
    GUARD_INTERVAL_PN595 = 9,
    GUARD_INTERVAL_PN945 = 10
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_interleaving {
    INTERLEAVING_NONE = 0,
    INTERLEAVING_AUTO = 1,
    INTERLEAVING_240 = 2,
    INTERLEAVING_720 = 3
} ;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DTMB = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
union __anonunion____missing_field_name_303 {
   __u64 uvalue ;
   __s64 svalue ;
};
struct dtv_stats {
   __u8 scale ;
   union __anonunion____missing_field_name_303 __annonCompField100 ;
};
struct dtv_fe_stats {
   __u8 len ;
   struct dtv_stats stat[4U] ;
};
struct __anonstruct_buffer_305 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_304 {
   __u32 data ;
   struct dtv_fe_stats st ;
   struct __anonstruct_buffer_305 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_304 u ;
   int result ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_lna)(struct dvb_frontend * ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_306 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_306 layer[3U] ;
   u32 stream_id ;
   u8 atscmh_fic_ver ;
   u8 atscmh_parade_id ;
   u8 atscmh_nog ;
   u8 atscmh_tnog ;
   u8 atscmh_sgn ;
   u8 atscmh_prc ;
   u8 atscmh_rs_frame_mode ;
   u8 atscmh_rs_frame_ensemble ;
   u8 atscmh_rs_code_mode_pri ;
   u8 atscmh_rs_code_mode_sec ;
   u8 atscmh_sccc_block_mode ;
   u8 atscmh_sccc_code_mode_a ;
   u8 atscmh_sccc_code_mode_b ;
   u8 atscmh_sccc_code_mode_c ;
   u8 atscmh_sccc_code_mode_d ;
   u32 lna ;
   struct dtv_fe_stats strength ;
   struct dtv_fe_stats cnr ;
   struct dtv_fe_stats pre_bit_error ;
   struct dtv_fe_stats pre_bit_count ;
   struct dtv_fe_stats post_bit_error ;
   struct dtv_fe_stats post_bit_count ;
   struct dtv_fe_stats block_error ;
   struct dtv_fe_stats block_count ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
};
struct videobuf_dvb_frontends {
   struct list_head felist ;
   struct mutex lock ;
   struct dvb_adapter adapter ;
   int active_fe_id ;
   int gate ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_310 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_310 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
enum rc_type {
    RC_TYPE_UNKNOWN = 0,
    RC_TYPE_OTHER = 1,
    RC_TYPE_LIRC = 2,
    RC_TYPE_RC5 = 3,
    RC_TYPE_RC5X = 4,
    RC_TYPE_RC5_SZ = 5,
    RC_TYPE_JVC = 6,
    RC_TYPE_SONY12 = 7,
    RC_TYPE_SONY15 = 8,
    RC_TYPE_SONY20 = 9,
    RC_TYPE_NEC = 10,
    RC_TYPE_SANYO = 11,
    RC_TYPE_MCE_KBD = 12,
    RC_TYPE_RC6_0 = 13,
    RC_TYPE_RC6_6A_20 = 14,
    RC_TYPE_RC6_6A_24 = 15,
    RC_TYPE_RC6_6A_32 = 16,
    RC_TYPE_RC6_MCE = 17
} ;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   enum rc_type rc_type ;
   char const *name ;
   spinlock_t lock ;
};
enum rc_driver_type {
    RC_DRIVER_SCANCODE = 0,
    RC_DRIVER_IR_RAW = 1
} ;
struct ir_raw_event_ctrl;
struct rc_dev {
   struct device dev ;
   char const *input_name ;
   char const *input_phys ;
   struct input_id input_id ;
   char *driver_name ;
   char const *map_name ;
   struct rc_map rc_map ;
   struct mutex lock ;
   unsigned long devno ;
   struct ir_raw_event_ctrl *raw ;
   struct input_dev *input_dev ;
   enum rc_driver_type driver_type ;
   bool idle ;
   u64 allowed_protos ;
   u64 enabled_protocols ;
   u32 users ;
   u32 scanmask ;
   void *priv ;
   spinlock_t keylock ;
   bool keypressed ;
   unsigned long keyup_jiffies ;
   struct timer_list timer_keyup ;
   u32 last_keycode ;
   u32 last_scancode ;
   u8 last_toggle ;
   u32 timeout ;
   u32 min_timeout ;
   u32 max_timeout ;
   u32 rx_resolution ;
   u32 tx_resolution ;
   int (*change_protocol)(struct rc_dev * , u64 * ) ;
   int (*open)(struct rc_dev * ) ;
   void (*close)(struct rc_dev * ) ;
   int (*s_tx_mask)(struct rc_dev * , u32 ) ;
   int (*s_tx_carrier)(struct rc_dev * , u32 ) ;
   int (*s_tx_duty_cycle)(struct rc_dev * , u32 ) ;
   int (*s_rx_carrier_range)(struct rc_dev * , u32 , u32 ) ;
   int (*tx_ir)(struct rc_dev * , unsigned int * , unsigned int ) ;
   void (*s_idle)(struct rc_dev * , bool ) ;
   int (*s_learning_mode)(struct rc_dev * , int ) ;
   int (*s_carrier_report)(struct rc_dev * , int ) ;
};
struct IR_i2c;
struct IR_i2c {
   char *ir_codes ;
   struct i2c_client *c ;
   struct rc_dev *rc ;
   unsigned char old ;
   u32 polling_interval ;
   struct delayed_work work ;
   char name[32U] ;
   char phys[32U] ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
};
enum ir_kbd_get_key_fn {
    IR_KBD_GET_KEY_CUSTOM = 0,
    IR_KBD_GET_KEY_PIXELVIEW = 1,
    IR_KBD_GET_KEY_HAUP = 2,
    IR_KBD_GET_KEY_KNC1 = 3,
    IR_KBD_GET_KEY_FUSIONHDTV = 4,
    IR_KBD_GET_KEY_HAUP_XVR = 5,
    IR_KBD_GET_KEY_AVERMEDIA_CARDBUS = 6
} ;
struct IR_i2c_init_data {
   char *ir_codes ;
   char const *name ;
   u64 type ;
   u32 polling_interval ;
   int (*get_key)(struct IR_i2c * , u32 * , u32 * ) ;
   enum ir_kbd_get_key_fn internal_get_key_func ;
   struct rc_dev *rc_dev ;
};
struct wm8775_platform_data {
   bool is_nova_s ;
};
struct btcx_riscmem {
   unsigned int size ;
   __le32 *cpu ;
   __le32 *jmp ;
   dma_addr_t dma ;
};
enum cx88_board_type {
    CX88_BOARD_NONE = 0,
    CX88_MPEG_DVB = 1,
    CX88_MPEG_BLACKBIRD = 2
} ;
struct cx8800_fmt {
   char const *name ;
   u32 fourcc ;
   int depth ;
   int flags ;
   u32 cxformat ;
};
struct sram_channel {
   char const *name ;
   u32 cmds_start ;
   u32 ctrl_start ;
   u32 cdt ;
   u32 fifo_start ;
   u32 fifo_size ;
   u32 ptr1_reg ;
   u32 ptr2_reg ;
   u32 cnt1_reg ;
   u32 cnt2_reg ;
};
enum cx88_itype {
    CX88_VMUX_COMPOSITE1 = 1,
    CX88_VMUX_COMPOSITE2 = 2,
    CX88_VMUX_COMPOSITE3 = 3,
    CX88_VMUX_COMPOSITE4 = 4,
    CX88_VMUX_SVIDEO = 5,
    CX88_VMUX_TELEVISION = 6,
    CX88_VMUX_CABLE = 7,
    CX88_VMUX_DVB = 8,
    CX88_VMUX_DEBUG = 9,
    CX88_RADIO = 10
} ;
struct cx88_input {
   enum cx88_itype type ;
   u32 gpio0 ;
   u32 gpio1 ;
   u32 gpio2 ;
   u32 gpio3 ;
   unsigned int vmux : 2 ;
   unsigned int audioroute : 4 ;
};
enum cx88_audio_chip {
    CX88_AUDIO_WM8775 = 1,
    CX88_AUDIO_TVAUDIO = 2
} ;
struct cx88_board {
   char const *name ;
   unsigned int tuner_type ;
   unsigned int radio_type ;
   unsigned char tuner_addr ;
   unsigned char radio_addr ;
   int tda9887_conf ;
   struct cx88_input input[8U] ;
   struct cx88_input radio ;
   enum cx88_board_type mpeg ;
   enum cx88_audio_chip audio_chip ;
   int num_frontends ;
   int i2sinputcntl ;
};
enum cx88_tvaudio {
    WW_NONE = 1,
    WW_BTSC = 2,
    WW_BG = 3,
    WW_DK = 4,
    WW_I = 5,
    WW_L = 6,
    WW_EIAJ = 7,
    WW_I2SPT = 8,
    WW_FM = 9,
    WW_I2SADC = 10,
    WW_M = 11
} ;
struct cx88_buffer {
   struct videobuf_buffer vb ;
   unsigned int bpl ;
   struct btcx_riscmem risc ;
   struct cx8800_fmt const *fmt ;
   u32 count ;
};
struct cx88_dmaqueue {
   struct list_head active ;
   struct list_head queued ;
   struct timer_list timeout ;
   struct btcx_riscmem stopper ;
   u32 count ;
};
struct cx88_IR;
struct cx8802_dev;
struct cx88_core {
   struct list_head devlist ;
   atomic_t refcount ;
   int nr ;
   char name[32U] ;
   u32 model ;
   int pci_bus ;
   int pci_slot ;
   u32 *lmmio ;
   u8 *bmmio ;
   u32 shadow[3U] ;
   int pci_irqmask ;
   struct i2c_adapter i2c_adap ;
   struct i2c_algo_bit_data i2c_algo ;
   struct i2c_client i2c_client ;
   u32 i2c_state ;
   u32 i2c_rc ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_ctrl_handler video_hdl ;
   struct v4l2_ctrl *chroma_agc ;
   struct v4l2_ctrl_handler audio_hdl ;
   struct v4l2_subdev *sd_wm8775 ;
   struct i2c_client *i2c_rtc ;
   unsigned int boardnr ;
   struct cx88_board board ;
   unsigned int tuner_formats ;
   int (*prev_set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   void (*gate_ctrl)(struct cx88_core * , int ) ;
   struct task_struct *kthread ;
   v4l2_std_id tvnorm ;
   enum cx88_tvaudio tvaudio ;
   u32 audiomode_manual ;
   u32 audiomode_current ;
   u32 input ;
   u32 last_analog_input ;
   u32 astat ;
   u32 use_nicam ;
   unsigned long last_change ;
   struct cx88_IR *ir ;
   struct IR_i2c_init_data init_data ;
   struct wm8775_platform_data wm8775_data ;
   struct mutex lock ;
   u32 freq ;
   int users ;
   int mpeg_users ;
   struct cx8802_dev *dvbdev ;
   enum cx88_board_type active_type_id ;
   int active_ref ;
   int active_fe_id ;
};
struct cx8800_dev;
struct cx8800_fh {
   struct v4l2_fh fh ;
   struct cx8800_dev *dev ;
   unsigned int resources ;
   struct videobuf_queue vidq ;
   struct videobuf_queue vbiq ;
};
struct cx8800_suspend_state {
   int disabled ;
};
struct cx8800_dev {
   struct cx88_core *core ;
   spinlock_t slock ;
   unsigned int resources ;
   struct video_device *video_dev ;
   struct video_device *vbi_dev ;
   struct video_device *radio_dev ;
   struct pci_dev *pci ;
   unsigned char pci_rev ;
   unsigned char pci_lat ;
   struct cx8800_fmt const *fmt ;
   unsigned int width ;
   unsigned int height ;
   struct cx88_dmaqueue vidq ;
   struct cx88_dmaqueue vbiq ;
   struct cx8800_suspend_state state ;
};
struct cx8802_suspend_state {
   int disabled ;
};
struct vp3054_i2c_state;
struct cx8802_dev {
   struct cx88_core *core ;
   spinlock_t slock ;
   struct pci_dev *pci ;
   unsigned char pci_rev ;
   unsigned char pci_lat ;
   struct cx88_dmaqueue mpegq ;
   u32 ts_packet_size ;
   u32 ts_packet_count ;
   struct cx8802_suspend_state state ;
   struct list_head devlist ;
   struct video_device *mpeg_dev ;
   u32 mailbox ;
   int width ;
   int height ;
   unsigned char mpeg_active ;
   struct cx2341x_handler cxhdl ;
   struct videobuf_dvb_frontends frontends ;
   struct vp3054_i2c_state *vp3054 ;
   unsigned char ts_gen_cntrl ;
   struct list_head drvlist ;
   struct work_struct request_module_wk ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct cx88_ctrl {
   u32 id ;
   s32 minimum ;
   s32 maximum ;
   u32 step ;
   s32 default_value ;
   u32 off ;
   u32 reg ;
   u32 sreg ;
   u32 mask ;
   u32 shift ;
};
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
enum hrtimer_restart;
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
void *ldv_dev_get_drvdata(struct device const *dev ) ;
int ldv_dev_set_drvdata(struct device *dev , void *data ) ;
long ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
static void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock_of_cx88_core(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_cx88_core(struct mutex *lock ) ;
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern void *external_allocated_data(void) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern struct module __this_module ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static long IS_ERR(void const *ptr ) ;
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
static void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField19.rlock);
  }
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int del_timer(struct timer_list * ) ;
static int ldv_del_timer_58(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_59(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
static int ldv_mod_timer_37(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_38(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_39(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_12(struct device const *dev ) ;
static void *ldv_dev_get_drvdata_20(struct device const *dev ) ;
static int ldv_dev_set_drvdata_13(struct device *dev , void *data ) ;
static int ldv_dev_set_drvdata_21(struct device *dev , void *data ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_60(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_61(struct pci_driver *ldv_func_arg1 ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int dma_supported(struct device * , u64 ) ;
__inline static int pci_dma_supported(struct pci_dev *hwdev , u64 mask )
{
  int tmp ;
  {
  {
  tmp = dma_supported((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                      mask);
  }
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_12((struct device const *)(& pdev->dev));
  }
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_13(& pdev->dev, data);
  }
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
extern int __request_module(bool , char const * , ...) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_52(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_55(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_57(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void msleep(unsigned int ) ;
extern int wake_up_process(struct task_struct * ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern struct i2c_client *i2c_new_device(struct i2c_adapter * , struct i2c_board_info const * ) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern void video_device_release(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata_20((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  {
  ldv_dev_set_drvdata_21(& vdev->dev, data);
  }
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  }
  return (tmp___0);
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  }
  return (tmp);
}
}
__inline static int video_is_registered(struct video_device *vdev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& vdev->flags));
  }
  return (tmp);
}
}
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device * , struct i2c_adapter * ,
                                                     struct i2c_board_info * , unsigned short const * ) ;
extern void v4l_bound_align_image(unsigned int * , unsigned int , unsigned int ,
                                  unsigned int , unsigned int * , unsigned int ,
                                  unsigned int , unsigned int , unsigned int ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern void v4l2_fh_del(struct v4l2_fh * ) ;
extern void v4l2_fh_exit(struct v4l2_fh * ) ;
extern int videobuf_iolock(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
extern void videobuf_queue_cancel(struct videobuf_queue * ) ;
extern int videobuf_reqbufs(struct videobuf_queue * , struct v4l2_requestbuffers * ) ;
extern int videobuf_querybuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_qbuf(struct videobuf_queue * , struct v4l2_buffer * ) ;
extern int videobuf_dqbuf(struct videobuf_queue * , struct v4l2_buffer * , int ) ;
extern int videobuf_streamon(struct videobuf_queue * ) ;
extern int videobuf_streamoff(struct videobuf_queue * ) ;
extern void videobuf_stop(struct videobuf_queue * ) ;
extern ssize_t videobuf_read_stream(struct videobuf_queue * , char * , size_t , loff_t * ,
                                    int , int ) ;
extern ssize_t videobuf_read_one(struct videobuf_queue * , char * , size_t , loff_t * ,
                                 int ) ;
extern unsigned int videobuf_poll_stream(struct file * , struct videobuf_queue * ,
                                         poll_table * ) ;
extern int videobuf_mmap_free(struct videobuf_queue * ) ;
extern int videobuf_mmap_mapper(struct videobuf_queue * , struct vm_area_struct * ) ;
extern struct videobuf_dmabuf *videobuf_to_dma(struct videobuf_buffer * ) ;
extern void videobuf_queue_sg_init(struct videobuf_queue * , struct videobuf_queue_ops const * ,
                                   struct device * , spinlock_t * , enum v4l2_buf_type ,
                                   enum v4l2_field , unsigned int , void * , struct mutex * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern int v4l2_ctrl_add_handler(struct v4l2_ctrl_handler * , struct v4l2_ctrl_handler * ,
                                 bool (*)(struct v4l2_ctrl const * ) ) ;
extern struct v4l2_ctrl *v4l2_ctrl_find(struct v4l2_ctrl_handler * , u32 ) ;
extern int v4l2_ctrl_s_ctrl(struct v4l2_ctrl * , s32 ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
extern void btcx_riscmem_free(struct pci_dev * , struct btcx_riscmem * ) ;
__inline static unsigned int norm_maxw(v4l2_std_id norm )
{
  {
  return ((norm & 45824ULL) != 0ULL ? 720U : 768U);
}
}
__inline static unsigned int norm_maxh(v4l2_std_id norm )
{
  {
  return ((norm & 16713471ULL) != 0ULL ? 576U : 480U);
}
}
extern struct sram_channel const cx88_sram_channels[] ;
extern void cx88_print_irqbits(char const * , char const * , char const ** ,
                               int , u32 , u32 ) ;
extern int cx88_core_irq(struct cx88_core * , u32 ) ;
extern void cx88_wakeup(struct cx88_core * , struct cx88_dmaqueue * , u32 ) ;
extern void cx88_shutdown(struct cx88_core * ) ;
extern int cx88_reset(struct cx88_core * ) ;
extern int cx88_risc_buffer(struct pci_dev * , struct btcx_riscmem * , struct scatterlist * ,
                            unsigned int , unsigned int , unsigned int , unsigned int ,
                            unsigned int ) ;
extern int cx88_risc_stopper(struct pci_dev * , struct btcx_riscmem * , u32 , u32 ,
                             u32 ) ;
extern void cx88_free_buffer(struct videobuf_queue * , struct cx88_buffer * ) ;
extern int cx88_sram_channel_setup(struct cx88_core * , struct sram_channel const * ,
                                   unsigned int , u32 ) ;
extern void cx88_sram_channel_dump(struct cx88_core * , struct sram_channel const * ) ;
extern int cx88_set_scale(struct cx88_core * , unsigned int , unsigned int , enum v4l2_field ) ;
extern int cx88_set_tvnorm(struct cx88_core * , v4l2_std_id ) ;
extern struct video_device *cx88_vdev_init(struct cx88_core * , struct pci_dev * ,
                                           struct video_device const * , char const * ) ;
extern struct cx88_core *cx88_core_get(struct pci_dev * ) ;
extern void cx88_core_put(struct cx88_core * , struct pci_dev * ) ;
int cx8800_vbi_fmt(struct file *file , void *priv , struct v4l2_format *f ) ;
int cx8800_stop_vbi_dma(struct cx8800_dev *dev ) ;
int cx8800_restart_vbi_queue(struct cx8800_dev *dev , struct cx88_dmaqueue *q ) ;
void cx8800_vbi_timeout(unsigned long data ) ;
struct videobuf_queue_ops const cx8800_vbi_qops ;
extern void cx88_set_tvaudio(struct cx88_core * ) ;
extern void cx88_newstation(struct cx88_core * ) ;
extern void cx88_get_stereo(struct cx88_core * , struct v4l2_tuner * ) ;
extern void cx88_set_stereo(struct cx88_core * , u32 , int ) ;
extern int cx88_audio_thread(void * ) ;
extern int cx88_ir_start(struct cx88_core * ) ;
extern void cx88_ir_stop(struct cx88_core * ) ;
int cx88_enum_input(struct cx88_core *core , struct v4l2_input *i ) ;
int cx88_set_freq(struct cx88_core *core , struct v4l2_frequency const *f ) ;
int cx88_video_mux(struct cx88_core *core , unsigned int input ) ;
void cx88_querycap(struct file *file , struct cx88_core *core , struct v4l2_capability *cap ) ;
extern char const *v4l2_type_names[] ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
static unsigned int video_nr[8U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int vbi_nr[8U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int radio_nr[8U] =
  { 4294967295U, 4294967295U, 4294967295U, 4294967295U,
        4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int video_debug ;
static unsigned int irq_debug ;
static unsigned int vid_limit = 16U;
static struct cx8800_fmt const formats[10U] =
  { {"8 bpp, gray", 1497715271U, 8, 1, 102U},
        {"15 bpp RGB, le", 1329743698U, 16, 1, 51U},
        {"15 bpp RGB, be", 1363298130U, 16, 1, 819U},
        {"16 bpp RGB, le", 1346520914U, 16, 1, 34U},
        {"16 bpp RGB, be", 1380075346U, 16, 1, 802U},
        {"24 bpp RGB, le", 861030210U, 24, 1, 17U},
        {"32 bpp RGB, le", 877807426U, 32, 1, 0U},
        {"32 bpp RGB, be", 876758866U, 32, 1, 3840U},
        {"4:2:2, packed, YUYV", 1448695129U, 16, 1, 68U},
        {"4:2:2, packed, UYVY", 1498831189U, 16, 1, 836U}};
static struct cx8800_fmt const *format_by_fourcc(unsigned int fourcc )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_50160;
  ldv_50159: ;
  if ((unsigned int )formats[i].fourcc == fourcc) {
    return ((struct cx8800_fmt const *)(& formats) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_50160: ;
  if (i <= 9U) {
    goto ldv_50159;
  } else {
  }
  return ((struct cx8800_fmt const *)0);
}
}
static struct cx88_ctrl const cx8800_vid_ctls[8U] =
  { {9963776U, 0, 255, 1U, 127, 128U, 3211536U, 0U, 255U, 0U},
        {9963777U, 0, 255, 1U, 63, 0U, 3211536U, 0U, 65280U, 8U},
        {9963779U, 0, 255, 1U, 127, 128U, 3211544U, 0U, 255U, 0U},
        {9963778U, 0, 255, 1U, 127, 0U, 3211540U, 0U, 255U, 0U},
        {9963803U, 0, 4, 1U, 0, 0U, 3211616U, 0U, 896U, 7U},
        {9963805U, 0, 1, 0U, 1, 0U, 3211524U, 0U, 1024U, 10U},
        {9963806U, 0, 1, 0U, 1, 0U, 3211524U, 0U, 512U, 9U},
        {9963809U, 0, 1, 1U, 0, 0U, 3211552U, 0U, 6144U, 11U}};
static struct cx88_ctrl const cx8800_aud_ctls[3U] = { {9963785U, 0, 1, 0U, 1, 0U, 3278228U, 1U, 64U, 6U},
        {9963781U, 0, 63, 1U, 63, 0U, 3278228U, 1U, 63U, 0U},
        {9963782U, 0, 127, 1U, 64, 0U, 3278232U, 2U, 127U, 0U}};
static int res_get(struct cx8800_dev *dev , struct cx8800_fh *fh , unsigned int bit )
{
  struct cx88_core *core ;
  {
  core = dev->core;
  if ((fh->resources & bit) != 0U) {
    return (1);
  } else {
  }
  {
  ldv_mutex_lock_32(& core->lock);
  }
  if ((dev->resources & bit) != 0U) {
    {
    ldv_mutex_unlock_33(& core->lock);
    }
    return (0);
  } else {
  }
  fh->resources = fh->resources | bit;
  dev->resources = dev->resources | bit;
  if (video_debug != 0U) {
    {
    printk("\017%s/0: res: get %d\n", (char *)(& core->name), bit);
    }
  } else {
  }
  {
  ldv_mutex_unlock_34(& core->lock);
  }
  return (1);
}
}
static int res_check(struct cx8800_fh *fh , unsigned int bit )
{
  {
  return ((int )(fh->resources & bit));
}
}
static int res_locked(struct cx8800_dev *dev , unsigned int bit )
{
  {
  return ((int )(dev->resources & bit));
}
}
static void res_free(struct cx8800_dev *dev , struct cx8800_fh *fh , unsigned int bits )
{
  struct cx88_core *core ;
  long tmp ;
  {
  {
  core = dev->core;
  tmp = ldv__builtin_expect((fh->resources & bits) != bits, 0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx88/cx88-video.c"),
                         "i" (341), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  {
  ldv_mutex_lock_35(& core->lock);
  fh->resources = fh->resources & ~ bits;
  dev->resources = dev->resources & ~ bits;
  }
  if (video_debug != 0U) {
    {
    printk("\017%s/0: res: put %d\n", (char *)(& core->name), bits);
    }
  } else {
  }
  {
  ldv_mutex_unlock_36(& core->lock);
  }
  return;
}
}
int cx88_video_mux(struct cx88_core *core , unsigned int input )
{
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  unsigned int tmp___7 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned int tmp___8 ;
  {
  if (video_debug != 0U) {
    {
    printk("\017%s/0: video_mux: %d [vmux=%d,gpio=0x%x,0x%x,0x%x,0x%x]\n", (char *)(& core->name),
           input, (int )core->board.input[input].vmux, core->board.input[input].gpio0,
           core->board.input[input].gpio1, core->board.input[input].gpio2, core->board.input[input].gpio3);
    }
  } else {
  }
  {
  core->input = input;
  tmp = readl((void const volatile *)core->lmmio + 802881U);
  writel((tmp & 4294918143U) | ((unsigned int )((int )core->board.input[input].vmux << 14) & 65535U),
         (void volatile *)core->lmmio + 802881U);
  writel(core->board.input[input].gpio3, (void volatile *)core->lmmio + 868359U);
  writel(core->board.input[input].gpio0, (void volatile *)core->lmmio + 868356U);
  writel(core->board.input[input].gpio1, (void volatile *)core->lmmio + 868357U);
  writel(core->board.input[input].gpio2, (void volatile *)core->lmmio + 868358U);
  }
  {
  if ((unsigned int )core->board.input[input].type == 5U) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_5:
  {
  tmp___0 = readl((void const volatile *)core->lmmio + 880659U);
  writel(tmp___0 | 1U, (void volatile *)core->lmmio + 880659U);
  tmp___1 = readl((void const volatile *)core->lmmio + 802881U);
  writel(tmp___1 | 65552U, (void volatile *)core->lmmio + 802881U);
  tmp___2 = readl((void const volatile *)core->lmmio + 802903U);
  writel(tmp___2 | 8224U, (void volatile *)core->lmmio + 802903U);
  tmp___3 = readl((void const volatile *)core->lmmio + 802904U);
  writel(tmp___3 | 8224U, (void volatile *)core->lmmio + 802904U);
  }
  goto ldv_50207;
  switch_default:
  {
  tmp___4 = readl((void const volatile *)core->lmmio + 880659U);
  writel(tmp___4 & 4294967294U, (void volatile *)core->lmmio + 880659U);
  tmp___5 = readl((void const volatile *)core->lmmio + 802881U);
  writel(tmp___5 & 4294901743U, (void volatile *)core->lmmio + 802881U);
  tmp___6 = readl((void const volatile *)core->lmmio + 802903U);
  writel(tmp___6 & 4294959071U, (void volatile *)core->lmmio + 802903U);
  tmp___7 = readl((void const volatile *)core->lmmio + 802904U);
  writel(tmp___7 & 4294959071U, (void volatile *)core->lmmio + 802904U);
  }
  goto ldv_50207;
  switch_break: ;
  }
  ldv_50207: ;
  if (core->board.input[input].audioroute != 0U) {
    if ((unsigned long )core->sd_wm8775 != (unsigned long )((struct v4l2_subdev *)0)) {
      if (core->i2c_rc == 0U) {
        if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                          int ))0)) {
          {
          (*(core->gate_ctrl))(core, 1);
          }
        } else {
        }
        __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
        __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
        goto ldv_50215;
        ldv_50214: ;
        if ((unsigned long )(__sd->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                      u32 ,
                                                                                                                                                                                                                      u32 ,
                                                                                                                                                                                                                      u32 ))0)) {
          {
          (*(((__sd->ops)->audio)->s_routing))(__sd, core->board.input[input].audioroute,
                                               0U, 0U);
          }
        } else {
        }
        __mptr___0 = (struct list_head const *)__sd->list.next;
        __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
        ldv_50215: ;
        if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
          goto ldv_50214;
        } else {
        }
        if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                          int ))0)) {
          {
          (*(core->gate_ctrl))(core, 0);
          }
        } else {
        }
      } else {
      }
    } else {
    }
    if ((unsigned int )core->board.input[input].type - 6U > 1U) {
      {
      core->tvaudio = 10;
      cx88_set_tvaudio(core);
      }
    } else {
      {
      writel(0U, (void volatile *)core->lmmio + 819579U);
      tmp___8 = readl((void const volatile *)core->lmmio + 819555U);
      writel(tmp___8 & 4294934527U, (void volatile *)core->lmmio + 819555U);
      }
    }
  } else {
  }
  return (0);
}
}
static char const __kstrtab_cx88_video_mux[15U] =
  { 'c', 'x', '8', '8',
        '_', 'v', 'i', 'd',
        'e', 'o', '_', 'm',
        'u', 'x', '\000'};
struct kernel_symbol const __ksymtab_cx88_video_mux ;
struct kernel_symbol const __ksymtab_cx88_video_mux = {(unsigned long )(& cx88_video_mux), (char const *)(& __kstrtab_cx88_video_mux)};
static int start_video_dma(struct cx8800_dev *dev , struct cx88_dmaqueue *q , struct cx88_buffer *buf )
{
  struct cx88_core *core ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  {
  {
  core = dev->core;
  cx88_sram_channel_setup(core, (struct sram_channel const *)(& cx88_sram_channels),
                          buf->bpl, (u32 )buf->risc.dma);
  cx88_set_scale(core, buf->vb.width, buf->vb.height, buf->vb.field);
  writel((unsigned int )(buf->fmt)->cxformat | 4096U, (void volatile *)core->lmmio + 802913U);
  writel(3U, (void volatile *)core->lmmio + 815116U);
  q->count = 1U;
  tmp = readl((void const volatile *)core->lmmio + 524304U);
  writel(((tmp & (unsigned int )(~ (core->pci_irqmask | 1))) | (unsigned int )core->pci_irqmask) | 1U,
         (void volatile *)core->lmmio + 524304U);
  tmp___0 = readl((void const volatile *)core->lmmio + 524308U);
  writel(tmp___0 | 983057U, (void volatile *)core->lmmio + 524308U);
  tmp___1 = readl((void const volatile *)core->lmmio + 802912U);
  writel(tmp___1 | 6U, (void volatile *)core->lmmio + 802912U);
  tmp___2 = readl((void const volatile *)core->lmmio + 524301U);
  writel(tmp___2 | 32U, (void volatile *)core->lmmio + 524301U);
  tmp___3 = readl((void const volatile *)core->lmmio + 815120U);
  writel(tmp___3 | 17U, (void volatile *)core->lmmio + 815120U);
  }
  return (0);
}
}
static int stop_video_dma(struct cx8800_dev *dev )
{
  struct cx88_core *core ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  core = dev->core;
  tmp = readl((void const volatile *)core->lmmio + 815120U);
  writel(tmp & 4294967278U, (void volatile *)core->lmmio + 815120U);
  tmp___0 = readl((void const volatile *)core->lmmio + 802912U);
  writel(tmp___0 & 4294967289U, (void volatile *)core->lmmio + 802912U);
  tmp___1 = readl((void const volatile *)core->lmmio + 524304U);
  writel(tmp___1 & 4294967294U, (void volatile *)core->lmmio + 524304U);
  tmp___2 = readl((void const volatile *)core->lmmio + 524308U);
  writel(tmp___2 & 4293984238U, (void volatile *)core->lmmio + 524308U);
  }
  return (0);
}
}
static int restart_video_queue(struct cx8800_dev *dev , struct cx88_dmaqueue *q )
{
  struct cx88_core *core ;
  struct cx88_buffer *buf ;
  struct cx88_buffer *prev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  u32 tmp ;
  struct list_head const *__mptr___1 ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___2 ;
  u32 tmp___3 ;
  unsigned long tmp___4 ;
  u32 tmp___5 ;
  {
  {
  core = dev->core;
  tmp___1 = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp___1 == 0) {
    __mptr = (struct list_head const *)q->active.next;
    buf = (struct cx88_buffer *)__mptr + 0xffffffffffffffc8UL;
    if (video_debug > 1U) {
      {
      printk("\017%s/0: restart_queue [%p/%d]: restart dma\n", (char *)(& core->name),
             buf, buf->vb.i);
      }
    } else {
    }
    {
    start_video_dma(dev, q, buf);
    __mptr___0 = (struct list_head const *)q->active.next;
    buf = (struct cx88_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
    }
    goto ldv_50249;
    ldv_50248:
    tmp = q->count;
    q->count = q->count + 1U;
    buf->count = tmp;
    __mptr___1 = (struct list_head const *)buf->vb.queue.next;
    buf = (struct cx88_buffer *)__mptr___1 + 0xffffffffffffffc8UL;
    ldv_50249: ;
    if ((unsigned long )(& buf->vb.queue) != (unsigned long )(& q->active)) {
      goto ldv_50248;
    } else {
    }
    {
    tmp___0 = msecs_to_jiffies(2000U);
    ldv_mod_timer_37(& q->timeout, (unsigned long )jiffies + tmp___0);
    }
    return (0);
  } else {
  }
  prev = (struct cx88_buffer *)0;
  ldv_50253:
  {
  tmp___2 = list_empty((struct list_head const *)(& q->queued));
  }
  if (tmp___2 != 0) {
    return (0);
  } else {
  }
  __mptr___2 = (struct list_head const *)q->queued.next;
  buf = (struct cx88_buffer *)__mptr___2 + 0xffffffffffffffc8UL;
  if ((unsigned long )prev == (unsigned long )((struct cx88_buffer *)0)) {
    {
    list_move_tail(& buf->vb.queue, & q->active);
    start_video_dma(dev, q, buf);
    buf->vb.state = 3;
    tmp___3 = q->count;
    q->count = q->count + 1U;
    buf->count = tmp___3;
    tmp___4 = msecs_to_jiffies(2000U);
    ldv_mod_timer_38(& q->timeout, (unsigned long )jiffies + tmp___4);
    }
    if (video_debug > 1U) {
      {
      printk("\017%s/0: [%p/%d] restart_queue - first active\n", (char *)(& core->name),
             buf, buf->vb.i);
      }
    } else {
    }
  } else
  if (*((unsigned long *)prev + 1UL) == *((unsigned long *)buf + 1UL) && (unsigned long )prev->fmt == (unsigned long )buf->fmt) {
    {
    list_move_tail(& buf->vb.queue, & q->active);
    buf->vb.state = 3;
    tmp___5 = q->count;
    q->count = q->count + 1U;
    buf->count = tmp___5;
    *(prev->risc.jmp + 1UL) = (unsigned int )buf->risc.dma;
    }
    if (video_debug > 1U) {
      {
      printk("\017%s/0: [%p/%d] restart_queue - move to active\n", (char *)(& core->name),
             buf, buf->vb.i);
      }
    } else {
    }
  } else {
    return (0);
  }
  prev = buf;
  goto ldv_50253;
}
}
static int buffer_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  {
  fh = (struct cx8800_fh *)q->priv_data;
  dev = fh->dev;
  *size = ((unsigned int )(dev->fmt)->depth * dev->width) * dev->height >> 3;
  if (*count == 0U) {
    *count = 32U;
  } else {
  }
  if (*size * *count > vid_limit * 1048576U) {
    *count = (vid_limit * 1048576U) / *size;
  } else {
  }
  return (0);
}
}
static int buffer_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb ,
                          enum v4l2_field field )
{
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  struct cx88_core *core ;
  struct cx88_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct videobuf_dmabuf *dma ;
  struct videobuf_dmabuf *tmp ;
  int rc ;
  int init_buffer ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  fh = (struct cx8800_fh *)q->priv_data;
  dev = fh->dev;
  core = dev->core;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx88_buffer *)__mptr;
  tmp = videobuf_to_dma(& buf->vb);
  dma = tmp;
  init_buffer = 0;
  tmp___0 = ldv__builtin_expect((unsigned long )dev->fmt == (unsigned long )((struct cx8800_fmt const *)0),
                             0L);
  }
  if (tmp___0 != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx88/cx88-video.c"),
                         "i" (543), "i" (12UL));
    __builtin_unreachable();
    }
  } else {
  }
  if (dev->width <= 47U) {
    return (-22);
  } else {
    {
    tmp___1 = norm_maxw(core->tvnorm);
    }
    if (dev->width > tmp___1) {
      return (-22);
    } else
    if (dev->height <= 31U) {
      return (-22);
    } else {
      {
      tmp___2 = norm_maxh(core->tvnorm);
      }
      if (dev->height > tmp___2) {
        return (-22);
      } else {
      }
    }
  }
  buf->vb.size = (unsigned long )((dev->width * dev->height) * (unsigned int )(dev->fmt)->depth >> 3);
  if (buf->vb.baddr != 0UL && buf->vb.bsize < buf->vb.size) {
    return (-22);
  } else {
  }
  if (((unsigned long )buf->fmt != (unsigned long )dev->fmt || *((unsigned long *)buf + 1UL) != *((unsigned long *)dev + 17UL)) || (unsigned int )buf->vb.field != (unsigned int )field) {
    buf->fmt = dev->fmt;
    buf->vb.width = dev->width;
    buf->vb.height = dev->height;
    buf->vb.field = field;
    init_buffer = 1;
  } else {
  }
  if ((unsigned int )buf->vb.state == 0U) {
    {
    init_buffer = 1;
    rc = videobuf_iolock(q, & buf->vb, (struct v4l2_framebuffer *)0);
    }
    if (rc != 0) {
      goto fail;
    } else {
    }
  } else {
  }
  if (init_buffer != 0) {
    buf->bpl = buf->vb.width * (unsigned int )(buf->fmt)->depth >> 3;
    {
    if ((unsigned int )buf->vb.field == 2U) {
      goto case_2;
    } else {
    }
    if ((unsigned int )buf->vb.field == 3U) {
      goto case_3;
    } else {
    }
    if ((unsigned int )buf->vb.field == 4U) {
      goto case_4;
    } else {
    }
    if ((unsigned int )buf->vb.field == 5U) {
      goto case_5;
    } else {
    }
    if ((unsigned int )buf->vb.field == 6U) {
      goto case_6;
    } else {
    }
    goto switch_default;
    case_2:
    {
    cx88_risc_buffer(dev->pci, & buf->risc, dma->sglist, 0U, 4294967295U, buf->bpl,
                     0U, buf->vb.height);
    }
    goto ldv_50277;
    case_3:
    {
    cx88_risc_buffer(dev->pci, & buf->risc, dma->sglist, 4294967295U, 0U, buf->bpl,
                     0U, buf->vb.height);
    }
    goto ldv_50277;
    case_4:
    {
    cx88_risc_buffer(dev->pci, & buf->risc, dma->sglist, 0U, buf->bpl, buf->bpl, buf->bpl,
                     buf->vb.height >> 1);
    }
    goto ldv_50277;
    case_5:
    {
    cx88_risc_buffer(dev->pci, & buf->risc, dma->sglist, 0U, buf->bpl * (buf->vb.height >> 1),
                     buf->bpl, 0U, buf->vb.height >> 1);
    }
    goto ldv_50277;
    case_6:
    {
    cx88_risc_buffer(dev->pci, & buf->risc, dma->sglist, buf->bpl * (buf->vb.height >> 1),
                     0U, buf->bpl, 0U, buf->vb.height >> 1);
    }
    goto ldv_50277;
    switch_default:
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx88/cx88-video.c"),
                         "i" (602), "i" (12UL));
    __builtin_unreachable();
    }
    switch_break: ;
    }
    ldv_50277: ;
  } else {
  }
  if (video_debug > 1U) {
    {
    printk("\017%s/0: [%p/%d] buffer_prepare - %dx%d %dbpp \"%s\" - dma=0x%08lx\n",
           (char *)(& core->name), buf, buf->vb.i, dev->width, dev->height, (dev->fmt)->depth,
           (dev->fmt)->name, (unsigned long )buf->risc.dma);
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  {
  cx88_free_buffer(q, buf);
  }
  return (rc);
}
}
static void buffer_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct cx88_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx88_buffer *prev ;
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  struct cx88_core *core ;
  struct cx88_dmaqueue *q ;
  u32 tmp ;
  unsigned long tmp___0 ;
  struct list_head const *__mptr___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx88_buffer *)__mptr;
  fh = (struct cx8800_fh *)vq->priv_data;
  dev = fh->dev;
  core = dev->core;
  q = & dev->vidq;
  *(buf->risc.jmp) = 1895890944U;
  *(buf->risc.jmp + 1UL) = (unsigned int )q->stopper.dma;
  tmp___3 = list_empty((struct list_head const *)(& q->queued));
  }
  if (tmp___3 == 0) {
    {
    list_add_tail(& buf->vb.queue, & q->queued);
    buf->vb.state = 2;
    }
    if (video_debug > 1U) {
      {
      printk("\017%s/0: [%p/%d] buffer_queue - append to queued\n", (char *)(& core->name),
             buf, buf->vb.i);
      }
    } else {
    }
  } else {
    {
    tmp___2 = list_empty((struct list_head const *)(& q->active));
    }
    if (tmp___2 != 0) {
      {
      list_add_tail(& buf->vb.queue, & q->active);
      start_video_dma(dev, q, buf);
      buf->vb.state = 3;
      tmp = q->count;
      q->count = q->count + 1U;
      buf->count = tmp;
      tmp___0 = msecs_to_jiffies(2000U);
      ldv_mod_timer_39(& q->timeout, (unsigned long )jiffies + tmp___0);
      }
      if (video_debug > 1U) {
        {
        printk("\017%s/0: [%p/%d] buffer_queue - first active\n", (char *)(& core->name),
               buf, buf->vb.i);
        }
      } else {
      }
    } else {
      __mptr___0 = (struct list_head const *)q->active.prev;
      prev = (struct cx88_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
      if (*((unsigned long *)prev + 1UL) == *((unsigned long *)buf + 1UL) && (unsigned long )prev->fmt == (unsigned long )buf->fmt) {
        {
        list_add_tail(& buf->vb.queue, & q->active);
        buf->vb.state = 3;
        tmp___1 = q->count;
        q->count = q->count + 1U;
        buf->count = tmp___1;
        *(prev->risc.jmp + 1UL) = (unsigned int )buf->risc.dma;
        }
        if (video_debug > 1U) {
          {
          printk("\017%s/0: [%p/%d] buffer_queue - append to active\n", (char *)(& core->name),
                 buf, buf->vb.i);
          }
        } else {
        }
      } else {
        {
        list_add_tail(& buf->vb.queue, & q->queued);
        buf->vb.state = 2;
        }
        if (video_debug > 1U) {
          {
          printk("\017%s/0: [%p/%d] buffer_queue - first queued\n", (char *)(& core->name),
                 buf, buf->vb.i);
          }
        } else {
        }
      }
    }
  }
  return;
}
}
static void buffer_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx88_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx88_buffer *)__mptr;
  cx88_free_buffer(q, buf);
  }
  return;
}
}
static struct videobuf_queue_ops const cx8800_video_qops = {& buffer_setup, & buffer_prepare, & buffer_queue, & buffer_release};
static struct videobuf_queue *get_queue(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx8800_fh *fh ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct cx8800_fh *)file->private_data;
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (& fh->vidq);
  case_1: ;
  return (& fh->vbiq);
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx88/cx88-video.c"),
                       "i" (698), "i" (12UL));
  __builtin_unreachable();
  }
  return ((struct videobuf_queue *)0);
  switch_break: ;
  }
}
}
static int get_resource(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx88/cx88-video.c"),
                       "i" (713), "i" (12UL));
  __builtin_unreachable();
  }
  return (0);
  switch_break: ;
  }
}
}
static int video_open(struct file *file )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx8800_dev *dev ;
  void *tmp___0 ;
  struct cx88_core *core ;
  struct cx8800_fh *fh ;
  enum v4l2_buf_type type ;
  int radio ;
  char const *tmp___1 ;
  void *tmp___2 ;
  long tmp___3 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  tmp___0 = video_drvdata(file);
  dev = (struct cx8800_dev *)tmp___0;
  core = dev->core;
  type = 0;
  radio = 0;
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  if (vdev->vfl_type == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  type = 1;
  goto ldv_50330;
  case_1:
  type = 4;
  goto ldv_50330;
  case_2:
  radio = 1;
  goto ldv_50330;
  switch_break: ;
  }
  ldv_50330: ;
  if (video_debug != 0U) {
    {
    tmp___1 = video_device_node_name(vdev);
    printk("\017%s/0: open dev=%s radio=%d type=%s\n", (char *)(& core->name), tmp___1,
           radio, v4l2_type_names[(unsigned int )type]);
    }
  } else {
  }
  {
  tmp___2 = kzalloc(1424UL, 208U);
  fh = (struct cx8800_fh *)tmp___2;
  tmp___3 = ldv__builtin_expect((unsigned long )fh == (unsigned long )((struct cx8800_fh *)0),
                             0L);
  }
  if (tmp___3 != 0L) {
    return (-12);
  } else {
  }
  {
  v4l2_fh_init(& fh->fh, vdev);
  file->private_data = (void *)fh;
  fh->dev = dev;
  ldv_mutex_lock_40(& core->lock);
  videobuf_queue_sg_init(& fh->vidq, & cx8800_video_qops, & (dev->pci)->dev, & dev->slock,
                         1, 4, 296U, (void *)fh, (struct mutex *)0);
  videobuf_queue_sg_init(& fh->vbiq, & cx8800_vbi_qops, & (dev->pci)->dev, & dev->slock,
                         4, 5, 296U, (void *)fh, (struct mutex *)0);
  }
  if (vdev->vfl_type == 2) {
    if (video_debug != 0U) {
      {
      printk("\017%s/0: video_open: setting radio device\n", (char *)(& core->name));
      }
    } else {
    }
    {
    writel(core->board.radio.gpio3, (void volatile *)core->lmmio + 868359U);
    writel(core->board.radio.gpio0, (void volatile *)core->lmmio + 868356U);
    writel(core->board.radio.gpio1, (void volatile *)core->lmmio + 868357U);
    writel(core->board.radio.gpio2, (void volatile *)core->lmmio + 868358U);
    }
    if ((unsigned int )*((unsigned char *)core + 4644UL) != 0U) {
      if ((unsigned long )core->sd_wm8775 != (unsigned long )((struct v4l2_subdev *)0)) {
        if (core->i2c_rc == 0U) {
          if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                            int ))0)) {
            {
            (*(core->gate_ctrl))(core, 1);
            }
          } else {
          }
          __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
          __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
          goto ldv_50339;
          ldv_50338: ;
          if ((unsigned long )(__sd->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                        u32 ))0)) {
            {
            (*(((__sd->ops)->audio)->s_routing))(__sd, core->board.radio.audioroute,
                                                 0U, 0U);
            }
          } else {
          }
          __mptr___0 = (struct list_head const *)__sd->list.next;
          __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
          ldv_50339: ;
          if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
            goto ldv_50338;
          } else {
          }
          if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                            int ))0)) {
            {
            (*(core->gate_ctrl))(core, 0);
            }
          } else {
          }
        } else {
        }
      } else {
      }
      {
      core->tvaudio = 10;
      cx88_set_tvaudio(core);
      }
    } else {
      {
      core->tvaudio = 9;
      cx88_set_tvaudio(core);
      cx88_set_stereo(core, 1U, 1);
      }
    }
    if (core->i2c_rc == 0U) {
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 1);
        }
      } else {
      }
      __mptr___1 = (struct list_head const *)core->v4l2_dev.subdevs.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
      goto ldv_50347;
      ldv_50346: ;
      if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
        {
        (*(((__sd___0->ops)->tuner)->s_radio))(__sd___0);
        }
      } else {
      }
      __mptr___2 = (struct list_head const *)__sd___0->list.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
      ldv_50347: ;
      if ((unsigned long )(& __sd___0->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
        goto ldv_50346;
      } else {
      }
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 0);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  core->users = core->users + 1;
  ldv_mutex_unlock_41(& core->lock);
  v4l2_fh_add(& fh->fh);
  }
  return (0);
}
}
static ssize_t video_read(struct file *file , char *data , size_t count , loff_t *ppos )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx8800_fh *fh ;
  int tmp___0 ;
  ssize_t tmp___1 ;
  int tmp___2 ;
  ssize_t tmp___3 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct cx8800_fh *)file->private_data;
  }
  {
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_default;
  case_0:
  {
  tmp___0 = res_locked(fh->dev, 2U);
  }
  if (tmp___0 != 0) {
    return (-16L);
  } else {
  }
  {
  tmp___1 = videobuf_read_one(& fh->vidq, data, count, ppos, (int )file->f_flags & 2048);
  }
  return (tmp___1);
  case_1:
  {
  tmp___2 = res_get(fh->dev, fh, 4U);
  }
  if (tmp___2 == 0) {
    return (-16L);
  } else {
  }
  {
  tmp___3 = videobuf_read_stream(& fh->vbiq, data, count, ppos, 1, (int )file->f_flags & 2048);
  }
  return (tmp___3);
  switch_default:
  {
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"drivers/media/pci/cx88/cx88-video.c"),
                       "i" (814), "i" (12UL));
  __builtin_unreachable();
  }
  return (0L);
  switch_break: ;
  }
}
}
static unsigned int video_poll(struct file *file , struct poll_table_struct *wait )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx8800_fh *fh ;
  struct cx88_buffer *buf ;
  unsigned int rc ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  struct list_head const *__mptr ;
  int tmp___4 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct cx8800_fh *)file->private_data;
  tmp___0 = v4l2_ctrl_poll(file, wait);
  rc = tmp___0;
  }
  if (vdev->vfl_type == 1) {
    {
    tmp___1 = res_get(fh->dev, fh, 4U);
    }
    if (tmp___1 == 0) {
      return (rc | 8U);
    } else {
    }
    {
    tmp___2 = videobuf_poll_stream(file, & fh->vbiq, wait);
    }
    return (rc | tmp___2);
  } else {
  }
  {
  ldv_mutex_lock_42(& fh->vidq.vb_lock);
  tmp___4 = res_check(fh, 2U);
  }
  if (tmp___4 != 0) {
    {
    tmp___3 = list_empty((struct list_head const *)(& fh->vidq.stream));
    }
    if (tmp___3 != 0) {
      goto done;
    } else {
    }
    __mptr = (struct list_head const *)fh->vidq.stream.next;
    buf = (struct cx88_buffer *)__mptr + 0xffffffffffffffd8UL;
  } else {
    buf = (struct cx88_buffer *)fh->vidq.read_buf;
    if ((unsigned long )buf == (unsigned long )((struct cx88_buffer *)0)) {
      goto done;
    } else {
    }
  }
  {
  poll_wait(file, & buf->vb.done, wait);
  }
  if ((unsigned int )buf->vb.state - 4U <= 1U) {
    rc = rc | 65U;
  } else {
  }
  done:
  {
  ldv_mutex_unlock_43(& fh->vidq.vb_lock);
  }
  return (rc);
}
}
static int video_release(struct file *file )
{
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  fh = (struct cx8800_fh *)file->private_data;
  dev = fh->dev;
  tmp = res_check(fh, 1U);
  }
  if (tmp != 0) {
    {
    res_free(dev, fh, 1U);
    }
  } else {
  }
  {
  tmp___0 = res_check(fh, 2U);
  }
  if (tmp___0 != 0) {
    {
    videobuf_queue_cancel(& fh->vidq);
    res_free(dev, fh, 2U);
    }
  } else {
  }
  if ((unsigned long )fh->vidq.read_buf != (unsigned long )((struct videobuf_buffer *)0)) {
    {
    buffer_release(& fh->vidq, fh->vidq.read_buf);
    kfree((void const *)fh->vidq.read_buf);
    }
  } else {
  }
  {
  tmp___1 = res_check(fh, 4U);
  }
  if (tmp___1 != 0) {
    {
    videobuf_stop(& fh->vbiq);
    res_free(dev, fh, 4U);
    }
  } else {
  }
  {
  videobuf_mmap_free(& fh->vidq);
  videobuf_mmap_free(& fh->vbiq);
  ldv_mutex_lock_44(& (dev->core)->lock);
  v4l2_fh_del(& fh->fh);
  v4l2_fh_exit(& fh->fh);
  file->private_data = (void *)0;
  kfree((void const *)fh);
  (dev->core)->users = (dev->core)->users - 1;
  }
  if ((dev->core)->users == 0) {
    if ((dev->core)->i2c_rc == 0U) {
      if ((unsigned long )(dev->core)->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                               int ))0)) {
        {
        (*((dev->core)->gate_ctrl))(dev->core, 1);
        }
      } else {
      }
      __mptr = (struct list_head const *)(dev->core)->v4l2_dev.subdevs.next;
      __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
      goto ldv_50382;
      ldv_50381: ;
      if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_power != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               int ))0)) {
        {
        (*(((__sd->ops)->core)->s_power))(__sd, 0);
        }
      } else {
      }
      __mptr___0 = (struct list_head const *)__sd->list.next;
      __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
      ldv_50382: ;
      if ((unsigned long )(& __sd->list) != (unsigned long )(& (dev->core)->v4l2_dev.subdevs)) {
        goto ldv_50381;
      } else {
      }
      if ((unsigned long )(dev->core)->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                               int ))0)) {
        {
        (*((dev->core)->gate_ctrl))(dev->core, 0);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_45(& (dev->core)->lock);
  }
  return (0);
}
}
static int video_mmap(struct file *file , struct vm_area_struct *vma )
{
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_queue(file);
  tmp___0 = videobuf_mmap_mapper(tmp, vma);
  }
  return (tmp___0);
}
}
static int cx8800_s_vid_ctrl(struct v4l2_ctrl *ctrl )
{
  struct cx88_core *core ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct cx88_ctrl const *cc ;
  u32 value ;
  u32 mask ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  core = (struct cx88_core *)__mptr + 0xfffffffffffff0d8UL;
  cc = (struct cx88_ctrl const *)ctrl->priv;
  mask = cc->mask;
  {
  if (ctrl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctrl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctrl->id == 9963805U) {
    goto case_9963805;
  } else {
  }
  goto switch_default;
  case_9963778:
  value = (((unsigned int )ctrl->__annonCompField88.val - (unsigned int )cc->off) << (int )cc->shift) & (unsigned int )cc->mask;
  if ((core->tvnorm & 16711680ULL) != 0ULL) {
    value = (value << 8) | value;
  } else {
    value = ((value * 90U) / 127U << 8) | value;
  }
  mask = 65535U;
  goto ldv_50398;
  case_9963803:
  {
  value = ctrl->__annonCompField88.val > 0 ? (u32 )((ctrl->__annonCompField88.val + 3) << 7) : 0U;
  tmp = readl((void const volatile *)core->lmmio + 802903U);
  writel((tmp & ~ mask) | (value & mask), (void volatile *)core->lmmio + 802903U);
  }
  goto ldv_50398;
  case_9963805:
  value = (((unsigned int )ctrl->__annonCompField88.val - (unsigned int )cc->off) << (int )cc->shift) & (unsigned int )cc->mask;
  goto ldv_50398;
  switch_default:
  value = (((unsigned int )ctrl->__annonCompField88.val - (unsigned int )cc->off) << (int )cc->shift) & (unsigned int )cc->mask;
  goto ldv_50398;
  switch_break: ;
  }
  ldv_50398: ;
  if (video_debug != 0U) {
    {
    printk("\017%s/0: set_control id=0x%X(%s) ctrl=0x%02x, reg=0x%02x val=0x%02x (mask 0x%02x)%s\n",
           (char *)(& core->name), ctrl->id, ctrl->name, ctrl->__annonCompField88.val,
           cc->reg, value, mask, (unsigned int )cc->sreg != 0U ? (char *)" [shadowed]" : (char *)"");
    }
  } else {
  }
  if ((unsigned int )cc->sreg != 0U) {
    {
    core->shadow[cc->sreg] = (core->shadow[cc->sreg] & ~ mask) | (value & mask);
    writel(core->shadow[cc->sreg], (void volatile *)core->lmmio + (unsigned long )(cc->reg >> 2));
    }
  } else {
    {
    tmp___0 = readl((void const volatile *)core->lmmio + (unsigned long )(cc->reg >> 2));
    writel((tmp___0 & ~ mask) | (value & mask), (void volatile *)core->lmmio + (unsigned long )(cc->reg >> 2));
    }
  }
  return (0);
}
}
static int cx8800_s_aud_ctrl(struct v4l2_ctrl *ctrl )
{
  struct cx88_core *core ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct cx88_ctrl const *cc ;
  u32 value ;
  u32 mask ;
  struct v4l2_ctrl *ctrl_ ;
  struct v4l2_ctrl *tmp ;
  struct v4l2_ctrl *ctrl____0 ;
  struct v4l2_ctrl *tmp___0 ;
  struct v4l2_ctrl *ctrl____1 ;
  struct v4l2_ctrl *tmp___1 ;
  unsigned int tmp___2 ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  core = (struct cx88_core *)__mptr + 0xffffffffffffefd8UL;
  cc = (struct cx88_ctrl const *)ctrl->priv;
  if ((unsigned long )core->sd_wm8775 != (unsigned long )((struct v4l2_subdev *)0)) {
    {
    if (ctrl->id == 9963785U) {
      goto case_9963785;
    } else {
    }
    if (ctrl->id == 9963781U) {
      goto case_9963781;
    } else {
    }
    if (ctrl->id == 9963782U) {
      goto case_9963782;
    } else {
    }
    goto switch_default;
    case_9963785:
    {
    tmp = v4l2_ctrl_find((core->sd_wm8775)->ctrl_handler, ctrl->id);
    ctrl_ = tmp;
    }
    if ((unsigned long )ctrl_ != (unsigned long )((struct v4l2_ctrl *)0) && core->i2c_rc == 0U) {
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 1);
        }
      } else {
      }
      {
      v4l2_ctrl_s_ctrl(ctrl_, ctrl->__annonCompField88.val);
      }
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 0);
        }
      } else {
      }
    } else {
    }
    goto ldv_50413;
    case_9963781:
    {
    tmp___0 = v4l2_ctrl_find((core->sd_wm8775)->ctrl_handler, ctrl->id);
    ctrl____0 = tmp___0;
    }
    if ((unsigned long )ctrl____0 != (unsigned long )((struct v4l2_ctrl *)0) && core->i2c_rc == 0U) {
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 1);
        }
      } else {
      }
      {
      v4l2_ctrl_s_ctrl(ctrl____0, ctrl->__annonCompField88.val != 0 ? (ctrl->__annonCompField88.val + 144) << 8 : 0);
      }
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 0);
        }
      } else {
      }
    } else {
    }
    goto ldv_50413;
    case_9963782:
    {
    tmp___1 = v4l2_ctrl_find((core->sd_wm8775)->ctrl_handler, ctrl->id);
    ctrl____1 = tmp___1;
    }
    if ((unsigned long )ctrl____1 != (unsigned long )((struct v4l2_ctrl *)0) && core->i2c_rc == 0U) {
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 1);
        }
      } else {
      }
      {
      v4l2_ctrl_s_ctrl(ctrl____1, ctrl->__annonCompField88.val << 9);
      }
      if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                        int ))0)) {
        {
        (*(core->gate_ctrl))(core, 0);
        }
      } else {
      }
    } else {
    }
    goto ldv_50413;
    switch_default: ;
    goto ldv_50413;
    switch_break: ;
    }
    ldv_50413: ;
  } else {
  }
  mask = cc->mask;
  {
  if (ctrl->id == 9963782U) {
    goto case_9963782___0;
  } else {
  }
  if (ctrl->id == 9963781U) {
    goto case_9963781___0;
  } else {
  }
  goto switch_default___0;
  case_9963782___0:
  value = ctrl->__annonCompField88.val <= 63 ? (u32 )(127 - ctrl->__annonCompField88.val) : (u32 )(ctrl->__annonCompField88.val + -64);
  goto ldv_50420;
  case_9963781___0:
  value = ~ ((u32 )ctrl->__annonCompField88.val) & 63U;
  goto ldv_50420;
  switch_default___0:
  value = (((unsigned int )ctrl->__annonCompField88.val - (unsigned int )cc->off) << (int )cc->shift) & (unsigned int )cc->mask;
  goto ldv_50420;
  switch_break___0: ;
  }
  ldv_50420: ;
  if (video_debug != 0U) {
    {
    printk("\017%s/0: set_control id=0x%X(%s) ctrl=0x%02x, reg=0x%02x val=0x%02x (mask 0x%02x)%s\n",
           (char *)(& core->name), ctrl->id, ctrl->name, ctrl->__annonCompField88.val,
           cc->reg, value, mask, (unsigned int )cc->sreg != 0U ? (char *)" [shadowed]" : (char *)"");
    }
  } else {
  }
  if ((unsigned int )cc->sreg != 0U) {
    {
    core->shadow[cc->sreg] = (core->shadow[cc->sreg] & ~ mask) | (value & mask);
    writel(core->shadow[cc->sreg], (void volatile *)core->lmmio + (unsigned long )(cc->reg >> 2));
    }
  } else {
    {
    tmp___2 = readl((void const volatile *)core->lmmio + (unsigned long )(cc->reg >> 2));
    writel((tmp___2 & ~ mask) | (value & mask), (void volatile *)core->lmmio + (unsigned long )(cc->reg >> 2));
    }
  }
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  {
  fh = (struct cx8800_fh *)priv;
  dev = fh->dev;
  f->fmt.pix.width = dev->width;
  f->fmt.pix.height = dev->height;
  f->fmt.pix.field = (__u32 )fh->vidq.field;
  f->fmt.pix.pixelformat = (dev->fmt)->fourcc;
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )(dev->fmt)->depth >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 1U;
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx88_core *core ;
  struct cx8800_fmt const *fmt ;
  enum v4l2_field field ;
  unsigned int maxw ;
  unsigned int maxh ;
  {
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  }
  if ((unsigned long )fmt == (unsigned long )((struct cx8800_fmt const *)0)) {
    return (-22);
  } else {
  }
  {
  field = (enum v4l2_field )f->fmt.pix.field;
  maxw = norm_maxw(core->tvnorm);
  maxh = norm_maxh(core->tvnorm);
  }
  if ((unsigned int )field == 0U) {
    field = f->fmt.pix.height > maxh / 2U ? 4 : 3;
  } else {
  }
  {
  if ((unsigned int )field == 2U) {
    goto case_2;
  } else {
  }
  if ((unsigned int )field == 3U) {
    goto case_3;
  } else {
  }
  if ((unsigned int )field == 4U) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_2: ;
  case_3:
  maxh = maxh / 2U;
  goto ldv_50442;
  case_4: ;
  goto ldv_50442;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_50442:
  {
  f->fmt.pix.field = (__u32 )field;
  v4l_bound_align_image(& f->fmt.pix.width, 48U, maxw, 2U, & f->fmt.pix.height, 32U,
                        maxh, 0U, 0U);
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )fmt->depth >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  int err ;
  int tmp ;
  {
  {
  fh = (struct cx8800_fh *)priv;
  dev = fh->dev;
  tmp = vidioc_try_fmt_vid_cap(file, priv, f);
  err = tmp;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  dev->fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  dev->width = f->fmt.pix.width;
  dev->height = f->fmt.pix.height;
  fh->vidq.field = (enum v4l2_field )f->fmt.pix.field;
  }
  return (0);
}
}
void cx88_querycap(struct file *file , struct cx88_core *core , struct v4l2_capability *cap )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  strlcpy((char *)(& cap->card), core->board.name, 32UL);
  cap->device_caps = 83886080U;
  }
  if (core->board.tuner_type != 4294967295U) {
    cap->device_caps = cap->device_caps | 65536U;
  } else {
  }
  {
  if (vdev->vfl_type == 2) {
    goto case_2;
  } else {
  }
  if (vdev->vfl_type == 0) {
    goto case_0;
  } else {
  }
  if (vdev->vfl_type == 1) {
    goto case_1;
  } else {
  }
  goto switch_break;
  case_2:
  cap->device_caps = 327680U;
  goto ldv_50460;
  case_0:
  cap->device_caps = cap->device_caps | 1U;
  goto ldv_50460;
  case_1:
  cap->device_caps = cap->device_caps | 16U;
  goto ldv_50460;
  switch_break: ;
  }
  ldv_50460:
  cap->capabilities = cap->device_caps | 2147483665U;
  if ((unsigned int )core->board.radio.type == 10U) {
    cap->capabilities = cap->capabilities | 262144U;
  } else {
  }
  return;
}
}
static char const __kstrtab_cx88_querycap[14U] =
  { 'c', 'x', '8', '8',
        '_', 'q', 'u', 'e',
        'r', 'y', 'c', 'a',
        'p', '\000'};
struct kernel_symbol const __ksymtab_cx88_querycap ;
struct kernel_symbol const __ksymtab_cx88_querycap = {(unsigned long )(& cx88_querycap), (char const *)(& __kstrtab_cx88_querycap)};
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct cx8800_dev *dev ;
  struct cx88_core *core ;
  char const *tmp ;
  {
  {
  dev = ((struct cx8800_fh *)priv)->dev;
  core = dev->core;
  strcpy((char *)(& cap->driver), "cx8800");
  tmp = pci_name((struct pci_dev const *)dev->pci);
  sprintf((char *)(& cap->bus_info), "PCI:%s", tmp);
  cx88_querycap(file, core, cap);
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect(f->index > 9U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  {
  strlcpy((char *)(& f->description), formats[f->index].name, 32UL);
  f->pixelformat = formats[f->index].fourcc;
  }
  return (0);
}
}
static int vidioc_reqbufs(struct file *file , void *priv , struct v4l2_requestbuffers *p )
{
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_queue(file);
  tmp___0 = videobuf_reqbufs(tmp, p);
  }
  return (tmp___0);
}
}
static int vidioc_querybuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_queue(file);
  tmp___0 = videobuf_querybuf(tmp, p);
  }
  return (tmp___0);
}
}
static int vidioc_qbuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_queue(file);
  tmp___0 = videobuf_qbuf(tmp, p);
  }
  return (tmp___0);
}
}
static int vidioc_dqbuf(struct file *file , void *priv , struct v4l2_buffer *p )
{
  struct videobuf_queue *tmp ;
  int tmp___0 ;
  {
  {
  tmp = get_queue(file);
  tmp___0 = videobuf_dqbuf(tmp, p, (int )file->f_flags & 2048);
  }
  return (tmp___0);
}
}
static int vidioc_streamon(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  int tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  struct videobuf_queue *tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct cx8800_fh *)priv;
  dev = fh->dev;
  }
  if ((vdev->vfl_type == 0 && (unsigned int )i != 1U) || (vdev->vfl_type == 1 && (unsigned int )i != 4U)) {
    return (-22);
  } else {
  }
  {
  tmp___0 = get_resource(file);
  tmp___1 = res_get(dev, fh, (unsigned int )tmp___0);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  }
  if (tmp___2 != 0L) {
    return (-16);
  } else {
  }
  {
  tmp___3 = get_queue(file);
  tmp___4 = videobuf_streamon(tmp___3);
  }
  return (tmp___4);
}
}
static int vidioc_streamoff(struct file *file , void *priv , enum v4l2_buf_type i )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  int err ;
  int res ;
  struct videobuf_queue *tmp___0 ;
  {
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct cx8800_fh *)priv;
  dev = fh->dev;
  }
  if ((vdev->vfl_type == 0 && (unsigned int )i != 1U) || (vdev->vfl_type == 1 && (unsigned int )i != 4U)) {
    return (-22);
  } else {
  }
  {
  res = get_resource(file);
  tmp___0 = get_queue(file);
  err = videobuf_streamoff(tmp___0);
  }
  if (err < 0) {
    return (err);
  } else {
  }
  {
  res_free(dev, fh, (unsigned int )res);
  }
  return (0);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *tvnorm )
{
  struct cx88_core *core ;
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  *tvnorm = core->tvnorm;
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id tvnorms )
{
  struct cx88_core *core ;
  {
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  ldv_mutex_lock_46(& core->lock);
  cx88_set_tvnorm(core, tvnorms);
  ldv_mutex_unlock_47(& core->lock);
  }
  return (0);
}
}
int cx88_enum_input(struct cx88_core *core , struct v4l2_input *i )
{
  char const *iname[10U] ;
  unsigned int n ;
  {
  iname[0] = 0;
  iname[1] = "Composite1";
  iname[2] = "Composite2";
  iname[3] = "Composite3";
  iname[4] = "Composite4";
  iname[5] = "S-Video";
  iname[6] = "Television";
  iname[7] = "Cable TV";
  iname[8] = "DVB";
  iname[9] = "for debug only";
  n = i->index;
  if (n > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )core->board.input[n].type == 0U) {
    return (-22);
  } else {
  }
  {
  i->type = 2U;
  strcpy((char *)(& i->name), iname[(unsigned int )core->board.input[n].type]);
  }
  if ((unsigned int )core->board.input[n].type - 6U <= 1U) {
    i->type = 1U;
  } else {
  }
  i->std = 8355831ULL;
  return (0);
}
}
static char const __kstrtab_cx88_enum_input[16U] =
  { 'c', 'x', '8', '8',
        '_', 'e', 'n', 'u',
        'm', '_', 'i', 'n',
        'p', 'u', 't', '\000'};
struct kernel_symbol const __ksymtab_cx88_enum_input ;
struct kernel_symbol const __ksymtab_cx88_enum_input = {(unsigned long )(& cx88_enum_input), (char const *)(& __kstrtab_cx88_enum_input)};
static int vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{
  struct cx88_core *core ;
  int tmp ;
  {
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  tmp = cx88_enum_input(core, i);
  }
  return (tmp);
}
}
static int vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{
  struct cx88_core *core ;
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  *i = core->input;
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *priv , unsigned int i )
{
  struct cx88_core *core ;
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  if (i > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )core->board.input[i].type == 0U) {
    return (-22);
  } else {
  }
  {
  ldv_mutex_lock_48(& core->lock);
  cx88_newstation(core);
  cx88_video_mux(core, i);
  ldv_mutex_unlock_49(& core->lock);
  }
  return (0);
}
}
static int vidioc_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct cx88_core *core ;
  u32 reg ;
  long tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  tmp = ldv__builtin_expect(core->board.tuner_type == 4294967295U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& t->name), "Television");
  t->capability = 2U;
  t->rangehigh = 4294967295U;
  }
  if (core->i2c_rc == 0U) {
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 1);
      }
    } else {
    }
    __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_50581;
    ldv_50580: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                struct v4l2_tuner * ))0)) {
      {
      (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_50581: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
      goto ldv_50580;
    } else {
    }
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 0);
      }
    } else {
    }
  } else {
  }
  {
  cx88_get_stereo(core, t);
  reg = readl((void const volatile *)core->lmmio + 802880U);
  t->signal = (reg & 32U) != 0U ? 65535 : 0;
  }
  return (0);
}
}
static int vidioc_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct cx88_core *core ;
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  if (core->board.tuner_type == 4294967295U) {
    return (-22);
  } else {
  }
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  {
  cx88_set_stereo(core, t->audmode, 1);
  }
  return (0);
}
}
static int vidioc_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{
  struct cx8800_fh *fh ;
  struct cx88_core *core ;
  long tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  fh = (struct cx8800_fh *)priv;
  core = (fh->dev)->core;
  tmp = ldv__builtin_expect(core->board.tuner_type == 4294967295U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  if (f->tuner != 0U) {
    return (-22);
  } else {
  }
  f->frequency = core->freq;
  if (core->i2c_rc == 0U) {
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 1);
      }
    } else {
    }
    __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_50602;
    ldv_50601: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                    struct v4l2_frequency * ))0)) {
      {
      (*(((__sd->ops)->tuner)->g_frequency))(__sd, f);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_50602: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
      goto ldv_50601;
    } else {
    }
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 0);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
int cx88_set_freq(struct cx88_core *core , struct v4l2_frequency const *f )
{
  struct v4l2_frequency new_freq ;
  long tmp ;
  long tmp___0 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  {
  new_freq = *f;
  tmp = ldv__builtin_expect(core->board.tuner_type == 4294967295U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect((unsigned int )f->tuner != 0U, 0L);
  }
  if (tmp___0 != 0L) {
    return (-22);
  } else {
  }
  {
  ldv_mutex_lock_50(& core->lock);
  cx88_newstation(core);
  }
  if (core->i2c_rc == 0U) {
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 1);
      }
    } else {
    }
    __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_50615;
    ldv_50614: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                    struct v4l2_frequency const * ))0)) {
      {
      (*(((__sd->ops)->tuner)->s_frequency))(__sd, f);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_50615: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
      goto ldv_50614;
    } else {
    }
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 0);
      }
    } else {
    }
  } else {
  }
  if (core->i2c_rc == 0U) {
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 1);
      }
    } else {
    }
    __mptr___1 = (struct list_head const *)core->v4l2_dev.subdevs.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    goto ldv_50623;
    ldv_50622: ;
    if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->g_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                            struct v4l2_frequency * ))0)) {
      {
      (*(((__sd___0->ops)->tuner)->g_frequency))(__sd___0, & new_freq);
      }
    } else {
    }
    __mptr___2 = (struct list_head const *)__sd___0->list.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
    ldv_50623: ;
    if ((unsigned long )(& __sd___0->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
      goto ldv_50622;
    } else {
    }
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 0);
      }
    } else {
    }
  } else {
  }
  {
  core->freq = new_freq.frequency;
  msleep(10U);
  cx88_set_tvaudio(core);
  ldv_mutex_unlock_51(& core->lock);
  }
  return (0);
}
}
static char const __kstrtab_cx88_set_freq[14U] =
  { 'c', 'x', '8', '8',
        '_', 's', 'e', 't',
        '_', 'f', 'r', 'e',
        'q', '\000'};
struct kernel_symbol const __ksymtab_cx88_set_freq ;
struct kernel_symbol const __ksymtab_cx88_set_freq = {(unsigned long )(& cx88_set_freq), (char const *)(& __kstrtab_cx88_set_freq)};
static int vidioc_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *f )
{
  struct cx8800_fh *fh ;
  struct cx88_core *core ;
  int tmp ;
  {
  {
  fh = (struct cx8800_fh *)priv;
  core = (fh->dev)->core;
  tmp = cx88_set_freq(core, f);
  }
  return (tmp);
}
}
static int vidioc_g_register(struct file *file , void *fh , struct v4l2_dbg_register *reg )
{
  struct cx88_core *core ;
  unsigned int tmp ;
  {
  {
  core = (((struct cx8800_fh *)fh)->dev)->core;
  tmp = readl((void const volatile *)(core->lmmio + ((reg->reg & 16777212ULL) >> 2)));
  reg->val = (__u64 )tmp;
  reg->size = 4U;
  }
  return (0);
}
}
static int vidioc_s_register(struct file *file , void *fh , struct v4l2_dbg_register const *reg )
{
  struct cx88_core *core ;
  {
  {
  core = (((struct cx8800_fh *)fh)->dev)->core;
  writel((unsigned int )reg->val, (void volatile *)(core->lmmio + (((unsigned long long )reg->reg & 16777212ULL) >> 2)));
  }
  return (0);
}
}
static int radio_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct cx88_core *core ;
  long tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  tmp = ldv__builtin_expect(t->index != 0U, 0L);
  }
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& t->name), "Radio");
  }
  if (core->i2c_rc == 0U) {
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 1);
      }
    } else {
    }
    __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_50664;
    ldv_50663: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                struct v4l2_tuner * ))0)) {
      {
      (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_50664: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
      goto ldv_50663;
    } else {
    }
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 0);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int radio_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct cx88_core *core ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  core = (((struct cx8800_fh *)priv)->dev)->core;
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  if (core->i2c_rc == 0U) {
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 1);
      }
    } else {
    }
    __mptr = (struct list_head const *)core->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_50678;
    ldv_50677: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                struct v4l2_tuner const * ))0)) {
      {
      (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
      }
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_50678: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& core->v4l2_dev.subdevs)) {
      goto ldv_50677;
    } else {
    }
    if ((unsigned long )core->gate_ctrl != (unsigned long )((void (*)(struct cx88_core * ,
                                                                      int ))0)) {
      {
      (*(core->gate_ctrl))(core, 0);
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static void cx8800_vid_timeout(unsigned long data )
{
  struct cx8800_dev *dev ;
  struct cx88_core *core ;
  struct cx88_dmaqueue *q ;
  struct cx88_buffer *buf ;
  unsigned long flags ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  {
  {
  dev = (struct cx8800_dev *)data;
  core = dev->core;
  q = & dev->vidq;
  cx88_sram_channel_dump(core, (struct sram_channel const *)(& cx88_sram_channels));
  tmp = readl((void const volatile *)core->lmmio + 815120U);
  writel(tmp & 4294967278U, (void volatile *)core->lmmio + 815120U);
  tmp___0 = readl((void const volatile *)core->lmmio + 802912U);
  writel(tmp___0 & 4294967289U, (void volatile *)core->lmmio + 802912U);
  tmp___1 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  }
  goto ldv_50694;
  ldv_50693:
  {
  __mptr = (struct list_head const *)q->active.next;
  buf = (struct cx88_buffer *)__mptr + 0xffffffffffffffc8UL;
  list_del(& buf->vb.queue);
  buf->vb.state = 5;
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  printk("%s/0: [%p/%d] timeout - dma=0x%08lx\n", (char *)(& core->name), buf, buf->vb.i,
         (unsigned long )buf->risc.dma);
  }
  ldv_50694:
  {
  tmp___2 = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp___2 == 0) {
    goto ldv_50693;
  } else {
  }
  {
  restart_video_queue(dev, q);
  spin_unlock_irqrestore(& dev->slock, flags);
  }
  return;
}
}
static char const *cx88_vid_irqs[32U] =
  { "y_risci1", "u_risci1", "v_risci1", "vbi_risc1",
        "y_risci2", "u_risci2", "v_risci2", "vbi_risc2",
        "y_oflow", "u_oflow", "v_oflow", "vbi_oflow",
        "y_sync", "u_sync", "v_sync", "vbi_sync",
        "opc_err", "par_err", "rip_err", "pci_abort"};
static void cx8800_vid_irq(struct cx8800_dev *dev )
{
  struct cx88_core *core ;
  u32 status ;
  u32 mask ;
  u32 count ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  {
  core = dev->core;
  status = readl((void const volatile *)core->lmmio + 524309U);
  mask = readl((void const volatile *)core->lmmio + 524308U);
  }
  if ((status & mask) == 0U) {
    return;
  } else {
  }
  {
  writel(status, (void volatile *)core->lmmio + 524309U);
  }
  if (irq_debug != 0U || ((status & mask) & 4294967040U) != 0U) {
    {
    cx88_print_irqbits((char const *)(& core->name), "irq vid", (char const **)(& cx88_vid_irqs),
                       32, status, mask);
    }
  } else {
  }
  if ((status & 65536U) != 0U) {
    {
    printk("\f%s/0: video risc op code error\n", (char *)(& core->name));
    tmp = readl((void const volatile *)core->lmmio + 815120U);
    writel(tmp & 4294967278U, (void volatile *)core->lmmio + 815120U);
    tmp___0 = readl((void const volatile *)core->lmmio + 802912U);
    writel(tmp___0 & 4294967289U, (void volatile *)core->lmmio + 802912U);
    cx88_sram_channel_dump(core, (struct sram_channel const *)(& cx88_sram_channels));
    }
  } else {
  }
  if ((int )status & 1) {
    {
    spin_lock(& dev->slock);
    count = readl((void const volatile *)core->lmmio + 815112U);
    cx88_wakeup(core, & dev->vidq, count);
    spin_unlock(& dev->slock);
    }
  } else {
  }
  if ((status & 8U) != 0U) {
    {
    spin_lock(& dev->slock);
    count = readl((void const volatile *)core->lmmio + 815115U);
    cx88_wakeup(core, & dev->vbiq, count);
    spin_unlock(& dev->slock);
    }
  } else {
  }
  if ((status & 16U) != 0U) {
    if (video_debug > 1U) {
      {
      printk("\017%s/0: stopper video\n", (char *)(& core->name));
      }
    } else {
    }
    {
    spin_lock(& dev->slock);
    restart_video_queue(dev, & dev->vidq);
    spin_unlock(& dev->slock);
    }
  } else {
  }
  if ((status & 128U) != 0U) {
    if (video_debug > 1U) {
      {
      printk("\017%s/0: stopper vbi\n", (char *)(& core->name));
      }
    } else {
    }
    {
    spin_lock(& dev->slock);
    cx8800_restart_vbi_queue(dev, & dev->vbiq);
    spin_unlock(& dev->slock);
    }
  } else {
  }
  return;
}
}
static irqreturn_t cx8800_irq(int irq , void *dev_id )
{
  struct cx8800_dev *dev ;
  struct cx88_core *core ;
  u32 status ;
  int loop ;
  int handled ;
  unsigned int tmp ;
  {
  dev = (struct cx8800_dev *)dev_id;
  core = dev->core;
  handled = 0;
  loop = 0;
  goto ldv_50717;
  ldv_50716:
  {
  tmp = readl((void const volatile *)core->lmmio + 524305U);
  status = tmp & (unsigned int )(core->pci_irqmask | 1);
  }
  if (status == 0U) {
    goto out;
  } else {
  }
  {
  writel(status, (void volatile *)core->lmmio + 524305U);
  handled = 1;
  }
  if ((status & (u32 )core->pci_irqmask) != 0U) {
    {
    cx88_core_irq(core, status);
    }
  } else {
  }
  if ((int )status & 1) {
    {
    cx8800_vid_irq(dev);
    }
  } else {
  }
  loop = loop + 1;
  ldv_50717: ;
  if (loop <= 9) {
    goto ldv_50716;
  } else {
  }
  if (loop == 10) {
    {
    printk("\f%s/0: irq loop -- clearing mask\n", (char *)(& core->name));
    writel(0U, (void volatile *)core->lmmio + 524304U);
    }
  } else {
  }
  out: ;
  return (handled != 0);
}
}
static struct v4l2_file_operations const video_fops =
     {& __this_module, & video_read, 0, & video_poll, 0, & video_ioctl2, 0, 0, & video_mmap,
    & video_open, & video_release};
static struct v4l2_ioctl_ops const video_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_reqbufs, & vidioc_querybuf,
    & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0, 0, 0, 0, & vidioc_streamon, & vidioc_streamoff,
    & vidioc_g_std, & vidioc_s_std, 0, & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, & vidioc_g_tuner, & vidioc_s_tuner, & vidioc_g_frequency, & vidioc_s_frequency,
    0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register, 0, 0, 0, 0, 0, 0, 0, 0,
    & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe, 0};
static struct video_device const cx8800_video_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & video_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   {{{0L},
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    {{0,
                                                                                      0},
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0,
                                                                                     {(char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0},
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    0,
                                                                                    0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   0U,
                                                                                   0U,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   {0U,
                                                                                    {{{{{{0U}},
                                                                                        0U,
                                                                                        0U,
                                                                                        0,
                                                                                        {0,
                                                                                         {0,
                                                                                          0},
                                                                                         0,
                                                                                         0,
                                                                                         0UL}}}},
                                                                                     {0,
                                                                                      0}}},
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    {(char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{{{{{0U}},
                                                                                       0U,
                                                                                       0U,
                                                                                       0,
                                                                                       {0,
                                                                                        {0,
                                                                                         0},
                                                                                        0,
                                                                                        0,
                                                                                        0UL}}}},
                                                                                    {0,
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0},
    0, 0, 0, 0, 0, 0, {'c', 'x', '8', '8', '0', '0', '-', 'v', 'i', 'd', 'e', 'o',
                       '\000'}, 0, 0, 0, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
    {0, 0}, 0, 8355831ULL, 0, & video_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL},
    0};
static struct v4l2_ioctl_ops const vbi_ioctl_ops =
     {& vidioc_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cx8800_vbi_fmt, 0, 0, 0,
    0, 0, 0, 0, 0, 0, & cx8800_vbi_fmt, 0, 0, 0, 0, 0, 0, 0, 0, 0, & cx8800_vbi_fmt,
    0, 0, 0, 0, 0, & vidioc_reqbufs, & vidioc_querybuf, & vidioc_qbuf, 0, & vidioc_dqbuf,
    0, 0, 0, 0, 0, & vidioc_streamon, & vidioc_streamoff, & vidioc_g_std, & vidioc_s_std,
    0, & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & vidioc_g_tuner, & vidioc_s_tuner, & vidioc_g_frequency, & vidioc_s_frequency,
    0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0};
static struct video_device const cx8800_vbi_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & video_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   {{{0L},
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    {{0,
                                                                                      0},
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0,
                                                                                     {(char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0},
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    0,
                                                                                    0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   0U,
                                                                                   0U,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   {0U,
                                                                                    {{{{{{0U}},
                                                                                        0U,
                                                                                        0U,
                                                                                        0,
                                                                                        {0,
                                                                                         {0,
                                                                                          0},
                                                                                         0,
                                                                                         0,
                                                                                         0UL}}}},
                                                                                     {0,
                                                                                      0}}},
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    {(char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{{{{{0U}},
                                                                                       0U,
                                                                                       0U,
                                                                                       0,
                                                                                       {0,
                                                                                        {0,
                                                                                         0},
                                                                                        0,
                                                                                        0,
                                                                                        0UL}}}},
                                                                                    {0,
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0},
    0, 0, 0, 0, 0, 0, {'c', 'x', '8', '8', '0', '0', '-', 'v', 'b', 'i', '\000'},
    0, 0, 0, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
    {0, 0}, 0, 8355831ULL, 0, & vbi_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct v4l2_file_operations const radio_fops =
     {& __this_module, 0, 0, & v4l2_ctrl_poll, 0, & video_ioctl2, 0, 0, 0, & video_open,
    & video_release};
static struct v4l2_ioctl_ops const radio_ioctl_ops =
     {& vidioc_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & radio_g_tuner, & radio_s_tuner,
    & vidioc_g_frequency, & vidioc_s_frequency, 0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register,
    0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe,
    0};
static struct video_device const cx8800_radio_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & radio_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   {{{0L},
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    {{0,
                                                                                      0},
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0UL,
                                                                                     0,
                                                                                     0,
                                                                                     0,
                                                                                     {(char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0,
                                                                                      (char)0},
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}},
                                                                                    0,
                                                                                    0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   0U,
                                                                                   0U,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   {0U,
                                                                                    {{{{{{0U}},
                                                                                        0U,
                                                                                        0U,
                                                                                        0,
                                                                                        {0,
                                                                                         {0,
                                                                                          0},
                                                                                         0,
                                                                                         0,
                                                                                         0UL}}}},
                                                                                     {0,
                                                                                      0}}},
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
                                                                                    {(char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0,
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{{{{{0U}},
                                                                                       0U,
                                                                                       0U,
                                                                                       0,
                                                                                       {0,
                                                                                        {0,
                                                                                         0},
                                                                                        0,
                                                                                        0,
                                                                                        0UL}}}},
                                                                                    {0,
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  (_Bool)0,
                                                                                  (_Bool)0},
    0, 0, 0, 0, 0, 0, {'c', 'x', '8', '8', '0', '0', '-', 'r', 'a', 'd', 'i', 'o',
                       '\000'}, 0, 0, 0, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
    {0, 0}, 0, 0ULL, 0, & radio_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct v4l2_ctrl_ops const cx8800_ctrl_vid_ops = {0, 0, & cx8800_s_vid_ctrl};
static struct v4l2_ctrl_ops const cx8800_ctrl_aud_ops = {0, 0, & cx8800_s_aud_ctrl};
static void cx8800_unregister_video(struct cx8800_dev *dev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned long )dev->radio_dev != (unsigned long )((struct video_device *)0)) {
    {
    tmp = video_is_registered(dev->radio_dev);
    }
    if (tmp != 0) {
      {
      video_unregister_device(dev->radio_dev);
      }
    } else {
      {
      video_device_release(dev->radio_dev);
      }
    }
    dev->radio_dev = (struct video_device *)0;
  } else {
  }
  if ((unsigned long )dev->vbi_dev != (unsigned long )((struct video_device *)0)) {
    {
    tmp___0 = video_is_registered(dev->vbi_dev);
    }
    if (tmp___0 != 0) {
      {
      video_unregister_device(dev->vbi_dev);
      }
    } else {
      {
      video_device_release(dev->vbi_dev);
      }
    }
    dev->vbi_dev = (struct video_device *)0;
  } else {
  }
  if ((unsigned long )dev->video_dev != (unsigned long )((struct video_device *)0)) {
    {
    tmp___1 = video_is_registered(dev->video_dev);
    }
    if (tmp___1 != 0) {
      {
      video_unregister_device(dev->video_dev);
      }
    } else {
      {
      video_device_release(dev->video_dev);
      }
    }
    dev->video_dev = (struct video_device *)0;
  } else {
  }
  return;
}
}
static int cx8800_initdev(struct pci_dev *pci_dev , struct pci_device_id const *pci_id )
{
  struct cx8800_dev *dev ;
  struct cx88_core *core ;
  int err ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  unsigned int tmp___3 ;
  struct cx88_ctrl const *cc ;
  struct v4l2_ctrl *vc ;
  struct cx88_ctrl const *cc___0 ;
  struct v4l2_ctrl *vc___0 ;
  struct i2c_board_info wm8775_info ;
  unsigned int tmp___4 ;
  struct v4l2_subdev *sd ;
  unsigned short __constr_expr_0[2] ;
  struct i2c_board_info rtc_info ;
  unsigned int tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  char const *tmp___8 ;
  struct task_struct *__k ;
  struct task_struct *tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  {
  {
  tmp = kzalloc(552UL, 208U);
  dev = (struct cx8800_dev *)tmp;
  }
  if ((unsigned long )dev == (unsigned long )((struct cx8800_dev *)0)) {
    return (-12);
  } else {
  }
  {
  dev->pci = pci_dev;
  tmp___0 = pci_enable_device(pci_dev);
  }
  if (tmp___0 != 0) {
    err = -5;
    goto fail_free;
  } else {
  }
  {
  core = cx88_core_get(dev->pci);
  }
  if ((unsigned long )core == (unsigned long )((struct cx88_core *)0)) {
    err = -22;
    goto fail_free;
  } else {
  }
  {
  dev->core = core;
  dev->pci_rev = pci_dev->revision;
  pci_read_config_byte((struct pci_dev const *)pci_dev, 13, & dev->pci_lat);
  tmp___1 = pci_name((struct pci_dev const *)pci_dev);
  printk("\016%s/0: found at %s, rev: %d, irq: %d, latency: %d, mmio: 0x%llx\n", (char *)(& core->name),
         tmp___1, (int )dev->pci_rev, pci_dev->irq, (int )dev->pci_lat, pci_dev->resource[0].start);
  pci_set_master(pci_dev);
  tmp___2 = pci_dma_supported(pci_dev, 4294967295ULL);
  }
  if (tmp___2 == 0) {
    {
    printk("%s/0: Oops: no 32bit PCI DMA ???\n", (char *)(& core->name));
    err = -5;
    }
    goto fail_core;
  } else {
  }
  {
  spinlock_check(& dev->slock);
  __raw_spin_lock_init(& dev->slock.__annonCompField19.rlock, "&(&dev->slock)->rlock",
                       & __key);
  core->tvnorm = 4096ULL;
  INIT_LIST_HEAD(& dev->vidq.active);
  INIT_LIST_HEAD(& dev->vidq.queued);
  dev->vidq.timeout.function = & cx8800_vid_timeout;
  dev->vidq.timeout.data = (unsigned long )dev;
  init_timer_key(& dev->vidq.timeout, 0U, "(&dev->vidq.timeout)", & __key___0);
  cx88_risc_stopper(dev->pci, & dev->vidq.stopper, 3260480U, 17U, 0U);
  INIT_LIST_HEAD(& dev->vbiq.active);
  INIT_LIST_HEAD(& dev->vbiq.queued);
  dev->vbiq.timeout.function = & cx8800_vbi_timeout;
  dev->vbiq.timeout.data = (unsigned long )dev;
  init_timer_key(& dev->vbiq.timeout, 0U, "(&dev->vbiq.timeout)", & __key___1);
  cx88_risc_stopper(dev->pci, & dev->vbiq.stopper, 3260480U, 136U, 0U);
  err = ldv_request_irq_52(pci_dev->irq, & cx8800_irq, 128UL, (char const *)(& core->name),
                           (void *)dev);
  }
  if (err < 0) {
    {
    printk("\v%s/0: can\'t get IRQ %d\n", (char *)(& core->name), pci_dev->irq);
    }
    goto fail_core;
  } else {
  }
  {
  tmp___3 = readl((void const volatile *)core->lmmio + 524304U);
  writel((tmp___3 & (unsigned int )(~ core->pci_irqmask)) | (unsigned int )core->pci_irqmask,
         (void volatile *)core->lmmio + 524304U);
  i = 0;
  }
  goto ldv_50748;
  ldv_50747:
  {
  cc = (struct cx88_ctrl const *)(& cx8800_aud_ctls) + (unsigned long )i;
  vc = v4l2_ctrl_new_std(& core->audio_hdl, & cx8800_ctrl_aud_ops, cc->id, cc->minimum,
                         cc->maximum, cc->step, cc->default_value);
  }
  if ((unsigned long )vc == (unsigned long )((struct v4l2_ctrl *)0)) {
    err = core->audio_hdl.error;
    goto fail_core;
  } else {
  }
  vc->priv = (void *)cc;
  i = i + 1;
  ldv_50748: ;
  if (i <= 2) {
    goto ldv_50747;
  } else {
  }
  i = 0;
  goto ldv_50753;
  ldv_50752:
  {
  cc___0 = (struct cx88_ctrl const *)(& cx8800_vid_ctls) + (unsigned long )i;
  vc___0 = v4l2_ctrl_new_std(& core->video_hdl, & cx8800_ctrl_vid_ops, cc___0->id,
                             cc___0->minimum, cc___0->maximum, cc___0->step, cc___0->default_value);
  }
  if ((unsigned long )vc___0 == (unsigned long )((struct v4l2_ctrl *)0)) {
    err = core->video_hdl.error;
    goto fail_core;
  } else {
  }
  vc___0->priv = (void *)cc___0;
  if (vc___0->id == 9963805U) {
    core->chroma_agc = vc___0;
  } else {
  }
  i = i + 1;
  ldv_50753: ;
  if (i <= 7) {
    goto ldv_50752;
  } else {
  }
  {
  v4l2_ctrl_add_handler(& core->video_hdl, & core->audio_hdl, (bool (*)(struct v4l2_ctrl const * ))0);
  }
  if ((unsigned int )core->board.audio_chip == 1U) {
    wm8775_info.type[0] = 'w';
    wm8775_info.type[1] = 'm';
    wm8775_info.type[2] = '8';
    wm8775_info.type[3] = '7';
    wm8775_info.type[4] = '7';
    wm8775_info.type[5] = '5';
    wm8775_info.type[6] = '\000';
    tmp___4 = 7U;
    {
    while (1) {
      while_continue: ;
      if (tmp___4 >= 20U) {
        goto while_break;
      } else {
      }
      wm8775_info.type[tmp___4] = (char)0;
      tmp___4 = tmp___4 + 1U;
    }
    while_break: ;
    }
    wm8775_info.flags = (unsigned short)0;
    wm8775_info.addr = 27U;
    wm8775_info.platform_data = (void *)(& core->wm8775_data);
    wm8775_info.archdata = 0;
    wm8775_info.of_node = 0;
    wm8775_info.acpi_node.companion = 0;
    wm8775_info.irq = 0;
    if (core->boardnr == 37U) {
      core->wm8775_data.is_nova_s = 1;
    } else {
      core->wm8775_data.is_nova_s = 0;
    }
    {
    sd = v4l2_i2c_new_subdev_board(& core->v4l2_dev, & core->i2c_adap, & wm8775_info,
                                   (unsigned short const *)0U);
    }
    if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
      core->sd_wm8775 = sd;
      sd->grp_id = 1U;
    } else {
    }
  } else {
  }
  if ((unsigned int )core->board.audio_chip == 2U) {
    {
    __constr_expr_0[0] = 88U;
    __constr_expr_0[1] = 65534U;
    v4l2_i2c_new_subdev(& core->v4l2_dev, & core->i2c_adap, "tvaudio", 0, (unsigned short const *)(& __constr_expr_0));
    }
  } else {
  }
  {
  if (core->boardnr == 31U) {
    goto case_31;
  } else {
  }
  if (core->boardnr == 65U) {
    goto case_65;
  } else {
  }
  if (core->boardnr == 59U) {
    goto case_59;
  } else {
  }
  goto switch_break;
  case_31: ;
  case_65:
  rtc_info.type[0] = 'i';
  rtc_info.type[1] = 's';
  rtc_info.type[2] = 'l';
  rtc_info.type[3] = '1';
  rtc_info.type[4] = '2';
  rtc_info.type[5] = '0';
  rtc_info.type[6] = '8';
  rtc_info.type[7] = '\000';
  tmp___5 = 8U;
  {
  while (1) {
    while_continue___0: ;
    if (tmp___5 >= 20U) {
      goto while_break___0;
    } else {
    }
    rtc_info.type[tmp___5] = (char)0;
    tmp___5 = tmp___5 + 1U;
  }
  while_break___0: ;
  }
  {
  rtc_info.flags = (unsigned short)0;
  rtc_info.addr = 111U;
  rtc_info.platform_data = 0;
  rtc_info.archdata = 0;
  rtc_info.of_node = 0;
  rtc_info.acpi_node.companion = 0;
  rtc_info.irq = 0;
  __request_module(1, "rtc-isl1208");
  core->i2c_rtc = i2c_new_device(& core->i2c_adap, & rtc_info);
  }
  case_59:
  {
  __request_module(1, "ir-kbd-i2c");
  }
  switch_break: ;
  }
  {
  pci_set_drvdata(pci_dev, (void *)dev);
  dev->width = 320U;
  dev->height = 240U;
  dev->fmt = format_by_fourcc(861030210U);
  ldv_mutex_lock_53(& core->lock);
  cx88_set_tvnorm(core, core->tvnorm);
  v4l2_ctrl_handler_setup(& core->video_hdl);
  v4l2_ctrl_handler_setup(& core->audio_hdl);
  cx88_video_mux(core, 0U);
  dev->video_dev = cx88_vdev_init(core, dev->pci, & cx8800_video_template, "video");
  video_set_drvdata(dev->video_dev, (void *)dev);
  (dev->video_dev)->ctrl_handler = & core->video_hdl;
  err = video_register_device(dev->video_dev, 0, (int )video_nr[core->nr]);
  }
  if (err < 0) {
    {
    printk("\v%s/0: can\'t register video device\n", (char *)(& core->name));
    }
    goto fail_unreg;
  } else {
  }
  {
  tmp___6 = video_device_node_name(dev->video_dev);
  printk("\016%s/0: registered device %s [v4l2]\n", (char *)(& core->name), tmp___6);
  dev->vbi_dev = cx88_vdev_init(core, dev->pci, & cx8800_vbi_template, "vbi");
  video_set_drvdata(dev->vbi_dev, (void *)dev);
  err = video_register_device(dev->vbi_dev, 1, (int )vbi_nr[core->nr]);
  }
  if (err < 0) {
    {
    printk("\v%s/0: can\'t register vbi device\n", (char *)(& core->name));
    }
    goto fail_unreg;
  } else {
  }
  {
  tmp___7 = video_device_node_name(dev->vbi_dev);
  printk("\016%s/0: registered device %s\n", (char *)(& core->name), tmp___7);
  }
  if ((unsigned int )core->board.radio.type == 10U) {
    {
    dev->radio_dev = cx88_vdev_init(core, dev->pci, & cx8800_radio_template, "radio");
    video_set_drvdata(dev->radio_dev, (void *)dev);
    (dev->radio_dev)->ctrl_handler = & core->audio_hdl;
    err = video_register_device(dev->radio_dev, 2, (int )radio_nr[core->nr]);
    }
    if (err < 0) {
      {
      printk("\v%s/0: can\'t register radio device\n", (char *)(& core->name));
      }
      goto fail_unreg;
    } else {
    }
    {
    tmp___8 = video_device_node_name(dev->radio_dev);
    printk("\016%s/0: registered device %s\n", (char *)(& core->name), tmp___8);
    }
  } else {
  }
  if (core->board.tuner_type != 4U) {
    {
    tmp___9 = kthread_create_on_node(& cx88_audio_thread, (void *)core, -1, "cx88 tvaudio");
    __k = tmp___9;
    tmp___10 = IS_ERR((void const *)__k);
    }
    if (tmp___10 == 0L) {
      {
      wake_up_process(__k);
      }
    } else {
    }
    {
    core->kthread = __k;
    tmp___12 = IS_ERR((void const *)core->kthread);
    }
    if (tmp___12 != 0L) {
      {
      tmp___11 = PTR_ERR((void const *)core->kthread);
      err = (int )tmp___11;
      printk("\v%s/0: failed to create cx88 audio thread, err=%d\n", (char *)(& core->name),
             err);
      }
    } else {
    }
  } else {
  }
  {
  ldv_mutex_unlock_54(& core->lock);
  }
  return (0);
  fail_unreg:
  {
  cx8800_unregister_video(dev);
  ldv_free_irq_55(pci_dev->irq, (void *)dev);
  ldv_mutex_unlock_56(& core->lock);
  }
  fail_core:
  {
  cx88_core_put(core, dev->pci);
  }
  fail_free:
  {
  kfree((void const *)dev);
  }
  return (err);
}
}
static void cx8800_finidev(struct pci_dev *pci_dev )
{
  struct cx8800_dev *dev ;
  void *tmp ;
  struct cx88_core *core ;
  {
  {
  tmp = pci_get_drvdata(pci_dev);
  dev = (struct cx8800_dev *)tmp;
  core = dev->core;
  }
  if ((unsigned long )core->kthread != (unsigned long )((struct task_struct *)0)) {
    {
    kthread_stop(core->kthread);
    core->kthread = (struct task_struct *)0;
    }
  } else {
  }
  if ((unsigned long )core->ir != (unsigned long )((struct cx88_IR *)0)) {
    {
    cx88_ir_stop(core);
    }
  } else {
  }
  {
  cx88_shutdown(core);
  pci_disable_device(pci_dev);
  ldv_free_irq_57(pci_dev->irq, (void *)dev);
  cx8800_unregister_video(dev);
  btcx_riscmem_free(dev->pci, & dev->vidq.stopper);
  cx88_core_put(core, dev->pci);
  kfree((void const *)dev);
  }
  return;
}
}
static int cx8800_suspend(struct pci_dev *pci_dev , pm_message_t state )
{
  struct cx8800_dev *dev ;
  void *tmp ;
  struct cx88_core *core ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  pci_power_t tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp = pci_get_drvdata(pci_dev);
  dev = (struct cx8800_dev *)tmp;
  core = dev->core;
  tmp___0 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tmp___1 = list_empty((struct list_head const *)(& dev->vidq.active));
  }
  if (tmp___1 == 0) {
    {
    printk("%s/0: suspend video\n", (char *)(& core->name));
    stop_video_dma(dev);
    ldv_del_timer_58(& dev->vidq.timeout);
    }
  } else {
  }
  {
  tmp___2 = list_empty((struct list_head const *)(& dev->vbiq.active));
  }
  if (tmp___2 == 0) {
    {
    printk("%s/0: suspend vbi\n", (char *)(& core->name));
    cx8800_stop_vbi_dma(dev);
    ldv_del_timer_59(& dev->vbiq.timeout);
    }
  } else {
  }
  {
  spin_unlock_irqrestore(& dev->slock, flags);
  }
  if ((unsigned long )core->ir != (unsigned long )((struct cx88_IR *)0)) {
    {
    cx88_ir_stop(core);
    }
  } else {
  }
  {
  cx88_shutdown(core);
  pci_save_state(pci_dev);
  tmp___3 = pci_choose_state(pci_dev, state);
  tmp___4 = pci_set_power_state(pci_dev, tmp___3);
  }
  if (tmp___4 != 0) {
    {
    pci_disable_device(pci_dev);
    dev->state.disabled = 1;
    }
  } else {
  }
  return (0);
}
}
static int cx8800_resume(struct pci_dev *pci_dev )
{
  struct cx8800_dev *dev ;
  void *tmp ;
  struct cx88_core *core ;
  unsigned long flags ;
  int err ;
  unsigned int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = pci_get_drvdata(pci_dev);
  dev = (struct cx8800_dev *)tmp;
  core = dev->core;
  }
  if (dev->state.disabled != 0) {
    {
    err = pci_enable_device(pci_dev);
    }
    if (err != 0) {
      {
      printk("\v%s/0: can\'t enable device\n", (char *)(& core->name));
      }
      return (err);
    } else {
    }
    dev->state.disabled = 0;
  } else {
  }
  {
  err = pci_set_power_state(pci_dev, 0);
  }
  if (err != 0) {
    {
    printk("\v%s/0: can\'t set power state\n", (char *)(& core->name));
    pci_disable_device(pci_dev);
    dev->state.disabled = 1;
    }
    return (err);
  } else {
  }
  {
  pci_restore_state(pci_dev);
  cx88_reset(core);
  }
  if ((unsigned long )core->ir != (unsigned long )((struct cx88_IR *)0)) {
    {
    cx88_ir_start(core);
    }
  } else {
  }
  {
  tmp___0 = readl((void const volatile *)core->lmmio + 524304U);
  writel((tmp___0 & (unsigned int )(~ core->pci_irqmask)) | (unsigned int )core->pci_irqmask,
         (void volatile *)core->lmmio + 524304U);
  tmp___1 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  tmp___2 = list_empty((struct list_head const *)(& dev->vidq.active));
  }
  if (tmp___2 == 0) {
    {
    printk("%s/0: resume video\n", (char *)(& core->name));
    restart_video_queue(dev, & dev->vidq);
    }
  } else {
  }
  {
  tmp___3 = list_empty((struct list_head const *)(& dev->vbiq.active));
  }
  if (tmp___3 == 0) {
    {
    printk("%s/0: resume vbi\n", (char *)(& core->name));
    cx8800_restart_vbi_queue(dev, & dev->vbiq);
    }
  } else {
  }
  {
  spin_unlock_irqrestore(& dev->slock, flags);
  }
  return (0);
}
}
static struct pci_device_id const cx8800_pci_tbl[2U] = { {5361U, 34816U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver cx8800_pci_driver =
     {{0, 0}, "cx8800", (struct pci_device_id const *)(& cx8800_pci_tbl), & cx8800_initdev,
    & cx8800_finidev, & cx8800_suspend, 0, 0, & cx8800_resume, 0, 0, 0, {0, 0, 0,
                                                                         0, (_Bool)0,
                                                                         0, 0, 0,
                                                                         0, 0, 0,
                                                                         0, 0, 0,
                                                                         0}, {{{{{{0U}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                              {0,
                                                                               0}}};
static int cx8800_pci_driver_init(void)
{
  int tmp ;
  {
  {
  tmp = ldv___pci_register_driver_60(& cx8800_pci_driver, & __this_module, "cx8800");
  }
  return (tmp);
}
}
static void cx8800_pci_driver_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_61(& cx8800_pci_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_cx8800_pci_driver_exit_15_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_cx8800_pci_driver_init_15_13(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_allocate_external_0(void) ;
int ldv_del_timer(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_13_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_10_15_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_9_15_5(void) ;
void ldv_dispatch_deregister_io_instance_12_15_6(void) ;
void ldv_dispatch_irq_deregister_10_1(int arg0 ) ;
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_14_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_10_15_7(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_9_15_8(void) ;
void ldv_dispatch_register_io_instance_12_15_9(void) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 ) ;
void ldv_entry_EMGentry_15(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_io_instance_callback_7_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_7_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_7_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_7_24(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_7_25(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_7_26(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_7_27(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_7_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_7_33(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 ) ;
void ldv_io_instance_callback_7_34(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_7_37(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_7_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_7_39(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_7_4(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                  struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_7_40(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_7_41(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 ) ;
void ldv_io_instance_callback_7_42(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_43(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_44(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_7_45(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_7_48(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 ) ;
void ldv_io_instance_callback_7_49(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_7_52(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_7_53(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_7_54(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_7_55(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_7_56(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_57(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_7_58(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_8_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_8_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 ) ;
void ldv_io_instance_callback_8_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_8_24(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_25(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_8_26(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_8_27(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_8_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_8_33(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 ) ;
void ldv_io_instance_callback_8_34(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 ) ;
void ldv_io_instance_callback_8_37(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_8_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_39(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_8_4(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                  struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_8_40(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_8_41(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 ) ;
void ldv_io_instance_callback_8_42(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_43(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_44(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 ) ;
void ldv_io_instance_callback_8_45(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_8_48(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 ) ;
void ldv_io_instance_callback_8_49(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 ) ;
void ldv_io_instance_callback_8_52(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 ) ;
void ldv_io_instance_callback_8_53(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_8_54(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_8_55(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_8_56(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_57(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_8_58(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
int ldv_io_instance_probe_7_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_io_instance_probe_8_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_7_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_8_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 ) ;
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_1(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_5(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_11(void) ;
void ldv_switch_automaton_state_1_20(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_5(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_switch_automaton_state_4_1(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_switch_automaton_state_5_1(void) ;
void ldv_switch_automaton_state_5_5(void) ;
void ldv_switch_automaton_state_6_1(void) ;
void ldv_switch_automaton_state_6_3(void) ;
void ldv_switch_automaton_state_7_14(void) ;
void ldv_switch_automaton_state_7_5(void) ;
void ldv_switch_automaton_state_8_14(void) ;
void ldv_switch_automaton_state_8_5(void) ;
void ldv_timer_instance_callback_6_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_6(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_7(void *arg0 ) ;
void ldv_v4l2_file_operations_io_instance_8(void *arg0 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
void (*ldv_15_exit_cx8800_pci_driver_exit_default)(void) ;
int (*ldv_15_init_cx8800_pci_driver_init_default)(void) ;
int ldv_15_ret_default ;
struct pci_driver *ldv_1_container_pci_driver ;
struct pci_dev *ldv_1_resource_dev ;
struct pm_message ldv_1_resource_pm_message ;
struct pci_device_id *ldv_1_resource_struct_pci_device_id_ptr ;
int ldv_1_ret_default ;
int (*ldv_2_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_2_container_struct_v4l2_ctrl_ptr ;
int (*ldv_3_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_3_container_struct_v4l2_ctrl_ptr ;
int (*ldv_4_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) ;
void (*ldv_4_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
void (*ldv_4_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
int (*ldv_4_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
enum v4l2_field ldv_4_container_enum_v4l2_field ;
struct videobuf_buffer *ldv_4_container_struct_videobuf_buffer_ptr ;
struct videobuf_queue *ldv_4_container_struct_videobuf_queue_ptr ;
unsigned int *ldv_4_ldv_param_9_1_default ;
unsigned int *ldv_4_ldv_param_9_2_default ;
int (*ldv_5_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) ;
void (*ldv_5_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
void (*ldv_5_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
int (*ldv_5_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
enum v4l2_field ldv_5_container_enum_v4l2_field ;
struct videobuf_buffer *ldv_5_container_struct_videobuf_buffer_ptr ;
struct videobuf_queue *ldv_5_container_struct_videobuf_queue_ptr ;
unsigned int *ldv_5_ldv_param_9_1_default ;
unsigned int *ldv_5_ldv_param_9_2_default ;
struct timer_list *ldv_6_container_timer_list ;
int (*ldv_7_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_7_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_7_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_7_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
int (*ldv_7_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_7_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
int (*ldv_7_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_7_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_7_callback_vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
int (*ldv_7_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
int (*ldv_7_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_7_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_7_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_7_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
int (*ldv_7_callback_vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_7_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_7_callback_vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
int (*ldv_7_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
int (*ldv_7_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_7_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_7_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_7_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_7_callback_vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_7_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
struct v4l2_file_operations *ldv_7_container_v4l2_file_operations ;
char *ldv_7_ldv_param_18_1_default ;
unsigned long ldv_7_ldv_param_18_2_default ;
long long *ldv_7_ldv_param_18_3_default ;
unsigned int ldv_7_ldv_param_21_1_default ;
unsigned long ldv_7_ldv_param_21_2_default ;
unsigned int *ldv_7_ldv_param_30_2_default ;
unsigned long long *ldv_7_ldv_param_34_2_default ;
unsigned int ldv_7_ldv_param_45_2_default ;
unsigned long long ldv_7_ldv_param_49_2_default ;
enum v4l2_buf_type ldv_7_resource_enum_v4l2_buf_type ;
struct file *ldv_7_resource_file ;
struct poll_table_struct *ldv_7_resource_struct_poll_table_struct_ptr ;
struct v4l2_buffer *ldv_7_resource_struct_v4l2_buffer_ptr ;
struct v4l2_capability *ldv_7_resource_struct_v4l2_capability_ptr ;
struct v4l2_dbg_register *ldv_7_resource_struct_v4l2_dbg_register_ptr ;
struct v4l2_event_subscription *ldv_7_resource_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_7_resource_struct_v4l2_fh_ptr ;
struct v4l2_fmtdesc *ldv_7_resource_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_7_resource_struct_v4l2_format_ptr ;
struct v4l2_frequency *ldv_7_resource_struct_v4l2_frequency_ptr ;
struct v4l2_input *ldv_7_resource_struct_v4l2_input_ptr ;
struct v4l2_requestbuffers *ldv_7_resource_struct_v4l2_requestbuffers_ptr ;
struct v4l2_tuner *ldv_7_resource_struct_v4l2_tuner_ptr ;
struct vm_area_struct *ldv_7_resource_struct_vm_area_struct_ptr ;
int ldv_7_ret_default ;
int (*ldv_8_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_8_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_8_callback_read)(struct file * , char * , unsigned long , long long * ) ;
long (*ldv_8_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
int (*ldv_8_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_8_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_8_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
int (*ldv_8_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_8_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_8_callback_vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
int (*ldv_8_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) ;
int (*ldv_8_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_8_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_8_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_8_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_8_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
int (*ldv_8_callback_vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
int (*ldv_8_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_8_callback_vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
int (*ldv_8_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) ;
int (*ldv_8_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
int (*ldv_8_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_8_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_8_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_8_callback_vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_8_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
struct v4l2_file_operations *ldv_8_container_v4l2_file_operations ;
char *ldv_8_ldv_param_18_1_default ;
unsigned long ldv_8_ldv_param_18_2_default ;
long long *ldv_8_ldv_param_18_3_default ;
unsigned int ldv_8_ldv_param_21_1_default ;
unsigned long ldv_8_ldv_param_21_2_default ;
unsigned int *ldv_8_ldv_param_30_2_default ;
unsigned long long *ldv_8_ldv_param_34_2_default ;
unsigned int ldv_8_ldv_param_45_2_default ;
unsigned long long ldv_8_ldv_param_49_2_default ;
enum v4l2_buf_type ldv_8_resource_enum_v4l2_buf_type ;
struct file *ldv_8_resource_file ;
struct poll_table_struct *ldv_8_resource_struct_poll_table_struct_ptr ;
struct v4l2_buffer *ldv_8_resource_struct_v4l2_buffer_ptr ;
struct v4l2_capability *ldv_8_resource_struct_v4l2_capability_ptr ;
struct v4l2_dbg_register *ldv_8_resource_struct_v4l2_dbg_register_ptr ;
struct v4l2_event_subscription *ldv_8_resource_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_8_resource_struct_v4l2_fh_ptr ;
struct v4l2_fmtdesc *ldv_8_resource_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_8_resource_struct_v4l2_format_ptr ;
struct v4l2_frequency *ldv_8_resource_struct_v4l2_frequency_ptr ;
struct v4l2_input *ldv_8_resource_struct_v4l2_input_ptr ;
struct v4l2_requestbuffers *ldv_8_resource_struct_v4l2_requestbuffers_ptr ;
struct v4l2_tuner *ldv_8_resource_struct_v4l2_tuner_ptr ;
struct vm_area_struct *ldv_8_resource_struct_vm_area_struct_ptr ;
int ldv_8_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_15 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_5 ;
int ldv_statevar_6 ;
int ldv_statevar_7 ;
int ldv_statevar_8 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & cx8800_irq;
void (*ldv_15_exit_cx8800_pci_driver_exit_default)(void) = & cx8800_pci_driver_exit;
int (*ldv_15_init_cx8800_pci_driver_init_default)(void) = & cx8800_pci_driver_init;
int (*ldv_2_callback_s_ctrl)(struct v4l2_ctrl * ) = & cx8800_s_aud_ctrl;
int (*ldv_3_callback_s_ctrl)(struct v4l2_ctrl * ) = & cx8800_s_vid_ctrl;
int (*ldv_4_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) = & buffer_prepare;
void (*ldv_4_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) = & buffer_queue;
void (*ldv_4_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) = & buffer_release;
int (*ldv_4_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) = & buffer_setup;
unsigned int (*ldv_7_callback_poll)(struct file * , struct poll_table_struct * ) = & v4l2_ctrl_poll;
long (*ldv_7_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_7_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_dqbuf;
int (*ldv_7_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & vidioc_enum_fmt_vid_cap;
int (*ldv_7_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) = & vidioc_enum_input;
int (*ldv_7_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & cx8800_vbi_fmt;
int (*ldv_7_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap;
int (*ldv_7_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) = & vidioc_g_frequency;
int (*ldv_7_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & vidioc_g_input;
int (*ldv_7_callback_vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) = & vidioc_g_register;
int (*ldv_7_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) = & vidioc_g_std;
int (*ldv_7_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) = & vidioc_g_tuner;
int (*ldv_7_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_qbuf;
int (*ldv_7_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_querybuf;
int (*ldv_7_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & vidioc_querycap;
int (*ldv_7_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) = & vidioc_reqbufs;
int (*ldv_7_callback_vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & cx8800_vbi_fmt;
int (*ldv_7_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_cap;
int (*ldv_7_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) = (int (*)(struct file * ,
            void * , struct v4l2_frequency * ))(& vidioc_s_frequency);
int (*ldv_7_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & vidioc_s_input;
int (*ldv_7_callback_vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register * ) = (int (*)(struct file * ,
            void * , struct v4l2_dbg_register * ))(& vidioc_s_register);
int (*ldv_7_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) = & vidioc_s_std;
int (*ldv_7_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) = (int (*)(struct file * ,
            void * , struct v4l2_tuner * ))(& vidioc_s_tuner);
int (*ldv_7_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamoff;
int (*ldv_7_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamon;
int (*ldv_7_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_7_callback_vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & cx8800_vbi_fmt;
int (*ldv_7_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_try_fmt_vid_cap;
int (*ldv_7_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
int (*ldv_8_callback_mmap)(struct file * , struct vm_area_struct * ) = & video_mmap;
unsigned int (*ldv_8_callback_poll)(struct file * , struct poll_table_struct * ) = & video_poll;
long (*ldv_8_callback_read)(struct file * , char * , unsigned long , long long * ) = & video_read;
long (*ldv_8_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
int (*ldv_8_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_dqbuf;
int (*ldv_8_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & vidioc_enum_fmt_vid_cap;
int (*ldv_8_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) = & vidioc_enum_input;
int (*ldv_8_callback_vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & cx8800_vbi_fmt;
int (*ldv_8_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap;
int (*ldv_8_callback_vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) = & vidioc_g_frequency;
int (*ldv_8_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & vidioc_g_input;
int (*ldv_8_callback_vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) = & vidioc_g_register;
int (*ldv_8_callback_vidioc_g_std)(struct file * , void * , unsigned long long * ) = & vidioc_g_std;
int (*ldv_8_callback_vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) = & vidioc_g_tuner;
int (*ldv_8_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_qbuf;
int (*ldv_8_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_querybuf;
int (*ldv_8_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & vidioc_querycap;
int (*ldv_8_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) = & vidioc_reqbufs;
int (*ldv_8_callback_vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & cx8800_vbi_fmt;
int (*ldv_8_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_cap;
int (*ldv_8_callback_vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency * ) = (int (*)(struct file * ,
            void * , struct v4l2_frequency * ))(& vidioc_s_frequency);
int (*ldv_8_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & vidioc_s_input;
int (*ldv_8_callback_vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register * ) = (int (*)(struct file * ,
            void * , struct v4l2_dbg_register * ))(& vidioc_s_register);
int (*ldv_8_callback_vidioc_s_std)(struct file * , void * , unsigned long long ) = & vidioc_s_std;
int (*ldv_8_callback_vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner * ) = (int (*)(struct file * ,
            void * , struct v4l2_tuner * ))(& vidioc_s_tuner);
int (*ldv_8_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamoff;
int (*ldv_8_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamon;
int (*ldv_8_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_8_callback_vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) = & cx8800_vbi_fmt;
int (*ldv_8_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_try_fmt_vid_cap;
int (*ldv_8_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
void ldv_EMGentry_exit_cx8800_pci_driver_exit_15_2(void (*arg0)(void) )
{
  {
  {
  cx8800_pci_driver_exit();
  }
  return;
}
}
int ldv_EMGentry_init_cx8800_pci_driver_init_15_13(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = cx8800_pci_driver_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_14_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_14_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_1 == 20);
    ldv_dispatch_register_14_2(ldv_14_pci_driver_pci_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_allocate_external_0(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  void *tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  void *tmp___21 ;
  void *tmp___22 ;
  void *tmp___23 ;
  void *tmp___24 ;
  void *tmp___25 ;
  void *tmp___26 ;
  void *tmp___27 ;
  void *tmp___28 ;
  void *tmp___29 ;
  void *tmp___30 ;
  void *tmp___31 ;
  void *tmp___32 ;
  void *tmp___33 ;
  void *tmp___34 ;
  void *tmp___35 ;
  void *tmp___36 ;
  void *tmp___37 ;
  void *tmp___38 ;
  void *tmp___39 ;
  void *tmp___40 ;
  void *tmp___41 ;
  void *tmp___42 ;
  void *tmp___43 ;
  void *tmp___44 ;
  void *tmp___45 ;
  void *tmp___46 ;
  void *tmp___47 ;
  void *tmp___48 ;
  void *tmp___49 ;
  {
  {
  ldv_0_data_data = external_allocated_data();
  tmp = external_allocated_data();
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))tmp;
  tmp___0 = external_allocated_data();
  ldv_1_resource_dev = (struct pci_dev *)tmp___0;
  tmp___1 = external_allocated_data();
  ldv_2_container_struct_v4l2_ctrl_ptr = (struct v4l2_ctrl *)tmp___1;
  tmp___2 = external_allocated_data();
  ldv_3_container_struct_v4l2_ctrl_ptr = (struct v4l2_ctrl *)tmp___2;
  tmp___3 = external_allocated_data();
  ldv_4_container_struct_videobuf_buffer_ptr = (struct videobuf_buffer *)tmp___3;
  tmp___4 = external_allocated_data();
  ldv_4_container_struct_videobuf_queue_ptr = (struct videobuf_queue *)tmp___4;
  tmp___5 = external_allocated_data();
  ldv_4_ldv_param_9_1_default = (unsigned int *)tmp___5;
  tmp___6 = external_allocated_data();
  ldv_4_ldv_param_9_2_default = (unsigned int *)tmp___6;
  tmp___7 = external_allocated_data();
  ldv_5_container_struct_videobuf_buffer_ptr = (struct videobuf_buffer *)tmp___7;
  tmp___8 = external_allocated_data();
  ldv_5_container_struct_videobuf_queue_ptr = (struct videobuf_queue *)tmp___8;
  tmp___9 = external_allocated_data();
  ldv_5_ldv_param_9_1_default = (unsigned int *)tmp___9;
  tmp___10 = external_allocated_data();
  ldv_5_ldv_param_9_2_default = (unsigned int *)tmp___10;
  tmp___11 = external_allocated_data();
  ldv_6_container_timer_list = (struct timer_list *)tmp___11;
  tmp___12 = external_allocated_data();
  ldv_7_callback_mmap = (int (*)(struct file * , struct vm_area_struct * ))tmp___12;
  tmp___13 = external_allocated_data();
  ldv_7_callback_read = (long (*)(struct file * , char * , unsigned long , long long * ))tmp___13;
  tmp___14 = external_allocated_data();
  ldv_7_ldv_param_18_1_default = (char *)tmp___14;
  tmp___15 = external_allocated_data();
  ldv_7_ldv_param_18_3_default = (long long *)tmp___15;
  tmp___16 = external_allocated_data();
  ldv_7_ldv_param_30_2_default = (unsigned int *)tmp___16;
  tmp___17 = external_allocated_data();
  ldv_7_ldv_param_34_2_default = (unsigned long long *)tmp___17;
  tmp___18 = external_allocated_data();
  ldv_7_resource_file = (struct file *)tmp___18;
  tmp___19 = external_allocated_data();
  ldv_7_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___19;
  tmp___20 = external_allocated_data();
  ldv_7_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___20;
  tmp___21 = external_allocated_data();
  ldv_7_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___21;
  tmp___22 = external_allocated_data();
  ldv_7_resource_struct_v4l2_dbg_register_ptr = (struct v4l2_dbg_register *)tmp___22;
  tmp___23 = external_allocated_data();
  ldv_7_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___23;
  tmp___24 = external_allocated_data();
  ldv_7_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___24;
  tmp___25 = external_allocated_data();
  ldv_7_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___25;
  tmp___26 = external_allocated_data();
  ldv_7_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___26;
  tmp___27 = external_allocated_data();
  ldv_7_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___27;
  tmp___28 = external_allocated_data();
  ldv_7_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___28;
  tmp___29 = external_allocated_data();
  ldv_7_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___29;
  tmp___30 = external_allocated_data();
  ldv_7_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___30;
  tmp___31 = external_allocated_data();
  ldv_7_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___31;
  tmp___32 = external_allocated_data();
  ldv_8_ldv_param_18_1_default = (char *)tmp___32;
  tmp___33 = external_allocated_data();
  ldv_8_ldv_param_18_3_default = (long long *)tmp___33;
  tmp___34 = external_allocated_data();
  ldv_8_ldv_param_30_2_default = (unsigned int *)tmp___34;
  tmp___35 = external_allocated_data();
  ldv_8_ldv_param_34_2_default = (unsigned long long *)tmp___35;
  tmp___36 = external_allocated_data();
  ldv_8_resource_file = (struct file *)tmp___36;
  tmp___37 = external_allocated_data();
  ldv_8_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___37;
  tmp___38 = external_allocated_data();
  ldv_8_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___38;
  tmp___39 = external_allocated_data();
  ldv_8_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___39;
  tmp___40 = external_allocated_data();
  ldv_8_resource_struct_v4l2_dbg_register_ptr = (struct v4l2_dbg_register *)tmp___40;
  tmp___41 = external_allocated_data();
  ldv_8_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___41;
  tmp___42 = external_allocated_data();
  ldv_8_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___42;
  tmp___43 = external_allocated_data();
  ldv_8_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___43;
  tmp___44 = external_allocated_data();
  ldv_8_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___44;
  tmp___45 = external_allocated_data();
  ldv_8_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___45;
  tmp___46 = external_allocated_data();
  ldv_8_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___46;
  tmp___47 = external_allocated_data();
  ldv_8_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___47;
  tmp___48 = external_allocated_data();
  ldv_8_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___48;
  tmp___49 = external_allocated_data();
  ldv_8_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___49;
  }
  return;
}
}
void ldv_dispatch_deregister_13_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_1_container_pci_driver = arg0;
  ldv_switch_automaton_state_1_11();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_10_15_4(void)
{
  {
  {
  ldv_switch_automaton_state_4_1();
  ldv_switch_automaton_state_5_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_9_15_5(void)
{
  {
  {
  ldv_switch_automaton_state_2_1();
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_12_15_6(void)
{
  {
  {
  ldv_switch_automaton_state_8_5();
  ldv_switch_automaton_state_7_5();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_10_1(int arg0 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_12_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_register_14_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_1_container_pci_driver = arg0;
  ldv_switch_automaton_state_1_20();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_10_15_7(void)
{
  {
  {
  ldv_switch_automaton_state_4_5();
  ldv_switch_automaton_state_5_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_9_15_8(void)
{
  {
  {
  ldv_switch_automaton_state_2_5();
  ldv_switch_automaton_state_3_5();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_12_15_9(void)
{
  {
  {
  ldv_switch_automaton_state_8_14();
  ldv_switch_automaton_state_7_14();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  cx8800_s_aud_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  cx8800_s_vid_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 )
{
  {
  {
  buffer_prepare(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  buffer_queue(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  buffer_release(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 )
{
  {
  {
  buffer_setup(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_entry_EMGentry_15(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_15 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_15 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_15 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_15 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_15 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_15 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_15 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_15 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_15 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_15 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_15 == 13) {
    goto case_13;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 12);
  ldv_EMGentry_exit_cx8800_pci_driver_exit_15_2(ldv_15_exit_cx8800_pci_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_15 = 13;
  }
  goto ldv_52287;
  case_3:
  {
  ldv_assume(ldv_statevar_1 == 12);
  ldv_EMGentry_exit_cx8800_pci_driver_exit_15_2(ldv_15_exit_cx8800_pci_driver_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_15 = 13;
  }
  goto ldv_52287;
  case_4:
  {
  ldv_assume(ldv_statevar_4 == 1 || ldv_statevar_5 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_10_15_4();
  ldv_statevar_15 = 2;
  }
  goto ldv_52287;
  case_5:
  {
  ldv_assume(ldv_statevar_2 == 1 || ldv_statevar_3 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_9_15_5();
  ldv_statevar_15 = 4;
  }
  goto ldv_52287;
  case_6:
  {
  ldv_assume(ldv_statevar_7 == 6 || ldv_statevar_8 == 6);
  ldv_dispatch_deregister_io_instance_12_15_6();
  ldv_statevar_15 = 5;
  }
  goto ldv_52287;
  case_7:
  {
  ldv_assume(ldv_statevar_4 == 5 || ldv_statevar_5 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_10_15_7();
  ldv_statevar_15 = 6;
  }
  goto ldv_52287;
  case_8:
  {
  ldv_assume(ldv_statevar_2 == 5 || ldv_statevar_3 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_9_15_8();
  ldv_statevar_15 = 7;
  }
  goto ldv_52287;
  case_9:
  {
  ldv_assume(ldv_statevar_7 == 14 || ldv_statevar_8 == 14);
  ldv_dispatch_register_io_instance_12_15_9();
  ldv_statevar_15 = 8;
  }
  goto ldv_52287;
  case_10:
  {
  ldv_assume(ldv_15_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_15 = 3;
  } else {
    ldv_statevar_15 = 9;
  }
  goto ldv_52287;
  case_12:
  {
  ldv_assume(ldv_15_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_15 = 13;
  }
  goto ldv_52287;
  case_13:
  {
  ldv_assume(ldv_statevar_1 == 20);
  ldv_15_ret_default = ldv_EMGentry_init_cx8800_pci_driver_init_15_13(ldv_15_init_cx8800_pci_driver_init_default);
  ldv_15_ret_default = ldv_post_init(ldv_15_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_15 = 10;
  } else {
    ldv_statevar_15 = 12;
  }
  goto ldv_52287;
  switch_default: ;
  switch_break: ;
  }
  ldv_52287: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_15 = 13;
  ldv_statevar_0 = 6;
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  ldv_statevar_2 = 5;
  ldv_statevar_3 = 5;
  ldv_statevar_4 = 5;
  ldv_statevar_5 = 5;
  ldv_statevar_6 = 3;
  ldv_7_ret_default = 1;
  ldv_statevar_7 = 14;
  ldv_8_ret_default = 1;
  ldv_statevar_8 = 14;
  }
  ldv_52313:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_15((void *)0);
  }
  goto ldv_52302;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_52302;
  case_2:
  {
  ldv_pci_pci_instance_1((void *)0);
  }
  goto ldv_52302;
  case_3:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2((void *)0);
  }
  goto ldv_52302;
  case_4:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_3((void *)0);
  }
  goto ldv_52302;
  case_5:
  {
  ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_4((void *)0);
  }
  goto ldv_52302;
  case_6:
  {
  ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_5((void *)0);
  }
  goto ldv_52302;
  case_7:
  {
  ldv_timer_timer_instance_6((void *)0);
  }
  goto ldv_52302;
  case_8:
  {
  ldv_v4l2_file_operations_io_instance_7((void *)0);
  }
  goto ldv_52302;
  case_9:
  {
  ldv_v4l2_file_operations_io_instance_8((void *)0);
  }
  goto ldv_52302;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_52302: ;
  goto ldv_52313;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_10_line_line ;
  {
  {
  ldv_10_line_line = arg1;
  ldv_assume(ldv_statevar_0 == 2);
  ldv_dispatch_irq_deregister_10_1(ldv_10_line_line);
  }
  return;
  return;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = cx8800_irq(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_0(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
  ldv_statevar_0 = 6;
  }
  goto ldv_52340;
  case_4:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_0_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line, ldv_0_data_data);
    }
  } else {
  }
  ldv_statevar_0 = 6;
  goto ldv_52340;
  case_5:
  {
  ldv_assume(ldv_statevar_6 == 3);
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_52340;
  case_6: ;
  goto ldv_52340;
  switch_default: ;
  switch_break: ;
  }
  ldv_52340: ;
  return;
}
}
void ldv_io_instance_callback_7_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  v4l2_ctrl_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_7_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_7_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_24(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_25(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_26(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_27(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx8800_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_g_frequency(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_33(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 )
{
  {
  {
  vidioc_g_register(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_34(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_37(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_g_tuner(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_39(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_4(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                  struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_7_40(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_41(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 )
{
  {
  {
  vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_42(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx8800_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_43(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_44(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_s_frequency(arg1, arg2, (struct v4l2_frequency const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_45(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_48(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 )
{
  {
  {
  vidioc_s_register(arg1, arg2, (struct v4l2_dbg_register const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_49(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_52(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_s_tuner(arg1, arg2, (struct v4l2_tuner const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_53(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_54(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_55(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_7_56(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx8800_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_57(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_7_58(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_17(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  video_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_18(long (*arg0)(struct file * , char * , unsigned long ,
                                                long long * ) , struct file *arg1 ,
                                   char *arg2 , unsigned long arg3 , long long *arg4 )
{
  {
  {
  video_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_io_instance_callback_8_21(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_24(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_25(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_26(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_27(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx8800_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_29(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_g_frequency(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_30(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_33(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 )
{
  {
  {
  vidioc_g_register(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_34(int (*arg0)(struct file * , void * , unsigned long long * ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long *arg3 )
{
  {
  {
  vidioc_g_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_37(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_g_tuner(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_38(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_39(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_4(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                  struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  video_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_40(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_41(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 )
{
  {
  {
  vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_42(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx8800_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_43(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_44(int (*arg0)(struct file * , void * , struct v4l2_frequency * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_frequency *arg3 )
{
  {
  {
  vidioc_s_frequency(arg1, arg2, (struct v4l2_frequency const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_45(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_48(int (*arg0)(struct file * , void * , struct v4l2_dbg_register * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_dbg_register *arg3 )
{
  {
  {
  vidioc_s_register(arg1, arg2, (struct v4l2_dbg_register const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_49(int (*arg0)(struct file * , void * , unsigned long long ) ,
                                   struct file *arg1 , void *arg2 , unsigned long long arg3 )
{
  {
  {
  vidioc_s_std(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_52(int (*arg0)(struct file * , void * , struct v4l2_tuner * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_tuner *arg3 )
{
  {
  {
  vidioc_s_tuner(arg1, arg2, (struct v4l2_tuner const *)arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_53(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_54(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_55(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_8_56(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  cx8800_vbi_fmt(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_57(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_8_58(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
int ldv_io_instance_probe_7_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = video_open(arg1);
  }
  return (tmp);
}
}
int ldv_io_instance_probe_8_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = video_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_7_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  video_release(arg1);
  }
  return;
}
}
void ldv_io_instance_release_8_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  video_release(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = cx8800_initdev(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  cx8800_finidev(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  cx8800_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = cx8800_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_1(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_1 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_1 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_1 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_1 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_52956;
  case_2:
  {
  ldv_assume(ldv_statevar_0 == 2);
  ldv_pci_instance_release_1_2(ldv_1_container_pci_driver->remove, ldv_1_resource_dev);
  ldv_statevar_1 = 1;
  }
  goto ldv_52956;
  case_3: ;
  if ((unsigned long )ldv_1_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_1_3(ldv_1_container_pci_driver->shutdown, ldv_1_resource_dev);
    }
  } else {
  }
  ldv_statevar_1 = 2;
  goto ldv_52956;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_52956;
  case_5:
  {
  ldv_assume(ldv_statevar_6 == 3);
  ldv_pci_instance_resume_1_5(ldv_1_container_pci_driver->resume, ldv_1_resource_dev);
  ldv_statevar_1 = 4;
  }
  goto ldv_52956;
  case_6: ;
  if ((unsigned long )ldv_1_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_1_6(ldv_1_container_pci_driver->resume_early, ldv_1_resource_dev);
    }
  } else {
  }
  ldv_statevar_1 = 5;
  goto ldv_52956;
  case_7: ;
  if ((unsigned long )ldv_1_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_late_1_7(ldv_1_container_pci_driver->suspend_late,
                                                          ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  ldv_statevar_1 = 6;
  }
  goto ldv_52956;
  case_8:
  {
  ldv_assume(ldv_statevar_6 == 2);
  ldv_1_ret_default = ldv_pci_instance_suspend_1_8(ldv_1_container_pci_driver->suspend,
                                                   ldv_1_resource_dev, ldv_1_resource_pm_message);
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  ldv_statevar_1 = 7;
  }
  goto ldv_52956;
  case_9:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_52956;
  case_10:
  ldv_statevar_1 = 9;
  goto ldv_52956;
  case_12:
  {
  ldv_free((void *)ldv_1_resource_dev);
  ldv_free((void *)ldv_1_resource_struct_pci_device_id_ptr);
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  }
  goto ldv_52956;
  case_14:
  {
  ldv_assume(ldv_1_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_52956;
  case_16:
  {
  ldv_assume(ldv_1_ret_default == 0);
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_52956;
  case_17:
  {
  ldv_assume(ldv_statevar_0 == 6 || ldv_statevar_0 == 2);
  ldv_pre_probe();
  ldv_1_ret_default = ldv_pci_instance_probe_1_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_1_container_pci_driver->probe,
                                                  ldv_1_resource_dev, ldv_1_resource_struct_pci_device_id_ptr);
  ldv_1_ret_default = ldv_post_probe(ldv_1_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_1 = 14;
  } else {
    ldv_statevar_1 = 16;
  }
  goto ldv_52956;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_1_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_1_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_52956;
  case_20: ;
  goto ldv_52956;
  switch_default: ;
  switch_break: ;
  }
  ldv_52956: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_13_pci_driver_pci_driver ;
  {
  {
  ldv_13_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_1 == 12);
  ldv_dispatch_deregister_13_1(ldv_13_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_12_callback_handler)(int , void * ) ;
  void *ldv_12_data_data ;
  int ldv_12_line_line ;
  enum irqreturn (*ldv_12_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_12_line_line = (int )arg1;
    ldv_12_callback_handler = arg2;
    ldv_12_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_12_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_12_2(ldv_12_line_line, ldv_12_callback_handler, ldv_12_thread_thread,
                                   ldv_12_data_data);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53000;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 1;
  } else {
    ldv_statevar_2 = 3;
  }
  goto ldv_53000;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_s_ctrl, ldv_2_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_53000;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 1;
  } else {
    ldv_statevar_2 = 3;
  }
  goto ldv_53000;
  case_5: ;
  goto ldv_53000;
  switch_default: ;
  switch_break: ;
  }
  ldv_53000: ;
  return;
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_3(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_3 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_3 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53010;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_3 = 1;
  } else {
    ldv_statevar_3 = 3;
  }
  goto ldv_53010;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_s_ctrl, ldv_3_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_53010;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_3 = 1;
  } else {
    ldv_statevar_3 = 3;
  }
  goto ldv_53010;
  case_5: ;
  goto ldv_53010;
  switch_default: ;
  switch_break: ;
  }
  ldv_53010: ;
  return;
}
}
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_4(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_4 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_4 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_4 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_4 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_4 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_4 == 10) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53020;
  case_2:
  {
  ldv_statevar_4 = ldv_switch_1();
  }
  goto ldv_53020;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_buf_prepare, ldv_4_container_struct_videobuf_queue_ptr,
                                               ldv_4_container_struct_videobuf_buffer_ptr,
                                               ldv_4_container_enum_v4l2_field);
  ldv_statevar_4 = 2;
  }
  goto ldv_53020;
  case_4:
  {
  ldv_statevar_4 = ldv_switch_1();
  }
  goto ldv_53020;
  case_5: ;
  goto ldv_53020;
  case_7:
  {
  ldv_assume(ldv_statevar_6 == 3);
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_buf_queue, ldv_4_container_struct_videobuf_queue_ptr,
                                               ldv_4_container_struct_videobuf_buffer_ptr);
  ldv_statevar_4 = 2;
  }
  goto ldv_53020;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_4_8(ldv_4_callback_buf_release, ldv_4_container_struct_videobuf_queue_ptr,
                                               ldv_4_container_struct_videobuf_buffer_ptr);
  ldv_statevar_4 = 2;
  }
  goto ldv_53020;
  case_10:
  {
  tmp = ldv_xmalloc(4UL);
  ldv_4_ldv_param_9_1_default = (unsigned int *)tmp;
  tmp___0 = ldv_xmalloc(4UL);
  ldv_4_ldv_param_9_2_default = (unsigned int *)tmp___0;
  ldv_dummy_resourceless_instance_callback_4_9(ldv_4_callback_buf_setup, ldv_4_container_struct_videobuf_queue_ptr,
                                               ldv_4_ldv_param_9_1_default, ldv_4_ldv_param_9_2_default);
  ldv_free((void *)ldv_4_ldv_param_9_1_default);
  ldv_free((void *)ldv_4_ldv_param_9_2_default);
  ldv_statevar_4 = 2;
  }
  goto ldv_53020;
  switch_default: ;
  switch_break: ;
  }
  ldv_53020: ;
  return;
}
}
void ldv_struct_videobuf_queue_ops_dummy_resourceless_instance_5(void *arg0 )
{
  void *tmp ;
  void *tmp___0 ;
  {
  {
  if (ldv_statevar_5 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_5 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_5 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_5 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_5 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_5 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_5 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_5 == 10) {
    goto case_10;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_53033;
  case_2:
  {
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_53033;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_buf_prepare, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_container_struct_videobuf_buffer_ptr,
                                               ldv_5_container_enum_v4l2_field);
  ldv_statevar_5 = 2;
  }
  goto ldv_53033;
  case_4:
  {
  ldv_statevar_5 = ldv_switch_1();
  }
  goto ldv_53033;
  case_5: ;
  goto ldv_53033;
  case_7:
  {
  ldv_assume(ldv_statevar_6 == 3);
  ldv_dummy_resourceless_instance_callback_5_7(ldv_5_callback_buf_queue, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_container_struct_videobuf_buffer_ptr);
  ldv_statevar_5 = 2;
  }
  goto ldv_53033;
  case_8:
  {
  ldv_dummy_resourceless_instance_callback_5_8(ldv_5_callback_buf_release, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_container_struct_videobuf_buffer_ptr);
  ldv_statevar_5 = 2;
  }
  goto ldv_53033;
  case_10:
  {
  tmp = ldv_xmalloc(4UL);
  ldv_5_ldv_param_9_1_default = (unsigned int *)tmp;
  tmp___0 = ldv_xmalloc(4UL);
  ldv_5_ldv_param_9_2_default = (unsigned int *)tmp___0;
  ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_buf_setup, ldv_5_container_struct_videobuf_queue_ptr,
                                               ldv_5_ldv_param_9_1_default, ldv_5_ldv_param_9_2_default);
  ldv_free((void *)ldv_5_ldv_param_9_1_default);
  ldv_free((void *)ldv_5_ldv_param_9_2_default);
  ldv_statevar_5 = 2;
  }
  goto ldv_53033;
  switch_default: ;
  switch_break: ;
  }
  ldv_53033: ;
  return;
}
}
int ldv_switch_0(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  case_3: ;
  return (8);
  case_4: ;
  return (10);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_2(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  if (tmp == 23) {
    goto case_23;
  } else {
  }
  if (tmp == 24) {
    goto case_24;
  } else {
  }
  if (tmp == 25) {
    goto case_25;
  } else {
  }
  if (tmp == 26) {
    goto case_26;
  } else {
  }
  if (tmp == 27) {
    goto case_27;
  } else {
  }
  if (tmp == 28) {
    goto case_28;
  } else {
  }
  if (tmp == 29) {
    goto case_29;
  } else {
  }
  if (tmp == 30) {
    goto case_30;
  } else {
  }
  if (tmp == 31) {
    goto case_31;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (19);
  case_4: ;
  return (22);
  case_5: ;
  return (24);
  case_6: ;
  return (25);
  case_7: ;
  return (26);
  case_8: ;
  return (27);
  case_9: ;
  return (28);
  case_10: ;
  return (29);
  case_11: ;
  return (31);
  case_12: ;
  return (33);
  case_13: ;
  return (35);
  case_14: ;
  return (37);
  case_15: ;
  return (38);
  case_16: ;
  return (39);
  case_17: ;
  return (40);
  case_18: ;
  return (41);
  case_19: ;
  return (42);
  case_20: ;
  return (43);
  case_21: ;
  return (44);
  case_22: ;
  return (46);
  case_23: ;
  return (48);
  case_24: ;
  return (50);
  case_25: ;
  return (52);
  case_26: ;
  return (53);
  case_27: ;
  return (54);
  case_28: ;
  return (55);
  case_29: ;
  return (56);
  case_30: ;
  return (57);
  case_31: ;
  return (58);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 6;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_11(void)
{
  {
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  return;
}
}
void ldv_switch_automaton_state_1_20(void)
{
  {
  ldv_statevar_1 = 19;
  return;
}
}
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 5;
  return;
}
}
void ldv_switch_automaton_state_2_5(void)
{
  {
  ldv_statevar_2 = 4;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 5;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_statevar_3 = 4;
  return;
}
}
void ldv_switch_automaton_state_4_1(void)
{
  {
  ldv_statevar_4 = 5;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_statevar_4 = 4;
  return;
}
}
void ldv_switch_automaton_state_5_1(void)
{
  {
  ldv_statevar_5 = 5;
  return;
}
}
void ldv_switch_automaton_state_5_5(void)
{
  {
  ldv_statevar_5 = 4;
  return;
}
}
void ldv_switch_automaton_state_6_1(void)
{
  {
  ldv_statevar_6 = 3;
  return;
}
}
void ldv_switch_automaton_state_6_3(void)
{
  {
  ldv_statevar_6 = 2;
  return;
}
}
void ldv_switch_automaton_state_7_14(void)
{
  {
  ldv_statevar_7 = 13;
  return;
}
}
void ldv_switch_automaton_state_7_5(void)
{
  {
  ldv_7_ret_default = 1;
  ldv_statevar_7 = 14;
  return;
}
}
void ldv_switch_automaton_state_8_14(void)
{
  {
  ldv_statevar_8 = 13;
  return;
}
}
void ldv_switch_automaton_state_8_5(void)
{
  {
  ldv_8_ret_default = 1;
  ldv_statevar_8 = 14;
  return;
}
}
void ldv_timer_instance_callback_6_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_6(void *arg0 )
{
  {
  {
  if (ldv_statevar_6 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_6 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_6_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_6_2(ldv_6_container_timer_list->function, ldv_6_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_statevar_6 = 3;
  }
  goto ldv_53136;
  case_3: ;
  goto ldv_53136;
  switch_default: ;
  switch_break: ;
  }
  ldv_53136: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_7(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  {
  {
  if (ldv_statevar_7 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_7 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_7 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_7 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_7 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_7 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_7 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_7 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_7 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_7 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_7 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_7 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_7 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_7 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_7 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_7 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_7 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_7 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_7 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_7 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_7 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_7 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_7 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_7 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_7 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_7 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_7 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_7 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_7 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_7 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_7 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_7 == 48) {
    goto case_48;
  } else {
  }
  if (ldv_statevar_7 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_7 == 52) {
    goto case_52;
  } else {
  }
  if (ldv_statevar_7 == 53) {
    goto case_53;
  } else {
  }
  if (ldv_statevar_7 == 54) {
    goto case_54;
  } else {
  }
  if (ldv_statevar_7 == 55) {
    goto case_55;
  } else {
  }
  if (ldv_statevar_7 == 56) {
    goto case_56;
  } else {
  }
  if (ldv_statevar_7 == 57) {
    goto case_57;
  } else {
  }
  if (ldv_statevar_7 == 58) {
    goto case_58;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_7 = 6;
  } else {
    ldv_statevar_7 = 11;
  }
  goto ldv_53143;
  case_2:
  {
  ldv_io_instance_release_7_2(ldv_7_container_v4l2_file_operations->release, ldv_7_resource_file);
  ldv_statevar_7 = 1;
  }
  goto ldv_53143;
  case_3:
  {
  ldv_statevar_7 = ldv_switch_2();
  }
  goto ldv_53143;
  case_4: ;
  if ((unsigned long )ldv_7_callback_mmap != (unsigned long )((int (*)(struct file * ,
                                                                       struct vm_area_struct * ))0)) {
    {
    ldv_io_instance_callback_7_4(ldv_7_callback_mmap, ldv_7_resource_file, ldv_7_resource_struct_vm_area_struct_ptr);
    }
  } else {
  }
  ldv_statevar_7 = 3;
  goto ldv_53143;
  case_6:
  {
  ldv_free((void *)ldv_7_resource_file);
  ldv_free((void *)ldv_7_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_dbg_register_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_fh_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_frequency_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_input_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_requestbuffers_ptr);
  ldv_free((void *)ldv_7_resource_struct_v4l2_tuner_ptr);
  ldv_free((void *)ldv_7_resource_struct_vm_area_struct_ptr);
  ldv_7_ret_default = 1;
  ldv_statevar_7 = 14;
  }
  goto ldv_53143;
  case_8:
  {
  ldv_assume(ldv_7_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_7 = 6;
  } else {
    ldv_statevar_7 = 11;
  }
  goto ldv_53143;
  case_10:
  {
  ldv_assume(ldv_7_ret_default == 0);
  ldv_statevar_7 = ldv_switch_2();
  }
  goto ldv_53143;
  case_11:
  {
  ldv_7_ret_default = ldv_io_instance_probe_7_11(ldv_7_container_v4l2_file_operations->open,
                                                 ldv_7_resource_file);
  ldv_7_ret_default = ldv_filter_err_code(ldv_7_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_7 = 8;
  } else {
    ldv_statevar_7 = 10;
  }
  goto ldv_53143;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_7_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_7_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(88UL);
  ldv_7_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___4;
  tmp___5 = ldv_xmalloc(104UL);
  ldv_7_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___5;
  tmp___6 = ldv_xmalloc(56UL);
  ldv_7_resource_struct_v4l2_dbg_register_ptr = (struct v4l2_dbg_register *)tmp___6;
  tmp___7 = ldv_xmalloc(32UL);
  ldv_7_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___7;
  tmp___8 = ldv_xmalloc(176UL);
  ldv_7_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___8;
  tmp___9 = ldv_xmalloc(64UL);
  ldv_7_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___9;
  tmp___10 = ldv_xmalloc(208UL);
  ldv_7_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___10;
  tmp___11 = ldv_xmalloc(44UL);
  ldv_7_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___11;
  tmp___12 = ldv_xmalloc(80UL);
  ldv_7_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___12;
  tmp___13 = ldv_xmalloc(20UL);
  ldv_7_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___13;
  tmp___14 = ldv_xmalloc(84UL);
  ldv_7_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___14;
  tmp___15 = ldv_xmalloc(184UL);
  ldv_7_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___15;
  tmp___16 = ldv_undef_int();
  }
  if (tmp___16 != 0) {
    ldv_statevar_7 = 6;
  } else {
    ldv_statevar_7 = 11;
  }
  goto ldv_53143;
  case_14: ;
  goto ldv_53143;
  case_17:
  {
  ldv_io_instance_callback_7_17(ldv_7_callback_poll, ldv_7_resource_file, ldv_7_resource_struct_poll_table_struct_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_19:
  {
  tmp___17 = ldv_xmalloc(1UL);
  ldv_7_ldv_param_18_1_default = (char *)tmp___17;
  tmp___18 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_18_3_default = (long long *)tmp___18;
  }
  if ((unsigned long )ldv_7_callback_read != (unsigned long )((long (*)(struct file * ,
                                                                        char * , unsigned long ,
                                                                        long long * ))0)) {
    {
    ldv_io_instance_callback_7_18(ldv_7_callback_read, ldv_7_resource_file, ldv_7_ldv_param_18_1_default,
                                  ldv_7_ldv_param_18_2_default, ldv_7_ldv_param_18_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_7_ldv_param_18_1_default);
  ldv_free((void *)ldv_7_ldv_param_18_3_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_22:
  {
  ldv_io_instance_callback_7_21(ldv_7_callback_unlocked_ioctl, ldv_7_resource_file,
                                ldv_7_ldv_param_21_1_default, ldv_7_ldv_param_21_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_24:
  {
  ldv_io_instance_callback_7_24(ldv_7_callback_vidioc_dqbuf, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_25:
  {
  ldv_io_instance_callback_7_25(ldv_7_callback_vidioc_enum_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_26:
  {
  ldv_io_instance_callback_7_26(ldv_7_callback_vidioc_enum_input, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_input_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_27:
  {
  ldv_io_instance_callback_7_27(ldv_7_callback_vidioc_g_fmt_vbi_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_28:
  {
  ldv_io_instance_callback_7_28(ldv_7_callback_vidioc_g_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_29:
  {
  ldv_io_instance_callback_7_29(ldv_7_callback_vidioc_g_frequency, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_31:
  {
  tmp___19 = ldv_xmalloc(4UL);
  ldv_7_ldv_param_30_2_default = (unsigned int *)tmp___19;
  ldv_io_instance_callback_7_30(ldv_7_callback_vidioc_g_input, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_ldv_param_30_2_default);
  ldv_free((void *)ldv_7_ldv_param_30_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_33:
  {
  ldv_io_instance_callback_7_33(ldv_7_callback_vidioc_g_register, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_dbg_register_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_35:
  {
  tmp___20 = ldv_xmalloc(8UL);
  ldv_7_ldv_param_34_2_default = (unsigned long long *)tmp___20;
  ldv_io_instance_callback_7_34(ldv_7_callback_vidioc_g_std, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_ldv_param_34_2_default);
  ldv_free((void *)ldv_7_ldv_param_34_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_37:
  {
  ldv_io_instance_callback_7_37(ldv_7_callback_vidioc_g_tuner, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_38:
  {
  ldv_io_instance_callback_7_38(ldv_7_callback_vidioc_qbuf, ldv_7_resource_file, (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_39:
  {
  ldv_io_instance_callback_7_39(ldv_7_callback_vidioc_querybuf, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_40:
  {
  ldv_io_instance_callback_7_40(ldv_7_callback_vidioc_querycap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_capability_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_41:
  {
  ldv_io_instance_callback_7_41(ldv_7_callback_vidioc_reqbufs, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_requestbuffers_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_42:
  {
  ldv_io_instance_callback_7_42(ldv_7_callback_vidioc_s_fmt_vbi_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_43:
  {
  ldv_io_instance_callback_7_43(ldv_7_callback_vidioc_s_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_44:
  {
  ldv_io_instance_callback_7_44(ldv_7_callback_vidioc_s_frequency, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_46:
  {
  ldv_io_instance_callback_7_45(ldv_7_callback_vidioc_s_input, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_ldv_param_45_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_48:
  {
  ldv_io_instance_callback_7_48(ldv_7_callback_vidioc_s_register, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_dbg_register_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_50:
  {
  ldv_io_instance_callback_7_49(ldv_7_callback_vidioc_s_std, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_ldv_param_49_2_default);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_52:
  {
  ldv_io_instance_callback_7_52(ldv_7_callback_vidioc_s_tuner, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_53:
  {
  ldv_io_instance_callback_7_53(ldv_7_callback_vidioc_streamoff, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_enum_v4l2_buf_type);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_54:
  {
  ldv_io_instance_callback_7_54(ldv_7_callback_vidioc_streamon, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_enum_v4l2_buf_type);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_55:
  {
  ldv_io_instance_callback_7_55(ldv_7_callback_vidioc_subscribe_event, ldv_7_resource_struct_v4l2_fh_ptr,
                                ldv_7_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_56:
  {
  ldv_io_instance_callback_7_56(ldv_7_callback_vidioc_try_fmt_vbi_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_57:
  {
  ldv_io_instance_callback_7_57(ldv_7_callback_vidioc_try_fmt_vid_cap, ldv_7_resource_file,
                                (void *)ldv_7_resource_struct_poll_table_struct_ptr,
                                ldv_7_resource_struct_v4l2_format_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  case_58:
  {
  ldv_io_instance_callback_7_58(ldv_7_callback_vidioc_unsubscribe_event, ldv_7_resource_struct_v4l2_fh_ptr,
                                ldv_7_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_7 = 3;
  }
  goto ldv_53143;
  switch_default: ;
  switch_break: ;
  }
  ldv_53143: ;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_8(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  int tmp___16 ;
  void *tmp___17 ;
  void *tmp___18 ;
  void *tmp___19 ;
  void *tmp___20 ;
  {
  {
  if (ldv_statevar_8 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_8 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_8 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_8 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_8 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_8 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_8 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_8 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_8 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_8 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_8 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_8 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_8 == 22) {
    goto case_22;
  } else {
  }
  if (ldv_statevar_8 == 24) {
    goto case_24;
  } else {
  }
  if (ldv_statevar_8 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_8 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_8 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_8 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_8 == 29) {
    goto case_29;
  } else {
  }
  if (ldv_statevar_8 == 31) {
    goto case_31;
  } else {
  }
  if (ldv_statevar_8 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_8 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_8 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_8 == 38) {
    goto case_38;
  } else {
  }
  if (ldv_statevar_8 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_8 == 40) {
    goto case_40;
  } else {
  }
  if (ldv_statevar_8 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_8 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_8 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_8 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_8 == 46) {
    goto case_46;
  } else {
  }
  if (ldv_statevar_8 == 48) {
    goto case_48;
  } else {
  }
  if (ldv_statevar_8 == 50) {
    goto case_50;
  } else {
  }
  if (ldv_statevar_8 == 52) {
    goto case_52;
  } else {
  }
  if (ldv_statevar_8 == 53) {
    goto case_53;
  } else {
  }
  if (ldv_statevar_8 == 54) {
    goto case_54;
  } else {
  }
  if (ldv_statevar_8 == 55) {
    goto case_55;
  } else {
  }
  if (ldv_statevar_8 == 56) {
    goto case_56;
  } else {
  }
  if (ldv_statevar_8 == 57) {
    goto case_57;
  } else {
  }
  if (ldv_statevar_8 == 58) {
    goto case_58;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_8 = 6;
  } else {
    ldv_statevar_8 = 11;
  }
  goto ldv_53188;
  case_2:
  {
  ldv_io_instance_release_8_2(ldv_8_container_v4l2_file_operations->release, ldv_8_resource_file);
  ldv_statevar_8 = 1;
  }
  goto ldv_53188;
  case_3:
  {
  ldv_statevar_8 = ldv_switch_2();
  }
  goto ldv_53188;
  case_4:
  {
  ldv_io_instance_callback_8_4(ldv_8_callback_mmap, ldv_8_resource_file, ldv_8_resource_struct_vm_area_struct_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_6:
  {
  ldv_free((void *)ldv_8_resource_file);
  ldv_free((void *)ldv_8_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_dbg_register_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_fh_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_frequency_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_input_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_requestbuffers_ptr);
  ldv_free((void *)ldv_8_resource_struct_v4l2_tuner_ptr);
  ldv_free((void *)ldv_8_resource_struct_vm_area_struct_ptr);
  ldv_8_ret_default = 1;
  ldv_statevar_8 = 14;
  }
  goto ldv_53188;
  case_8:
  {
  ldv_assume(ldv_8_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_8 = 6;
  } else {
    ldv_statevar_8 = 11;
  }
  goto ldv_53188;
  case_10:
  {
  ldv_assume(ldv_8_ret_default == 0);
  ldv_statevar_8 = ldv_switch_2();
  }
  goto ldv_53188;
  case_11:
  {
  ldv_8_ret_default = ldv_io_instance_probe_8_11(ldv_8_container_v4l2_file_operations->open,
                                                 ldv_8_resource_file);
  ldv_8_ret_default = ldv_filter_err_code(ldv_8_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_8 = 8;
  } else {
    ldv_statevar_8 = 10;
  }
  goto ldv_53188;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_8_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_8_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(88UL);
  ldv_8_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___4;
  tmp___5 = ldv_xmalloc(104UL);
  ldv_8_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___5;
  tmp___6 = ldv_xmalloc(56UL);
  ldv_8_resource_struct_v4l2_dbg_register_ptr = (struct v4l2_dbg_register *)tmp___6;
  tmp___7 = ldv_xmalloc(32UL);
  ldv_8_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___7;
  tmp___8 = ldv_xmalloc(176UL);
  ldv_8_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___8;
  tmp___9 = ldv_xmalloc(64UL);
  ldv_8_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___9;
  tmp___10 = ldv_xmalloc(208UL);
  ldv_8_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___10;
  tmp___11 = ldv_xmalloc(44UL);
  ldv_8_resource_struct_v4l2_frequency_ptr = (struct v4l2_frequency *)tmp___11;
  tmp___12 = ldv_xmalloc(80UL);
  ldv_8_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___12;
  tmp___13 = ldv_xmalloc(20UL);
  ldv_8_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___13;
  tmp___14 = ldv_xmalloc(84UL);
  ldv_8_resource_struct_v4l2_tuner_ptr = (struct v4l2_tuner *)tmp___14;
  tmp___15 = ldv_xmalloc(184UL);
  ldv_8_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___15;
  tmp___16 = ldv_undef_int();
  }
  if (tmp___16 != 0) {
    ldv_statevar_8 = 6;
  } else {
    ldv_statevar_8 = 11;
  }
  goto ldv_53188;
  case_14: ;
  goto ldv_53188;
  case_17:
  {
  ldv_io_instance_callback_8_17(ldv_8_callback_poll, ldv_8_resource_file, ldv_8_resource_struct_poll_table_struct_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_19:
  {
  tmp___17 = ldv_xmalloc(1UL);
  ldv_8_ldv_param_18_1_default = (char *)tmp___17;
  tmp___18 = ldv_xmalloc(8UL);
  ldv_8_ldv_param_18_3_default = (long long *)tmp___18;
  ldv_io_instance_callback_8_18(ldv_8_callback_read, ldv_8_resource_file, ldv_8_ldv_param_18_1_default,
                                ldv_8_ldv_param_18_2_default, ldv_8_ldv_param_18_3_default);
  ldv_free((void *)ldv_8_ldv_param_18_1_default);
  ldv_free((void *)ldv_8_ldv_param_18_3_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_22:
  {
  ldv_io_instance_callback_8_21(ldv_8_callback_unlocked_ioctl, ldv_8_resource_file,
                                ldv_8_ldv_param_21_1_default, ldv_8_ldv_param_21_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_24:
  {
  ldv_io_instance_callback_8_24(ldv_8_callback_vidioc_dqbuf, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_25:
  {
  ldv_io_instance_callback_8_25(ldv_8_callback_vidioc_enum_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_26:
  {
  ldv_io_instance_callback_8_26(ldv_8_callback_vidioc_enum_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_input_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_27:
  {
  ldv_io_instance_callback_8_27(ldv_8_callback_vidioc_g_fmt_vbi_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_28:
  {
  ldv_io_instance_callback_8_28(ldv_8_callback_vidioc_g_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_29:
  {
  ldv_io_instance_callback_8_29(ldv_8_callback_vidioc_g_frequency, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_31:
  {
  tmp___19 = ldv_xmalloc(4UL);
  ldv_8_ldv_param_30_2_default = (unsigned int *)tmp___19;
  ldv_io_instance_callback_8_30(ldv_8_callback_vidioc_g_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_30_2_default);
  ldv_free((void *)ldv_8_ldv_param_30_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_33:
  {
  ldv_io_instance_callback_8_33(ldv_8_callback_vidioc_g_register, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_dbg_register_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_35:
  {
  tmp___20 = ldv_xmalloc(8UL);
  ldv_8_ldv_param_34_2_default = (unsigned long long *)tmp___20;
  ldv_io_instance_callback_8_34(ldv_8_callback_vidioc_g_std, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_34_2_default);
  ldv_free((void *)ldv_8_ldv_param_34_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_37:
  {
  ldv_io_instance_callback_8_37(ldv_8_callback_vidioc_g_tuner, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_38:
  {
  ldv_io_instance_callback_8_38(ldv_8_callback_vidioc_qbuf, ldv_8_resource_file, (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_39:
  {
  ldv_io_instance_callback_8_39(ldv_8_callback_vidioc_querybuf, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_40:
  {
  ldv_io_instance_callback_8_40(ldv_8_callback_vidioc_querycap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_capability_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_41:
  {
  ldv_io_instance_callback_8_41(ldv_8_callback_vidioc_reqbufs, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_requestbuffers_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_42:
  {
  ldv_io_instance_callback_8_42(ldv_8_callback_vidioc_s_fmt_vbi_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_43:
  {
  ldv_io_instance_callback_8_43(ldv_8_callback_vidioc_s_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_44:
  {
  ldv_io_instance_callback_8_44(ldv_8_callback_vidioc_s_frequency, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_frequency_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_46:
  {
  ldv_io_instance_callback_8_45(ldv_8_callback_vidioc_s_input, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_45_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_48:
  {
  ldv_io_instance_callback_8_48(ldv_8_callback_vidioc_s_register, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_dbg_register_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_50:
  {
  ldv_io_instance_callback_8_49(ldv_8_callback_vidioc_s_std, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_ldv_param_49_2_default);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_52:
  {
  ldv_io_instance_callback_8_52(ldv_8_callback_vidioc_s_tuner, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_tuner_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_53:
  {
  ldv_io_instance_callback_8_53(ldv_8_callback_vidioc_streamoff, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_enum_v4l2_buf_type);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_54:
  {
  ldv_io_instance_callback_8_54(ldv_8_callback_vidioc_streamon, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_enum_v4l2_buf_type);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_55:
  {
  ldv_io_instance_callback_8_55(ldv_8_callback_vidioc_subscribe_event, ldv_8_resource_struct_v4l2_fh_ptr,
                                ldv_8_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_56:
  {
  ldv_io_instance_callback_8_56(ldv_8_callback_vidioc_try_fmt_vbi_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_57:
  {
  ldv_io_instance_callback_8_57(ldv_8_callback_vidioc_try_fmt_vid_cap, ldv_8_resource_file,
                                (void *)ldv_8_resource_struct_poll_table_struct_ptr,
                                ldv_8_resource_struct_v4l2_format_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  case_58:
  {
  ldv_io_instance_callback_8_58(ldv_8_callback_vidioc_unsubscribe_event, ldv_8_resource_struct_v4l2_fh_ptr,
                                ldv_8_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_8 = 3;
  }
  goto ldv_53188;
  switch_default: ;
  switch_break: ;
  }
  ldv_53188: ;
  return;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_is_err(ptr);
  }
  return (tmp);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_12(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_13(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void *ldv_dev_get_drvdata_20(struct device const *dev )
{
  void *tmp ;
  {
  {
  tmp = ldv_dev_get_drvdata(dev);
  }
  return (tmp);
}
}
static int ldv_dev_set_drvdata_21(struct device *dev , void *data )
{
  int tmp ;
  {
  {
  tmp = ldv_dev_set_drvdata(dev, data);
  }
  return (tmp);
}
}
static void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_37(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_38(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_39(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_52(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_lock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_55(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 )
{
  {
  {
  ldv_mutex_unlock_lock_of_cx88_core(ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_irq_57(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv_del_timer_58(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_59(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv___pci_register_driver_60(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_61(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_mod_timer_32(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static int ldv_mod_timer_33(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
static unsigned int vbibufs = 4U;
static unsigned int vbi_debug ;
int cx8800_vbi_fmt(struct file *file , void *priv , struct v4l2_format *f )
{
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  {
  fh = (struct cx8800_fh *)priv;
  dev = fh->dev;
  f->fmt.vbi.samples_per_line = 2048U;
  f->fmt.vbi.sample_format = 1497715271U;
  f->fmt.vbi.offset = 244U;
  f->fmt.vbi.count[0] = 17U;
  f->fmt.vbi.count[1] = 17U;
  if (((dev->core)->tvnorm & 63744ULL) != 0ULL) {
    f->fmt.vbi.sampling_rate = 28636363U;
    f->fmt.vbi.start[0] = 10;
    f->fmt.vbi.start[1] = 273;
  } else
  if (((dev->core)->tvnorm & 16713471ULL) != 0ULL) {
    f->fmt.vbi.sampling_rate = 35468950U;
    f->fmt.vbi.start[0] = 6;
    f->fmt.vbi.start[1] = 318;
  } else {
  }
  return (0);
}
}
static int cx8800_start_vbi_dma(struct cx8800_dev *dev , struct cx88_dmaqueue *q ,
                                struct cx88_buffer *buf )
{
  struct cx88_core *core ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  {
  {
  core = dev->core;
  cx88_sram_channel_setup(dev->core, (struct sram_channel const *)(& cx88_sram_channels) + 3UL,
                          buf->vb.width, (u32 )buf->risc.dma);
  writel(296960U, (void volatile *)core->lmmio + 802922U);
  writel(3U, (void volatile *)core->lmmio + 815119U);
  q->count = 1U;
  tmp = readl((void const volatile *)core->lmmio + 524304U);
  writel(((tmp & (unsigned int )(~ (core->pci_irqmask | 1))) | (unsigned int )core->pci_irqmask) | 1U,
         (void volatile *)core->lmmio + 524304U);
  tmp___0 = readl((void const volatile *)core->lmmio + 524308U);
  writel(tmp___0 | 983176U, (void volatile *)core->lmmio + 524308U);
  tmp___1 = readl((void const volatile *)core->lmmio + 802912U);
  writel(tmp___1 | 24U, (void volatile *)core->lmmio + 802912U);
  tmp___2 = readl((void const volatile *)core->lmmio + 524301U);
  writel(tmp___2 | 32U, (void volatile *)core->lmmio + 524301U);
  tmp___3 = readl((void const volatile *)core->lmmio + 815120U);
  writel(tmp___3 | 136U, (void volatile *)core->lmmio + 815120U);
  }
  return (0);
}
}
int cx8800_stop_vbi_dma(struct cx8800_dev *dev )
{
  struct cx88_core *core ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  {
  core = dev->core;
  tmp = readl((void const volatile *)core->lmmio + 815120U);
  writel(tmp & 4294967159U, (void volatile *)core->lmmio + 815120U);
  tmp___0 = readl((void const volatile *)core->lmmio + 802912U);
  writel(tmp___0 & 4294967271U, (void volatile *)core->lmmio + 802912U);
  tmp___1 = readl((void const volatile *)core->lmmio + 524304U);
  writel(tmp___1 & 4294967294U, (void volatile *)core->lmmio + 524304U);
  tmp___2 = readl((void const volatile *)core->lmmio + 524308U);
  writel(tmp___2 & 4293984119U, (void volatile *)core->lmmio + 524308U);
  }
  return (0);
}
}
int cx8800_restart_vbi_queue(struct cx8800_dev *dev , struct cx88_dmaqueue *q )
{
  struct cx88_buffer *buf ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  u32 tmp___0 ;
  struct list_head const *__mptr___1 ;
  unsigned long tmp___1 ;
  {
  {
  tmp = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)q->active.next;
  buf = (struct cx88_buffer *)__mptr + 0xffffffffffffffc8UL;
  if (vbi_debug > 1U) {
    {
    printk("\017%s: restart_queue [%p/%d]: restart dma\n", (char *)(& (dev->core)->name),
           buf, buf->vb.i);
    }
  } else {
  }
  {
  cx8800_start_vbi_dma(dev, q, buf);
  __mptr___0 = (struct list_head const *)q->active.next;
  buf = (struct cx88_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
  }
  goto ldv_49120;
  ldv_49119:
  tmp___0 = q->count;
  q->count = q->count + 1U;
  buf->count = tmp___0;
  __mptr___1 = (struct list_head const *)buf->vb.queue.next;
  buf = (struct cx88_buffer *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_49120: ;
  if ((unsigned long )(& buf->vb.queue) != (unsigned long )(& q->active)) {
    goto ldv_49119;
  } else {
  }
  {
  tmp___1 = msecs_to_jiffies(2000U);
  ldv_mod_timer_32(& q->timeout, (unsigned long )jiffies + tmp___1);
  }
  return (0);
}
}
void cx8800_vbi_timeout(unsigned long data )
{
  struct cx8800_dev *dev ;
  struct cx88_core *core ;
  struct cx88_dmaqueue *q ;
  struct cx88_buffer *buf ;
  unsigned long flags ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  {
  {
  dev = (struct cx8800_dev *)data;
  core = dev->core;
  q = & dev->vbiq;
  cx88_sram_channel_dump(dev->core, (struct sram_channel const *)(& cx88_sram_channels) + 3UL);
  tmp = readl((void const volatile *)core->lmmio + 815120U);
  writel(tmp & 4294967159U, (void volatile *)core->lmmio + 815120U);
  tmp___0 = readl((void const volatile *)core->lmmio + 802912U);
  writel(tmp___0 & 4294967271U, (void volatile *)core->lmmio + 802912U);
  tmp___1 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  }
  goto ldv_49136;
  ldv_49135:
  {
  __mptr = (struct list_head const *)q->active.next;
  buf = (struct cx88_buffer *)__mptr + 0xffffffffffffffc8UL;
  list_del(& buf->vb.queue);
  buf->vb.state = 5;
  __wake_up(& buf->vb.done, 3U, 1, (void *)0);
  printk("%s/0: [%p/%d] timeout - dma=0x%08lx\n", (char *)(& (dev->core)->name), buf,
         buf->vb.i, (unsigned long )buf->risc.dma);
  }
  ldv_49136:
  {
  tmp___2 = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp___2 == 0) {
    goto ldv_49135;
  } else {
  }
  {
  cx8800_restart_vbi_queue(dev, q);
  spin_unlock_irqrestore(& dev->slock, flags);
  }
  return;
}
}
static int vbi_setup(struct videobuf_queue *q , unsigned int *count , unsigned int *size )
{
  {
  *size = 69632U;
  if (*count == 0U) {
    *count = vbibufs;
  } else {
  }
  if (*count <= 1U) {
    *count = 2U;
  } else {
  }
  if (*count > 32U) {
    *count = 32U;
  } else {
  }
  return (0);
}
}
static int vbi_prepare(struct videobuf_queue *q , struct videobuf_buffer *vb , enum v4l2_field field )
{
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  struct cx88_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  unsigned int size ;
  int rc ;
  struct videobuf_dmabuf *dma ;
  struct videobuf_dmabuf *tmp ;
  {
  fh = (struct cx8800_fh *)q->priv_data;
  dev = fh->dev;
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx88_buffer *)__mptr;
  size = 69632U;
  if (buf->vb.baddr != 0UL && buf->vb.bsize < (size_t )size) {
    return (-22);
  } else {
  }
  if ((unsigned int )buf->vb.state == 0U) {
    {
    tmp = videobuf_to_dma(& buf->vb);
    dma = tmp;
    buf->vb.width = 2048U;
    buf->vb.height = 17U;
    buf->vb.size = (unsigned long )size;
    buf->vb.field = 5;
    rc = videobuf_iolock(q, & buf->vb, (struct v4l2_framebuffer *)0);
    }
    if (rc != 0) {
      goto fail;
    } else {
    }
    {
    cx88_risc_buffer(dev->pci, & buf->risc, dma->sglist, 0U, buf->vb.width * buf->vb.height,
                     buf->vb.width, 0U, buf->vb.height);
    }
  } else {
  }
  buf->vb.state = 1;
  return (0);
  fail:
  {
  cx88_free_buffer(q, buf);
  }
  return (rc);
}
}
static void vbi_queue(struct videobuf_queue *vq , struct videobuf_buffer *vb )
{
  struct cx88_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  struct cx88_buffer *prev ;
  struct cx8800_fh *fh ;
  struct cx8800_dev *dev ;
  struct cx88_dmaqueue *q ;
  u32 tmp ;
  unsigned long tmp___0 ;
  struct list_head const *__mptr___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx88_buffer *)__mptr;
  fh = (struct cx8800_fh *)vq->priv_data;
  dev = fh->dev;
  q = & dev->vbiq;
  *(buf->risc.jmp) = 1895890944U;
  *(buf->risc.jmp + 1UL) = (unsigned int )q->stopper.dma;
  tmp___2 = list_empty((struct list_head const *)(& q->active));
  }
  if (tmp___2 != 0) {
    {
    list_add_tail(& buf->vb.queue, & q->active);
    cx8800_start_vbi_dma(dev, q, buf);
    buf->vb.state = 3;
    tmp = q->count;
    q->count = q->count + 1U;
    buf->count = tmp;
    tmp___0 = msecs_to_jiffies(2000U);
    ldv_mod_timer_33(& q->timeout, (unsigned long )jiffies + tmp___0);
    }
    if (vbi_debug > 1U) {
      {
      printk("\017%s: [%p/%d] vbi_queue - first active\n", (char *)(& (dev->core)->name),
             buf, buf->vb.i);
      }
    } else {
    }
  } else {
    {
    __mptr___0 = (struct list_head const *)q->active.prev;
    prev = (struct cx88_buffer *)__mptr___0 + 0xffffffffffffffc8UL;
    list_add_tail(& buf->vb.queue, & q->active);
    buf->vb.state = 3;
    tmp___1 = q->count;
    q->count = q->count + 1U;
    buf->count = tmp___1;
    *(prev->risc.jmp + 1UL) = (unsigned int )buf->risc.dma;
    }
    if (vbi_debug > 1U) {
      {
      printk("\017%s: [%p/%d] buffer_queue - append to active\n", (char *)(& (dev->core)->name),
             buf, buf->vb.i);
      }
    } else {
    }
  }
  return;
}
}
static void vbi_release(struct videobuf_queue *q , struct videobuf_buffer *vb )
{
  struct cx88_buffer *buf ;
  struct videobuf_buffer const *__mptr ;
  {
  {
  __mptr = (struct videobuf_buffer const *)vb;
  buf = (struct cx88_buffer *)__mptr;
  cx88_free_buffer(q, buf);
  }
  return;
}
}
struct videobuf_queue_ops const cx8800_vbi_qops = {& vbi_setup, & vbi_prepare, & vbi_queue, & vbi_release};
void ldv_dispatch_instance_deregister_9_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_11_2(struct timer_list *arg0 ) ;
int (*ldv_5_callback_buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * ,
                                  enum v4l2_field ) = & vbi_prepare;
void (*ldv_5_callback_buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) = & vbi_queue;
void (*ldv_5_callback_buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) = & vbi_release;
int (*ldv_5_callback_buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) = & vbi_setup;
int ldv_del_timer(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_9_timer_list_timer_list ;
  {
  {
  ldv_9_timer_list_timer_list = arg1;
  ldv_assume(ldv_statevar_6 == 2);
  ldv_dispatch_instance_deregister_9_1(ldv_9_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_instance_deregister_9_1(struct timer_list *arg0 )
{
  {
  {
  ldv_6_container_timer_list = arg0;
  ldv_switch_automaton_state_6_1();
  }
  return;
}
}
void ldv_dispatch_instance_register_11_2(struct timer_list *arg0 )
{
  {
  {
  ldv_6_container_timer_list = arg0;
  ldv_switch_automaton_state_6_3();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct videobuf_queue * ,
                                                              struct videobuf_buffer * ,
                                                              enum v4l2_field ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 ,
                                                  enum v4l2_field arg3 )
{
  {
  {
  vbi_prepare(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_7(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  vbi_queue(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_8(void (*arg0)(struct videobuf_queue * ,
                                                               struct videobuf_buffer * ) ,
                                                  struct videobuf_queue *arg1 , struct videobuf_buffer *arg2 )
{
  {
  {
  vbi_release(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct videobuf_queue * ,
                                                              unsigned int * , unsigned int * ) ,
                                                  struct videobuf_queue *arg1 , unsigned int *arg2 ,
                                                  unsigned int *arg3 )
{
  {
  {
  vbi_setup(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_mod_timer(int arg0 , struct timer_list *arg1 , unsigned long arg2 )
{
  struct timer_list *ldv_11_timer_list_timer_list ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_11_timer_list_timer_list = arg1;
    ldv_assume(ldv_statevar_6 == 3);
    ldv_dispatch_instance_register_11_2(ldv_11_timer_list_timer_list);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
static int ldv_mod_timer_32(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_mod_timer_33(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_mod_timer(ldv_func_res, ldv_func_arg1, ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_calloc(size_t nmemb , size_t size ) ;
void *ldv_malloc_unknown_size(void) ;
void *ldv_calloc_unknown_size(void) ;
void *ldv_zalloc_unknown_size(void) ;
void *ldv_xmalloc_unknown_size(size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_malloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc_unknown_size(void)
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = external_allocated_data();
    res = tmp;
    memset(res, 0, 8UL);
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc_unknown_size(void)
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc_unknown_size();
  }
  return (tmp);
}
}
void *ldv_xmalloc_unknown_size(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = external_allocated_data();
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_undef_ptr(void) ;
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  {
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_MUTEXES_i_mutex_of_inode ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_i_mutex_of_inode);
  tmp = ldv_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_i_mutex_of_inode);
  LDV_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock ;
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock);
  tmp = ldv_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock);
  LDV_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_cx88_core ;
void ldv_mutex_lock_lock_of_cx88_core(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_cx88_core);
  LDV_MUTEXES_lock_of_cx88_core = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_cx88_core(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_cx88_core);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_cx88_core = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_cx88_core(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_cx88_core) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_cx88_core(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_cx88_core);
  tmp = ldv_mutex_is_locked_lock_of_cx88_core(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_cx88_core = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_cx88_core(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_cx88_core(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_cx88_core(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_cx88_core);
  LDV_MUTEXES_lock_of_cx88_core = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_lock_of_v4l2_ctrl_handler ;
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  tmp = ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_v4l2_ctrl_handler(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_lock_of_v4l2_ctrl_handler(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_mutex_of_device ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_mutex_of_device);
  tmp = ldv_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_mutex_of_device);
  LDV_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
ldv_set LDV_MUTEXES_vb_lock_of_videobuf_queue ;
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
  }
  return;
}
}
int ldv_mutex_lock_interruptible_or_killable_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_is_locked_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_MUTEXES_vb_lock_of_videobuf_queue) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_mutex_trylock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  tmp = ldv_mutex_is_locked_vb_lock_of_videobuf_queue(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_MUTEXES_vb_lock_of_videobuf_queue = 1;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_vb_lock_of_videobuf_queue(atomic_t *cnt , struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_mutex_lock_vb_lock_of_videobuf_queue(lock);
    }
    return (1);
  }
}
}
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_MUTEXES_vb_lock_of_videobuf_queue);
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 0;
  }
  return;
}
}
void ldv_initialize(void)
{
  {
  LDV_MUTEXES_i_mutex_of_inode = 0;
  LDV_MUTEXES_lock = 0;
  LDV_MUTEXES_lock_of_cx88_core = 0;
  LDV_MUTEXES_lock_of_v4l2_ctrl_handler = 0;
  LDV_MUTEXES_mutex_of_device = 0;
  LDV_MUTEXES_vb_lock_of_videobuf_queue = 0;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_cx88_core);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_lock_of_v4l2_ctrl_handler);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_mutex_of_device);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_MUTEXES_vb_lock_of_videobuf_queue);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void btcx_riscmem_free(struct pci_dev *arg0, struct btcx_riscmem *arg1) {
  return;
}
void *external_alloc(void);
struct cx88_core *cx88_core_get(struct pci_dev *arg0) {
  return (struct cx88_core *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int cx88_core_irq(struct cx88_core *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
void cx88_core_put(struct cx88_core *arg0, struct pci_dev *arg1) {
  return;
}
void cx88_free_buffer(struct videobuf_queue *arg0, struct cx88_buffer *arg1) {
  return;
}
void cx88_get_stereo(struct cx88_core *arg0, struct v4l2_tuner *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx88_ir_start(struct cx88_core *arg0) {
  return __VERIFIER_nondet_int();
}
void cx88_ir_stop(struct cx88_core *arg0) {
  return;
}
void cx88_newstation(struct cx88_core *arg0) {
  return;
}
void cx88_print_irqbits(const char *arg0, const char *arg1, const char **arg2, int arg3, u32 arg4, u32 arg5) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx88_reset(struct cx88_core *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cx88_risc_buffer(struct pci_dev *arg0, struct btcx_riscmem *arg1, struct scatterlist *arg2, unsigned int arg3, unsigned int arg4, unsigned int arg5, unsigned int arg6, unsigned int arg7) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cx88_risc_stopper(struct pci_dev *arg0, struct btcx_riscmem *arg1, u32 arg2, u32 arg3, u32 arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cx88_set_scale(struct cx88_core *arg0, unsigned int arg1, unsigned int arg2, enum v4l2_field arg3) {
  return __VERIFIER_nondet_int();
}
void cx88_set_stereo(struct cx88_core *arg0, u32 arg1, int arg2) {
  return;
}
void cx88_set_tvaudio(struct cx88_core *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx88_set_tvnorm(struct cx88_core *arg0, v4l2_std_id arg1) {
  return __VERIFIER_nondet_int();
}
void cx88_shutdown(struct cx88_core *arg0) {
  return;
}
void cx88_sram_channel_dump(struct cx88_core *arg0, const struct sram_channel *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int cx88_sram_channel_setup(struct cx88_core *arg0, const struct sram_channel *arg1, unsigned int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct video_device *cx88_vdev_init(struct cx88_core *arg0, struct pci_dev *arg1, const struct video_device *arg2, const char *arg3) {
  return (struct video_device *)external_alloc();
}
void cx88_wakeup(struct cx88_core *arg0, struct cx88_dmaqueue *arg1, u32 arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *external_allocated_data() {
  return (void *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
struct i2c_client *i2c_new_device(struct i2c_adapter *arg0, const struct i2c_board_info *arg1) {
  return (struct i2c_client *)external_alloc();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return (struct task_struct *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_pre_probe() {
  return;
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void msleep(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
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
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_add_handler(struct v4l2_ctrl_handler *arg0, struct v4l2_ctrl_handler *arg1, bool (*arg2)(const struct v4l2_ctrl *)) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_find(struct v4l2_ctrl_handler *arg0, u32 arg1) {
  return (struct v4l2_ctrl *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return (struct v4l2_ctrl *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_s_ctrl(struct v4l2_ctrl *arg0, s32 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_del(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_exit(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
void *external_alloc(void);
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return (struct v4l2_subdev *)external_alloc();
}
void *external_alloc(void);
struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device *arg0, struct i2c_adapter *arg1, struct i2c_board_info *arg2, const unsigned short *arg3) {
  return (struct v4l2_subdev *)external_alloc();
}
void v4l_bound_align_image(unsigned int *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int *arg4, unsigned int arg5, unsigned int arg6, unsigned int arg7, unsigned int arg8) {
  return;
}
void *external_alloc(void);
struct video_device *video_devdata(struct file *arg0) {
  return (struct video_device *)external_alloc();
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_dqbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_iolock(struct videobuf_queue *arg0, struct videobuf_buffer *arg1, struct v4l2_framebuffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_free(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_mmap_mapper(struct videobuf_queue *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int videobuf_poll_stream(struct file *arg0, struct videobuf_queue *arg1, poll_table *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int videobuf_qbuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_querybuf(struct videobuf_queue *arg0, struct v4l2_buffer *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_queue_cancel(struct videobuf_queue *arg0) {
  return;
}
void videobuf_queue_sg_init(struct videobuf_queue *arg0, const struct videobuf_queue_ops *arg1, struct device *arg2, spinlock_t *arg3, enum v4l2_buf_type arg4, enum v4l2_field arg5, unsigned int arg6, void *arg7, struct mutex *arg8) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_one(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
ssize_t videobuf_read_stream(struct videobuf_queue *arg0, char *arg1, size_t arg2, loff_t *arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int videobuf_reqbufs(struct videobuf_queue *arg0, struct v4l2_requestbuffers *arg1) {
  return __VERIFIER_nondet_int();
}
void videobuf_stop(struct videobuf_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int videobuf_streamoff(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int videobuf_streamon(struct videobuf_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct videobuf_dmabuf *videobuf_to_dma(struct videobuf_buffer *arg0) {
  return (struct videobuf_dmabuf *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
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
