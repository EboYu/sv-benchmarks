extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct net_device;
struct file_operations;
struct completion;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
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
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
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
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
};
struct swregs_state {
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
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
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
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
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
struct vm_area_struct;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct notifier_block;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct ctl_table;
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
struct __anonstruct____missing_field_name_50 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_49 {
   struct __anonstruct____missing_field_name_50 __annonCompField19 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
struct wake_irq;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   struct wake_irq *wakeirq ;
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
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct bio_vec;
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
struct llist_node {
   struct llist_node *next ;
};
struct cred;
struct inode;
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
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
struct vm_operations_struct;
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
   struct __anonstruct_shared_161 shared ;
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
   u32 vmacache_seqnum ;
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
   atomic_long_t nr_pmds ;
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
   void *bd_addr ;
};
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
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
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
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_171 {
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
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_171 __annonCompField48 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
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
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
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
   char *argv[3U] ;
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
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_172 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_172 __annonCompField49 ;
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
struct latch_tree_node {
   struct rb_node node[2U] ;
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
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
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
   struct mutex param_lock ;
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
   bool async_probe_requested ;
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
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
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
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
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
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
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
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
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
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
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
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
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
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
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
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
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
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
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
   seqlock_t stats_lock ;
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
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
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
   int depth ;
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
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
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
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
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
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   struct nameidata *nameidata ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
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
   struct wake_q_node wake_q ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
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
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[3U] ;
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
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct device_attribute;
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_217 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_217 __annonCompField58 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct kiocb;
struct poll_table_struct;
struct net;
struct fasync_struct;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
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
struct device_node;
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
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
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
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
struct dma_coherent_mem;
struct cma;
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
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct wake_irq *wakeirq ;
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
   bool active ;
   bool autosleep_enabled ;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
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
struct writeback_control;
struct bdi_writeback;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
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
typedef u64 netdev_features_t;
union __anonunion_in6_u_218 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_218 in6_u ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_223 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_224 {
   __be32 ipv4_daddr ;
   struct in6_addr ipv6_daddr ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned char orig_proto ;
   bool pkt_otherhost ;
   __u16 frag_max_size ;
   unsigned int mask ;
   struct net_device *physindev ;
   union __anonunion____missing_field_name_223 __annonCompField62 ;
   union __anonunion____missing_field_name_224 __annonCompField63 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_227 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_226 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_227 __annonCompField64 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_226 __annonCompField65 ;
};
union __anonunion____missing_field_name_230 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_229 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_230 __annonCompField66 ;
};
union __anonunion____missing_field_name_228 {
   struct __anonstruct____missing_field_name_229 __annonCompField67 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_232 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_231 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_232 __annonCompField69 ;
};
union __anonunion____missing_field_name_233 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_234 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_235 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_228 __annonCompField68 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_231 __annonCompField70 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_233 __annonCompField71 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_234 __annonCompField72 ;
   union __anonunion____missing_field_name_235 __annonCompField73 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
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
struct __anonstruct_sync_serial_settings_237 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_237 sync_serial_settings;
struct __anonstruct_te1_settings_238 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_238 te1_settings;
struct __anonstruct_raw_hdlc_proto_239 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_239 raw_hdlc_proto;
struct __anonstruct_fr_proto_240 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_240 fr_proto;
struct __anonstruct_fr_proto_pvc_241 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_241 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_242 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_242 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_243 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_243 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_244 {
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
   union __anonunion_ifs_ifsu_244 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_245 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_246 {
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
   union __anonunion_ifr_ifrn_245 ifr_ifrn ;
   union __anonunion_ifr_ifru_246 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_251 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_250 {
   struct __anonstruct____missing_field_name_251 __annonCompField74 ;
};
struct lockref {
   union __anonunion____missing_field_name_250 __annonCompField75 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_253 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_252 {
   struct __anonstruct____missing_field_name_253 __annonCompField76 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_252 __annonCompField77 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_254 {
   struct hlist_node d_alias ;
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
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_254 d_u ;
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
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_258 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_257 {
   struct __anonstruct____missing_field_name_258 __annonCompField78 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_257 __annonCompField79 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct export_operations;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_262 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_262 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_263 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_263 __annonCompField81 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
   int (*get_projid)(struct inode * , kprojid_t * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
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
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
};
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
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
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
union __anonunion____missing_field_name_266 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_267 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_268 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
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
   union __anonunion____missing_field_name_266 __annonCompField82 ;
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
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_267 __annonCompField83 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_268 __annonCompField84 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
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
union __anonunion_f_u_269 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_269 f_u ;
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
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
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
struct __anonstruct_afs_271 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_270 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_271 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
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
   union __anonunion_fl_u_270 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   unsigned long s_iflags ;
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
   unsigned int s_quota_types ;
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
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
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
   char erom_version[32U] ;
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
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
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
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
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
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
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
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[115U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
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
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
   bool warned ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
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
   bool fib_offload_disabled ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct inet_peer_base *peers ;
   struct sock **tcp_sk ;
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
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_tcp_ecn_fallback ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   int sysctl_tcp_probe_threshold ;
   u32 sysctl_tcp_probe_interval ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
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
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
   int idgen_retries ;
   int idgen_delay ;
   int flowlabel_state_ranges ;
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
   struct sock *mc_autojoin_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
   atomic_t dev_addr_genid ;
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
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
   bool clusterip_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
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
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
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
   struct nft_af_info *netdev ;
   unsigned int base_seq ;
   u8 gencursor ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
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
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
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
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct mpls_route;
struct netns_mpls {
   size_t platform_labels ;
   struct mpls_route **platform_label ;
   struct ctl_table_header *ctl ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   atomic64_t cookie_gen ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   spinlock_t nsid_lock ;
   struct idr netns_ids ;
   struct ns_common ns ;
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
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
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
   struct netns_mpls mpls ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct __anonstruct_possible_net_t_302 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_302 possible_net_t;
typedef unsigned long kernel_ulong_t;
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
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum ldv_27725 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_27725 phy_interface_t;
enum ldv_27779 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_27779 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   u32 phy_ignore_ta_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   struct net_device *of_netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   enum dsa_tag_protocol tag_protocol ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
   int (*port_join_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_leave_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_stp_update)(struct dsa_switch * , int , u8 ) ;
   int (*fdb_add)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_del)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_getnext)(struct dsa_switch * , int , unsigned char * , bool * ) ;
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
struct ieee_qcn {
   __u8 rpg_enable[8U] ;
   __u32 rppp_max_rps[8U] ;
   __u32 rpg_time_reset[8U] ;
   __u32 rpg_byte_reset[8U] ;
   __u32 rpg_threshold[8U] ;
   __u32 rpg_max_rate[8U] ;
   __u32 rpg_ai_rate[8U] ;
   __u32 rpg_hai_rate[8U] ;
   __u32 rpg_gd[8U] ;
   __u32 rpg_min_dec_fac[8U] ;
   __u32 rpg_min_rate[8U] ;
   __u32 cndd_state_machine[8U] ;
};
struct ieee_qcn_stats {
   __u64 rppp_rp_centiseconds[8U] ;
   __u32 rppp_created_rps[8U] ;
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
   int (*ieee_getqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_setqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_getqcnstats)(struct net_device * , struct ieee_qcn_stats * ) ;
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
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
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
struct ifla_vf_stats {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 broadcast ;
   __u64 multicast ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
   __u32 rss_query_en ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
struct mpls_dev;
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
   struct hrtimer timer ;
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
   unsigned long tx_maxrate ;
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
struct netdev_phys_item_id {
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
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_stats)(struct net_device * , int , struct ifla_vf_stats * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_set_vf_rss_query_en)(struct net_device * , int , bool ) ;
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
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 , int ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_get_phys_port_name)(struct net_device * , char * , size_t ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_set_tx_maxrate)(struct net_device * , int , u32 ) ;
   int (*ndo_get_iflink)(struct net_device const * ) ;
};
struct __anonstruct_adj_list_315 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_316 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct switchdev_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct tcf_proto;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_317 {
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
   atomic_t carrier_changes ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_315 adj_list ;
   struct __anonstruct_all_adj_list_316 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int group ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct switchdev_ops const *switchdev_ops ;
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
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   unsigned char name_assign_type ;
   bool uc_promisc ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
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
   struct wpan_dev *ieee802154_ptr ;
   struct mpls_dev *mpls_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct tcf_proto *ingress_cl_list ;
   struct netdev_queue *ingress_queue ;
   struct list_head nf_hooks_ingress ;
   unsigned char broadcast[32U] ;
   struct cpu_rmap *rx_cpu_rmap ;
   struct hlist_node index_hlist ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   int watchdog_timeo ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   possible_net_t nd_net ;
   union __anonunion____missing_field_name_317 __annonCompField94 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
};
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
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
   cc_t c_cc[19U] ;
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
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion____missing_field_name_322 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion____missing_field_name_322 __annonCompField95 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   spinlock_t flow_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned long unused : 62 ;
   int hw_stopped ;
   unsigned char ctrl_status ;
   unsigned char packet : 1 ;
   unsigned long unused_ctrl : 55 ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   int closing ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
enum debuglevel {
    DEBUG_INTR = 8,
    DEBUG_CMD = 32,
    DEBUG_STREAM = 64,
    DEBUG_STREAM_DUMP = 128,
    DEBUG_LLDATA = 256,
    DEBUG_EVENT = 512,
    DEBUG_HDLC = 2048,
    DEBUG_CHANNEL = 4096,
    DEBUG_TRANSCMD = 8192,
    DEBUG_MCMD = 16384,
    DEBUG_INIT = 32768,
    DEBUG_SUSPEND = 65536,
    DEBUG_OUTPUT = 131072,
    DEBUG_ISO = 262144,
    DEBUG_IF = 524288,
    DEBUG_USBREQ = 1048576,
    DEBUG_LOCKCMD = 2097152,
    DEBUG_ANY = 4194303
} ;
struct gigaset_ops;
struct gigaset_driver;
struct usb_cardstate;
struct ser_cardstate;
struct bas_cardstate;
struct bc_state;
struct usb_bc_state;
struct ser_bc_state;
struct bas_bc_state;
struct reply_t {
   int resp_code ;
   int min_ConState ;
   int max_ConState ;
   int parameter ;
   int new_ConState ;
   int timeout ;
   int action[3U] ;
   char *command ;
};
struct cardstate;
struct inbuf_t {
   struct cardstate *cs ;
   int inputstate ;
   int head ;
   int tail ;
   unsigned char data[8192U] ;
};
struct isowbuf_t {
   int read ;
   int nextread ;
   int write ;
   atomic_t writesem ;
   int wbits ;
   unsigned char data[4112U] ;
   unsigned char idle ;
};
struct urb;
struct isow_urbctx_t {
   struct urb *urb ;
   struct bc_state *bcs ;
   int limit ;
   int status ;
};
struct at_state_t {
   struct list_head list ;
   int waiting ;
   int getstring ;
   unsigned int timer_index ;
   unsigned long timer_expires ;
   int timer_active ;
   unsigned int ConState ;
   struct reply_t *replystruct ;
   int cid ;
   int int_var[3U] ;
   char *str_var[5U] ;
   unsigned int pending_commands ;
   unsigned int seq_index ;
   struct cardstate *cs ;
   struct bc_state *bcs ;
};
struct event_t {
   int type ;
   void *ptr ;
   void *arg ;
   int parameter ;
   int cid ;
   struct at_state_t *at_state ;
};
union __anonunion_hw_323 {
   struct ser_bc_state *ser ;
   struct usb_bc_state *usb ;
   struct bas_bc_state *bas ;
};
struct bc_state {
   struct sk_buff *tx_skb ;
   struct sk_buff_head squeue ;
   int corrupted ;
   int trans_down ;
   int trans_up ;
   struct at_state_t at_state ;
   unsigned int rx_bufsize ;
   struct sk_buff *rx_skb ;
   __u16 rx_fcs ;
   int inputstate ;
   int channel ;
   struct cardstate *cs ;
   unsigned int chstate ;
   int ignore ;
   unsigned int proto2 ;
   char *commands[7U] ;
   int emptycount ;
   int busy ;
   int use_count ;
   union __anonunion_hw_323 hw ;
   void *ap ;
   int apconnstate ;
   spinlock_t aplock ;
};
struct cmdbuf_t;
union __anonunion_hw_324 {
   struct usb_cardstate *usb ;
   struct ser_cardstate *ser ;
   struct bas_cardstate *bas ;
};
struct cardstate {
   struct gigaset_driver *driver ;
   unsigned int minor_index ;
   struct device *dev ;
   struct device *tty_dev ;
   unsigned int flags ;
   struct gigaset_ops const *ops ;
   wait_queue_head_t waitqueue ;
   int waiting ;
   int mode ;
   int mstate ;
   int cmd_result ;
   int channels ;
   struct bc_state *bcs ;
   int onechannel ;
   spinlock_t lock ;
   struct at_state_t at_state ;
   struct list_head temp_at_states ;
   struct inbuf_t *inbuf ;
   struct cmdbuf_t *cmdbuf ;
   struct cmdbuf_t *lastcmdbuf ;
   spinlock_t cmdlock ;
   unsigned int curlen ;
   unsigned int cmdbytes ;
   struct tty_port port ;
   struct tasklet_struct if_wake_tasklet ;
   unsigned int control_state ;
   unsigned int fwver[4U] ;
   int gotfwver ;
   unsigned int running ;
   unsigned int connected ;
   unsigned int isdn_up ;
   unsigned int cidmode ;
   int myid ;
   void *iif ;
   unsigned short hw_hdr_len ;
   struct reply_t *tabnocid ;
   struct reply_t *tabcid ;
   int cs_init ;
   int ignoreframes ;
   struct mutex mutex ;
   struct timer_list timer ;
   int retry_count ;
   int dle ;
   int cur_at_seq ;
   int curchannel ;
   int commands_pending ;
   struct tasklet_struct event_tasklet ;
   struct tasklet_struct write_tasklet ;
   struct event_t events[64U] ;
   unsigned int ev_tail ;
   unsigned int ev_head ;
   spinlock_t ev_lock ;
   unsigned char respdata[512U] ;
   unsigned int cbytes ;
   union __anonunion_hw_324 hw ;
};
struct gigaset_driver {
   struct list_head list ;
   spinlock_t lock ;
   struct tty_driver *tty ;
   unsigned int have_tty ;
   unsigned int minor ;
   unsigned int minors ;
   struct cardstate *cs ;
   int blocked ;
   struct gigaset_ops const *ops ;
   struct module *owner ;
};
struct cmdbuf_t {
   struct cmdbuf_t *next ;
   struct cmdbuf_t *prev ;
   int len ;
   int offset ;
   struct tasklet_struct *wake_tasklet ;
   unsigned char buf[0U] ;
};
struct bas_bc_state {
   int running ;
   atomic_t corrbytes ;
   spinlock_t isooutlock ;
   struct isow_urbctx_t isoouturbs[3U] ;
   struct isow_urbctx_t *isooutdone ;
   struct isow_urbctx_t *isooutfree ;
   struct isow_urbctx_t *isooutovfl ;
   struct isowbuf_t *isooutbuf ;
   unsigned int numsub ;
   struct tasklet_struct sent_tasklet ;
   spinlock_t isoinlock ;
   struct urb *isoinurbs[3U] ;
   unsigned char isoinbuf[384U] ;
   struct urb *isoindone ;
   int isoinstatus ;
   int loststatus ;
   unsigned int isoinlost ;
   unsigned int seqlen ;
   unsigned int inbyte ;
   unsigned int inbits ;
   unsigned int goodbytes ;
   unsigned int alignerrs ;
   unsigned int fcserrs ;
   unsigned int frameerrs ;
   unsigned int giants ;
   unsigned int runts ;
   unsigned int aborts ;
   unsigned int shared0s ;
   unsigned int stolen0s ;
   struct tasklet_struct rcvd_tasklet ;
};
struct gigaset_ops {
   int (*write_cmd)(struct cardstate * , struct cmdbuf_t * ) ;
   int (*write_room)(struct cardstate * ) ;
   int (*chars_in_buffer)(struct cardstate * ) ;
   int (*brkchars)(struct cardstate * , unsigned char const * ) ;
   int (*init_bchannel)(struct bc_state * ) ;
   int (*close_bchannel)(struct bc_state * ) ;
   int (*initbcshw)(struct bc_state * ) ;
   void (*freebcshw)(struct bc_state * ) ;
   void (*reinitbcshw)(struct bc_state * ) ;
   int (*initcshw)(struct cardstate * ) ;
   void (*freecshw)(struct cardstate * ) ;
   int (*set_modem_ctrl)(struct cardstate * , unsigned int , unsigned int ) ;
   int (*baud_rate)(struct cardstate * , unsigned int ) ;
   int (*set_line_ctrl)(struct cardstate * , unsigned int ) ;
   int (*send_skb)(struct bc_state * , struct sk_buff * ) ;
   void (*handle_input)(struct inbuf_t * ) ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct resp_type_t {
   char *response ;
   int resp_code ;
   int type ;
};
struct zsau_resp_t {
   char *str ;
   int code ;
};
enum hrtimer_restart;
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
typedef unsigned char u_char;
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct capi_register_params {
   __u32 level3cnt ;
   __u32 datablkcnt ;
   __u32 datablklen ;
};
typedef struct capi_register_params capi_register_params;
struct capi_version {
   __u32 majorversion ;
   __u32 minorversion ;
   __u32 majormanuversion ;
   __u32 minormanuversion ;
};
typedef struct capi_version capi_version;
struct capi_profile {
   __u16 ncontroller ;
   __u16 nbchannel ;
   __u32 goptions ;
   __u32 support1 ;
   __u32 support2 ;
   __u32 support3 ;
   __u32 reserved[6U] ;
   __u32 manu[5U] ;
};
typedef struct capi_profile capi_profile;
struct capiloaddatapart {
   int user ;
   int len ;
   unsigned char *data ;
};
typedef struct capiloaddatapart capiloaddatapart;
struct capiloaddata {
   capiloaddatapart firmware ;
   capiloaddatapart configuration ;
};
typedef struct capiloaddata capiloaddata;
struct capicardparams {
   unsigned int port ;
   unsigned int irq ;
   int cardtype ;
   int cardnr ;
   unsigned int membase ;
};
typedef struct capicardparams capicardparams;
struct capi_ctr {
   struct module *owner ;
   void *driverdata ;
   char name[32U] ;
   char *driver_name ;
   int (*load_firmware)(struct capi_ctr * , capiloaddata * ) ;
   void (*reset_ctr)(struct capi_ctr * ) ;
   void (*register_appl)(struct capi_ctr * , u16 , capi_register_params * ) ;
   void (*release_appl)(struct capi_ctr * , u16 ) ;
   u16 (*send_message)(struct capi_ctr * , struct sk_buff * ) ;
   char *(*procinfo)(struct capi_ctr * ) ;
   struct file_operations const *proc_fops ;
   u8 manu[64U] ;
   capi_version version ;
   capi_profile profile ;
   u8 serial[8U] ;
   unsigned long nrecvctlpkt ;
   unsigned long nrecvdatapkt ;
   unsigned long nsentctlpkt ;
   unsigned long nsentdatapkt ;
   int cnr ;
   unsigned short state ;
   int blocked ;
   int traceflag ;
   wait_queue_head_t state_wait_queue ;
   struct proc_dir_entry *procent ;
   char procfn[128U] ;
};
struct capi_driver {
   char name[32U] ;
   char revision[32U] ;
   int (*add_card)(struct capi_driver * , capicardparams * ) ;
   struct list_head list ;
};
typedef __u8 *_cstruct;
enum ldv_32116 {
    CAPI_COMPOSE = 0,
    CAPI_DEFAULT = 1
} ;
typedef enum ldv_32116 _cmstruct;
union __anonunion_adr_326 {
   __u32 adrController ;
   __u32 adrPLCI ;
   __u32 adrNCCI ;
};
struct __anonstruct__cmsg_325 {
   __u16 ApplId ;
   __u8 Command ;
   __u8 Subcommand ;
   __u16 Messagenumber ;
   union __anonunion_adr_326 adr ;
   _cmstruct AdditionalInfo ;
   _cstruct B1configuration ;
   __u16 B1protocol ;
   _cstruct B2configuration ;
   __u16 B2protocol ;
   _cstruct B3configuration ;
   __u16 B3protocol ;
   _cstruct BC ;
   _cstruct BChannelinformation ;
   _cmstruct BProtocol ;
   _cstruct CalledPartyNumber ;
   _cstruct CalledPartySubaddress ;
   _cstruct CallingPartyNumber ;
   _cstruct CallingPartySubaddress ;
   __u32 CIPmask ;
   __u32 CIPmask2 ;
   __u16 CIPValue ;
   __u32 Class ;
   _cstruct ConnectedNumber ;
   _cstruct ConnectedSubaddress ;
   __u32 Data ;
   __u16 DataHandle ;
   __u16 DataLength ;
   _cstruct FacilityConfirmationParameter ;
   _cstruct Facilitydataarray ;
   _cstruct FacilityIndicationParameter ;
   _cstruct FacilityRequestParameter ;
   __u16 FacilitySelector ;
   __u16 Flags ;
   __u32 Function ;
   _cstruct HLC ;
   __u16 Info ;
   _cstruct InfoElement ;
   __u32 InfoMask ;
   __u16 InfoNumber ;
   _cstruct Keypadfacility ;
   _cstruct LLC ;
   _cstruct ManuData ;
   __u32 ManuID ;
   _cstruct NCPI ;
   __u16 Reason ;
   __u16 Reason_B3 ;
   __u16 Reject ;
   _cstruct Useruserdata ;
   unsigned int l ;
   unsigned int p ;
   unsigned char *par ;
   __u8 *m ;
   __u8 buf[180U] ;
};
typedef struct __anonstruct__cmsg_325 _cmsg;
struct __anonstruct__cdebbuf_327 {
   u_char *buf ;
   u_char *p ;
   size_t size ;
   size_t pos ;
};
typedef struct __anonstruct__cdebbuf_327 _cdebbuf;
struct gigaset_capi_appl {
   struct list_head ctrlist ;
   struct gigaset_capi_appl *bcnext ;
   u16 id ;
   struct capi_register_params rp ;
   u16 nextMessageNumber ;
   u32 listenInfoMask ;
   u32 listenCIPmask ;
};
struct gigaset_capi_ctr {
   struct capi_ctr ctr ;
   struct list_head appls ;
   struct sk_buff_head sendqueue ;
   atomic_t sendqlen ;
   _cmsg hcmsg ;
   _cmsg acmsg ;
   u8 bc_buf[12U] ;
   u8 hlc_buf[4U] ;
   u8 cgpty_buf[23U] ;
   u8 cdpty_buf[22U] ;
};
struct __anonstruct_cip2bchlc_328 {
   u8 *bc ;
   u8 *hlc ;
};
typedef void (*capi_send_handler_t)(struct gigaset_capi_ctr * , struct gigaset_capi_appl * ,
                                    struct sk_buff * );
struct __anonstruct_capi_send_handler_table_332 {
   u16 cmd ;
   void (*handler)(struct gigaset_capi_ctr * , struct gigaset_capi_appl * , struct sk_buff * ) ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3129;
  default:
  __bad_percpu_size();
  }
  ldv_3129: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void __xchg_wrong_size(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_5(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_10(struct timer_list *ldv_func_arg1 ) ;
bool ldv_try_module_get_6(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_7(struct module *ldv_func_arg1 ) ;
void ldv_module_put_8(struct module *ldv_func_arg1 ) ;
void ldv_module_put_9(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
void *ldv_undef_ptr(void)
{
  void *tmp ;
  {
  tmp = __VERIFIER_nondet_pointer();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
struct device *dev_attr_cidmode_group1 ;
struct file *if_ops_group0 ;
struct timer_list *ldv_timer_list_1_1 ;
struct timer_list *ldv_timer_list_1_0 ;
struct file *gigaset_proc_fops_group2 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_1_2 ;
struct tty_struct *if_ops_group1 ;
int ldv_state_variable_2 ;
int ldv_timer_1_1 ;
struct timer_list *ldv_timer_list_1_2 ;
struct device_attribute *dev_attr_cidmode_group0 ;
struct inode *gigaset_proc_fops_group1 ;
int LDV_IN_INTERRUPT = 1;
int ldv_timer_1_0 ;
int ldv_timer_state_2 = 0;
int ldv_state_variable_3 ;
struct timer_list *ldv_timer_list_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
void timer_init_1(void) ;
void ldv_file_operations_3(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_tty_operations_5(void) ;
void choose_timer_1(void) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
void ldv_initialize_device_attribute_4(void) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void consume_skb(struct sk_buff * ) ;
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.__annonCompField18.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  return;
}
}
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern void tty_port_init(struct tty_port * ) ;
extern void tty_port_destroy(struct tty_port * ) ;
int gigaset_debuglevel ;
void gigaset_dbg_buffer(enum debuglevel level , unsigned char const *msg , size_t len ,
                        unsigned char const *buf ) ;
struct reply_t gigaset_tab_cid[64U] ;
struct reply_t gigaset_tab_nocid[65U] ;
void gigaset_isdn_regdrv(void) ;
void gigaset_isdn_unregdrv(void) ;
int gigaset_isdn_regdev(struct cardstate *cs , char const *isdnid ) ;
void gigaset_isdn_unregdev(struct cardstate *cs ) ;
void gigaset_handle_event(unsigned long data ) ;
void gigaset_init_dev_sysfs(struct cardstate *cs ) ;
void gigaset_free_dev_sysfs(struct cardstate *cs ) ;
void gigaset_bcs_reinit(struct bc_state *bcs ) ;
void gigaset_at_init(struct at_state_t *at_state , struct bc_state *bcs , struct cardstate *cs ,
                     int cid ) ;
int gigaset_get_channel(struct bc_state *bcs ) ;
struct bc_state *gigaset_get_free_channel(struct cardstate *cs ) ;
void gigaset_free_channel(struct bc_state *bcs ) ;
int gigaset_get_channels(struct cardstate *cs ) ;
void gigaset_free_channels(struct cardstate *cs ) ;
void gigaset_block_channels(struct cardstate *cs ) ;
struct gigaset_driver *gigaset_initdriver(unsigned int minor , unsigned int minors ,
                                          char const *procname , char const *devname ,
                                          struct gigaset_ops const *ops , struct module *owner ) ;
void gigaset_freedriver(struct gigaset_driver *drv ) ;
struct cardstate *gigaset_get_cs_by_tty(struct tty_struct *tty ) ;
struct cardstate *gigaset_get_cs_by_id(int id ) ;
void gigaset_blockdriver(struct gigaset_driver *drv ) ;
struct cardstate *gigaset_initcs(struct gigaset_driver *drv , int channels , int onechannel ,
                                 int ignoreframes , int cidmode , char const *modulename ) ;
void gigaset_freecs(struct cardstate *cs ) ;
int gigaset_start(struct cardstate *cs ) ;
void gigaset_stop(struct cardstate *cs ) ;
int gigaset_shutdown(struct cardstate *cs ) ;
struct event_t *gigaset_add_event(struct cardstate *cs , struct at_state_t *at_state ,
                                  int type , void *ptr , int parameter , void *arg ) ;
int gigaset_enterconfigmode(struct cardstate *cs ) ;
__inline static void gigaset_schedule_event(struct cardstate *cs )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (cs->running != 0U) {
    tasklet_schedule(& cs->event_tasklet);
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return;
}
}
int gigaset_fill_inbuf(struct inbuf_t *inbuf , unsigned char const *src , unsigned int numbytes ) ;
void gigaset_if_initdriver(struct gigaset_driver *drv , char const *procname , char const *devname ) ;
void gigaset_if_freedriver(struct gigaset_driver *drv ) ;
void gigaset_if_init(struct cardstate *cs ) ;
void gigaset_if_free(struct cardstate *cs ) ;
static char const __kstrtab_gigaset_debuglevel[19U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'd', 'e', 'b', 'u',
        'g', 'l', 'e', 'v',
        'e', 'l', '\000'};
struct kernel_symbol const __ksymtab_gigaset_debuglevel ;
struct kernel_symbol const __ksymtab_gigaset_debuglevel = {(unsigned long )(& gigaset_debuglevel), (char const *)(& __kstrtab_gigaset_debuglevel)};
void gigaset_dbg_buffer(enum debuglevel level , unsigned char const *msg , size_t len ,
                        unsigned char const *buf )
{
  unsigned char outbuf[80U] ;
  unsigned char c ;
  size_t space ;
  unsigned char *out ;
  size_t numin ;
  unsigned char const *tmp ;
  size_t tmp___0 ;
  unsigned char *tmp___1 ;
  size_t tmp___2 ;
  unsigned char *tmp___3 ;
  size_t tmp___4 ;
  unsigned char *tmp___5 ;
  size_t tmp___6 ;
  unsigned char *tmp___7 ;
  size_t tmp___8 ;
  long tmp___9 ;
  {
  space = 79UL;
  out = (unsigned char *)(& outbuf);
  numin = len;
  goto ldv_44896;
  ldv_44895:
  tmp = buf;
  buf = buf + 1;
  c = *tmp;
  if (((unsigned int )c == 126U || (unsigned int )c == 94U) || (unsigned int )c == 92U) {
    tmp___0 = space;
    space = space - 1UL;
    if (tmp___0 == 0UL) {
      goto ldv_44894;
    } else {
    }
    tmp___1 = out;
    out = out + 1;
    *tmp___1 = 92U;
  } else {
  }
  if ((int )((signed char )c) < 0) {
    tmp___2 = space;
    space = space - 1UL;
    if (tmp___2 == 0UL) {
      goto ldv_44894;
    } else {
    }
    tmp___3 = out;
    out = out + 1;
    *tmp___3 = 126U;
    c = (unsigned int )c ^ 128U;
  } else {
  }
  if ((unsigned int )c <= 31U || (unsigned int )c == 127U) {
    tmp___4 = space;
    space = space - 1UL;
    if (tmp___4 == 0UL) {
      goto ldv_44894;
    } else {
    }
    tmp___5 = out;
    out = out + 1;
    *tmp___5 = 94U;
    c = (unsigned int )c ^ 64U;
  } else {
  }
  tmp___6 = space;
  space = space - 1UL;
  if (tmp___6 == 0UL) {
    goto ldv_44894;
  } else {
  }
  tmp___7 = out;
  out = out + 1;
  *tmp___7 = c;
  ldv_44896:
  tmp___8 = numin;
  numin = numin - 1UL;
  if (tmp___8 != 0UL) {
    goto ldv_44895;
  } else {
  }
  ldv_44894:
  *out = 0U;
  tmp___9 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                             0L);
  if (tmp___9 != 0L) {
    printk("\017gigaset: %s (%u bytes): %s\n", msg, (unsigned int )len, (unsigned char *)(& outbuf));
  } else {
  }
  return;
}
}
static char const __kstrtab_gigaset_dbg_buffer[19U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'd', 'b', 'g', '_',
        'b', 'u', 'f', 'f',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_gigaset_dbg_buffer ;
struct kernel_symbol const __ksymtab_gigaset_dbg_buffer = {(unsigned long )(& gigaset_dbg_buffer), (char const *)(& __kstrtab_gigaset_dbg_buffer)};
static int setflags(struct cardstate *cs , unsigned int flags , unsigned int delay )
{
  int r ;
  struct task_struct *tmp ;
  long volatile __ret ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  struct task_struct *tmp___3 ;
  {
  r = (*((cs->ops)->set_modem_ctrl))(cs, cs->control_state, flags);
  cs->control_state = flags;
  if (r < 0) {
    return (r);
  } else {
  }
  if (delay != 0U) {
    tmp = get_current();
    tmp->task_state_change = 0UL;
    __ret = 1L;
    switch (8UL) {
    case 1UL:
    tmp___0 = get_current();
    __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (tmp___0->state): : "memory",
                         "cc");
    goto ldv_44915;
    case 2UL:
    tmp___1 = get_current();
    __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (tmp___1->state): : "memory",
                         "cc");
    goto ldv_44915;
    case 4UL:
    tmp___2 = get_current();
    __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (tmp___2->state): : "memory",
                         "cc");
    goto ldv_44915;
    case 8UL:
    tmp___3 = get_current();
    __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (tmp___3->state): : "memory",
                         "cc");
    goto ldv_44915;
    default:
    __xchg_wrong_size();
    }
    ldv_44915:
    schedule_timeout((long )((delay * 250U) / 1000U));
  } else {
  }
  return (0);
}
}
int gigaset_enterconfigmode(struct cardstate *cs )
{
  int i ;
  int r ;
  {
  cs->control_state = 4U;
  r = setflags(cs, 2U, 200U);
  if (r < 0) {
    goto error;
  } else {
  }
  r = setflags(cs, 0U, 200U);
  if (r < 0) {
    goto error;
  } else {
  }
  i = 0;
  goto ldv_44928;
  ldv_44927:
  r = setflags(cs, 4U, 100U);
  if (r < 0) {
    goto error;
  } else {
  }
  r = setflags(cs, 0U, 100U);
  if (r < 0) {
    goto error;
  } else {
  }
  i = i + 1;
  ldv_44928: ;
  if (i <= 4) {
    goto ldv_44927;
  } else {
  }
  r = setflags(cs, 6U, 800U);
  if (r < 0) {
    goto error;
  } else {
  }
  return (0);
  error:
  dev_err((struct device const *)cs->dev, "error %d on setuartbits\n", - r);
  cs->control_state = 6U;
  (*((cs->ops)->set_modem_ctrl))(cs, 0U, 6U);
  return (-1);
}
}
static int test_timeout(struct at_state_t *at_state )
{
  long tmp ;
  {
  if (at_state->timer_expires == 0UL) {
    return (0);
  } else {
  }
  at_state->timer_expires = at_state->timer_expires - 1UL;
  if (at_state->timer_expires != 0UL) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 16384U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: decreased timer of %p to %lu\n", at_state, at_state->timer_expires);
    } else {
    }
    return (0);
  } else {
  }
  gigaset_add_event(at_state->cs, at_state, -105, (void *)0, (int )at_state->timer_index,
                    (void *)0);
  return (1);
}
}
static void timer_tick(unsigned long data )
{
  struct cardstate *cs ;
  unsigned long flags ;
  unsigned int channel ;
  struct at_state_t *at_state ;
  int timeout ;
  raw_spinlock_t *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  unsigned long tmp___3 ;
  long tmp___4 ;
  {
  cs = (struct cardstate *)data;
  timeout = 0;
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  channel = 0U;
  goto ldv_44945;
  ldv_44944:
  tmp___0 = test_timeout(& (cs->bcs + (unsigned long )channel)->at_state);
  if (tmp___0 != 0) {
    timeout = 1;
  } else {
  }
  channel = channel + 1U;
  ldv_44945: ;
  if ((unsigned int )cs->channels > channel) {
    goto ldv_44944;
  } else {
  }
  tmp___1 = test_timeout(& cs->at_state);
  if (tmp___1 != 0) {
    timeout = 1;
  } else {
  }
  __mptr = (struct list_head const *)cs->temp_at_states.next;
  at_state = (struct at_state_t *)__mptr;
  goto ldv_44952;
  ldv_44951:
  tmp___2 = test_timeout(at_state);
  if (tmp___2 != 0) {
    timeout = 1;
  } else {
  }
  __mptr___0 = (struct list_head const *)at_state->list.next;
  at_state = (struct at_state_t *)__mptr___0;
  ldv_44952: ;
  if ((unsigned long )(& at_state->list) != (unsigned long )(& cs->temp_at_states)) {
    goto ldv_44951;
  } else {
  }
  if (cs->running != 0U) {
    tmp___3 = msecs_to_jiffies(100U);
    ldv_mod_timer_5(& cs->timer, tmp___3 + (unsigned long )jiffies);
    if (timeout != 0) {
      tmp___4 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U,
                                 0L);
      if (tmp___4 != 0L) {
        printk("\017gigaset: scheduling timeout\n");
      } else {
      }
      tasklet_schedule(& cs->event_tasklet);
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return;
}
}
int gigaset_get_channel(struct bc_state *bcs )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  {
  tmp = spinlock_check(& (bcs->cs)->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (bcs->use_count != 0) {
    goto _L;
  } else {
    tmp___1 = ldv_try_module_get_6(((bcs->cs)->driver)->owner);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      _L:
      tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U,
                                 0L);
      if (tmp___0 != 0L) {
        printk("\017gigaset: could not allocate channel %d\n", bcs->channel);
      } else {
      }
      spin_unlock_irqrestore(& (bcs->cs)->lock, flags);
      return (-16);
    } else {
    }
  }
  bcs->use_count = bcs->use_count + 1;
  bcs->busy = 1;
  tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U, 0L);
  if (tmp___3 != 0L) {
    printk("\017gigaset: allocated channel %d\n", bcs->channel);
  } else {
  }
  spin_unlock_irqrestore(& (bcs->cs)->lock, flags);
  return (0);
}
}
struct bc_state *gigaset_get_free_channel(struct cardstate *cs )
{
  unsigned long flags ;
  int i ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___1 = ldv_try_module_get_7((cs->driver)->owner);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: could not get module for allocating channel\n");
    } else {
    }
    spin_unlock_irqrestore(& cs->lock, flags);
    return ((struct bc_state *)0);
  } else {
  }
  i = 0;
  goto ldv_44970;
  ldv_44969: ;
  if ((cs->bcs + (unsigned long )i)->use_count == 0) {
    (cs->bcs + (unsigned long )i)->use_count = (cs->bcs + (unsigned long )i)->use_count + 1;
    (cs->bcs + (unsigned long )i)->busy = 1;
    spin_unlock_irqrestore(& cs->lock, flags);
    tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U,
                               0L);
    if (tmp___3 != 0L) {
      printk("\017gigaset: allocated channel %d\n", i);
    } else {
    }
    return (cs->bcs + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_44970: ;
  if (cs->channels > i) {
    goto ldv_44969;
  } else {
  }
  ldv_module_put_8((cs->driver)->owner);
  spin_unlock_irqrestore(& cs->lock, flags);
  tmp___4 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U, 0L);
  if (tmp___4 != 0L) {
    printk("\017gigaset: no free channel\n");
  } else {
  }
  return ((struct bc_state *)0);
}
}
void gigaset_free_channel(struct bc_state *bcs )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = spinlock_check(& (bcs->cs)->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (bcs->busy == 0) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: could not free channel %d\n", bcs->channel);
    } else {
    }
    spin_unlock_irqrestore(& (bcs->cs)->lock, flags);
    return;
  } else {
  }
  bcs->use_count = bcs->use_count - 1;
  bcs->busy = 0;
  ldv_module_put_9(((bcs->cs)->driver)->owner);
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: freed channel %d\n", bcs->channel);
  } else {
  }
  spin_unlock_irqrestore(& (bcs->cs)->lock, flags);
  return;
}
}
int gigaset_get_channels(struct cardstate *cs )
{
  unsigned long flags ;
  int i ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  i = 0;
  goto ldv_44988;
  ldv_44987: ;
  if ((cs->bcs + (unsigned long )i)->use_count != 0) {
    spin_unlock_irqrestore(& cs->lock, flags);
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: could not allocate all channels\n");
    } else {
    }
    return (-16);
  } else {
  }
  i = i + 1;
  ldv_44988: ;
  if (cs->channels > i) {
    goto ldv_44987;
  } else {
  }
  i = 0;
  goto ldv_44991;
  ldv_44990:
  (cs->bcs + (unsigned long )i)->use_count = (cs->bcs + (unsigned long )i)->use_count + 1;
  i = i + 1;
  ldv_44991: ;
  if (cs->channels > i) {
    goto ldv_44990;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: allocated all channels\n");
  } else {
  }
  return (0);
}
}
void gigaset_free_channels(struct cardstate *cs )
{
  unsigned long flags ;
  int i ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: unblocking all channels\n");
  } else {
  }
  tmp___0 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  i = 0;
  goto ldv_45002;
  ldv_45001:
  (cs->bcs + (unsigned long )i)->use_count = (cs->bcs + (unsigned long )i)->use_count - 1;
  i = i + 1;
  ldv_45002: ;
  if (cs->channels > i) {
    goto ldv_45001;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return;
}
}
void gigaset_block_channels(struct cardstate *cs )
{
  unsigned long flags ;
  int i ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4096U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: blocking all channels\n");
  } else {
  }
  tmp___0 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  i = 0;
  goto ldv_45013;
  ldv_45012:
  (cs->bcs + (unsigned long )i)->use_count = (cs->bcs + (unsigned long )i)->use_count + 1;
  i = i + 1;
  ldv_45013: ;
  if (cs->channels > i) {
    goto ldv_45012;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return;
}
}
static void clear_events(struct cardstate *cs )
{
  struct event_t *ev ;
  unsigned int head ;
  unsigned int tail ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& cs->ev_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  head = cs->ev_head;
  tail = cs->ev_tail;
  goto ldv_45026;
  ldv_45025:
  ev = (struct event_t *)(& cs->events) + (unsigned long )head;
  kfree((void const *)ev->ptr);
  head = (head + 1U) & 63U;
  ldv_45026: ;
  if (tail != head) {
    goto ldv_45025;
  } else {
  }
  cs->ev_head = tail;
  spin_unlock_irqrestore(& cs->ev_lock, flags);
  return;
}
}
struct event_t *gigaset_add_event(struct cardstate *cs , struct at_state_t *at_state ,
                                  int type , void *ptr , int parameter , void *arg )
{
  unsigned long flags ;
  unsigned int next ;
  unsigned int tail ;
  struct event_t *event ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  long tmp___1 ;
  {
  event = (struct event_t *)0;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: queueing event %d\n", type);
  } else {
  }
  tmp___0 = spinlock_check(& cs->ev_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tail = cs->ev_tail;
  next = (tail + 1U) & 63U;
  tmp___1 = ldv__builtin_expect(cs->ev_head == next, 0L);
  if (tmp___1 != 0L) {
    dev_err((struct device const *)cs->dev, "event queue full\n");
  } else {
    event = (struct event_t *)(& cs->events) + (unsigned long )tail;
    event->type = type;
    event->at_state = at_state;
    event->cid = -1;
    event->ptr = ptr;
    event->arg = arg;
    event->parameter = parameter;
    cs->ev_tail = next;
  }
  spin_unlock_irqrestore(& cs->ev_lock, flags);
  return (event);
}
}
static char const __kstrtab_gigaset_add_event[18U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'a', 'd', 'd', '_',
        'e', 'v', 'e', 'n',
        't', '\000'};
struct kernel_symbol const __ksymtab_gigaset_add_event ;
struct kernel_symbol const __ksymtab_gigaset_add_event = {(unsigned long )(& gigaset_add_event), (char const *)(& __kstrtab_gigaset_add_event)};
static void clear_at_state(struct at_state_t *at_state )
{
  int i ;
  {
  i = 0;
  goto ldv_45060;
  ldv_45059:
  kfree((void const *)at_state->str_var[i]);
  at_state->str_var[i] = (char *)0;
  i = i + 1;
  ldv_45060: ;
  if (i <= 4) {
    goto ldv_45059;
  } else {
  }
  return;
}
}
static void dealloc_temp_at_states(struct cardstate *cs )
{
  struct at_state_t *cur ;
  struct at_state_t *next ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)cs->temp_at_states.next;
  cur = (struct at_state_t *)__mptr;
  __mptr___0 = (struct list_head const *)cur->list.next;
  next = (struct at_state_t *)__mptr___0;
  goto ldv_45074;
  ldv_45073:
  list_del(& cur->list);
  clear_at_state(cur);
  kfree((void const *)cur);
  cur = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct at_state_t *)__mptr___1;
  ldv_45074: ;
  if ((unsigned long )(& cur->list) != (unsigned long )(& cs->temp_at_states)) {
    goto ldv_45073;
  } else {
  }
  return;
}
}
static void gigaset_freebcs(struct bc_state *bcs )
{
  int i ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: freeing bcs[%d]->hw\n", bcs->channel);
  } else {
  }
  (*(((bcs->cs)->ops)->freebcshw))(bcs);
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: clearing bcs[%d]->at_state\n", bcs->channel);
  } else {
  }
  clear_at_state(& bcs->at_state);
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: freeing bcs[%d]->skb\n", bcs->channel);
  } else {
  }
  consume_skb(bcs->rx_skb);
  bcs->rx_skb = (struct sk_buff *)0;
  i = 0;
  goto ldv_45081;
  ldv_45080:
  kfree((void const *)bcs->commands[i]);
  bcs->commands[i] = (char *)0;
  i = i + 1;
  ldv_45081: ;
  if (i <= 6) {
    goto ldv_45080;
  } else {
  }
  return;
}
}
static struct cardstate *alloc_cs(struct gigaset_driver *drv )
{
  unsigned long flags ;
  unsigned int i ;
  struct cardstate *cs ;
  struct cardstate *ret ;
  raw_spinlock_t *tmp ;
  {
  ret = (struct cardstate *)0;
  tmp = spinlock_check(& drv->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (drv->blocked != 0) {
    goto exit;
  } else {
  }
  i = 0U;
  goto ldv_45096;
  ldv_45095:
  cs = drv->cs + (unsigned long )i;
  if ((cs->flags & 1U) == 0U) {
    cs->flags = 1U;
    ret = cs;
    goto ldv_45094;
  } else {
  }
  i = i + 1U;
  ldv_45096: ;
  if (drv->minors > i) {
    goto ldv_45095;
  } else {
  }
  ldv_45094: ;
  exit:
  spin_unlock_irqrestore(& drv->lock, flags);
  return (ret);
}
}
static void free_cs(struct cardstate *cs )
{
  {
  cs->flags = 0U;
  return;
}
}
static void make_valid(struct cardstate *cs , unsigned int mask )
{
  unsigned long flags ;
  struct gigaset_driver *drv ;
  raw_spinlock_t *tmp ;
  {
  drv = cs->driver;
  tmp = spinlock_check(& drv->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cs->flags = cs->flags | mask;
  spin_unlock_irqrestore(& drv->lock, flags);
  return;
}
}
static void make_invalid(struct cardstate *cs , unsigned int mask )
{
  unsigned long flags ;
  struct gigaset_driver *drv ;
  raw_spinlock_t *tmp ;
  {
  drv = cs->driver;
  tmp = spinlock_check(& drv->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cs->flags = cs->flags & ~ mask;
  spin_unlock_irqrestore(& drv->lock, flags);
  return;
}
}
void gigaset_freecs(struct cardstate *cs )
{
  int i ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  if ((unsigned long )cs == (unsigned long )((struct cardstate *)0)) {
    return;
  } else {
  }
  mutex_lock_nested(& cs->mutex, 0U);
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cs->running = 0U;
  spin_unlock_irqrestore(& cs->lock, flags);
  tasklet_kill(& cs->event_tasklet);
  ldv_del_timer_sync_10(& cs->timer);
  switch (cs->cs_init) {
  default:
  i = 0;
  goto ldv_45128;
  ldv_45127:
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: clearing bcs[%d]\n", i);
  } else {
  }
  gigaset_freebcs(cs->bcs + (unsigned long )i);
  i = i + 1;
  ldv_45128: ;
  if (cs->channels > i) {
    goto ldv_45127;
  } else {
  }
  gigaset_free_dev_sysfs(cs);
  gigaset_if_free(cs);
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: clearing hw\n");
  } else {
  }
  (*((cs->ops)->freecshw))(cs);
  case 2:
  make_invalid(cs, 2U);
  gigaset_isdn_unregdev(cs);
  case 1:
  tmp___2 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___2 != 0L) {
    printk("\017gigaset: clearing at_state\n");
  } else {
  }
  clear_at_state(& cs->at_state);
  dealloc_temp_at_states(cs);
  clear_events(cs);
  tty_port_destroy(& cs->port);
  case 0:
  tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___3 != 0L) {
    printk("\017gigaset: freeing inbuf\n");
  } else {
  }
  kfree((void const *)cs->inbuf);
  kfree((void const *)cs->bcs);
  }
  mutex_unlock(& cs->mutex);
  free_cs(cs);
  return;
}
}
static char const __kstrtab_gigaset_freecs[15U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'f', 'r', 'e', 'e',
        'c', 's', '\000'};
struct kernel_symbol const __ksymtab_gigaset_freecs ;
struct kernel_symbol const __ksymtab_gigaset_freecs = {(unsigned long )(& gigaset_freecs), (char const *)(& __kstrtab_gigaset_freecs)};
void gigaset_at_init(struct at_state_t *at_state , struct bc_state *bcs , struct cardstate *cs ,
                     int cid )
{
  int i ;
  {
  INIT_LIST_HEAD(& at_state->list);
  at_state->waiting = 0;
  at_state->getstring = 0;
  at_state->pending_commands = 0U;
  at_state->timer_expires = 0UL;
  at_state->timer_active = 0;
  at_state->timer_index = 0U;
  at_state->seq_index = 0U;
  at_state->ConState = 0U;
  i = 0;
  goto ldv_45148;
  ldv_45147:
  at_state->str_var[i] = (char *)0;
  i = i + 1;
  ldv_45148: ;
  if (i <= 4) {
    goto ldv_45147;
  } else {
  }
  at_state->int_var[1] = 0;
  at_state->int_var[2] = -1;
  at_state->int_var[0] = 5;
  at_state->cs = cs;
  at_state->bcs = bcs;
  at_state->cid = cid;
  if (cid == 0) {
    at_state->replystruct = cs->tabnocid;
  } else {
    at_state->replystruct = cs->tabcid;
  }
  return;
}
}
static void gigaset_inbuf_init(struct inbuf_t *inbuf , struct cardstate *cs )
{
  {
  inbuf->head = 0;
  inbuf->tail = 0;
  inbuf->cs = cs;
  inbuf->inputstate = 1;
  return;
}
}
int gigaset_fill_inbuf(struct inbuf_t *inbuf , unsigned char const *src , unsigned int numbytes )
{
  unsigned int n ;
  unsigned int head ;
  unsigned int tail ;
  unsigned int bytesleft ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 8U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: received %u bytes\n", numbytes);
  } else {
  }
  if (numbytes == 0U) {
    return (0);
  } else {
  }
  bytesleft = numbytes;
  tail = (unsigned int )inbuf->tail;
  head = (unsigned int )inbuf->head;
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 8U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: buffer state: %u -> %u\n", head, tail);
  } else {
  }
  goto ldv_45165;
  ldv_45164: ;
  if (head > tail) {
    n = (head - tail) - 1U;
  } else
  if (head == 0U) {
    n = 8191U - tail;
  } else {
    n = 8192U - tail;
  }
  if (n == 0U) {
    dev_err((struct device const *)(inbuf->cs)->dev, "buffer overflow (%u bytes lost)\n",
            bytesleft);
    goto ldv_45163;
  } else {
  }
  if (n > bytesleft) {
    n = bytesleft;
  } else {
  }
  memcpy((void *)(& inbuf->data) + (unsigned long )tail, (void const *)src, (size_t )n);
  bytesleft = bytesleft - n;
  tail = (tail + n) & 8191U;
  src = src + (unsigned long )n;
  ldv_45165: ;
  if (bytesleft != 0U) {
    goto ldv_45164;
  } else {
  }
  ldv_45163:
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 8U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: setting tail to %u\n", tail);
  } else {
  }
  inbuf->tail = (int )tail;
  return (numbytes != bytesleft);
}
}
static char const __kstrtab_gigaset_fill_inbuf[19U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'f', 'i', 'l', 'l',
        '_', 'i', 'n', 'b',
        'u', 'f', '\000'};
struct kernel_symbol const __ksymtab_gigaset_fill_inbuf ;
struct kernel_symbol const __ksymtab_gigaset_fill_inbuf = {(unsigned long )(& gigaset_fill_inbuf), (char const *)(& __kstrtab_gigaset_fill_inbuf)};
static int gigaset_initbcs(struct bc_state *bcs , struct cardstate *cs , int channel )
{
  int i ;
  long tmp ;
  struct lock_class_key __key ;
  long tmp___0 ;
  int tmp___1 ;
  {
  bcs->tx_skb = (struct sk_buff *)0;
  skb_queue_head_init(& bcs->squeue);
  bcs->corrupted = 0;
  bcs->trans_down = 0;
  bcs->trans_up = 0;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: setting up bcs[%d]->at_state\n", channel);
  } else {
  }
  gigaset_at_init(& bcs->at_state, bcs, cs, -1);
  bcs->emptycount = 0;
  bcs->rx_bufsize = 0U;
  bcs->rx_skb = (struct sk_buff *)0;
  bcs->rx_fcs = 65535U;
  bcs->inputstate = 0;
  bcs->channel = channel;
  bcs->cs = cs;
  bcs->chstate = 0U;
  bcs->use_count = 1;
  bcs->busy = 0;
  bcs->ignore = cs->ignoreframes;
  i = 0;
  goto ldv_45182;
  ldv_45181:
  bcs->commands[i] = (char *)0;
  i = i + 1;
  ldv_45182: ;
  if (i <= 6) {
    goto ldv_45181;
  } else {
  }
  spinlock_check(& bcs->aplock);
  __raw_spin_lock_init(& bcs->aplock.__annonCompField18.rlock, "&(&bcs->aplock)->rlock",
                       & __key);
  bcs->ap = (void *)0;
  bcs->apconnstate = 0;
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset:   setting up bcs[%d]->hw\n", channel);
  } else {
  }
  tmp___1 = (*((cs->ops)->initbcshw))(bcs);
  return (tmp___1);
}
}
struct cardstate *gigaset_initcs(struct gigaset_driver *drv , int channels , int onechannel ,
                                 int ignoreframes , int cidmode , char const *modulename )
{
  struct cardstate *cs ;
  unsigned long flags ;
  int i ;
  long tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  struct lock_class_key __key___1 ;
  long tmp___3 ;
  long tmp___4 ;
  struct cmdbuf_t *tmp___5 ;
  struct lock_class_key __key___2 ;
  long tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  raw_spinlock_t *tmp___12 ;
  unsigned long tmp___13 ;
  long tmp___14 ;
  long tmp___15 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: allocating cs\n");
  } else {
  }
  cs = alloc_cs(drv);
  if ((unsigned long )cs == (unsigned long )((struct cardstate *)0)) {
    printk("\vgigaset: maximum number of devices exceeded\n");
    return ((struct cardstate *)0);
  } else {
  }
  cs->cs_init = 0;
  cs->channels = channels;
  cs->onechannel = onechannel;
  cs->ignoreframes = ignoreframes;
  INIT_LIST_HEAD(& cs->temp_at_states);
  cs->running = 0U;
  reg_timer_2(& cs->timer);
  spinlock_check(& cs->ev_lock);
  __raw_spin_lock_init(& cs->ev_lock.__annonCompField18.rlock, "&(&cs->ev_lock)->rlock",
                       & __key);
  cs->ev_tail = 0U;
  cs->ev_head = 0U;
  tasklet_init(& cs->event_tasklet, & gigaset_handle_event, (unsigned long )cs);
  tty_port_init(& cs->port);
  cs->commands_pending = 0;
  cs->cur_at_seq = 0;
  cs->gotfwver = -1;
  cs->dev = (struct device *)0;
  cs->tty_dev = (struct device *)0;
  cs->cidmode = cidmode != 0;
  cs->tabnocid = (struct reply_t *)(& gigaset_tab_nocid);
  cs->tabcid = (struct reply_t *)(& gigaset_tab_cid);
  __init_waitqueue_head(& cs->waitqueue, "&cs->waitqueue", & __key___0);
  cs->waiting = 0;
  cs->mode = 0;
  cs->mstate = 0;
  tmp___0 = kmalloc((unsigned long )channels * 480UL, 208U);
  cs->bcs = (struct bc_state *)tmp___0;
  tmp___1 = kmalloc(8216UL, 208U);
  cs->inbuf = (struct inbuf_t *)tmp___1;
  if ((unsigned long )cs->bcs == (unsigned long )((struct bc_state *)0) || (unsigned long )cs->inbuf == (unsigned long )((struct inbuf_t *)0)) {
    printk("\vgigaset: out of memory\n");
    goto error;
  } else {
  }
  cs->cs_init = cs->cs_init + 1;
  tmp___2 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___2 != 0L) {
    printk("\017gigaset: setting up at_state\n");
  } else {
  }
  spinlock_check(& cs->lock);
  __raw_spin_lock_init(& cs->lock.__annonCompField18.rlock, "&(&cs->lock)->rlock",
                       & __key___1);
  gigaset_at_init(& cs->at_state, (struct bc_state *)0, cs, 0);
  cs->dle = 0;
  cs->cbytes = 0U;
  tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___3 != 0L) {
    printk("\017gigaset: setting up inbuf\n");
  } else {
  }
  gigaset_inbuf_init(cs->inbuf, cs);
  cs->connected = 0U;
  cs->isdn_up = 0U;
  tmp___4 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___4 != 0L) {
    printk("\017gigaset: setting up cmdbuf\n");
  } else {
  }
  tmp___5 = (struct cmdbuf_t *)0;
  cs->lastcmdbuf = tmp___5;
  cs->cmdbuf = tmp___5;
  spinlock_check(& cs->cmdlock);
  __raw_spin_lock_init(& cs->cmdlock.__annonCompField18.rlock, "&(&cs->cmdlock)->rlock",
                       & __key___2);
  cs->curlen = 0U;
  cs->cmdbytes = 0U;
  tmp___6 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___6 != 0L) {
    printk("\017gigaset: setting up iif\n");
  } else {
  }
  tmp___7 = gigaset_isdn_regdev(cs, modulename);
  if (tmp___7 < 0) {
    printk("\vgigaset: error registering ISDN device\n");
    goto error;
  } else {
  }
  make_valid(cs, 2U);
  cs->cs_init = cs->cs_init + 1;
  tmp___8 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp___8 != 0L) {
    printk("\017gigaset: setting up hw\n");
  } else {
  }
  tmp___9 = (*((cs->ops)->initcshw))(cs);
  if (tmp___9 < 0) {
    goto error;
  } else {
  }
  cs->cs_init = cs->cs_init + 1;
  gigaset_if_init(cs);
  gigaset_init_dev_sysfs(cs);
  i = 0;
  goto ldv_45202;
  ldv_45201:
  tmp___10 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U,
                              0L);
  if (tmp___10 != 0L) {
    printk("\017gigaset: setting up bcs[%d]\n", i);
  } else {
  }
  tmp___11 = gigaset_initbcs(cs->bcs + (unsigned long )i, cs, i);
  if (tmp___11 < 0) {
    printk("\vgigaset: could not allocate channel %d data\n", i);
    goto error;
  } else {
  }
  i = i + 1;
  ldv_45202: ;
  if (i < channels) {
    goto ldv_45201;
  } else {
  }
  tmp___12 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___12);
  cs->running = 1U;
  spin_unlock_irqrestore(& cs->lock, flags);
  reg_timer_1(& cs->timer, & timer_tick, (unsigned long )cs);
  tmp___13 = msecs_to_jiffies(100U);
  cs->timer.expires = tmp___13 + (unsigned long )jiffies;
  add_timer(& cs->timer);
  tmp___14 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U,
                              0L);
  if (tmp___14 != 0L) {
    printk("\017gigaset: cs initialized\n");
  } else {
  }
  return (cs);
  error:
  tmp___15 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U,
                              0L);
  if (tmp___15 != 0L) {
    printk("\017gigaset: failed\n");
  } else {
  }
  gigaset_freecs(cs);
  return ((struct cardstate *)0);
}
}
static char const __kstrtab_gigaset_initcs[15U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'i', 'n', 'i', 't',
        'c', 's', '\000'};
struct kernel_symbol const __ksymtab_gigaset_initcs ;
struct kernel_symbol const __ksymtab_gigaset_initcs = {(unsigned long )(& gigaset_initcs), (char const *)(& __kstrtab_gigaset_initcs)};
void gigaset_bcs_reinit(struct bc_state *bcs )
{
  struct sk_buff *skb ;
  struct cardstate *cs ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  cs = bcs->cs;
  goto ldv_45226;
  ldv_45225:
  consume_skb(skb);
  ldv_45226:
  skb = skb_dequeue(& bcs->squeue);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_45225;
  } else {
  }
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  clear_at_state(& bcs->at_state);
  bcs->at_state.ConState = 0U;
  bcs->at_state.timer_active = 0;
  bcs->at_state.timer_expires = 0UL;
  bcs->at_state.cid = -1;
  spin_unlock_irqrestore(& cs->lock, flags);
  bcs->inputstate = 0;
  bcs->emptycount = 0;
  bcs->rx_fcs = 65535U;
  bcs->chstate = 0U;
  bcs->ignore = cs->ignoreframes;
  consume_skb(bcs->rx_skb);
  bcs->rx_skb = (struct sk_buff *)0;
  (*((cs->ops)->reinitbcshw))(bcs);
  return;
}
}
static void cleanup_cs(struct cardstate *cs )
{
  struct cmdbuf_t *cb ;
  struct cmdbuf_t *tcb ;
  int i ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct cmdbuf_t *tmp___0 ;
  int tmp___1 ;
  {
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cs->mode = 0;
  cs->mstate = 0;
  clear_at_state(& cs->at_state);
  dealloc_temp_at_states(cs);
  gigaset_at_init(& cs->at_state, (struct bc_state *)0, cs, 0);
  (cs->inbuf)->inputstate = 1;
  (cs->inbuf)->head = 0;
  (cs->inbuf)->tail = 0;
  cb = cs->cmdbuf;
  goto ldv_45242;
  ldv_45241:
  tcb = cb;
  cb = cb->next;
  kfree((void const *)tcb);
  ldv_45242: ;
  if ((unsigned long )cb != (unsigned long )((struct cmdbuf_t *)0)) {
    goto ldv_45241;
  } else {
  }
  tmp___0 = (struct cmdbuf_t *)0;
  cs->lastcmdbuf = tmp___0;
  cs->cmdbuf = tmp___0;
  cs->curlen = 0U;
  cs->cmdbytes = 0U;
  cs->gotfwver = -1;
  cs->dle = 0;
  cs->cur_at_seq = 0;
  cs->commands_pending = 0;
  cs->cbytes = 0U;
  spin_unlock_irqrestore(& cs->lock, flags);
  i = 0;
  goto ldv_45245;
  ldv_45244:
  gigaset_freebcs(cs->bcs + (unsigned long )i);
  tmp___1 = gigaset_initbcs(cs->bcs + (unsigned long )i, cs, i);
  if (tmp___1 < 0) {
    printk("\vgigaset: could not allocate channel %d data\n", i);
  } else {
  }
  i = i + 1;
  ldv_45245: ;
  if (cs->channels > i) {
    goto ldv_45244;
  } else {
  }
  if (cs->waiting != 0) {
    cs->cmd_result = -19;
    cs->waiting = 0;
    __wake_up(& cs->waitqueue, 1U, 1, (void *)0);
  } else {
  }
  return;
}
}
int gigaset_start(struct cardstate *cs )
{
  unsigned long flags ;
  int tmp ;
  raw_spinlock_t *tmp___0 ;
  struct event_t *tmp___1 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___2 ;
  {
  tmp = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp != 0) {
    return (-16);
  } else {
  }
  tmp___0 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  cs->connected = 1U;
  spin_unlock_irqrestore(& cs->lock, flags);
  if (cs->mstate != 2) {
    (*((cs->ops)->set_modem_ctrl))(cs, 0U, 6U);
    (*((cs->ops)->baud_rate))(cs, 4098U);
    (*((cs->ops)->set_line_ctrl))(cs, 48U);
    cs->control_state = 6U;
  } else {
  }
  cs->waiting = 1;
  tmp___1 = gigaset_add_event(cs, & cs->at_state, -110, (void *)0, 0, (void *)0);
  if ((unsigned long )tmp___1 == (unsigned long )((struct event_t *)0)) {
    cs->waiting = 0;
    goto error;
  } else {
  }
  gigaset_schedule_event(cs);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/common.c",
                906, 0);
  if (cs->waiting == 0) {
    goto ldv_45255;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_45261:
  tmp___2 = prepare_to_wait_event(& cs->waitqueue, & __wait, 2);
  __int = tmp___2;
  if (cs->waiting == 0) {
    goto ldv_45260;
  } else {
  }
  schedule();
  goto ldv_45261;
  ldv_45260:
  finish_wait(& cs->waitqueue, & __wait);
  ldv_45255:
  mutex_unlock(& cs->mutex);
  return (0);
  error:
  mutex_unlock(& cs->mutex);
  return (-12);
}
}
static char const __kstrtab_gigaset_start[14U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        's', 't', 'a', 'r',
        't', '\000'};
struct kernel_symbol const __ksymtab_gigaset_start ;
struct kernel_symbol const __ksymtab_gigaset_start = {(unsigned long )(& gigaset_start), (char const *)(& __kstrtab_gigaset_start)};
int gigaset_shutdown(struct cardstate *cs )
{
  struct event_t *tmp ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___0 ;
  {
  mutex_lock_nested(& cs->mutex, 0U);
  if ((cs->flags & 1U) == 0U) {
    mutex_unlock(& cs->mutex);
    return (-19);
  } else {
  }
  cs->waiting = 1;
  tmp = gigaset_add_event(cs, & cs->at_state, -108, (void *)0, 0, (void *)0);
  if ((unsigned long )tmp == (unsigned long )((struct event_t *)0)) {
    goto exit;
  } else {
  }
  gigaset_schedule_event(cs);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/common.c",
                942, 0);
  if (cs->waiting == 0) {
    goto ldv_45274;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_45280:
  tmp___0 = prepare_to_wait_event(& cs->waitqueue, & __wait, 2);
  __int = tmp___0;
  if (cs->waiting == 0) {
    goto ldv_45279;
  } else {
  }
  schedule();
  goto ldv_45280;
  ldv_45279:
  finish_wait(& cs->waitqueue, & __wait);
  ldv_45274:
  cleanup_cs(cs);
  exit:
  mutex_unlock(& cs->mutex);
  return (0);
}
}
static char const __kstrtab_gigaset_shutdown[17U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        's', 'h', 'u', 't',
        'd', 'o', 'w', 'n',
        '\000'};
struct kernel_symbol const __ksymtab_gigaset_shutdown ;
struct kernel_symbol const __ksymtab_gigaset_shutdown = {(unsigned long )(& gigaset_shutdown), (char const *)(& __kstrtab_gigaset_shutdown)};
void gigaset_stop(struct cardstate *cs )
{
  struct event_t *tmp ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___0 ;
  {
  mutex_lock_nested(& cs->mutex, 0U);
  cs->waiting = 1;
  tmp = gigaset_add_event(cs, & cs->at_state, -111, (void *)0, 0, (void *)0);
  if ((unsigned long )tmp == (unsigned long )((struct event_t *)0)) {
    goto exit;
  } else {
  }
  gigaset_schedule_event(cs);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/common.c",
                969, 0);
  if (cs->waiting == 0) {
    goto ldv_45293;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_45299:
  tmp___0 = prepare_to_wait_event(& cs->waitqueue, & __wait, 2);
  __int = tmp___0;
  if (cs->waiting == 0) {
    goto ldv_45298;
  } else {
  }
  schedule();
  goto ldv_45299;
  ldv_45298:
  finish_wait(& cs->waitqueue, & __wait);
  ldv_45293:
  cleanup_cs(cs);
  exit:
  mutex_unlock(& cs->mutex);
  return;
}
}
static char const __kstrtab_gigaset_stop[13U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        's', 't', 'o', 'p',
        '\000'};
struct kernel_symbol const __ksymtab_gigaset_stop ;
struct kernel_symbol const __ksymtab_gigaset_stop = {(unsigned long )(& gigaset_stop), (char const *)(& __kstrtab_gigaset_stop)};
static struct list_head drivers = {& drivers, & drivers};
static spinlock_t driver_lock = {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "driver_lock", 0, 0UL}}}};
struct cardstate *gigaset_get_cs_by_id(int id )
{
  unsigned long flags ;
  struct cardstate *ret ;
  struct cardstate *cs ;
  struct gigaset_driver *drv ;
  unsigned int i ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ret = (struct cardstate *)0;
  tmp = spinlock_check(& driver_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)drivers.next;
  drv = (struct gigaset_driver *)__mptr;
  goto ldv_45331;
  ldv_45330:
  spin_lock(& drv->lock);
  i = 0U;
  goto ldv_45328;
  ldv_45327:
  cs = drv->cs + (unsigned long )i;
  if ((cs->flags & 2U) != 0U && cs->myid == id) {
    ret = cs;
    goto ldv_45326;
  } else {
  }
  i = i + 1U;
  ldv_45328: ;
  if (drv->minors > i) {
    goto ldv_45327;
  } else {
  }
  ldv_45326:
  spin_unlock(& drv->lock);
  if ((unsigned long )ret != (unsigned long )((struct cardstate *)0)) {
    goto ldv_45329;
  } else {
  }
  __mptr___0 = (struct list_head const *)drv->list.next;
  drv = (struct gigaset_driver *)__mptr___0;
  ldv_45331: ;
  if ((unsigned long )(& drv->list) != (unsigned long )(& drivers)) {
    goto ldv_45330;
  } else {
  }
  ldv_45329:
  spin_unlock_irqrestore(& driver_lock, flags);
  return (ret);
}
}
static struct cardstate *gigaset_get_cs_by_minor(unsigned int minor )
{
  unsigned long flags ;
  struct cardstate *ret ;
  struct gigaset_driver *drv ;
  unsigned int index ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ret = (struct cardstate *)0;
  tmp = spinlock_check(& driver_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)drivers.next;
  drv = (struct gigaset_driver *)__mptr;
  goto ldv_45349;
  ldv_45348: ;
  if (drv->minor > minor || drv->minor + drv->minors <= minor) {
    goto ldv_45346;
  } else {
  }
  index = minor - drv->minor;
  spin_lock(& drv->lock);
  if ((int )(drv->cs + (unsigned long )index)->flags & 1) {
    ret = drv->cs + (unsigned long )index;
  } else {
  }
  spin_unlock(& drv->lock);
  if ((unsigned long )ret != (unsigned long )((struct cardstate *)0)) {
    goto ldv_45347;
  } else {
  }
  ldv_45346:
  __mptr___0 = (struct list_head const *)drv->list.next;
  drv = (struct gigaset_driver *)__mptr___0;
  ldv_45349: ;
  if ((unsigned long )(& drv->list) != (unsigned long )(& drivers)) {
    goto ldv_45348;
  } else {
  }
  ldv_45347:
  spin_unlock_irqrestore(& driver_lock, flags);
  return (ret);
}
}
struct cardstate *gigaset_get_cs_by_tty(struct tty_struct *tty )
{
  struct cardstate *tmp ;
  {
  tmp = gigaset_get_cs_by_minor((unsigned int )(tty->index + (tty->driver)->minor_start));
  return (tmp);
}
}
void gigaset_freedriver(struct gigaset_driver *drv )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& driver_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  list_del(& drv->list);
  spin_unlock_irqrestore(& driver_lock, flags);
  gigaset_if_freedriver(drv);
  kfree((void const *)drv->cs);
  kfree((void const *)drv);
  return;
}
}
static char const __kstrtab_gigaset_freedriver[19U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'f', 'r', 'e', 'e',
        'd', 'r', 'i', 'v',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_gigaset_freedriver ;
struct kernel_symbol const __ksymtab_gigaset_freedriver = {(unsigned long )(& gigaset_freedriver), (char const *)(& __kstrtab_gigaset_freedriver)};
struct gigaset_driver *gigaset_initdriver(unsigned int minor , unsigned int minors ,
                                          char const *procname , char const *devname ,
                                          struct gigaset_ops const *ops , struct module *owner )
{
  struct gigaset_driver *drv ;
  unsigned long flags ;
  unsigned int i ;
  void *tmp ;
  struct lock_class_key __key ;
  void *tmp___0 ;
  struct lock_class_key __key___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = kmalloc(144UL, 208U);
  drv = (struct gigaset_driver *)tmp;
  if ((unsigned long )drv == (unsigned long )((struct gigaset_driver *)0)) {
    return ((struct gigaset_driver *)0);
  } else {
  }
  drv->have_tty = 0U;
  drv->minor = minor;
  drv->minors = minors;
  spinlock_check(& drv->lock);
  __raw_spin_lock_init(& drv->lock.__annonCompField18.rlock, "&(&drv->lock)->rlock",
                       & __key);
  drv->blocked = 0;
  drv->ops = ops;
  drv->owner = owner;
  INIT_LIST_HEAD(& drv->list);
  tmp___0 = kmalloc((unsigned long )minors * 5232UL, 208U);
  drv->cs = (struct cardstate *)tmp___0;
  if ((unsigned long )drv->cs == (unsigned long )((struct cardstate *)0)) {
    goto error;
  } else {
  }
  i = 0U;
  goto ldv_45382;
  ldv_45381:
  (drv->cs + (unsigned long )i)->flags = 0U;
  (drv->cs + (unsigned long )i)->driver = drv;
  (drv->cs + (unsigned long )i)->ops = drv->ops;
  (drv->cs + (unsigned long )i)->minor_index = i;
  __mutex_init(& (drv->cs + (unsigned long )i)->mutex, "&drv->cs[i].mutex", & __key___0);
  i = i + 1U;
  ldv_45382: ;
  if (i < minors) {
    goto ldv_45381;
  } else {
  }
  gigaset_if_initdriver(drv, procname, devname);
  tmp___1 = spinlock_check(& driver_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  list_add(& drv->list, & drivers);
  spin_unlock_irqrestore(& driver_lock, flags);
  return (drv);
  error:
  kfree((void const *)drv);
  return ((struct gigaset_driver *)0);
}
}
static char const __kstrtab_gigaset_initdriver[19U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'i', 'n', 'i', 't',
        'd', 'r', 'i', 'v',
        'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_gigaset_initdriver ;
struct kernel_symbol const __ksymtab_gigaset_initdriver = {(unsigned long )(& gigaset_initdriver), (char const *)(& __kstrtab_gigaset_initdriver)};
void gigaset_blockdriver(struct gigaset_driver *drv )
{
  {
  drv->blocked = 1;
  return;
}
}
static char const __kstrtab_gigaset_blockdriver[20U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'b', 'l', 'o', 'c',
        'k', 'd', 'r', 'i',
        'v', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_gigaset_blockdriver ;
struct kernel_symbol const __ksymtab_gigaset_blockdriver = {(unsigned long )(& gigaset_blockdriver), (char const *)(& __kstrtab_gigaset_blockdriver)};
static int gigaset_init_module(void)
{
  {
  if (gigaset_debuglevel == 1) {
    gigaset_debuglevel = 1056800;
  } else {
  }
  printk("\016gigaset: Driver for Gigaset 307x (debug build)\n");
  gigaset_isdn_regdrv();
  return (0);
}
}
static void gigaset_exit_module(void)
{
  {
  gigaset_isdn_unregdrv();
  return;
}
}
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
void timer_init_1(void)
{
  {
  ldv_timer_1_0 = 0;
  ldv_timer_1_1 = 0;
  ldv_timer_1_2 = 0;
  ldv_timer_1_3 = 0;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& timer_tick)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  if (ldv_timer_state_2 != 1) {
    return;
  }
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_2 = 2;
  return;
}
}
int reg_timer_2(struct timer_list *timer )
{
  {
  ldv_timer_list_2 = timer;
  ldv_timer_state_2 = 1;
  return (0);
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2 == (unsigned long )timer) {
    if (ldv_timer_state_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2 = timer;
      ldv_timer_list_2->data = data;
      ldv_timer_state_2 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_2(timer);
  ldv_timer_list_2->data = data;
  return;
}
}
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_2) {
    ldv_timer_state_2 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if (ldv_timer_1_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_0) {
    ldv_timer_1_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_1) {
    ldv_timer_1_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_2) {
    ldv_timer_1_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_3) {
    ldv_timer_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_1_0 == 0 || ldv_timer_1_0 == 2) {
    ldv_timer_list_1_0 = timer;
    ldv_timer_list_1_0->data = data;
    ldv_timer_1_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_1 == 0 || ldv_timer_1_1 == 2) {
    ldv_timer_list_1_1 = timer;
    ldv_timer_list_1_1->data = data;
    ldv_timer_1_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_2 == 0 || ldv_timer_1_2 == 2) {
    ldv_timer_list_1_2 = timer;
    ldv_timer_list_1_2->data = data;
    ldv_timer_1_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_3 == 0 || ldv_timer_1_3 == 2) {
    ldv_timer_list_1_3 = timer;
    ldv_timer_list_1_3->data = data;
    ldv_timer_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1_0 == (unsigned long )timer) {
    if (ldv_timer_1_0 == 2 || pending_flag != 0) {
      ldv_timer_list_1_0 = timer;
      ldv_timer_list_1_0->data = data;
      ldv_timer_1_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_1 == (unsigned long )timer) {
    if (ldv_timer_1_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1_1 = timer;
      ldv_timer_list_1_1->data = data;
      ldv_timer_1_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_2 == (unsigned long )timer) {
    if (ldv_timer_1_2 == 2 || pending_flag != 0) {
      ldv_timer_list_1_2 = timer;
      ldv_timer_list_1_2->data = data;
      ldv_timer_1_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_3 == (unsigned long )timer) {
    if (ldv_timer_1_3 == 2 || pending_flag != 0) {
      ldv_timer_list_1_3 = timer;
      ldv_timer_list_1_3->data = data;
      ldv_timer_1_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_1(timer, data);
  return;
}
}
void choose_timer_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_1_0 == 1) {
    ldv_timer_1_0 = 2;
    ldv_timer_1(ldv_timer_1_0, ldv_timer_list_1_0);
  } else {
  }
  goto ldv_45474;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_45474;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_45474;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_45474;
  default:
  ldv_stop();
  }
  ldv_45474: ;
  return;
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  timer_tick(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void ldv_main_exported_4(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_5(void) ;
int main(void)
{
  int tmp ;
  int tmp___0 ;
  {
  ldv_initialize();
  ldv_state_variable_4 = 0;
  timer_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_45507:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_45495;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1();
  } else {
  }
  goto ldv_45495;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      gigaset_exit_module();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_45500;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = gigaset_init_module();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_initialize_tty_operations_5();
        ldv_state_variable_3 = 1;
        ldv_file_operations_3();
        ldv_state_variable_4 = 1;
        ldv_initialize_device_attribute_4();
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_45500;
    default:
    ldv_stop();
    }
    ldv_45500: ;
  } else {
  }
  goto ldv_45495;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_45495;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_45495;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_45495;
  default:
  ldv_stop();
  }
  ldv_45495: ;
  goto ldv_45507;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
int ldv_mod_timer_5(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
bool ldv_try_module_get_6(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
bool ldv_try_module_get_7(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_8(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_9(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
int ldv_del_timer_sync_10(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern void __might_fault(char const * , int ) ;
bool ldv_is_err(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
bool ldv_try_module_get_17(struct module *ldv_func_arg1 ) ;
void ldv_module_put_18(struct module *ldv_func_arg1 ) ;
void ldv_module_put_19(struct module *ldv_func_arg1 ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 697);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    __copy_from_user_overflow();
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 732);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    __copy_to_user_overflow();
  }
  return (n);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern void dev_warn(struct device const * , char const * , ...) ;
__inline static void tasklet_unlock_wait(struct tasklet_struct *t )
{
  int tmp ;
  {
  goto ldv_36822;
  ldv_36821:
  __asm__ volatile ("": : : "memory");
  ldv_36822:
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& t->state));
  if (tmp != 0) {
    goto ldv_36821;
  } else {
  }
  return;
}
}
__inline static void tasklet_disable_nosync(struct tasklet_struct *t )
{
  {
  atomic_inc(& t->count);
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void tasklet_disable(struct tasklet_struct *t )
{
  {
  tasklet_disable_nosync(t);
  tasklet_unlock_wait(t);
  __asm__ volatile ("mfence": : : "memory");
  return;
}
}
extern struct tty_driver *__tty_alloc_driver(unsigned int , struct module * , unsigned long ) ;
extern void put_tty_driver(struct tty_driver * ) ;
extern void tty_set_operations(struct tty_driver * , struct tty_operations const * ) ;
__inline static struct tty_driver *alloc_tty_driver(unsigned int lines )
{
  struct tty_driver *ret ;
  struct tty_driver *tmp ;
  bool tmp___0 ;
  {
  tmp = __tty_alloc_driver(lines, & __this_module, 0UL);
  ret = tmp;
  tmp___0 = IS_ERR((void const *)ret);
  if ((int )tmp___0) {
    return ((struct tty_driver *)0);
  } else {
  }
  return (ret);
}
}
extern struct ktermios tty_std_termios ;
extern int tty_register_driver(struct tty_driver * ) ;
extern int tty_unregister_driver(struct tty_driver * ) ;
extern void tty_unregister_device(struct tty_driver * , unsigned int ) ;
extern struct device *tty_port_register_device(struct tty_port * , struct tty_driver * ,
                                               unsigned int , struct device * ) ;
extern void tty_port_tty_set(struct tty_port * , struct tty_struct * ) ;
extern void tty_port_tty_wakeup(struct tty_port * ) ;
void gigaset_if_receive(struct cardstate *cs , unsigned char *buffer , size_t len ) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_string(struct tty_port *port , unsigned char const *chars ,
                                           size_t size )
{
  int tmp ;
  {
  tmp = tty_insert_flip_string_fixed_flag(port, chars, 0, size);
  return (tmp);
}
}
static int if_lock(struct cardstate *cs , int *arg )
{
  int cmd ;
  long tmp ;
  struct event_t *tmp___0 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___1 ;
  {
  cmd = *arg;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: if_lock (%d)\n", cs->minor_index, cmd);
  } else {
  }
  if (cmd > 1) {
    return (-22);
  } else {
  }
  if (cmd < 0) {
    *arg = cs->mstate == 2;
    return (0);
  } else {
  }
  if ((cmd == 0 && cs->mstate == 2) && cs->connected != 0U) {
    (*((cs->ops)->set_modem_ctrl))(cs, 0U, 6U);
    (*((cs->ops)->baud_rate))(cs, 4098U);
    (*((cs->ops)->set_line_ctrl))(cs, 48U);
    cs->control_state = 6U;
  } else {
  }
  cs->waiting = 1;
  tmp___0 = gigaset_add_event(cs, & cs->at_state, -112, (void *)0, cmd, (void *)0);
  if ((unsigned long )tmp___0 == (unsigned long )((struct event_t *)0)) {
    cs->waiting = 0;
    return (-12);
  } else {
  }
  gigaset_schedule_event(cs);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/interface.c",
                50, 0);
  if (cs->waiting == 0) {
    goto ldv_44888;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_44894:
  tmp___1 = prepare_to_wait_event(& cs->waitqueue, & __wait, 2);
  __int = tmp___1;
  if (cs->waiting == 0) {
    goto ldv_44893;
  } else {
  }
  schedule();
  goto ldv_44894;
  ldv_44893:
  finish_wait(& cs->waitqueue, & __wait);
  ldv_44888: ;
  if (cs->cmd_result >= 0) {
    *arg = cs->cmd_result;
    return (0);
  } else {
  }
  return (cs->cmd_result);
}
}
static int if_version(struct cardstate *cs , unsigned int *arg )
{
  unsigned int version[4U] ;
  unsigned int compat[4U] ;
  unsigned int cmd ;
  long tmp ;
  struct event_t *tmp___0 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___1 ;
  {
  version[0] = 0U;
  version[1] = 5U;
  version[2] = 0U;
  version[3] = 0U;
  compat[0] = 0U;
  compat[1] = 4U;
  compat[2] = 0U;
  compat[3] = 0U;
  cmd = *arg;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: if_version (%d)\n", cs->minor_index, cmd);
  } else {
  }
  switch (cmd) {
  case 0U:
  memcpy((void *)arg, (void const *)(& version), 16UL);
  return (0);
  case 1U:
  memcpy((void *)arg, (void const *)(& compat), 16UL);
  return (0);
  case 2U:
  cs->waiting = 1;
  tmp___0 = gigaset_add_event(cs, & cs->at_state, -106, (void *)0, 0, (void *)arg);
  if ((unsigned long )tmp___0 == (unsigned long )((struct event_t *)0)) {
    cs->waiting = 0;
    return (-12);
  } else {
  }
  gigaset_schedule_event(cs);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/interface.c",
                84, 0);
  if (cs->waiting == 0) {
    goto ldv_44906;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_44912:
  tmp___1 = prepare_to_wait_event(& cs->waitqueue, & __wait, 2);
  __int = tmp___1;
  if (cs->waiting == 0) {
    goto ldv_44911;
  } else {
  }
  schedule();
  goto ldv_44912;
  ldv_44911:
  finish_wait(& cs->waitqueue, & __wait);
  ldv_44906: ;
  if (cs->cmd_result >= 0) {
    return (0);
  } else {
  }
  return (cs->cmd_result);
  default: ;
  return (-22);
  }
}
}
static int if_config(struct cardstate *cs , int *arg )
{
  long tmp ;
  int tmp___0 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: if_config (%d)\n", cs->minor_index, *arg);
  } else {
  }
  if (*arg != 1) {
    return (-22);
  } else {
  }
  if (cs->mstate != 2) {
    return (-16);
  } else {
  }
  if (cs->connected == 0U) {
    printk("\vgigaset: %s: not connected\n", "if_config");
    return (-19);
  } else {
  }
  *arg = 0;
  tmp___0 = gigaset_enterconfigmode(cs);
  return (tmp___0);
}
}
static int if_open(struct tty_struct *tty , struct file *filp )
{
  struct cardstate *cs ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %d+%d: %s()\n", (tty->driver)->minor_start, tty->index, "if_open");
  } else {
  }
  cs = gigaset_get_cs_by_tty(tty);
  if ((unsigned long )cs == (unsigned long )((struct cardstate *)0)) {
    return (-19);
  } else {
    tmp___0 = ldv_try_module_get_17((cs->driver)->owner);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (-19);
    } else {
    }
  }
  tmp___2 = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp___2 != 0) {
    ldv_module_put_18((cs->driver)->owner);
    return (-512);
  } else {
  }
  tty->driver_data = (void *)cs;
  cs->port.count = cs->port.count + 1;
  if (cs->port.count == 1) {
    tty_port_tty_set(& cs->port, tty);
    cs->port.low_latency = 1U;
  } else {
  }
  mutex_unlock(& cs->mutex);
  return (0);
}
}
static void if_close(struct tty_struct *tty , struct file *filp )
{
  struct cardstate *cs ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  if ((unsigned long )cs == (unsigned long )((struct cardstate *)0)) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: %s: no cardstate\n", "if_close");
    } else {
    }
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                             0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_close");
  } else {
  }
  mutex_lock_nested(& cs->mutex, 0U);
  if (cs->connected == 0U) {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
  } else
  if (cs->port.count == 0) {
    dev_warn((struct device const *)cs->dev, "%s: device not opened\n", "if_close");
  } else {
    cs->port.count = cs->port.count - 1;
    if (cs->port.count == 0) {
      tty_port_tty_set(& cs->port, (struct tty_struct *)0);
    } else {
    }
  }
  mutex_unlock(& cs->mutex);
  ldv_module_put_19((cs->driver)->owner);
  return;
}
}
static int if_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg )
{
  struct cardstate *cs ;
  int retval ;
  int int_arg ;
  unsigned char buf[6U] ;
  unsigned int version[4U] ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_pu ;
  int __pu_val ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int __ret_pu___0 ;
  int __pu_val___0 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  long tmp___5 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  retval = -19;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s(0x%x)\n", cs->minor_index, "if_ioctl", cmd);
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  if (cs->connected == 0U) {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
    retval = -19;
  } else {
    retval = 0;
    switch (cmd) {
    case 3221505792U:
    __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/interface.c",
                  190);
    __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((int *)arg),
                         "i" (4UL));
    int_arg = (int )__val_gu;
    retval = __ret_gu;
    if (retval >= 0) {
      retval = if_lock(cs, & int_arg);
    } else {
    }
    if (retval >= 0) {
      __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/interface.c",
                    194);
      __pu_val = int_arg;
      switch (4UL) {
      case 1UL:
      __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
      goto ldv_44950;
      case 2UL:
      __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
      goto ldv_44950;
      case 4UL:
      __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
      goto ldv_44950;
      case 8UL:
      __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
      goto ldv_44950;
      default:
      __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)arg): "ebx");
      goto ldv_44950;
      }
      ldv_44950:
      retval = __ret_pu;
    } else {
    }
    goto ldv_44956;
    case 3221505793U:
    __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/interface.c",
                  197);
    __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" ((int *)arg),
                         "i" (4UL));
    int_arg = (int )__val_gu___0;
    retval = __ret_gu___0;
    if (retval >= 0) {
      retval = if_config(cs, & int_arg);
    } else {
    }
    if (retval >= 0) {
      __might_fault("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/interface.c",
                    201);
      __pu_val___0 = int_arg;
      switch (4UL) {
      case 1UL:
      __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" ((int *)arg): "ebx");
      goto ldv_44964;
      case 2UL:
      __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" ((int *)arg): "ebx");
      goto ldv_44964;
      case 4UL:
      __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" ((int *)arg): "ebx");
      goto ldv_44964;
      case 8UL:
      __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" ((int *)arg): "ebx");
      goto ldv_44964;
      default:
      __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                           "c" ((int *)arg): "ebx");
      goto ldv_44964;
      }
      ldv_44964:
      retval = __ret_pu___0;
    } else {
    }
    goto ldv_44956;
    case 1074153218U:
    tmp___2 = copy_from_user((void *)(& buf), (void const *)arg, 6UL);
    retval = tmp___2 != 0UL ? -14 : 0;
    if (retval >= 0) {
      gigaset_dbg_buffer(524288, (unsigned char const *)"GIGASET_BRKCHARS", 6UL,
                         (unsigned char const *)arg);
      retval = (*((cs->ops)->brkchars))(cs, (unsigned char const *)(& buf));
    } else {
    }
    goto ldv_44956;
    case 3222292227U:
    tmp___3 = copy_from_user((void *)(& version), (void const *)arg, 16UL);
    retval = tmp___3 != 0UL ? -14 : 0;
    if (retval >= 0) {
      retval = if_version(cs, (unsigned int *)(& version));
    } else {
    }
    if (retval >= 0) {
      tmp___4 = copy_to_user((void *)arg, (void const *)(& version), 16UL);
      retval = tmp___4 != 0UL ? -14 : 0;
    } else {
    }
    goto ldv_44956;
    default:
    tmp___5 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___5 != 0L) {
      printk("\017gigaset: %s: arg not supported - 0x%04x\n", "if_ioctl", cmd);
    } else {
    }
    retval = -515;
    }
    ldv_44956: ;
  }
  mutex_unlock(& cs->mutex);
  return (retval);
}
}
static int if_tiocmget(struct tty_struct *tty )
{
  struct cardstate *cs ;
  int retval ;
  long tmp ;
  int tmp___0 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_tiocmget");
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  retval = (int )cs->control_state & 6;
  mutex_unlock(& cs->mutex);
  return (retval);
}
}
static int if_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  struct cardstate *cs ;
  int retval ;
  unsigned int mc ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s(0x%x, 0x%x)\n", cs->minor_index, "if_tiocmset", set,
           clear);
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  if (cs->connected == 0U) {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
    retval = -19;
  } else {
    mc = ((cs->control_state | set) & ~ clear) & 6U;
    retval = (*((cs->ops)->set_modem_ctrl))(cs, cs->control_state, mc);
    cs->control_state = mc;
  }
  mutex_unlock(& cs->mutex);
  return (retval);
}
}
static int if_write(struct tty_struct *tty , unsigned char const *buf , int count )
{
  struct cardstate *cs ;
  struct cmdbuf_t *cb ;
  int retval ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_write");
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  if (cs->connected == 0U) {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
    retval = -19;
    goto done;
  } else {
  }
  if (cs->mstate != 2) {
    dev_warn((struct device const *)cs->dev, "can\'t write to unlocked device\n");
    retval = -16;
    goto done;
  } else {
  }
  if (count <= 0) {
    retval = 0;
    goto done;
  } else {
  }
  tmp___2 = kmalloc((unsigned long )count + 32UL, 208U);
  cb = (struct cmdbuf_t *)tmp___2;
  if ((unsigned long )cb == (unsigned long )((struct cmdbuf_t *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "if_write");
    retval = -12;
    goto done;
  } else {
  }
  memcpy((void *)(& cb->buf), (void const *)buf, (size_t )count);
  cb->len = count;
  cb->offset = 0;
  cb->next = (struct cmdbuf_t *)0;
  cb->wake_tasklet = & cs->if_wake_tasklet;
  retval = (*((cs->ops)->write_cmd))(cs, cb);
  done:
  mutex_unlock(& cs->mutex);
  return (retval);
}
}
static int if_write_room(struct tty_struct *tty )
{
  struct cardstate *cs ;
  int retval ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_write_room");
  } else {
  }
  tmp___0 = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp___0 != 0) {
    return (-512);
  } else {
  }
  if (cs->connected == 0U) {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
    retval = -19;
  } else
  if (cs->mstate != 2) {
    dev_warn((struct device const *)cs->dev, "can\'t write to unlocked device\n");
    retval = -16;
  } else {
    retval = (*((cs->ops)->write_room))(cs);
  }
  mutex_unlock(& cs->mutex);
  return (retval);
}
}
static int if_chars_in_buffer(struct tty_struct *tty )
{
  struct cardstate *cs ;
  int retval ;
  long tmp ;
  long tmp___0 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  retval = 0;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_chars_in_buffer");
  } else {
  }
  mutex_lock_nested(& cs->mutex, 0U);
  if (cs->connected == 0U) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
  } else
  if (cs->mstate != 2) {
    dev_warn((struct device const *)cs->dev, "can\'t write to unlocked device\n");
  } else {
    retval = (*((cs->ops)->chars_in_buffer))(cs);
  }
  mutex_unlock(& cs->mutex);
  return (retval);
}
}
static void if_throttle(struct tty_struct *tty )
{
  struct cardstate *cs ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_throttle");
  } else {
  }
  mutex_lock_nested(& cs->mutex, 0U);
  if (cs->connected == 0U) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
  } else {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: %s: not implemented\n\n", "if_throttle");
    } else {
    }
  }
  mutex_unlock(& cs->mutex);
  return;
}
}
static void if_unthrottle(struct tty_struct *tty )
{
  struct cardstate *cs ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_unthrottle");
  } else {
  }
  mutex_lock_nested(& cs->mutex, 0U);
  if (cs->connected == 0U) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
  } else {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: %s: not implemented\n\n", "if_unthrottle");
    } else {
    }
  }
  mutex_unlock(& cs->mutex);
  return;
}
}
static void if_set_termios(struct tty_struct *tty , struct ktermios *old )
{
  struct cardstate *cs ;
  unsigned int iflag ;
  unsigned int cflag ;
  unsigned int old_cflag ;
  unsigned int control_state ;
  unsigned int new_state ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  cs = (struct cardstate *)tty->driver_data;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %u: %s()\n", cs->minor_index, "if_set_termios");
  } else {
  }
  mutex_lock_nested(& cs->mutex, 0U);
  if (cs->connected == 0U) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: not connected\n");
    } else {
    }
    goto out;
  } else {
  }
  iflag = tty->termios.c_iflag;
  cflag = tty->termios.c_cflag;
  old_cflag = (unsigned long )old != (unsigned long )((struct ktermios *)0) ? old->c_cflag : cflag;
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                             0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: %u: iflag %x cflag %x old %x\n", cs->minor_index, iflag,
           cflag, old_cflag);
  } else {
  }
  control_state = cs->control_state;
  if ((old_cflag & 4111U) == 0U) {
    new_state = control_state | 2U;
    if ((int )old_cflag >= 0) {
      new_state = new_state | 4U;
    } else {
    }
    tmp___2 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___2 != 0L) {
      printk("\017gigaset: %u: from B0 - set DTR%s\n", cs->minor_index, (new_state & 4U) != 0U ? (char *)" only" : (char *)"/RTS");
    } else {
    }
    (*((cs->ops)->set_modem_ctrl))(cs, control_state, new_state);
    control_state = new_state;
  } else {
  }
  (*((cs->ops)->baud_rate))(cs, cflag & 4111U);
  if ((cflag & 4111U) == 0U) {
    tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U,
                               0L);
    if (tmp___3 != 0L) {
      printk("\017gigaset: %u: to B0 - drop DTR/RTS\n", cs->minor_index);
    } else {
    }
    new_state = control_state & 4294967289U;
    (*((cs->ops)->set_modem_ctrl))(cs, control_state, new_state);
    control_state = new_state;
  } else {
  }
  (*((cs->ops)->set_line_ctrl))(cs, cflag);
  cs->control_state = control_state;
  out:
  mutex_unlock(& cs->mutex);
  return;
}
}
static struct tty_operations const if_ops =
     {0, 0, 0, & if_open, & if_close, 0, 0, & if_write, 0, 0, & if_write_room, & if_chars_in_buffer,
    & if_ioctl, 0, & if_set_termios, & if_throttle, & if_unthrottle, 0, 0, 0, 0, 0,
    0, 0, 0, & if_tiocmget, & if_tiocmset, 0, 0, 0, 0, 0, 0, 0};
static void if_wake(unsigned long data )
{
  struct cardstate *cs ;
  {
  cs = (struct cardstate *)data;
  tty_port_tty_wakeup(& cs->port);
  return;
}
}
void gigaset_if_init(struct cardstate *cs )
{
  struct gigaset_driver *drv ;
  bool tmp ;
  int tmp___0 ;
  {
  drv = cs->driver;
  if (drv->have_tty == 0U) {
    return;
  } else {
  }
  tasklet_init(& cs->if_wake_tasklet, & if_wake, (unsigned long )cs);
  mutex_lock_nested(& cs->mutex, 0U);
  cs->tty_dev = tty_port_register_device(& cs->port, drv->tty, cs->minor_index, (struct device *)0);
  tmp = IS_ERR((void const *)cs->tty_dev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev_set_drvdata(cs->tty_dev, (void *)cs);
  } else {
    printk("\fgigaset: could not register device to the tty subsystem\n");
    cs->tty_dev = (struct device *)0;
  }
  mutex_unlock(& cs->mutex);
  return;
}
}
void gigaset_if_free(struct cardstate *cs )
{
  struct gigaset_driver *drv ;
  {
  drv = cs->driver;
  if (drv->have_tty == 0U) {
    return;
  } else {
  }
  tasklet_disable(& cs->if_wake_tasklet);
  tasklet_kill(& cs->if_wake_tasklet);
  cs->tty_dev = (struct device *)0;
  tty_unregister_device(drv->tty, cs->minor_index);
  return;
}
}
void gigaset_if_receive(struct cardstate *cs , unsigned char *buffer , size_t len )
{
  {
  tty_insert_flip_string(& cs->port, (unsigned char const *)buffer, len);
  tty_flip_buffer_push(& cs->port);
  return;
}
}
static char const __kstrtab_gigaset_if_receive[19U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'i', 'f', '_', 'r',
        'e', 'c', 'e', 'i',
        'v', 'e', '\000'};
struct kernel_symbol const __ksymtab_gigaset_if_receive ;
struct kernel_symbol const __ksymtab_gigaset_if_receive = {(unsigned long )(& gigaset_if_receive), (char const *)(& __kstrtab_gigaset_if_receive)};
void gigaset_if_initdriver(struct gigaset_driver *drv , char const *procname , char const *devname )
{
  int ret ;
  struct tty_driver *tty ;
  long tmp ;
  {
  drv->have_tty = 0U;
  tty = alloc_tty_driver(drv->minors);
  drv->tty = tty;
  if ((unsigned long )tty == (unsigned long )((struct tty_driver *)0)) {
    goto enomem;
  } else {
  }
  tty->type = 3;
  tty->subtype = 1;
  tty->flags = 12UL;
  tty->driver_name = procname;
  tty->name = devname;
  tty->minor_start = (int )drv->minor;
  tty->init_termios = tty_std_termios;
  tty->init_termios.c_cflag = 3261U;
  tty_set_operations(tty, & if_ops);
  ret = tty_register_driver(tty);
  if (ret < 0) {
    printk("\vgigaset: error %d registering tty driver\n", ret);
    goto error;
  } else {
  }
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 524288U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: tty driver initialized\n");
  } else {
  }
  drv->have_tty = 1U;
  return;
  enomem:
  printk("\vgigaset: out of memory\n");
  error: ;
  if ((unsigned long )drv->tty != (unsigned long )((struct tty_driver *)0)) {
    put_tty_driver(drv->tty);
  } else {
  }
  return;
}
}
void gigaset_if_freedriver(struct gigaset_driver *drv )
{
  {
  if (drv->have_tty == 0U) {
    return;
  } else {
  }
  drv->have_tty = 0U;
  tty_unregister_driver(drv->tty);
  put_tty_driver(drv->tty);
  return;
}
}
int ldv_retval_2 ;
void ldv_initialize_tty_operations_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = __VERIFIER_nondet_pointer();
  if_ops_group0 = (struct file *)tmp;
  tmp___0 = ldv_init_zalloc(1816UL);
  if_ops_group1 = (struct tty_struct *)tmp___0;
  return;
}
}
void ldv_main_exported_5(void)
{
  unsigned int ldvarg9 ;
  struct ktermios *ldvarg12 ;
  void *tmp ;
  unsigned long ldvarg10 ;
  int ldvarg13 ;
  unsigned char *ldvarg14 ;
  void *tmp___0 ;
  unsigned int ldvarg11 ;
  unsigned int ldvarg8 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(44UL);
  ldvarg12 = (struct ktermios *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg14 = (unsigned char *)tmp___0;
  ldv_memset((void *)(& ldvarg9), 0, 4UL);
  ldv_memset((void *)(& ldvarg10), 0, 8UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg11), 0, 4UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_5 == 2) {
    if_write(if_ops_group1, (unsigned char const *)ldvarg14, ldvarg13);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    if_throttle(if_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_throttle(if_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 2: ;
  if (ldv_state_variable_5 == 2) {
    if_close(if_ops_group1, if_ops_group0);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_45086;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    if_write_room(if_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_write_room(if_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 4: ;
  if (ldv_state_variable_5 == 1) {
    ldv_retval_2 = if_open(if_ops_group1, if_ops_group0);
    if (ldv_retval_2 == 0) {
      ldv_state_variable_5 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45086;
  case 5: ;
  if (ldv_state_variable_5 == 1) {
    if_unthrottle(if_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_unthrottle(if_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 6: ;
  if (ldv_state_variable_5 == 1) {
    if_set_termios(if_ops_group1, ldvarg12);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_set_termios(if_ops_group1, ldvarg12);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 7: ;
  if (ldv_state_variable_5 == 1) {
    if_ioctl(if_ops_group1, ldvarg11, ldvarg10);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_ioctl(if_ops_group1, ldvarg11, ldvarg10);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 8: ;
  if (ldv_state_variable_5 == 1) {
    if_chars_in_buffer(if_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_chars_in_buffer(if_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 9: ;
  if (ldv_state_variable_5 == 1) {
    if_tiocmget(if_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_tiocmget(if_ops_group1);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  case 10: ;
  if (ldv_state_variable_5 == 1) {
    if_tiocmset(if_ops_group1, ldvarg9, ldvarg8);
    ldv_state_variable_5 = 1;
  } else {
  }
  if (ldv_state_variable_5 == 2) {
    if_tiocmset(if_ops_group1, ldvarg9, ldvarg8);
    ldv_state_variable_5 = 2;
  } else {
  }
  goto ldv_45086;
  default:
  ldv_stop();
  }
  ldv_45086: ;
  return;
}
}
__inline static bool IS_ERR(void const *ptr )
{
  bool tmp ;
  {
  tmp = ldv_is_err(ptr);
  return (tmp);
}
}
bool ldv_try_module_get_17(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_18(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_19(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern long simple_strtol(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
extern unsigned char const _ctype[] ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
static ssize_t show_cidmode(struct device *dev , struct device_attribute *attr , char *buf )
{
  struct cardstate *cs ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cs = (struct cardstate *)tmp;
  tmp___0 = sprintf(buf, "%u\n", cs->cidmode);
  return ((ssize_t )tmp___0);
}
}
static ssize_t set_cidmode(struct device *dev , struct device_attribute *attr , char const *buf ,
                           size_t count )
{
  struct cardstate *cs ;
  void *tmp ;
  long value ;
  char *end ;
  char *tmp___0 ;
  int tmp___1 ;
  struct event_t *tmp___2 ;
  wait_queue_t __wait ;
  long __ret ;
  long __int ;
  long tmp___3 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  cs = (struct cardstate *)tmp;
  value = simple_strtol(buf, & end, 0U);
  goto ldv_44845;
  ldv_44844:
  tmp___0 = end;
  end = end + 1;
  if (((int )_ctype[(int )((unsigned char )*tmp___0)] & 32) == 0) {
    return (-22L);
  } else {
  }
  ldv_44845: ;
  if ((int )((signed char )*end) != 0) {
    goto ldv_44844;
  } else {
  }
  if (value < 0L || value > 1L) {
    return (-22L);
  } else {
  }
  tmp___1 = mutex_lock_interruptible_nested(& cs->mutex, 0U);
  if (tmp___1 != 0) {
    return (-512L);
  } else {
  }
  cs->waiting = 1;
  tmp___2 = gigaset_add_event(cs, & cs->at_state, -107, (void *)0, (int )value, (void *)0);
  if ((unsigned long )tmp___2 == (unsigned long )((struct event_t *)0)) {
    cs->waiting = 0;
    mutex_unlock(& cs->mutex);
    return (-12L);
  } else {
  }
  gigaset_schedule_event(cs);
  __might_sleep("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/5786/dscv_tempdir/dscv/ri/08_1a/drivers/isdn/gigaset/proc.c",
                52, 0);
  if (cs->waiting == 0) {
    goto ldv_44847;
  } else {
  }
  __ret = 0L;
  INIT_LIST_HEAD(& __wait.task_list);
  __wait.flags = 0U;
  ldv_44853:
  tmp___3 = prepare_to_wait_event(& cs->waitqueue, & __wait, 2);
  __int = tmp___3;
  if (cs->waiting == 0) {
    goto ldv_44852;
  } else {
  }
  schedule();
  goto ldv_44853;
  ldv_44852:
  finish_wait(& cs->waitqueue, & __wait);
  ldv_44847:
  mutex_unlock(& cs->mutex);
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_cidmode = {{"cidmode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_cidmode,
    & set_cidmode};
void gigaset_free_dev_sysfs(struct cardstate *cs )
{
  long tmp ;
  {
  if ((unsigned long )cs->tty_dev == (unsigned long )((struct device *)0)) {
    return;
  } else {
  }
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: removing sysfs entries\n");
  } else {
  }
  device_remove_file(cs->tty_dev, (struct device_attribute const *)(& dev_attr_cidmode));
  return;
}
}
void gigaset_init_dev_sysfs(struct cardstate *cs )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )cs->tty_dev == (unsigned long )((struct device *)0)) {
    return;
  } else {
  }
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32768U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: setting up sysfs\n");
  } else {
  }
  tmp___0 = device_create_file(cs->tty_dev, (struct device_attribute const *)(& dev_attr_cidmode));
  if (tmp___0 != 0) {
    printk("\vgigaset: could not create sysfs attribute\n");
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_cidmode_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_cidmode_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_main_exported_4(void)
{
  char *ldvarg2 ;
  void *tmp ;
  char *ldvarg0 ;
  void *tmp___0 ;
  size_t ldvarg1 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg2 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg0 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_4 == 1) {
    set_cidmode(dev_attr_cidmode_group1, dev_attr_cidmode_group0, (char const *)ldvarg2,
                ldvarg1);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_44884;
  case 1: ;
  if (ldv_state_variable_4 == 1) {
    show_cidmode(dev_attr_cidmode_group1, dev_attr_cidmode_group0, ldvarg0);
    ldv_state_variable_4 = 1;
  } else {
  }
  goto ldv_44884;
  default:
  ldv_stop();
  }
  ldv_44884: ;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern int kstrtoint(char const * , unsigned int , int * ) ;
extern int kstrtou8(char const * , unsigned int , u8 * ) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern char *strchr(char const * , int ) ;
extern char *strrchr(char const * , int ) ;
extern char *kstrdup(char const * , gfp_t ) ;
extern void dev_notice(struct device const * , char const * , ...) ;
void gigaset_isdn_start(struct cardstate *cs ) ;
void gigaset_isdn_stop(struct cardstate *cs ) ;
int gigaset_isdn_icall(struct at_state_t *at_state ) ;
void gigaset_isdn_connD(struct bc_state *bcs ) ;
void gigaset_isdn_hupD(struct bc_state *bcs ) ;
void gigaset_isdn_connB(struct bc_state *bcs ) ;
void gigaset_isdn_hupB(struct bc_state *bcs ) ;
void gigaset_handle_modem_response(struct cardstate *cs ) ;
struct reply_t gigaset_tab_nocid[65U] =
  { {-27, -1, -1, 100, 100, 1, {29}, 0},
        {-105, 100, 100, -1, 101, 3, {0}, (char *)"Z\r"},
        {0, 101, 103, -1, 120, 5, {30}, (char *)"+GMR\r"},
        {-105, 101, 101, -1, 102, 5, {0}, (char *)"Z\r"},
        {1, 101, 101, -1, 102, 5, {0}, (char *)"Z\r"},
        {-105, 102, 102, -1, 108, 5, {1}, (char *)"^SDLE=0\r"},
        {0, 108, 108, -1, 104, -1, {0, 0, 0}, 0},
        {101, 104, 104, 0, 103, 5, {0}, (char *)"Z\r"},
        {-105, 104, 104, -1, 0, 0, {3}, 0},
        {1, 108, 108, -1, 0, 0, {3}, 0},
        {-105, 108, 108, -1, 105, 2, {2, 4, 29}, 0},
        {-105, 105, 105, -1, 103, 5, {0}, (char *)"Z\r"},
        {1, 102, 102, -1, 107, 5, {0}, (char *)"^GETPRE\r"},
        {0, 107, 107, -1, 0, 0, {5}, 0},
        {1, 107, 107, -1, 0, 0, {3}, 0},
        {-105, 107, 107, -1, 0, 0, {3}, 0},
        {1, 103, 103, -1, 0, 0, {3}, 0},
        {-105, 103, 103, -1, 0, 0, {3}, 0},
        {-20, 120, 120, -1, 121, -1, {31}, 0},
        {-105, 120, 121, -1, 0, 0, {32, 6}, 0},
        {1, 120, 121, -1, 0, 0, {32, 6}, 0},
        {0, 121, 121, -1, 0, 0, {33, 6}, 0},
        {-19, 121, 121, -1, 120, 0, {30}, 0},
        {-27, 0, 0, 200, 201, 5, {0}, (char *)"^SDLE=0\r"},
        {0, 201, 201, -1, 202, -1, {0, 0, 0}, 0},
        {101, 202, 202, 0, 0, 0, {7}, 0},
        {-9, 200, 249, -1, 0, 0, {47}, 0},
        {1, 200, 249, -1, 0, 0, {9}, 0},
        {-105, 200, 249, -1, 0, 0, {9}, 0},
        {-27, 0, 0, 250, 251, 5, {0}, (char *)"^SDLE=1\r"},
        {0, 251, 251, -1, 252, -1, {0, 0, 0}, 0},
        {101, 252, 252, 1, 0, 0, {8}, 0},
        {1, 250, 299, -1, 0, 0, {10}, 0},
        {-105, 250, 299, -1, 0, 0, {10}, 0},
        {4, -1, -1, -1, -1, -1, {11}, 0},
        {-27, 0, 0, 300, 301, 5, {0}, (char *)"^SGCI?\r"},
        {0, 301, 301, -1, 302, -1, {0, 0, 0}, 0},
        {3, 302, 302, -1, 0, 0, {12}, 0},
        {1, 301, 349, -1, 0, 0, {13}, 0},
        {-105, 301, 349, -1, 0, 0, {13}, 0},
        {-27, 0, 0, 10, 150, 5, {0}, (char *)"^SGCI=1\r"},
        {0, 150, 150, -1, 0, 0, {54}, 0},
        {1, 150, 150, -1, 0, 0, {55}, 0},
        {-105, 150, 150, -1, 0, 0, {55}, 0},
        {-27, 0, 0, 11, 160, 5, {0}, (char *)"Z\r"},
        {0, 160, 160, -1, 0, 0, {52}, 0},
        {1, 160, 160, -1, 0, 0, {53}, 0},
        {-105, 160, 160, -1, 0, 0, {53}, 0},
        {-27, 0, 0, 350, 0, 0, {36}, 0},
        {-27, 0, 0, 500, 504, 5, {0}, (char *)"Z\r"},
        {0, 504, 504, -1, 0, 0, {14}, 0},
        {1, 501, 599, -1, 0, 0, {15}, 0},
        {-105, 501, 599, -1, 0, 0, {15}, 0},
        {-9, 501, 599, -1, 0, 0, {49}, 0},
        {-107, -1, -1, -1, -1, -1, {51}, 0},
        {-112, -1, -1, -1, -1, -1, {44}, 0},
        {-106, -1, -1, -1, -1, -1, {56}, 0},
        {-110, -1, -1, -1, -1, -1, {45}, 0},
        {-111, -1, -1, -1, -1, -1, {46}, 0},
        {-108, -1, -1, -1, -1, -1, {50}, 0},
        {1, -1, -1, -1, -1, -1, {35}, 0},
        {6, -1, -1, -1, -1, -1, {37}, 0},
        {-19, -1, -1, -1, -1, -1, {16}, 0},
        {-26, -1, -1, -1, -1, -1, {17}, 0},
        {-28, 0, 0, 0, 0, 0, {0, 0, 0}, 0}};
struct reply_t gigaset_tab_cid[64U] =
  { {-115, -1, -1, -1, -1, -1, {40}, 0},
        {-27, 0, 0, 600, 601, 5, {103}, 0},
        {0, 601, 601, -1, 603, 5, {104}, 0},
        {0, 603, 603, -1, 604, 5, {105}, 0},
        {0, 604, 604, -1, 605, 5, {102}, 0},
        {-21, 605, 605, -1, 606, 5, {106}, 0},
        {0, 605, 605, -1, 606, 5, {106}, 0},
        {-21, 606, 606, -1, 607, 5, {100}, 0},
        {0, 606, 606, -1, 607, 5, {100}, 0},
        {0, 607, 607, -1, 608, 5, {0}, (char *)"+VLS=17\r"},
        {0, 608, 608, -1, 609, -1, {0, 0, 0}, 0},
        {100, 609, 609, 1, 610, 5, {101}, 0},
        {0, 610, 610, -1, 650, 0, {18}, 0},
        {1, 601, 610, -1, 0, 0, {19}, 0},
        {-105, 601, 610, -1, 0, 0, {19}, 0},
        {-117, 650, 650, -1, 651, -1, {0, 0, 0}, 0},
        {5, 609, 651, 17, -1, -1, {16}, 0},
        {102, 610, 651, -1, -1, -1, {16}, 0},
        {104, 610, 651, -1, -1, -1, {16}, 0},
        {100, 650, 651, 2, -1, -1, {16}, 0},
        {100, 650, 650, 3, 800, -1, {21}, 0},
        {100, 651, 651, 3, 800, -1, {21, 39}, 0},
        {100, 750, 750, 3, 800, -1, {21}, 0},
        {100, 751, 751, 3, 800, -1, {21, 39}, 0},
        {-117, 800, 800, -1, 800, -1, {39}, 0},
        {100, 650, 651, 4, 0, 0, {22}, 0},
        {100, 750, 751, 4, 0, 0, {24}, 0},
        {100, 800, 800, 4, 0, 0, {24}, 0},
        {-116, -1, -1, -1, -1, -1, {43}, 0},
        {-27, -1, -1, 400, 401, 5, {0}, (char *)"+VLS=0\r"},
        {0, 401, 401, -1, 402, 5, {0, 0, 0}, 0},
        {5, 402, 402, 0, 403, 5, {0, 0, 0}, 0},
        {100, 403, 403, 6, -1, -1, {16}, 0},
        {100, 403, 403, 5, 0, 0, {20}, 0},
        {-9, 401, 403, -1, 0, 0, {48}, 0},
        {1, 401, 401, -1, 0, 0, {25}, 0},
        {-105, 401, 403, -1, 0, 0, {25}, 0},
        {-118, 0, 0, -1, 0, -1, {38}, 0},
        {106, 700, 700, -1, -1, -1, {0}, 0},
        {107, 700, 700, -1, -1, -1, {0}, 0},
        {103, 700, 700, -1, -1, -1, {0}, 0},
        {104, 700, 700, -1, -1, -1, {0}, 0},
        {102, 700, 700, -1, -1, -1, {0}, 0},
        {-105, 700, 700, -1, 720, 720, {26}, 0},
        {-118, 720, 720, -1, 0, -1, {38}, 0},
        {-114, -1, -1, -1, -1, -1, {41}, 0},
        {-27, 720, 720, 720, 721, 5, {104}, 0},
        {0, 721, 721, -1, 722, 5, {100}, 0},
        {0, 722, 722, -1, 723, 5, {0}, (char *)"+VLS=17\r"},
        {0, 723, 723, -1, 724, 5, {0}, 0},
        {5, 724, 724, 17, 750, 50, {27}, 0},
        {1, 721, 729, -1, 0, 0, {28}, 0},
        {-105, 721, 729, -1, 0, 0, {28}, 0},
        {100, 700, 729, 5, 0, 0, {28}, 0},
        {100, 700, 729, 3, 0, 0, {28}, 0},
        {100, 700, 729, 4, 0, 0, {28}, 0},
        {-117, 750, 750, -1, 751, -1, {0, 0, 0}, 0},
        {-105, 750, 751, -1, 0, 0, {23}, 0},
        {-118, -1, -1, -1, -1, -1, {38}, 0},
        {105, -1, -1, -1, -1, -1, {16}, 0},
        {6, -1, -1, -1, -1, -1, {37}, 0},
        {-19, -1, -1, -1, -1, -1, {16}, 0},
        {-26, -1, -1, -1, -1, -1, {17}, 0},
        {-28, 0, 0, 0, 0, 0, {0, 0, 0}, 0}};
static struct resp_type_t const resp_type[15U] =
  { {(char *)"OK", 0, 0},
        {(char *)"OLD_ERROR", 1, 0},
        {(char *)"ZSAU", 100, 1},
        {(char *)"ZCAU", 6, 6},
        {(char *)"RING", 4, 2},
        {(char *)"ZGCI", 3, 3},
        {(char *)"ZVLS", 5, 3},
        {(char *)"ZCTP", 102, 3},
        {(char *)"ZDLE", 101, 3},
        {(char *)"ZHLC", 107, 4},
        {(char *)"ZBC", 106, 4},
        {(char *)"NMBR", 103, 4},
        {(char *)"ZCPN", 104, 4},
        {(char *)"ZCON", 105, 4},
        {(char *)0, 0, 0}};
static struct zsau_resp_t const zsau_resp[7U] = { {(char *)"OUTGOING_CALL_PROCEEDING", 1},
        {(char *)"CALL_DELIVERED", 2},
        {(char *)"ACTIVE", 3},
        {(char *)"DISCONNECT_IND", 4},
        {(char *)"NULL", 5},
        {(char *)"DISCONNECT_REQ", 6},
        {(char *)0, -1}};
static char *skip_prefix(char *s , char const *prefix )
{
  char *tmp ;
  char const *tmp___0 ;
  {
  goto ldv_44845;
  ldv_44844:
  tmp = s;
  s = s + 1;
  tmp___0 = prefix;
  prefix = prefix + 1;
  if ((int )((signed char )*tmp) != (int )((signed char )*tmp___0)) {
    return ((char *)0);
  } else {
  }
  ldv_44845: ;
  if ((int )((signed char )*prefix) != 0) {
    goto ldv_44844;
  } else {
  }
  if (((int )_ctype[(int )((unsigned char )*s)] & 7) != 0) {
    return ((char *)0);
  } else {
  }
  return (s);
}
}
static void add_cid_event(struct cardstate *cs , int cid , int type , void *ptr ,
                          int parameter )
{
  unsigned long flags ;
  unsigned int next ;
  unsigned int tail ;
  struct event_t *event ;
  long tmp ;
  raw_spinlock_t *tmp___0 ;
  long tmp___1 ;
  {
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: queueing event %d for cid %d\n", type, cid);
  } else {
  }
  tmp___0 = spinlock_check(& cs->ev_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tail = cs->ev_tail;
  next = (tail + 1U) & 63U;
  tmp___1 = ldv__builtin_expect(cs->ev_head == next, 0L);
  if (tmp___1 != 0L) {
    dev_err((struct device const *)cs->dev, "event queue full\n");
    kfree((void const *)ptr);
  } else {
    event = (struct event_t *)(& cs->events) + (unsigned long )tail;
    event->type = type;
    event->cid = cid;
    event->ptr = ptr;
    event->arg = (void *)0;
    event->parameter = parameter;
    event->at_state = (struct at_state_t *)0;
    cs->ev_tail = next;
  }
  spin_unlock_irqrestore(& cs->ev_lock, flags);
  return;
}
}
void gigaset_handle_modem_response(struct cardstate *cs )
{
  char *eoc ;
  char *psep ;
  char *ptr ;
  struct resp_type_t const *rt ;
  struct zsau_resp_t const *zr ;
  int cid ;
  int parameter ;
  u8 type ;
  u8 value ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  char *tmp___5 ;
  char *tmp___6 ;
  char *tmp___7 ;
  char *tmp___8 ;
  int tmp___9 ;
  char *tmp___10 ;
  char *tmp___11 ;
  char *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  char *tmp___15 ;
  int tmp___16 ;
  {
  if (cs->cbytes == 0U) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 16384U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: skipped EOL [%02X]\n", (int )cs->respdata[0]);
    } else {
    }
    return;
  } else {
  }
  cs->respdata[cs->cbytes] = 0U;
  if (cs->at_state.getstring != 0) {
    cs->at_state.getstring = 0;
    ptr = kstrdup((char const *)(& cs->respdata), 32U);
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: string==%s\n", (unsigned long )ptr != (unsigned long )((char *)0) ? ptr : (char *)"NULL");
    } else {
    }
    add_cid_event(cs, 0, -20, (void *)ptr, 0);
    return;
  } else {
  }
  rt = (struct resp_type_t const *)(& resp_type);
  goto ldv_44875;
  ldv_44874:
  eoc = skip_prefix((char *)(& cs->respdata), (char const *)rt->response);
  if ((unsigned long )eoc != (unsigned long )((char *)0)) {
    goto ldv_44873;
  } else {
  }
  rt = rt + 1;
  ldv_44875: ;
  if ((unsigned long )rt->response != (unsigned long )((char * )0)) {
    goto ldv_44874;
  } else {
  }
  ldv_44873: ;
  if ((unsigned long )rt->response == (unsigned long )((char * )0)) {
    add_cid_event(cs, 0, -19, (void *)0, 0);
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: unknown modem response: \'%s\'\n\n", (unsigned char *)(& cs->respdata));
    } else {
    }
    return;
  } else {
  }
  psep = strrchr((char const *)(& cs->respdata), 59);
  if ((unsigned long )psep != (unsigned long )((char *)0)) {
    tmp___2 = kstrtoint((char const *)psep + 1U, 10U, & cid);
    if (tmp___2 == 0) {
      if (cid > 0) {
        if (cid <= 65535) {
          *psep = 0;
        } else {
          cid = 0;
        }
      } else {
        cid = 0;
      }
    } else {
      cid = 0;
    }
  } else {
    cid = 0;
  }
  tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___3 != 0L) {
    printk("\017gigaset: CMD received: %s\n", (unsigned char *)(& cs->respdata));
  } else {
  }
  if (cid != 0) {
    tmp___4 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___4 != 0L) {
      printk("\017gigaset: CID: %d\n", cid);
    } else {
    }
  } else {
  }
  switch (rt->type) {
  case 0: ;
  if ((int )((signed char )*eoc) != 0) {
    goto bad_param;
  } else {
  }
  add_cid_event(cs, cid, rt->resp_code, (void *)0, 0);
  goto ldv_44878;
  case 2: ;
  if ((int )((signed char )*eoc) == 0) {
    eoc = (char *)0;
  } else {
    tmp___5 = eoc;
    eoc = eoc + 1;
    if ((int )((signed char )*tmp___5) != 44) {
      goto bad_param;
    } else {
    }
  }
  add_cid_event(cs, 0, rt->resp_code, (void *)0, cid);
  goto ldv_44884;
  ldv_44883:
  psep = (char *)0;
  rt = (struct resp_type_t const *)(& resp_type);
  goto ldv_44882;
  ldv_44881:
  psep = skip_prefix(eoc, (char const *)rt->response);
  if ((unsigned long )psep != (unsigned long )((char *)0)) {
    goto ldv_44880;
  } else {
  }
  rt = rt + 1;
  ldv_44882: ;
  if ((unsigned long )rt->response != (unsigned long )((char * )0)) {
    goto ldv_44881;
  } else {
  }
  ldv_44880: ;
  if ((unsigned long )psep == (unsigned long )((char *)0) || (int )rt->type != 4) {
    dev_warn((struct device const *)cs->dev, "illegal RING parameter: \'%s\'\n",
             eoc);
    return;
  } else {
  }
  tmp___6 = psep;
  psep = psep + 1;
  if ((int )((signed char )*tmp___6) != 61) {
    goto bad_param;
  } else {
  }
  eoc = strchr((char const *)psep, 44);
  if ((unsigned long )eoc != (unsigned long )((char *)0)) {
    tmp___7 = eoc;
    eoc = eoc + 1;
    *tmp___7 = 0;
  } else {
  }
  ptr = kstrdup((char const *)psep, 32U);
  add_cid_event(cs, cid, rt->resp_code, (void *)ptr, 0);
  ldv_44884: ;
  if ((unsigned long )eoc != (unsigned long )((char *)0)) {
    goto ldv_44883;
  } else {
  }
  goto ldv_44878;
  case 1: ;
  if ((int )((signed char )*eoc) == 0) {
    add_cid_event(cs, cid, rt->resp_code, (void *)0, 0);
    goto ldv_44878;
  } else {
  }
  tmp___8 = eoc;
  eoc = eoc + 1;
  if ((int )((signed char )*tmp___8) != 61) {
    goto bad_param;
  } else {
  }
  zr = (struct zsau_resp_t const *)(& zsau_resp);
  goto ldv_44889;
  ldv_44888:
  tmp___9 = strcmp((char const *)eoc, (char const *)zr->str);
  if (tmp___9 == 0) {
    goto ldv_44887;
  } else {
  }
  zr = zr + 1;
  ldv_44889: ;
  if ((unsigned long )zr->str != (unsigned long )((char * )0)) {
    goto ldv_44888;
  } else {
  }
  ldv_44887: ;
  if ((unsigned long )zr->str == (unsigned long )((char * )0)) {
    goto bad_param;
  } else {
  }
  add_cid_event(cs, cid, rt->resp_code, (void *)0, zr->code);
  goto ldv_44878;
  case 4:
  tmp___10 = eoc;
  eoc = eoc + 1;
  if ((int )((signed char )*tmp___10) != 61) {
    goto bad_param;
  } else {
  }
  ptr = kstrdup((char const *)eoc, 32U);
  add_cid_event(cs, cid, rt->resp_code, (void *)ptr, 0);
  goto ldv_44878;
  case 6:
  tmp___11 = eoc;
  eoc = eoc + 1;
  if ((int )((signed char )*tmp___11) != 61) {
    goto bad_param;
  } else {
  }
  psep = strchr((char const *)eoc, 44);
  if ((unsigned long )psep == (unsigned long )((char *)0)) {
    goto bad_param;
  } else {
  }
  tmp___12 = psep;
  psep = psep + 1;
  *tmp___12 = 0;
  tmp___13 = kstrtou8((char const *)eoc, 16U, & type);
  if (tmp___13 != 0) {
    psep = psep - 1;
    *psep = 44;
    goto bad_param;
  } else {
    tmp___14 = kstrtou8((char const *)psep, 16U, & value);
    if (tmp___14 != 0) {
      psep = psep - 1;
      *psep = 44;
      goto bad_param;
    } else {
    }
  }
  parameter = ((int )type << 8) | (int )value;
  add_cid_event(cs, cid, rt->resp_code, (void *)0, parameter);
  goto ldv_44878;
  case 3:
  tmp___15 = eoc;
  eoc = eoc + 1;
  if ((int )((signed char )*tmp___15) != 61) {
    goto bad_param;
  } else {
  }
  tmp___16 = kstrtoint((char const *)eoc, 10U, & parameter);
  if (tmp___16 != 0) {
    goto bad_param;
  } else {
  }
  if ((int )rt->resp_code == 101) {
    cs->dle = parameter;
  } else {
  }
  add_cid_event(cs, cid, rt->resp_code, (void *)0, parameter);
  goto ldv_44878;
  bad_param:
  dev_warn((struct device const *)cs->dev, "bad parameter in response \'%s\'\n",
           (unsigned char *)(& cs->respdata));
  add_cid_event(cs, cid, rt->resp_code, (void *)0, -1);
  goto ldv_44878;
  default:
  dev_err((struct device const *)cs->dev, "%s: internal error on \'%s\'\n", "gigaset_handle_modem_response",
          (unsigned char *)(& cs->respdata));
  }
  ldv_44878: ;
  return;
}
}
static char const __kstrtab_gigaset_handle_modem_response[30U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'h', 'a', 'n', 'd',
        'l', 'e', '_', 'm',
        'o', 'd', 'e', 'm',
        '_', 'r', 'e', 's',
        'p', 'o', 'n', 's',
        'e', '\000'};
struct kernel_symbol const __ksymtab_gigaset_handle_modem_response ;
struct kernel_symbol const __ksymtab_gigaset_handle_modem_response = {(unsigned long )(& gigaset_handle_modem_response), (char const *)(& __kstrtab_gigaset_handle_modem_response)};
static void disconnect_nobc(struct at_state_t **at_state_p , struct cardstate *cs )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  (*at_state_p)->seq_index = (*at_state_p)->seq_index + 1U;
  if (cs->cidmode == 0U) {
    cs->at_state.pending_commands = cs->at_state.pending_commands | 1024U;
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: Scheduling PC_UMMODE\n");
    } else {
    }
    cs->commands_pending = 1;
  } else {
  }
  tmp___1 = list_empty((struct list_head const *)(& (*at_state_p)->list));
  if (tmp___1 == 0) {
    list_del(& (*at_state_p)->list);
    kfree((void const *)*at_state_p);
    *at_state_p = (struct at_state_t *)0;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return;
}
}
static void disconnect_bc(struct at_state_t *at_state , struct cardstate *cs , struct bc_state *bcs )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  {
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  at_state->seq_index = at_state->seq_index + 1U;
  if (cs->cidmode == 0U) {
    cs->at_state.pending_commands = cs->at_state.pending_commands | 1024U;
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: Scheduling PC_UMMODE\n");
    } else {
    }
    cs->commands_pending = 1;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  (*((cs->ops)->close_bchannel))(bcs);
  if ((bcs->chstate & 5U) != 0U) {
    bcs->chstate = bcs->chstate & 4294967290U;
    gigaset_isdn_hupD(bcs);
  } else {
  }
  return;
}
}
__inline static struct at_state_t *get_free_channel(struct cardstate *cs , int cid )
{
  unsigned long flags ;
  int i ;
  struct at_state_t *ret ;
  int tmp ;
  raw_spinlock_t *tmp___0 ;
  void *tmp___1 ;
  {
  i = 0;
  goto ldv_44927;
  ldv_44926:
  tmp = gigaset_get_channel(cs->bcs + (unsigned long )i);
  if (tmp >= 0) {
    ret = & (cs->bcs + (unsigned long )i)->at_state;
    ret->cid = cid;
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_44927: ;
  if (cs->channels > i) {
    goto ldv_44926;
  } else {
  }
  tmp___0 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tmp___1 = kmalloc(136UL, 32U);
  ret = (struct at_state_t *)tmp___1;
  if ((unsigned long )ret != (unsigned long )((struct at_state_t *)0)) {
    gigaset_at_init(ret, (struct bc_state *)0, cs, cid);
    list_add(& ret->list, & cs->temp_at_states);
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return (ret);
}
}
static void init_failed(struct cardstate *cs , int mode )
{
  int i ;
  struct at_state_t *at_state ;
  {
  cs->at_state.pending_commands = cs->at_state.pending_commands & 4294967291U;
  cs->mode = mode;
  cs->mstate = 0;
  gigaset_free_channels(cs);
  i = 0;
  goto ldv_44939;
  ldv_44938:
  at_state = & (cs->bcs + (unsigned long )i)->at_state;
  if ((at_state->pending_commands & 128U) != 0U) {
    at_state->pending_commands = at_state->pending_commands & 4294967167U;
    at_state->pending_commands = at_state->pending_commands | 256U;
    cs->commands_pending = 1;
  } else {
  }
  i = i + 1;
  ldv_44939: ;
  if (cs->channels > i) {
    goto ldv_44938;
  } else {
  }
  return;
}
}
static void schedule_init(struct cardstate *cs , int state )
{
  long tmp ;
  long tmp___0 ;
  {
  if ((cs->at_state.pending_commands & 4U) != 0U) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: not scheduling PC_INIT again\n");
    } else {
    }
    return;
  } else {
  }
  cs->mstate = state;
  cs->mode = 0;
  gigaset_block_channels(cs);
  cs->at_state.pending_commands = cs->at_state.pending_commands | 4U;
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: Scheduling PC_INIT\n");
  } else {
  }
  cs->commands_pending = 1;
  return;
}
}
static void send_command(struct cardstate *cs , char const *cmd , struct at_state_t *at_state )
{
  int cid ;
  struct cmdbuf_t *cb ;
  size_t buflen ;
  size_t tmp ;
  void *tmp___0 ;
  {
  cid = at_state->cid;
  tmp = strlen(cmd);
  buflen = tmp + 12UL;
  tmp___0 = kmalloc(buflen + 32UL, 32U);
  cb = (struct cmdbuf_t *)tmp___0;
  if ((unsigned long )cb == (unsigned long )((struct cmdbuf_t *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "send_command");
    return;
  } else {
  }
  if (cid > 0 && cid <= 65535) {
    cb->len = snprintf((char *)(& cb->buf), buflen, cs->dle != 0 ? "\020(AT%d%s\020)" : "AT%d%s",
                       cid, cmd);
  } else {
    cb->len = snprintf((char *)(& cb->buf), buflen, cs->dle != 0 ? "\020(AT%s\020)" : "AT%s",
                       cmd);
  }
  cb->offset = 0;
  cb->next = (struct cmdbuf_t *)0;
  cb->wake_tasklet = (struct tasklet_struct *)0;
  (*((cs->ops)->write_cmd))(cs, cb);
  return;
}
}
static struct at_state_t *at_state_from_cid(struct cardstate *cs , int cid )
{
  struct at_state_t *at_state ;
  int i ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if (cid == 0) {
    return (& cs->at_state);
  } else {
  }
  i = 0;
  goto ldv_44962;
  ldv_44961: ;
  if ((cs->bcs + (unsigned long )i)->at_state.cid == cid) {
    return (& (cs->bcs + (unsigned long )i)->at_state);
  } else {
  }
  i = i + 1;
  ldv_44962: ;
  if (cs->channels > i) {
    goto ldv_44961;
  } else {
  }
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)cs->temp_at_states.next;
  at_state = (struct at_state_t *)__mptr;
  goto ldv_44972;
  ldv_44971: ;
  if (at_state->cid == cid) {
    spin_unlock_irqrestore(& cs->lock, flags);
    return (at_state);
  } else {
  }
  __mptr___0 = (struct list_head const *)at_state->list.next;
  at_state = (struct at_state_t *)__mptr___0;
  ldv_44972: ;
  if ((unsigned long )(& at_state->list) != (unsigned long )(& cs->temp_at_states)) {
    goto ldv_44971;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return ((struct at_state_t *)0);
}
}
static void bchannel_down(struct bc_state *bcs )
{
  {
  if ((bcs->chstate & 2U) != 0U) {
    bcs->chstate = bcs->chstate & 4294967293U;
    gigaset_isdn_hupB(bcs);
  } else {
  }
  if ((bcs->chstate & 5U) != 0U) {
    bcs->chstate = bcs->chstate & 4294967290U;
    gigaset_isdn_hupD(bcs);
  } else {
  }
  gigaset_free_channel(bcs);
  gigaset_bcs_reinit(bcs);
  return;
}
}
static void bchannel_up(struct bc_state *bcs )
{
  {
  if ((bcs->chstate & 2U) != 0U) {
    dev_notice((struct device const *)(bcs->cs)->dev, "%s: B channel already up\n",
               "bchannel_up");
    return;
  } else {
  }
  bcs->chstate = bcs->chstate | 2U;
  gigaset_isdn_connB(bcs);
  return;
}
}
static void start_dial(struct at_state_t *at_state , void *data , unsigned int seq_index )
{
  struct bc_state *bcs ;
  struct cardstate *cs ;
  char **commands ;
  unsigned long flags ;
  int i ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  bcs = at_state->bcs;
  cs = at_state->cs;
  commands = (char **)data;
  bcs->chstate = bcs->chstate | 4U;
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (at_state->seq_index != seq_index) {
    spin_unlock_irqrestore(& cs->lock, flags);
    goto error;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  i = 0;
  goto ldv_44996;
  ldv_44995:
  kfree((void const *)bcs->commands[i]);
  bcs->commands[i] = *(commands + (unsigned long )i);
  i = i + 1;
  ldv_44996: ;
  if (i <= 6) {
    goto ldv_44995;
  } else {
  }
  at_state->pending_commands = at_state->pending_commands | 128U;
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: Scheduling PC_CID\n");
  } else {
  }
  cs->commands_pending = 1;
  return;
  error:
  i = 0;
  goto ldv_44999;
  ldv_44998:
  kfree((void const *)*(commands + (unsigned long )i));
  *(commands + (unsigned long )i) = (char *)0;
  i = i + 1;
  ldv_44999: ;
  if (i <= 6) {
    goto ldv_44998;
  } else {
  }
  at_state->pending_commands = at_state->pending_commands | 256U;
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: Scheduling PC_NOCID\n");
  } else {
  }
  cs->commands_pending = 1;
  return;
}
}
static void start_accept(struct at_state_t *at_state )
{
  struct cardstate *cs ;
  struct bc_state *bcs ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  cs = at_state->cs;
  bcs = at_state->bcs;
  i = 0;
  goto ldv_45008;
  ldv_45007:
  kfree((void const *)bcs->commands[i]);
  bcs->commands[i] = (char *)0;
  i = i + 1;
  ldv_45008: ;
  if (i <= 6) {
    goto ldv_45007;
  } else {
  }
  tmp = kmalloc(9UL, 32U);
  bcs->commands[4] = (char *)tmp;
  tmp___0 = kmalloc(9UL, 32U);
  bcs->commands[0] = (char *)tmp___0;
  if ((unsigned long )bcs->commands[4] == (unsigned long )((char *)0) || (unsigned long )bcs->commands[0] == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(at_state->cs)->dev, "out of memory\n");
    at_state->pending_commands = at_state->pending_commands | 2U;
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: Scheduling PC_HUP\n");
    } else {
    }
    cs->commands_pending = 1;
    return;
  } else {
  }
  snprintf(bcs->commands[4], 9UL, "^SBPR=%u\r", bcs->proto2);
  snprintf(bcs->commands[0], 9UL, "^SISO=%u\r", bcs->channel + 1);
  at_state->pending_commands = at_state->pending_commands | 64U;
  tmp___2 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___2 != 0L) {
    printk("\017gigaset: Scheduling PC_ACCEPT\n");
  } else {
  }
  cs->commands_pending = 1;
  return;
}
}
static void do_start(struct cardstate *cs )
{
  {
  gigaset_free_channels(cs);
  if (cs->mstate != 2) {
    schedule_init(cs, 1);
  } else {
  }
  cs->isdn_up = 1U;
  gigaset_isdn_start(cs);
  cs->waiting = 0;
  __wake_up(& cs->waitqueue, 3U, 1, (void *)0);
  return;
}
}
static void finish_shutdown(struct cardstate *cs )
{
  {
  if (cs->mstate != 2) {
    cs->mstate = 0;
    cs->mode = 0;
  } else {
  }
  if (cs->isdn_up != 0U) {
    cs->isdn_up = 0U;
    gigaset_isdn_stop(cs);
  } else {
  }
  cs->cmd_result = -19;
  cs->waiting = 0;
  __wake_up(& cs->waitqueue, 3U, 1, (void *)0);
  return;
}
}
static void do_shutdown(struct cardstate *cs )
{
  long tmp ;
  {
  gigaset_block_channels(cs);
  if (cs->mstate == 5) {
    cs->mstate = 3;
    cs->at_state.pending_commands = cs->at_state.pending_commands | 32U;
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: Scheduling PC_SHUTDOWN\n");
    } else {
    }
    cs->commands_pending = 1;
  } else {
    finish_shutdown(cs);
  }
  return;
}
}
static void do_stop(struct cardstate *cs )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  cs->connected = 0U;
  spin_unlock_irqrestore(& cs->lock, flags);
  do_shutdown(cs);
  return;
}
}
static int reinit_and_retry(struct cardstate *cs , int channel )
{
  int i ;
  {
  cs->retry_count = cs->retry_count - 1;
  if (cs->retry_count <= 0) {
    return (-14);
  } else {
  }
  i = 0;
  goto ldv_45032;
  ldv_45031: ;
  if ((cs->bcs + (unsigned long )i)->at_state.cid > 0) {
    return (-16);
  } else {
  }
  i = i + 1;
  ldv_45032: ;
  if (cs->channels > i) {
    goto ldv_45031;
  } else {
  }
  if (channel < 0) {
    dev_warn((struct device const *)cs->dev, "Could not enter cid mode. Reinit device and try again.\n");
  } else {
    dev_warn((struct device const *)cs->dev, "Could not get a call id. Reinit device and try again.\n");
    (cs->bcs + (unsigned long )channel)->at_state.pending_commands = (cs->bcs + (unsigned long )channel)->at_state.pending_commands | 128U;
  }
  schedule_init(cs, 1);
  return (0);
}
}
static int at_state_invalid(struct cardstate *cs , struct at_state_t *test_ptr )
{
  unsigned long flags ;
  unsigned int channel ;
  struct at_state_t *at_state ;
  int retval ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  retval = 0;
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned long )(& cs->at_state) == (unsigned long )test_ptr) {
    goto exit;
  } else {
  }
  __mptr = (struct list_head const *)cs->temp_at_states.next;
  at_state = (struct at_state_t *)__mptr;
  goto ldv_45051;
  ldv_45050: ;
  if ((unsigned long )at_state == (unsigned long )test_ptr) {
    goto exit;
  } else {
  }
  __mptr___0 = (struct list_head const *)at_state->list.next;
  at_state = (struct at_state_t *)__mptr___0;
  ldv_45051: ;
  if ((unsigned long )(& at_state->list) != (unsigned long )(& cs->temp_at_states)) {
    goto ldv_45050;
  } else {
  }
  channel = 0U;
  goto ldv_45054;
  ldv_45053: ;
  if ((unsigned long )(& (cs->bcs + (unsigned long )channel)->at_state) == (unsigned long )test_ptr) {
    goto exit;
  } else {
  }
  channel = channel + 1U;
  ldv_45054: ;
  if ((unsigned int )cs->channels > channel) {
    goto ldv_45053;
  } else {
  }
  retval = 1;
  exit:
  spin_unlock_irqrestore(& cs->lock, flags);
  return (retval);
}
}
static void handle_icall(struct cardstate *cs , struct bc_state *bcs , struct at_state_t *at_state )
{
  int retval ;
  {
  retval = gigaset_isdn_icall(at_state);
  switch (retval) {
  case 1: ;
  goto ldv_45063;
  default:
  dev_err((struct device const *)cs->dev, "internal error: disposition=%d\n", retval);
  case 2: ;
  case 0:
  at_state->pending_commands = at_state->pending_commands | 2U;
  cs->commands_pending = 1;
  goto ldv_45063;
  }
  ldv_45063: ;
  return;
}
}
static int do_lock(struct cardstate *cs )
{
  int mode ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  switch (cs->mstate) {
  case 0: ;
  case 5: ;
  if (cs->cur_at_seq != 0) {
    return (-16);
  } else {
    tmp = list_empty((struct list_head const *)(& cs->temp_at_states));
    if (tmp == 0) {
      return (-16);
    } else
    if (cs->at_state.pending_commands != 0U) {
      return (-16);
    } else {
    }
  }
  i = 0;
  goto ldv_45075;
  ldv_45074: ;
  if ((cs->bcs + (unsigned long )i)->at_state.pending_commands != 0U) {
    return (-16);
  } else {
  }
  i = i + 1;
  ldv_45075: ;
  if (cs->channels > i) {
    goto ldv_45074;
  } else {
  }
  tmp___0 = gigaset_get_channels(cs);
  if (tmp___0 < 0) {
    return (-16);
  } else {
  }
  goto ldv_45077;
  case 2: ;
  goto ldv_45077;
  default: ;
  return (-16);
  }
  ldv_45077:
  mode = cs->mode;
  cs->mstate = 2;
  cs->mode = 0;
  return (mode);
}
}
static int do_unlock(struct cardstate *cs )
{
  {
  if (cs->mstate != 2) {
    return (-22);
  } else {
  }
  cs->mstate = 0;
  cs->mode = 0;
  gigaset_free_channels(cs);
  if (cs->connected != 0U) {
    schedule_init(cs, 1);
  } else {
  }
  return (0);
}
}
static void do_action(int action , struct cardstate *cs , struct bc_state *bcs , struct at_state_t **p_at_state ,
                      char **pp_command , int *p_genresp , int *p_resp_code , struct event_t *ev )
{
  struct at_state_t *at_state ;
  struct bc_state *bcs2 ;
  unsigned long flags ;
  int channel ;
  unsigned char *s ;
  unsigned char *e ;
  int i ;
  unsigned long val ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct cmdbuf_t *cb ;
  void *tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  raw_spinlock_t *tmp___12 ;
  long tmp___13 ;
  long tmp___14 ;
  {
  at_state = *p_at_state;
  switch (action) {
  case 0: ;
  goto ldv_45102;
  case 29:
  at_state->waiting = 1;
  goto ldv_45102;
  case 6:
  cs->at_state.pending_commands = cs->at_state.pending_commands & 4294967291U;
  cs->cur_at_seq = 0;
  cs->mode = 2;
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (cs->cidmode == 0U) {
    spin_unlock_irqrestore(& cs->lock, flags);
    gigaset_free_channels(cs);
    cs->mstate = 5;
    goto ldv_45102;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  cs->at_state.pending_commands = cs->at_state.pending_commands | 512U;
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: Scheduling PC_CIDMODE\n");
  } else {
  }
  cs->commands_pending = 1;
  goto ldv_45102;
  case 3:
  dev_warn((struct device const *)cs->dev, "Could not initialize the device.\n");
  cs->dle = 0;
  init_failed(cs, 0);
  cs->cur_at_seq = 0;
  goto ldv_45102;
  case 5:
  init_failed(cs, 1);
  cs->cur_at_seq = 0;
  goto ldv_45102;
  case 1:
  cs->dle = 1;
  (cs->inbuf)->inputstate = (cs->inbuf)->inputstate & -34;
  goto ldv_45102;
  case 2:
  cs->dle = 0;
  (cs->inbuf)->inputstate = ((long )(cs->inbuf)->inputstate & 4294967262L) | 1L;
  goto ldv_45102;
  case 54: ;
  if (cs->mstate == 1 || cs->mstate == 4) {
    gigaset_free_channels(cs);
    cs->mstate = 5;
  } else {
  }
  cs->mode = 3;
  cs->cur_at_seq = 0;
  goto ldv_45102;
  case 52:
  cs->mode = 2;
  cs->cur_at_seq = 0;
  goto ldv_45102;
  case 55:
  cs->cur_at_seq = 0;
  if (cs->mstate == 1 || cs->mstate == 4) {
    init_failed(cs, 0);
    goto ldv_45102;
  } else {
  }
  tmp___1 = reinit_and_retry(cs, -1);
  if (tmp___1 < 0) {
    schedule_init(cs, 4);
  } else {
  }
  goto ldv_45102;
  case 53:
  cs->cur_at_seq = 0;
  schedule_init(cs, 4);
  goto ldv_45102;
  case 4: ;
  if (cs->connected != 0U) {
    tmp___2 = kmalloc(35UL, 32U);
    cb = (struct cmdbuf_t *)tmp___2;
    if ((unsigned long )cb == (unsigned long )((struct cmdbuf_t *)0)) {
      dev_err((struct device const *)cs->dev, "%s: out of memory\n", "do_action");
      return;
    } else {
    }
    memcpy((void *)(& cb->buf), (void const *)"+++", 3UL);
    cb->len = 3;
    cb->offset = 0;
    cb->next = (struct cmdbuf_t *)0;
    cb->wake_tasklet = (struct tasklet_struct *)0;
    (*((cs->ops)->write_cmd))(cs, cb);
  } else {
  }
  goto ldv_45102;
  case 11:
  at_state = get_free_channel(cs, ev->parameter);
  if ((unsigned long )at_state == (unsigned long )((struct at_state_t *)0)) {
    dev_warn((struct device const *)cs->dev, "RING ignored: could not allocate channel structure\n");
    goto ldv_45102;
  } else {
  }
  at_state->ConState = 700U;
  i = 0;
  goto ldv_45121;
  ldv_45120:
  kfree((void const *)at_state->str_var[i]);
  at_state->str_var[i] = (char *)0;
  i = i + 1;
  ldv_45121: ;
  if (i <= 4) {
    goto ldv_45120;
  } else {
  }
  at_state->int_var[2] = -1;
  tmp___3 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  at_state->timer_expires = 3UL;
  at_state->timer_active = 1;
  spin_unlock_irqrestore(& cs->lock, flags);
  goto ldv_45102;
  case 26:
  handle_icall(cs, bcs, at_state);
  goto ldv_45102;
  case 15:
  dev_warn((struct device const *)cs->dev, "Could not shut down the device.\n");
  case 49: ;
  case 14:
  cs->cur_at_seq = 0;
  finish_shutdown(cs);
  goto ldv_45102;
  case 21: ;
  if (cs->onechannel != 0) {
    at_state->pending_commands = at_state->pending_commands | 16U;
    cs->commands_pending = 1;
    goto ldv_45102;
  } else {
  }
  bcs->chstate = bcs->chstate | 1U;
  gigaset_isdn_connD(bcs);
  (*((cs->ops)->init_bchannel))(bcs);
  goto ldv_45102;
  case 8:
  cs->cur_at_seq = 0;
  bcs = cs->bcs + (unsigned long )cs->curchannel;
  bcs->chstate = bcs->chstate | 1U;
  gigaset_isdn_connD(bcs);
  (*((cs->ops)->init_bchannel))(bcs);
  goto ldv_45102;
  case 48:
  at_state->int_var[0] = 5;
  case 20:
  cs->cur_at_seq = 0;
  at_state->cid = -1;
  if ((unsigned long )bcs == (unsigned long )((struct bc_state *)0)) {
    disconnect_nobc(p_at_state, cs);
  } else
  if (cs->onechannel != 0 && cs->dle != 0) {
    at_state->pending_commands = at_state->pending_commands | 8U;
    cs->commands_pending = 1;
  } else {
    disconnect_bc(at_state, cs, bcs);
  }
  goto ldv_45102;
  case 47:
  at_state->int_var[1] = 0;
  cs->dle = 0;
  case 7:
  cs->cur_at_seq = 0;
  bcs2 = cs->bcs + (unsigned long )cs->curchannel;
  disconnect_bc(& bcs2->at_state, cs, bcs2);
  goto ldv_45102;
  case 25:
  cs->cur_at_seq = 0;
  dev_warn((struct device const *)cs->dev, "Could not hang up.\n");
  at_state->cid = -1;
  if ((unsigned long )bcs == (unsigned long )((struct bc_state *)0)) {
    disconnect_nobc(p_at_state, cs);
  } else
  if (cs->onechannel != 0) {
    at_state->pending_commands = at_state->pending_commands | 8U;
  } else {
    disconnect_bc(at_state, cs, bcs);
  }
  schedule_init(cs, 4);
  goto ldv_45102;
  case 9:
  cs->cur_at_seq = 0;
  dev_warn((struct device const *)cs->dev, "Error leaving DLE mode.\n");
  cs->dle = 0;
  bcs2 = cs->bcs + (unsigned long )cs->curchannel;
  disconnect_bc(& bcs2->at_state, cs, bcs2);
  schedule_init(cs, 4);
  goto ldv_45102;
  case 10:
  cs->cur_at_seq = 0;
  dev_warn((struct device const *)cs->dev, "Could not enter DLE mode. Trying to hang up.\n");
  channel = cs->curchannel;
  (cs->bcs + (unsigned long )channel)->at_state.pending_commands = (cs->bcs + (unsigned long )channel)->at_state.pending_commands | 2U;
  cs->commands_pending = 1;
  goto ldv_45102;
  case 12:
  cs->cur_at_seq = 0;
  channel = cs->curchannel;
  if (ev->parameter > 0 && ev->parameter <= 65535) {
    (cs->bcs + (unsigned long )channel)->at_state.cid = ev->parameter;
    (cs->bcs + (unsigned long )channel)->at_state.pending_commands = (cs->bcs + (unsigned long )channel)->at_state.pending_commands | 1U;
    cs->commands_pending = 1;
    goto ldv_45102;
  } else {
  }
  case 13:
  cs->cur_at_seq = 0;
  channel = cs->curchannel;
  tmp___4 = reinit_and_retry(cs, channel);
  if (tmp___4 < 0) {
    dev_warn((struct device const *)cs->dev, "Could not get a call ID. Cannot dial.\n");
    bcs2 = cs->bcs + (unsigned long )channel;
    disconnect_bc(& bcs2->at_state, cs, bcs2);
  } else {
  }
  goto ldv_45102;
  case 36:
  cs->cur_at_seq = 0;
  bcs2 = cs->bcs + (unsigned long )cs->curchannel;
  disconnect_bc(& bcs2->at_state, cs, bcs2);
  goto ldv_45102;
  case 18: ;
  case 27:
  cs->cur_at_seq = 0;
  goto ldv_45102;
  case 28: ;
  if ((unsigned long )bcs != (unsigned long )((struct bc_state *)0)) {
    disconnect_bc(at_state, cs, bcs);
  } else {
    disconnect_nobc(p_at_state, cs);
  }
  goto ldv_45102;
  case 19:
  cs->cur_at_seq = 0;
  at_state->pending_commands = at_state->pending_commands | 2U;
  cs->commands_pending = 1;
  goto ldv_45102;
  case 22: ;
  case 23: ;
  case 24:
  at_state->pending_commands = at_state->pending_commands | 2U;
  cs->commands_pending = 1;
  goto ldv_45102;
  case 30:
  at_state->getstring = 1;
  goto ldv_45102;
  case 31: ;
  if ((unsigned long )ev->ptr == (unsigned long )((void *)0)) {
    *p_genresp = 1;
    *p_resp_code = 1;
    goto ldv_45102;
  } else {
  }
  s = (unsigned char *)ev->ptr;
  tmp___5 = strcmp((char const *)s, "OK");
  if (tmp___5 == 0) {
    *p_genresp = 1;
    *p_resp_code = -19;
    goto ldv_45102;
  } else {
  }
  i = 0;
  goto ldv_45153;
  ldv_45152:
  val = simple_strtoul((char const *)s, (char **)(& e), 10U);
  if (val > 2147483647UL || (unsigned long )e == (unsigned long )s) {
    goto ldv_45151;
  } else {
  }
  if (i == 3) {
    if ((unsigned int )*e != 0U) {
      goto ldv_45151;
    } else {
    }
  } else
  if ((unsigned int )*e != 46U) {
    goto ldv_45151;
  } else {
    s = e + 1UL;
  }
  cs->fwver[i] = (unsigned int )val;
  i = i + 1;
  ldv_45153: ;
  if (i <= 3) {
    goto ldv_45152;
  } else {
  }
  ldv_45151: ;
  if (i != 4) {
    *p_genresp = 1;
    *p_resp_code = 1;
    goto ldv_45102;
  } else {
  }
  cs->gotfwver = 0;
  goto ldv_45102;
  case 33: ;
  if (cs->gotfwver == 0) {
    cs->gotfwver = 1;
    tmp___6 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___6 != 0L) {
      printk("\017gigaset: firmware version %02d.%03d.%02d.%02d\n", cs->fwver[0],
             cs->fwver[1], cs->fwver[2], cs->fwver[3]);
    } else {
    }
    goto ldv_45102;
  } else {
  }
  case 32:
  cs->gotfwver = -1;
  dev_err((struct device const *)cs->dev, "could not read firmware version.\n");
  goto ldv_45102;
  case 35:
  tmp___7 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4194303U) != 0U,
                             0L);
  if (tmp___7 != 0L) {
    printk("\017gigaset: %s: OLD_ERROR response in ConState %d\n", "do_action", at_state->ConState);
  } else {
  }
  cs->cur_at_seq = 0;
  goto ldv_45102;
  case 16:
  tmp___8 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 4194303U) != 0U,
                             0L);
  if (tmp___8 != 0L) {
    printk("\017gigaset: %s: resp_code %d in ConState %d\n", "do_action", ev->type,
           at_state->ConState);
  } else {
  }
  goto ldv_45102;
  case 17:
  dev_warn((struct device const *)cs->dev, "%s: resp_code %d in ConState %d!\n",
           "do_action", ev->type, at_state->ConState);
  goto ldv_45102;
  case 37:
  dev_warn((struct device const *)cs->dev, "cause code %04x in connection state %d.\n",
           ev->parameter, at_state->ConState);
  goto ldv_45102;
  case 40: ;
  if ((unsigned long )ev->ptr == (unsigned long )((void *)0)) {
    *p_genresp = 1;
    *p_resp_code = 1;
    goto ldv_45102;
  } else {
  }
  start_dial(at_state, ev->ptr, (unsigned int )ev->parameter);
  goto ldv_45102;
  case 41:
  start_accept(at_state);
  goto ldv_45102;
  case 43:
  at_state->pending_commands = at_state->pending_commands | 2U;
  tmp___9 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___9 != 0L) {
    printk("\017gigaset: Scheduling PC_HUP\n");
  } else {
  }
  cs->commands_pending = 1;
  goto ldv_45102;
  case 46:
  do_stop(cs);
  goto ldv_45102;
  case 45:
  do_start(cs);
  goto ldv_45102;
  case 44: ;
  if (ev->parameter != 0) {
    tmp___10 = do_lock(cs);
    cs->cmd_result = tmp___10;
  } else {
    tmp___11 = do_unlock(cs);
    cs->cmd_result = tmp___11;
  }
  cs->waiting = 0;
  __wake_up(& cs->waitqueue, 3U, 1, (void *)0);
  goto ldv_45102;
  case 56: ;
  if (ev->parameter != 0) {
    cs->cmd_result = -22;
  } else
  if (cs->gotfwver != 1) {
    cs->cmd_result = -2;
  } else {
    memcpy(ev->arg, (void const *)(& cs->fwver), 16UL);
    cs->cmd_result = 0;
  }
  cs->waiting = 0;
  __wake_up(& cs->waitqueue, 3U, 1, (void *)0);
  goto ldv_45102;
  case 51:
  tmp___12 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___12);
  if ((unsigned int )ev->parameter != cs->cidmode) {
    cs->cidmode = (unsigned int )ev->parameter;
    if (ev->parameter != 0) {
      cs->at_state.pending_commands = cs->at_state.pending_commands | 512U;
      tmp___13 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U,
                                  0L);
      if (tmp___13 != 0L) {
        printk("\017gigaset: Scheduling PC_CIDMODE\n");
      } else {
      }
    } else {
      cs->at_state.pending_commands = cs->at_state.pending_commands | 1024U;
      tmp___14 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U,
                                  0L);
      if (tmp___14 != 0L) {
        printk("\017gigaset: Scheduling PC_UMMODE\n");
      } else {
      }
    }
    cs->commands_pending = 1;
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  cs->waiting = 0;
  __wake_up(& cs->waitqueue, 3U, 1, (void *)0);
  goto ldv_45102;
  case 38:
  bchannel_down(bcs);
  goto ldv_45102;
  case 39:
  bchannel_up(bcs);
  goto ldv_45102;
  case 50:
  do_shutdown(cs);
  goto ldv_45102;
  default: ;
  if (action > 99 && action <= 106) {
    *pp_command = (at_state->bcs)->commands[action + -100];
    if ((unsigned long )*pp_command == (unsigned long )((char *)0)) {
      *p_genresp = 1;
      *p_resp_code = -21;
    } else {
    }
  } else {
    dev_err((struct device const *)cs->dev, "%s: action==%d!\n", "do_action", action);
  }
  }
  ldv_45102: ;
  return;
}
}
static void process_event(struct cardstate *cs , struct event_t *ev )
{
  struct bc_state *bcs ;
  char *p_command ;
  struct reply_t *rep ;
  int rcode ;
  int genresp ;
  int resp_code ;
  struct at_state_t *at_state ;
  int index ;
  int curact ;
  unsigned long flags ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  raw_spinlock_t *tmp___8 ;
  {
  p_command = (char *)0;
  genresp = 0;
  resp_code = 1;
  if (ev->cid >= 0) {
    at_state = at_state_from_cid(cs, ev->cid);
    if ((unsigned long )at_state == (unsigned long )((struct at_state_t *)0)) {
      tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
      if (tmp != 0L) {
        printk("\017gigaset: event %d for invalid cid %d\n", ev->type, ev->cid);
      } else {
      }
      gigaset_add_event(cs, & cs->at_state, -2, (void *)0, 0, (void *)0);
      return;
    } else {
    }
  } else {
    at_state = ev->at_state;
    tmp___1 = at_state_invalid(cs, at_state);
    if (tmp___1 != 0) {
      tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U,
                                 0L);
      if (tmp___0 != 0L) {
        printk("\017gigaset: event for invalid at_state %p\n", at_state);
      } else {
      }
      return;
    } else {
    }
  }
  tmp___2 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___2 != 0L) {
    printk("\017gigaset: connection state %d, event %d\n", at_state->ConState, ev->type);
  } else {
  }
  bcs = at_state->bcs;
  rep = at_state->replystruct;
  tmp___3 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  if (ev->type == -105) {
    if ((unsigned int )ev->parameter != at_state->timer_index || at_state->timer_active == 0) {
      ev->type = -19;
      tmp___4 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U,
                                 0L);
      if (tmp___4 != 0L) {
        printk("\017gigaset: old timeout\n");
      } else {
      }
    } else
    if (at_state->waiting != 0) {
      tmp___5 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U,
                                 0L);
      if (tmp___5 != 0L) {
        printk("\017gigaset: stopped waiting\n");
      } else {
      }
    } else {
      tmp___6 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U,
                                 0L);
      if (tmp___6 != 0L) {
        printk("\017gigaset: timeout occurred\n");
      } else {
      }
    }
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  if (ev->type > 99 && ev->type <= 102) {
    index = ev->type + -100;
    at_state->int_var[index] = ev->parameter;
  } else
  if (ev->type > 102 && ev->type <= 107) {
    index = ev->type + -103;
    kfree((void const *)at_state->str_var[index]);
    at_state->str_var[index] = (char *)ev->ptr;
    ev->ptr = (void *)0;
  } else {
  }
  if (ev->type == -105 || ev->type == -20) {
    at_state->getstring = 0;
  } else {
  }
  ldv_45194:
  rcode = rep->resp_code;
  if (rcode == -28) {
    dev_warn((struct device const *)cs->dev, "%s: rcode=RSP_LAST: resp_code %d in ConState %d!\n",
             "process_event", ev->type, at_state->ConState);
    return;
  } else {
  }
  if ((((rcode == -26 || ev->type == rcode) && (int )at_state->ConState >= rep->min_ConState) && (rep->max_ConState < 0 || (int )at_state->ConState <= rep->max_ConState)) && (rep->parameter < 0 || rep->parameter == ev->parameter)) {
    goto ldv_45193;
  } else {
  }
  rep = rep + 1;
  goto ldv_45194;
  ldv_45193:
  p_command = rep->command;
  at_state->waiting = 0;
  curact = 0;
  goto ldv_45196;
  ldv_45195:
  do_action(rep->action[curact], cs, bcs, & at_state, & p_command, & genresp, & resp_code,
            ev);
  if ((unsigned long )at_state == (unsigned long )((struct at_state_t *)0)) {
    return;
  } else {
  }
  curact = curact + 1;
  ldv_45196: ;
  if (curact <= 2) {
    goto ldv_45195;
  } else {
  }
  if (rep->new_ConState >= 0) {
    at_state->ConState = (unsigned int )rep->new_ConState;
  } else {
  }
  if (genresp != 0) {
    tmp___7 = spinlock_check(& cs->lock);
    flags = _raw_spin_lock_irqsave(tmp___7);
    at_state->timer_expires = 0UL;
    at_state->timer_active = 0;
    spin_unlock_irqrestore(& cs->lock, flags);
    gigaset_add_event(cs, at_state, resp_code, (void *)0, 0, (void *)0);
  } else {
    if ((unsigned long )p_command != (unsigned long )((char *)0)) {
      if (cs->connected != 0U) {
        send_command(cs, (char const *)p_command, at_state);
      } else {
        gigaset_add_event(cs, at_state, -9, (void *)0, 0, (void *)0);
      }
    } else {
    }
    tmp___8 = spinlock_check(& cs->lock);
    flags = _raw_spin_lock_irqsave(tmp___8);
    if (rep->timeout == 0) {
      at_state->timer_expires = 0UL;
      at_state->timer_active = 0;
    } else
    if (rep->timeout > 0) {
      at_state->timer_expires = (unsigned long )(rep->timeout * 10);
      at_state->timer_active = 1;
      at_state->timer_index = at_state->timer_index + 1U;
    } else {
    }
    spin_unlock_irqrestore(& cs->lock, flags);
  }
  return;
}
}
static void schedule_sequence(struct cardstate *cs , struct at_state_t *at_state ,
                              int sequence )
{
  {
  cs->cur_at_seq = sequence;
  gigaset_add_event(cs, at_state, -27, (void *)0, sequence, (void *)0);
  return;
}
}
static void process_command_flags(struct cardstate *cs )
{
  struct at_state_t *at_state ;
  struct bc_state *bcs ;
  int i ;
  int sequence ;
  unsigned long flags ;
  long tmp ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  long tmp___3 ;
  {
  at_state = (struct at_state_t *)0;
  cs->commands_pending = 0;
  if (cs->cur_at_seq != 0) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: not searching scheduled commands: busy\n");
    } else {
    }
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: searching scheduled commands\n");
  } else {
  }
  sequence = 0;
  if ((cs->at_state.pending_commands & 32U) != 0U) {
    cs->at_state.pending_commands = cs->at_state.pending_commands & 4294966783U;
    i = 0;
    goto ldv_45218;
    ldv_45217:
    bcs = cs->bcs + (unsigned long )i;
    at_state = & bcs->at_state;
    at_state->pending_commands = at_state->pending_commands & 4294967214U;
    if (at_state->cid > 0) {
      at_state->pending_commands = at_state->pending_commands | 2U;
    } else {
    }
    if ((at_state->pending_commands & 128U) != 0U) {
      at_state->pending_commands = at_state->pending_commands | 256U;
      at_state->pending_commands = at_state->pending_commands & 4294967167U;
    } else {
    }
    i = i + 1;
    ldv_45218: ;
    if (cs->channels > i) {
      goto ldv_45217;
    } else {
    }
  } else {
  }
  if ((cs->at_state.pending_commands & 4U) != 0U) {
    cs->at_state.pending_commands = cs->at_state.pending_commands & 4294966783U;
    i = 0;
    goto ldv_45221;
    ldv_45220:
    bcs = cs->bcs + (unsigned long )i;
    at_state = & bcs->at_state;
    at_state->pending_commands = at_state->pending_commands & 4294967214U;
    if (at_state->cid > 0) {
      at_state->pending_commands = at_state->pending_commands | 2U;
    } else {
    }
    if (cs->mstate == 4) {
      if ((at_state->pending_commands & 128U) != 0U) {
        at_state->pending_commands = at_state->pending_commands | 256U;
        at_state->pending_commands = at_state->pending_commands & 4294967167U;
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_45221: ;
    if (cs->channels > i) {
      goto ldv_45220;
    } else {
    }
  } else {
  }
  tmp___1 = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if (cs->at_state.pending_commands == 1024U && cs->cidmode == 0U) {
    tmp___2 = list_empty((struct list_head const *)(& cs->temp_at_states));
    if (tmp___2 != 0) {
      if (cs->mode == 3) {
        sequence = 11;
        at_state = & cs->at_state;
        i = 0;
        goto ldv_45228;
        ldv_45227:
        bcs = cs->bcs + (unsigned long )i;
        if (bcs->at_state.pending_commands != 0U || bcs->at_state.cid > 0) {
          sequence = 0;
          goto ldv_45226;
        } else {
        }
        i = i + 1;
        ldv_45228: ;
        if (cs->channels > i) {
          goto ldv_45227;
        } else {
        }
        ldv_45226: ;
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  cs->at_state.pending_commands = cs->at_state.pending_commands & 4294966271U;
  if (sequence != 0) {
    schedule_sequence(cs, at_state, sequence);
    return;
  } else {
  }
  i = 0;
  goto ldv_45230;
  ldv_45229:
  bcs = cs->bcs + (unsigned long )i;
  if ((bcs->at_state.pending_commands & 2U) != 0U) {
    if (cs->dle != 0) {
      cs->curchannel = bcs->channel;
      schedule_sequence(cs, & cs->at_state, 200);
      return;
    } else {
    }
    bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967293U;
    if ((bcs->at_state.pending_commands & 128U) != 0U) {
      bcs->at_state.pending_commands = bcs->at_state.pending_commands | 256U;
      bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967167U;
    } else {
      schedule_sequence(cs, & bcs->at_state, 400);
      return;
    }
  } else {
  }
  if ((bcs->at_state.pending_commands & 256U) != 0U) {
    bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967039U;
    cs->curchannel = bcs->channel;
    schedule_sequence(cs, & cs->at_state, 350);
    return;
  } else
  if ((bcs->at_state.pending_commands & 8U) != 0U) {
    bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967287U;
    cs->curchannel = bcs->channel;
    schedule_sequence(cs, & cs->at_state, 200);
    return;
  } else {
  }
  i = i + 1;
  ldv_45230: ;
  if (cs->channels > i) {
    goto ldv_45229;
  } else {
  }
  __mptr = (struct list_head const *)cs->temp_at_states.next;
  at_state = (struct at_state_t *)__mptr;
  goto ldv_45237;
  ldv_45236: ;
  if ((at_state->pending_commands & 2U) != 0U) {
    at_state->pending_commands = at_state->pending_commands & 4294967293U;
    schedule_sequence(cs, at_state, 400);
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)at_state->list.next;
  at_state = (struct at_state_t *)__mptr___0;
  ldv_45237: ;
  if ((unsigned long )(& at_state->list) != (unsigned long )(& cs->temp_at_states)) {
    goto ldv_45236;
  } else {
  }
  if ((cs->at_state.pending_commands & 4U) != 0U) {
    cs->at_state.pending_commands = cs->at_state.pending_commands & 4294967291U;
    cs->dle = 0;
    (cs->inbuf)->inputstate = 1;
    schedule_sequence(cs, & cs->at_state, 100);
    return;
  } else {
  }
  if ((cs->at_state.pending_commands & 32U) != 0U) {
    cs->at_state.pending_commands = cs->at_state.pending_commands & 4294967263U;
    schedule_sequence(cs, & cs->at_state, 500);
    return;
  } else {
  }
  if ((cs->at_state.pending_commands & 512U) != 0U) {
    cs->at_state.pending_commands = cs->at_state.pending_commands & 4294966783U;
    if (cs->mode == 2) {
      cs->retry_count = 1;
      schedule_sequence(cs, & cs->at_state, 10);
      return;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_45242;
  ldv_45241:
  bcs = cs->bcs + (unsigned long )i;
  if ((bcs->at_state.pending_commands & 16U) != 0U) {
    bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967279U;
    cs->curchannel = bcs->channel;
    schedule_sequence(cs, & cs->at_state, 250);
    return;
  } else {
  }
  if ((bcs->at_state.pending_commands & 64U) != 0U) {
    bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967231U;
    schedule_sequence(cs, & bcs->at_state, 720);
    return;
  } else {
  }
  if ((int )bcs->at_state.pending_commands & 1) {
    bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967294U;
    schedule_sequence(cs, & bcs->at_state, 600);
    return;
  } else {
  }
  if ((bcs->at_state.pending_commands & 128U) != 0U) {
    switch (cs->mode) {
    case 2:
    cs->at_state.pending_commands = cs->at_state.pending_commands | 512U;
    tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 512U) != 0U, 0L);
    if (tmp___3 != 0L) {
      printk("\017gigaset: Scheduling PC_CIDMODE\n");
    } else {
    }
    cs->commands_pending = 1;
    return;
    case 0:
    schedule_init(cs, 1);
    return;
    }
    bcs->at_state.pending_commands = bcs->at_state.pending_commands & 4294967167U;
    cs->curchannel = bcs->channel;
    cs->retry_count = 2;
    schedule_sequence(cs, & cs->at_state, 300);
    return;
  } else {
  }
  i = i + 1;
  ldv_45242: ;
  if (cs->channels > i) {
    goto ldv_45241;
  } else {
  }
  return;
}
}
static void process_events(struct cardstate *cs )
{
  struct event_t *ev ;
  unsigned int head ;
  unsigned int tail ;
  int i ;
  int check_flags ;
  int was_busy ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  check_flags = 0;
  tmp = spinlock_check(& cs->ev_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  head = cs->ev_head;
  i = 0;
  goto ldv_45266;
  ldv_45265:
  tail = cs->ev_tail;
  if (tail == head) {
    if (check_flags == 0 && cs->commands_pending == 0) {
      goto ldv_45257;
    } else {
    }
    check_flags = 0;
    spin_unlock_irqrestore(& cs->ev_lock, flags);
    process_command_flags(cs);
    tmp___0 = spinlock_check(& cs->ev_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    tail = cs->ev_tail;
    if (tail == head) {
      if (cs->commands_pending == 0) {
        goto ldv_45257;
      } else {
      }
      goto ldv_45261;
    } else {
    }
  } else {
  }
  ev = (struct event_t *)(& cs->events) + (unsigned long )head;
  was_busy = cs->cur_at_seq != 0;
  spin_unlock_irqrestore(& cs->ev_lock, flags);
  process_event(cs, ev);
  tmp___1 = spinlock_check(& cs->ev_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  kfree((void const *)ev->ptr);
  ev->ptr = (void *)0;
  if (was_busy != 0 && cs->cur_at_seq == 0) {
    check_flags = 1;
  } else {
  }
  head = (head + 1U) & 63U;
  cs->ev_head = head;
  ldv_45261:
  i = i + 1;
  ldv_45266: ;
  if (i <= 127) {
    goto ldv_45265;
  } else {
  }
  ldv_45257:
  spin_unlock_irqrestore(& cs->ev_lock, flags);
  if (i == 128) {
    dev_err((struct device const *)cs->dev, "infinite loop in process_events; aborting.\n");
  } else {
  }
  return;
}
}
void gigaset_handle_event(unsigned long data )
{
  struct cardstate *cs ;
  long tmp ;
  {
  cs = (struct cardstate *)data;
  if ((cs->inbuf)->head != (cs->inbuf)->tail) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 8U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: processing new data\n");
    } else {
    }
    (*((cs->ops)->handle_input))(cs->inbuf);
  } else {
  }
  process_events(cs);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
__inline static void skb_reset_tail_pointer(struct sk_buff *skb )
{
  {
  skb->tail = (sk_buff_data_t )((long )skb->data) - (sk_buff_data_t )((long )skb->head);
  return;
}
}
__inline static void skb_set_tail_pointer(struct sk_buff *skb , int const offset )
{
  {
  skb_reset_tail_pointer(skb);
  skb->tail = skb->tail + (sk_buff_data_t )offset;
  return;
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned char *__skb_put(struct sk_buff *skb , unsigned int len )
{
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  tmp___0 = skb_tail_pointer((struct sk_buff const *)skb);
  tmp = tmp___0;
  tmp___1 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___2 = ldv__builtin_expect((long )tmp___1, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                         "i" (1696), "i" (12UL));
    ldv_27080: ;
    goto ldv_27080;
  } else {
  }
  skb->tail = skb->tail + len;
  skb->len = skb->len + len;
  return (tmp);
}
}
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static unsigned char *skb_mac_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->mac_header);
}
}
__inline static void skb_reset_mac_header(struct sk_buff *skb )
{
  {
  skb->mac_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
  return;
}
}
__inline static void __skb_trim(struct sk_buff *skb , unsigned int len )
{
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/skbuff.h", 2054);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  skb->len = len;
  skb_set_tail_pointer(skb, (int const )len);
  return;
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, 32U);
  return (tmp);
}
}
__inline static struct sk_buff *dev_alloc_skb(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = netdev_alloc_skb((struct net_device *)0, length);
  return (tmp);
}
}
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern u16 const crc_ccitt_table[256U] ;
__inline static u16 crc_ccitt_byte(u16 crc , u8 const c )
{
  {
  return ((u16 )(((int )crc >> 8) ^ (int )((unsigned short )crc_ccitt_table[((int )crc ^ (int )c) & 255])));
}
}
int gigaset_m10x_send_skb(struct bc_state *bcs , struct sk_buff *skb ) ;
void gigaset_m10x_input(struct inbuf_t *inbuf ) ;
void gigaset_skb_rcvd(struct bc_state *bcs , struct sk_buff *skb ) ;
void gigaset_isdn_rcv_err(struct bc_state *bcs ) ;
__inline static struct sk_buff *gigaset_new_rx_skb(struct bc_state *bcs )
{
  struct cardstate *cs ;
  unsigned short hw_hdr_len ;
  {
  cs = bcs->cs;
  hw_hdr_len = cs->hw_hdr_len;
  if (bcs->ignore != 0) {
    bcs->rx_skb = (struct sk_buff *)0;
  } else {
    bcs->rx_skb = dev_alloc_skb(bcs->rx_bufsize + (unsigned int )hw_hdr_len);
    if ((unsigned long )bcs->rx_skb == (unsigned long )((struct sk_buff *)0)) {
      dev_warn((struct device const *)cs->dev, "could not allocate skb\n");
    } else {
      skb_reserve(bcs->rx_skb, (int )hw_hdr_len);
    }
  }
  return (bcs->rx_skb);
}
}
extern u8 const byte_rev_table[256U] ;
__inline static u8 __bitrev8(u8 byte )
{
  {
  return ((u8 )byte_rev_table[(int )byte]);
}
}
__inline static int muststuff(unsigned char c )
{
  {
  if ((unsigned int )c <= 31U) {
    return (1);
  } else {
  }
  if ((unsigned int )c == 126U) {
    return (1);
  } else {
  }
  if ((unsigned int )c == 125U) {
    return (1);
  } else {
  }
  return (0);
}
}
static unsigned int cmd_loop(unsigned int numbytes , struct inbuf_t *inbuf )
{
  unsigned char *src ;
  struct cardstate *cs ;
  unsigned int cbytes ;
  unsigned int procbytes ;
  unsigned char c ;
  unsigned char *tmp ;
  {
  src = (unsigned char *)(& inbuf->data) + (unsigned long )inbuf->head;
  cs = inbuf->cs;
  cbytes = cs->cbytes;
  procbytes = 0U;
  goto ldv_44858;
  ldv_44857:
  tmp = src;
  src = src + 1;
  c = *tmp;
  procbytes = procbytes + 1U;
  switch ((int )c) {
  case 10: ;
  if (cbytes == 0U && (unsigned int )cs->respdata[0] == 13U) {
    cs->respdata[0] = 0U;
    goto ldv_44852;
  } else {
  }
  case 13: ;
  if (cbytes > 510U) {
    dev_warn((struct device const *)cs->dev, "response too large (%d)\n", cbytes);
    cbytes = 511U;
  } else {
  }
  cs->cbytes = cbytes;
  gigaset_dbg_buffer(8192, (unsigned char const *)"received response", (size_t )cbytes,
                     (unsigned char const *)(& cs->respdata));
  gigaset_handle_modem_response(cs);
  cbytes = 0U;
  cs->respdata[0] = c;
  if (cs->dle != 0 && (inbuf->inputstate & 32) == 0) {
    inbuf->inputstate = inbuf->inputstate & -2;
  } else {
  }
  goto exit;
  case 16: ;
  if ((inbuf->inputstate & 2) != 0) {
    inbuf->inputstate = inbuf->inputstate & -3;
  } else
  if (cs->dle != 0 || (inbuf->inputstate & 32) != 0) {
    inbuf->inputstate = inbuf->inputstate | 2;
    goto exit;
  } else {
  }
  default: ;
  if (cbytes <= 510U) {
    cs->respdata[cbytes] = c;
  } else {
  }
  cbytes = cbytes + 1U;
  }
  ldv_44852: ;
  ldv_44858: ;
  if (procbytes < numbytes) {
    goto ldv_44857;
  } else {
  }
  exit:
  cs->cbytes = cbytes;
  return (procbytes);
}
}
static unsigned int lock_loop(unsigned int numbytes , struct inbuf_t *inbuf )
{
  unsigned char *src ;
  {
  src = (unsigned char *)(& inbuf->data) + (unsigned long )inbuf->head;
  gigaset_dbg_buffer(2097152, (unsigned char const *)"received response", (size_t )numbytes,
                     (unsigned char const *)src);
  gigaset_if_receive(inbuf->cs, src, (size_t )numbytes);
  return (numbytes);
}
}
static unsigned int hdlc_loop(unsigned int numbytes , struct inbuf_t *inbuf )
{
  struct cardstate *cs ;
  struct bc_state *bcs ;
  int inputstate ;
  __u16 fcs ;
  struct sk_buff *skb ;
  unsigned char *src ;
  unsigned int procbytes ;
  unsigned char c ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  unsigned char *tmp___7 ;
  {
  cs = inbuf->cs;
  bcs = cs->bcs;
  inputstate = bcs->inputstate;
  fcs = bcs->rx_fcs;
  skb = bcs->rx_skb;
  src = (unsigned char *)(& inbuf->data) + (unsigned long )inbuf->head;
  procbytes = 0U;
  if ((inputstate & 4) != 0) {
    if (numbytes == 0U) {
      return (0U);
    } else {
    }
    inputstate = inputstate & -5;
    goto byte_stuff;
  } else {
  }
  goto ldv_44879;
  ldv_44880:
  tmp = src;
  src = src + 1;
  c = *tmp;
  procbytes = procbytes + 1U;
  if ((unsigned int )c == 16U) {
    if ((inputstate & 2) != 0) {
      inputstate = inputstate & -3;
    } else
    if (cs->dle != 0 || (inputstate & 32) != 0) {
      inputstate = inputstate | 2;
      goto ldv_44878;
    } else {
    }
  } else {
  }
  if ((unsigned int )c == 125U) {
    if (procbytes >= numbytes) {
      inputstate = inputstate | 4;
      goto ldv_44878;
    } else {
    }
    byte_stuff:
    tmp___0 = src;
    src = src + 1;
    c = *tmp___0;
    procbytes = procbytes + 1U;
    if ((unsigned int )c == 16U) {
      if ((inputstate & 2) != 0) {
        inputstate = inputstate & -3;
      } else
      if (cs->dle != 0 || (inputstate & 32) != 0) {
        inputstate = inputstate | 6;
        goto ldv_44878;
      } else {
      }
    } else {
    }
    c = (unsigned int )c ^ 32U;
    tmp___2 = muststuff((int )c);
    if (tmp___2 == 0) {
      tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 2048U) != 0U,
                                 0L);
      if (tmp___1 != 0L) {
        printk("\017gigaset: byte stuffed: 0x%02x\n", (int )c);
      } else {
      }
    } else {
    }
  } else
  if ((unsigned int )c == 126U) {
    if ((inputstate & 8) != 0) {
      tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 2048U) != 0U,
                                 0L);
      if (tmp___3 != 0L) {
        printk("\017gigaset: 7e----------------------------\n");
      } else {
      }
      if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
        gigaset_isdn_rcv_err(bcs);
      } else
      if (skb->len <= 1U) {
        dev_warn((struct device const *)cs->dev, "short frame (%d)\n", skb->len);
        gigaset_isdn_rcv_err(bcs);
        dev_kfree_skb_any(skb);
      } else
      if ((unsigned int )fcs != 61624U) {
        dev_err((struct device const *)cs->dev, "Checksum failed, %u bytes corrupted!\n",
                skb->len);
        gigaset_isdn_rcv_err(bcs);
        dev_kfree_skb_any(skb);
      } else {
        __skb_trim(skb, skb->len - 2U);
        gigaset_skb_rcvd(bcs, skb);
      }
      inputstate = inputstate & -9;
      skb = gigaset_new_rx_skb(bcs);
    } else {
      bcs->emptycount = bcs->emptycount + 1;
      if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
        gigaset_isdn_rcv_err(bcs);
        skb = gigaset_new_rx_skb(bcs);
      } else {
      }
    }
    fcs = 65535U;
    goto ldv_44879;
  } else {
    tmp___5 = muststuff((int )c);
    if (tmp___5 != 0) {
      tmp___4 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 2048U) != 0U,
                                 0L);
      if (tmp___4 != 0L) {
        printk("\017gigaset: not byte stuffed: 0x%02x\n", (int )c);
      } else {
      }
    } else {
    }
  }
  if ((inputstate & 8) == 0) {
    tmp___6 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 2048U) != 0U,
                               0L);
    if (tmp___6 != 0L) {
      printk("\017gigaset: 7e (%d x) ================\n", bcs->emptycount);
    } else {
    }
    bcs->emptycount = 0;
  } else {
  }
  inputstate = inputstate | 8;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    if (skb->len >= bcs->rx_bufsize) {
      dev_warn((struct device const *)cs->dev, "received packet too long\n");
      dev_kfree_skb_any(skb);
      skb = (struct sk_buff *)0;
      bcs->rx_skb = skb;
    } else {
      tmp___7 = __skb_put(skb, 1U);
      *tmp___7 = c;
      fcs = crc_ccitt_byte((int )fcs, (int )c);
    }
  } else {
  }
  ldv_44879: ;
  if (procbytes < numbytes) {
    goto ldv_44880;
  } else {
  }
  ldv_44878:
  bcs->inputstate = inputstate;
  bcs->rx_fcs = fcs;
  return (procbytes);
}
}
static unsigned int iraw_loop(unsigned int numbytes , struct inbuf_t *inbuf )
{
  struct cardstate *cs ;
  struct bc_state *bcs ;
  int inputstate ;
  struct sk_buff *skb ;
  unsigned char *src ;
  unsigned int procbytes ;
  unsigned char c ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  u8 __x ;
  u8 tmp___1 ;
  {
  cs = inbuf->cs;
  bcs = cs->bcs;
  inputstate = bcs->inputstate;
  skb = bcs->rx_skb;
  src = (unsigned char *)(& inbuf->data) + (unsigned long )inbuf->head;
  procbytes = 0U;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    gigaset_new_rx_skb(bcs);
    return (numbytes);
  } else {
  }
  goto ldv_44898;
  ldv_44897:
  tmp = src;
  src = src + 1;
  c = *tmp;
  procbytes = procbytes + 1U;
  if ((unsigned int )c == 16U) {
    if ((inputstate & 2) != 0) {
      inputstate = inputstate & -3;
    } else
    if (cs->dle != 0 || (inputstate & 32) != 0) {
      inputstate = inputstate | 2;
      goto ldv_44892;
    } else {
    }
  } else {
  }
  inputstate = inputstate | 8;
  tmp___0 = __skb_put(skb, 1U);
  __x = c;
  tmp___1 = __bitrev8((int )__x);
  *tmp___0 = (unsigned char )((int )tmp___1);
  ldv_44898: ;
  if (procbytes < numbytes && skb->len < bcs->rx_bufsize) {
    goto ldv_44897;
  } else {
  }
  ldv_44892: ;
  if ((inputstate & 8) != 0) {
    gigaset_skb_rcvd(bcs, skb);
    inputstate = inputstate & -9;
    gigaset_new_rx_skb(bcs);
  } else {
  }
  bcs->inputstate = inputstate;
  return (procbytes);
}
}
static void handle_dle(struct inbuf_t *inbuf )
{
  struct cardstate *cs ;
  {
  cs = inbuf->cs;
  if (cs->mstate == 2) {
    return;
  } else {
  }
  if ((inbuf->inputstate & 2) == 0) {
    if ((unsigned int )inbuf->data[inbuf->head] == 16U && (cs->dle != 0 || (inbuf->inputstate & 32) != 0)) {
      inbuf->head = inbuf->head + 1;
      if (inbuf->head == inbuf->tail || inbuf->head == 8192) {
        inbuf->inputstate = inbuf->inputstate | 2;
        return;
      } else {
      }
    } else {
      return;
    }
  } else {
  }
  inbuf->inputstate = inbuf->inputstate & -3;
  switch ((int )inbuf->data[inbuf->head]) {
  case 88: ;
  if (inbuf->inputstate & 1) {
    dev_notice((struct device const *)cs->dev, "received <DLE>X in command mode\n");
  } else {
  }
  inbuf->inputstate = inbuf->inputstate | 33;
  inbuf->head = inbuf->head + 1;
  goto ldv_44904;
  case 46: ;
  if ((inbuf->inputstate & 32) == 0) {
    dev_notice((struct device const *)cs->dev, "received <DLE>. without <DLE>X\n");
  } else {
  }
  inbuf->inputstate = inbuf->inputstate & -33;
  if (cs->dle != 0) {
    inbuf->inputstate = inbuf->inputstate & -2;
  } else {
  }
  inbuf->head = inbuf->head + 1;
  goto ldv_44904;
  case 16:
  inbuf->inputstate = inbuf->inputstate | 2;
  if (cs->dle == 0 && (inbuf->inputstate & 32) == 0) {
    dev_notice((struct device const *)cs->dev, "received <DLE><DLE> not in DLE mode\n");
  } else {
  }
  goto ldv_44904;
  default:
  dev_notice((struct device const *)cs->dev, "received <DLE><%02x>\n", (int )inbuf->data[inbuf->head]);
  }
  ldv_44904: ;
  return;
}
}
void gigaset_m10x_input(struct inbuf_t *inbuf )
{
  struct cardstate *cs ;
  unsigned int numbytes ;
  unsigned int procbytes ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  cs = inbuf->cs;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 8U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: buffer state: %u -> %u\n", inbuf->head, inbuf->tail);
  } else {
  }
  goto ldv_44915;
  ldv_44914:
  handle_dle(inbuf);
  numbytes = (unsigned int )((inbuf->head <= inbuf->tail ? inbuf->tail : 8192) - inbuf->head);
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 8U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: processing %u bytes\n", numbytes);
  } else {
  }
  if (cs->mstate == 2) {
    procbytes = lock_loop(numbytes, inbuf);
  } else
  if (inbuf->inputstate & 1) {
    procbytes = cmd_loop(numbytes, inbuf);
  } else
  if ((cs->bcs)->proto2 == 1U) {
    procbytes = hdlc_loop(numbytes, inbuf);
  } else {
    procbytes = iraw_loop(numbytes, inbuf);
  }
  inbuf->head = (int )((unsigned int )inbuf->head + procbytes);
  if (inbuf->head > 8191) {
    inbuf->head = 0;
  } else {
  }
  tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 8U) != 0U, 0L);
  if (tmp___1 != 0L) {
    printk("\017gigaset: head set to %u\n", inbuf->head);
  } else {
  }
  ldv_44915: ;
  if (inbuf->head != inbuf->tail) {
    goto ldv_44914;
  } else {
  }
  return;
}
}
static char const __kstrtab_gigaset_m10x_input[19U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'm', '1', '0', 'x',
        '_', 'i', 'n', 'p',
        'u', 't', '\000'};
struct kernel_symbol const __ksymtab_gigaset_m10x_input ;
struct kernel_symbol const __ksymtab_gigaset_m10x_input = {(unsigned long )(& gigaset_m10x_input), (char const *)(& __kstrtab_gigaset_m10x_input)};
static struct sk_buff *HDLC_Encode(struct sk_buff *skb )
{
  struct sk_buff *hdlc_skb ;
  __u16 fcs ;
  unsigned char c ;
  unsigned char *cp ;
  int len ;
  unsigned int stuf_cnt ;
  int tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned char *tmp___9 ;
  int tmp___10 ;
  unsigned int tmp___11 ;
  unsigned char *tmp___12 ;
  int tmp___13 ;
  unsigned char *tmp___14 ;
  unsigned char *tmp___15 ;
  int tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned char *tmp___18 ;
  {
  stuf_cnt = 0U;
  fcs = 65535U;
  cp = skb->data;
  len = (int )skb->len;
  goto ldv_44934;
  ldv_44933:
  tmp = muststuff((int )*cp);
  if (tmp != 0) {
    stuf_cnt = stuf_cnt + 1U;
  } else {
  }
  tmp___0 = cp;
  cp = cp + 1;
  fcs = crc_ccitt_byte((int )fcs, (int )*tmp___0);
  ldv_44934:
  tmp___1 = len;
  len = len - 1;
  if (tmp___1 != 0) {
    goto ldv_44933;
  } else {
  }
  fcs = ~ ((int )fcs);
  hdlc_skb = dev_alloc_skb(((skb->len + stuf_cnt) + (unsigned int )skb->mac_len) + 6U);
  if ((unsigned long )hdlc_skb == (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(skb);
    return ((struct sk_buff *)0);
  } else {
  }
  skb_reset_mac_header(hdlc_skb);
  skb_reserve(hdlc_skb, (int )skb->mac_len);
  tmp___2 = skb_mac_header((struct sk_buff const *)skb);
  tmp___3 = skb_mac_header((struct sk_buff const *)hdlc_skb);
  memcpy((void *)tmp___3, (void const *)tmp___2, (size_t )skb->mac_len);
  hdlc_skb->mac_len = skb->mac_len;
  tmp___4 = skb_put(hdlc_skb, 1U);
  *tmp___4 = 126U;
  goto ldv_44937;
  ldv_44936:
  tmp___10 = muststuff((int )*(skb->data));
  if (tmp___10 != 0) {
    tmp___5 = skb_put(hdlc_skb, 1U);
    *tmp___5 = 125U;
    tmp___6 = skb_put(hdlc_skb, 1U);
    tmp___7 = skb->data;
    skb->data = skb->data + 1;
    *tmp___6 = (unsigned int )*tmp___7 ^ 32U;
  } else {
    tmp___8 = skb_put(hdlc_skb, 1U);
    tmp___9 = skb->data;
    skb->data = skb->data + 1;
    *tmp___8 = *tmp___9;
  }
  ldv_44937:
  tmp___11 = skb->len;
  skb->len = skb->len - 1U;
  if (tmp___11 != 0U) {
    goto ldv_44936;
  } else {
  }
  c = (unsigned char )fcs;
  tmp___13 = muststuff((int )c);
  if (tmp___13 != 0) {
    tmp___12 = skb_put(hdlc_skb, 1U);
    *tmp___12 = 125U;
    c = (unsigned int )c ^ 32U;
  } else {
  }
  tmp___14 = skb_put(hdlc_skb, 1U);
  *tmp___14 = c;
  c = (unsigned char )((int )fcs >> 8);
  tmp___16 = muststuff((int )c);
  if (tmp___16 != 0) {
    tmp___15 = skb_put(hdlc_skb, 1U);
    *tmp___15 = 125U;
    c = (unsigned int )c ^ 32U;
  } else {
  }
  tmp___17 = skb_put(hdlc_skb, 1U);
  *tmp___17 = c;
  tmp___18 = skb_put(hdlc_skb, 1U);
  *tmp___18 = 126U;
  dev_kfree_skb_any(skb);
  return (hdlc_skb);
}
}
static struct sk_buff *iraw_encode(struct sk_buff *skb )
{
  struct sk_buff *iraw_skb ;
  unsigned char c ;
  unsigned char *cp ;
  int len ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  u8 __x ;
  unsigned char *tmp___1 ;
  u8 tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  int tmp___5 ;
  {
  iraw_skb = dev_alloc_skb(skb->len * 2U + (unsigned int )skb->mac_len);
  if ((unsigned long )iraw_skb == (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(skb);
    return ((struct sk_buff *)0);
  } else {
  }
  skb_reset_mac_header(iraw_skb);
  skb_reserve(iraw_skb, (int )skb->mac_len);
  tmp = skb_mac_header((struct sk_buff const *)skb);
  tmp___0 = skb_mac_header((struct sk_buff const *)iraw_skb);
  memcpy((void *)tmp___0, (void const *)tmp, (size_t )skb->mac_len);
  iraw_skb->mac_len = skb->mac_len;
  cp = skb->data;
  len = (int )skb->len;
  goto ldv_44951;
  ldv_44950:
  tmp___1 = cp;
  cp = cp + 1;
  __x = *tmp___1;
  tmp___2 = __bitrev8((int )__x);
  c = (unsigned char )((int )tmp___2);
  if ((unsigned int )c == 16U) {
    tmp___3 = skb_put(iraw_skb, 1U);
    *tmp___3 = c;
  } else {
  }
  tmp___4 = skb_put(iraw_skb, 1U);
  *tmp___4 = c;
  ldv_44951:
  tmp___5 = len;
  len = len - 1;
  if (tmp___5 != 0) {
    goto ldv_44950;
  } else {
  }
  dev_kfree_skb_any(skb);
  return (iraw_skb);
}
}
int gigaset_m10x_send_skb(struct bc_state *bcs , struct sk_buff *skb )
{
  struct cardstate *cs ;
  unsigned int len ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  cs = bcs->cs;
  len = skb->len;
  if (bcs->proto2 == 1U) {
    skb = HDLC_Encode(skb);
  } else {
    skb = iraw_encode(skb);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "unable to allocate memory for encoding!\n");
    return (-12);
  } else {
  }
  skb_queue_tail(& bcs->squeue, skb);
  tmp = spinlock_check(& cs->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (cs->connected != 0U) {
    tasklet_schedule(& cs->write_tasklet);
  } else {
  }
  spin_unlock_irqrestore(& cs->lock, flags);
  return ((int )len);
}
}
static char const __kstrtab_gigaset_m10x_send_skb[22U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'm', '1', '0', 'x',
        '_', 's', 'e', 'n',
        'd', '_', 's', 'k',
        'b', '\000'};
struct kernel_symbol const __ksymtab_gigaset_m10x_send_skb ;
struct kernel_symbol const __ksymtab_gigaset_m10x_send_skb = {(unsigned long )(& gigaset_m10x_send_skb), (char const *)(& __kstrtab_gigaset_m10x_send_skb)};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern int __printk_ratelimit(char const * ) ;
extern char const hex_asc[] ;
extern int hex_to_bin(char ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern void __xadd_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  default:
  __xadd_wrong_size();
  }
  ldv_5659: ;
  return (__ret + i);
}
}
__inline static int atomic_sub_return(int i , atomic_t *v )
{
  int tmp ;
  {
  tmp = atomic_add_return(- i, v);
  return (tmp);
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
__inline static unsigned char __toupper(unsigned char c )
{
  {
  if (((int )_ctype[(int )c] & 2) != 0) {
    c = (unsigned int )c + 224U;
  } else {
  }
  return (c);
}
}
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern int ___ratelimit(struct ratelimit_state * , char const * ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
extern char const *dev_driver_string(struct device const * ) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t priority )
{
  struct sk_buff *tmp ;
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  return (tmp);
}
}
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
extern unsigned char *__pskb_pull_tail(struct sk_buff * , int ) ;
__inline static int __skb_linearize(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  tmp = __pskb_pull_tail(skb, (int )skb->data_len);
  return ((unsigned long )tmp != (unsigned long )((unsigned char *)0U) ? 0 : -12);
}
}
__inline static int skb_linearize(struct sk_buff *skb )
{
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  tmp___2 = skb_is_nonlinear((struct sk_buff const *)skb);
  if ((int )tmp___2) {
    tmp___0 = __skb_linearize(skb);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
void gigaset_skb_sent(struct bc_state *bcs , struct sk_buff *dskb ) ;
extern void *PDE_DATA(struct inode const * ) ;
extern int attach_capi_ctr(struct capi_ctr * ) ;
extern int detach_capi_ctr(struct capi_ctr * ) ;
extern void capi_ctr_ready(struct capi_ctr * ) ;
extern void capi_ctr_down(struct capi_ctr * ) ;
extern void capi_ctr_handle_message(struct capi_ctr * , u16 , struct sk_buff * ) ;
extern void register_capi_driver(struct capi_driver * ) ;
extern void unregister_capi_driver(struct capi_driver * ) ;
__inline static void capimsg_setu8(void *m , int off , __u8 val )
{
  {
  *((__u8 *)m + (unsigned long )off) = val;
  return;
}
}
__inline static void capimsg_setu16(void *m , int off , __u16 val )
{
  {
  *((__u8 *)m + (unsigned long )off) = (__u8 )val;
  *((__u8 *)m + ((unsigned long )off + 1UL)) = (__u8 )((int )val >> 8);
  return;
}
}
__inline static void capimsg_setu32(void *m , int off , __u32 val )
{
  {
  *((__u8 *)m + (unsigned long )off) = (__u8 )val;
  *((__u8 *)m + ((unsigned long )off + 1UL)) = (__u8 )(val >> 8);
  *((__u8 *)m + ((unsigned long )off + 2UL)) = (__u8 )(val >> 16);
  *((__u8 *)m + ((unsigned long )off + 3UL)) = (__u8 )(val >> 24);
  return;
}
}
extern unsigned int capi_cmsg2message(_cmsg * , __u8 * ) ;
extern unsigned int capi_message2cmsg(_cmsg * , __u8 * ) ;
extern unsigned int capi_cmsg_header(_cmsg * , __u16 , __u8 , __u8 , __u16 , __u32 ) ;
extern char *capi_cmd2str(__u8 , __u8 ) ;
extern void cdebbuf_free(_cdebbuf * ) ;
extern _cdebbuf *capi_cmsg2str(_cmsg * ) ;
__inline static void capi_cmsg_answer(_cmsg *cmsg )
{
  {
  cmsg->Subcommand = (__u8 )((unsigned int )cmsg->Subcommand | 1U);
  return;
}
}
static struct __anonstruct_cip2bchlc_328 cip2bchlc[29U] =
  { {0, 0},
        {(u8 *)"8090A3", (u8 *)0U},
        {(u8 *)"8890", (u8 *)0U},
        {(u8 *)"8990", (u8 *)0U},
        {(u8 *)"9090A3", (u8 *)0U},
        {(u8 *)"9190", (u8 *)0U},
        {(u8 *)"9890", (u8 *)0U},
        {(u8 *)"88C0C6E6", (u8 *)0U},
        {(u8 *)"8890218F", (u8 *)0U},
        {(u8 *)"9190A5", (u8 *)0U},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {0, 0},
        {(u8 *)"8090A3", (u8 *)"9181"},
        {(u8 *)"9090A3", (u8 *)"9184"},
        {(u8 *)"8890", (u8 *)"91A1"},
        {(u8 *)"8890", (u8 *)"91A4"},
        {(u8 *)"8890", (u8 *)"91A8"},
        {(u8 *)"8890", (u8 *)"91B1"},
        {(u8 *)"8890", (u8 *)"91B2"},
        {(u8 *)"8890", (u8 *)"91B5"},
        {(u8 *)"8890", (u8 *)"91B8"},
        {(u8 *)"8890", (u8 *)"91C1"},
        {(u8 *)"9190A5", (u8 *)"9181"},
        {(u8 *)"9190A5", (u8 *)"916001"},
        {(u8 *)"8890", (u8 *)"916002"}};
__inline static void ignore_cstruct_param(struct cardstate *cs , _cstruct param ,
                                          char *msgname , char *paramname )
{
  {
  if ((unsigned long )param != (unsigned long )((_cstruct )0U) && (unsigned int )*param != 0U) {
    dev_warn((struct device const *)cs->dev, "%s: ignoring unsupported parameter: %s\n",
             msgname, paramname);
  } else {
  }
  return;
}
}
static int encode_ie(char *in , u8 *out , int maxlen )
{
  int l ;
  int tmp ;
  int tmp___0 ;
  {
  l = 0;
  goto ldv_45488;
  ldv_45487: ;
  if ((((int )_ctype[(int )((unsigned char )*in)] & 68) == 0 || ((int )_ctype[(int )((unsigned char )*(in + 1UL))] & 68) == 0) || l >= maxlen) {
    return (-1);
  } else {
  }
  l = l + 1;
  tmp = hex_to_bin((int )*in);
  tmp___0 = hex_to_bin((int )*(in + 1UL));
  *(out + (unsigned long )l) = ((int )((u8 )tmp) << 4U) + (int )((u8 )tmp___0);
  in = in + 2UL;
  ldv_45488: ;
  if ((int )((signed char )*in) != 0) {
    goto ldv_45487;
  } else {
  }
  *out = (u8 )l;
  return (l);
}
}
static void decode_ie(u8 *in , char *out )
{
  int i ;
  char *tmp ;
  unsigned char tmp___0 ;
  char *tmp___1 ;
  unsigned char tmp___2 ;
  int tmp___3 ;
  {
  i = (int )*in;
  goto ldv_45496;
  ldv_45495:
  tmp = out;
  out = out + 1;
  in = in + 1;
  tmp___0 = __toupper((int )((unsigned char )hex_asc[(int )*in >> 4]));
  *tmp = (char )tmp___0;
  tmp___1 = out;
  out = out + 1;
  tmp___2 = __toupper((int )((unsigned char )hex_asc[(int )*in & 15]));
  *tmp___1 = (char )tmp___2;
  ldv_45496:
  tmp___3 = i;
  i = i - 1;
  if (tmp___3 > 0) {
    goto ldv_45495;
  } else {
  }
  return;
}
}
__inline static struct gigaset_capi_appl *get_appl(struct gigaset_capi_ctr *iif ,
                                                   u16 appl )
{
  struct gigaset_capi_appl *ap ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)iif->appls.next;
  ap = (struct gigaset_capi_appl *)__mptr;
  goto ldv_45508;
  ldv_45507: ;
  if ((int )ap->id == (int )appl) {
    return (ap);
  } else {
  }
  __mptr___0 = (struct list_head const *)ap->ctrlist.next;
  ap = (struct gigaset_capi_appl *)__mptr___0;
  ldv_45508: ;
  if ((unsigned long )(& ap->ctrlist) != (unsigned long )(& iif->appls)) {
    goto ldv_45507;
  } else {
  }
  return ((struct gigaset_capi_appl *)0);
}
}
__inline static void dump_cmsg(enum debuglevel level , char const *tag , _cmsg *p )
{
  struct ratelimit_state msg_dump_ratelimit ;
  _cdebbuf *cdb ;
  int tmp ;
  long tmp___0 ;
  char *tmp___1 ;
  long tmp___2 ;
  {
  msg_dump_ratelimit.lock.raw_lock.val.counter = 0;
  msg_dump_ratelimit.lock.magic = 3735899821U;
  msg_dump_ratelimit.lock.owner_cpu = 4294967295U;
  msg_dump_ratelimit.lock.owner = (void *)-1;
  msg_dump_ratelimit.lock.dep_map.key = 0;
  msg_dump_ratelimit.lock.dep_map.class_cache[0] = 0;
  msg_dump_ratelimit.lock.dep_map.class_cache[1] = 0;
  msg_dump_ratelimit.lock.dep_map.name = "msg_dump_ratelimit.lock";
  msg_dump_ratelimit.lock.dep_map.cpu = 0;
  msg_dump_ratelimit.lock.dep_map.ip = 0UL;
  msg_dump_ratelimit.interval = 5000;
  msg_dump_ratelimit.burst = 20;
  msg_dump_ratelimit.printed = 0;
  msg_dump_ratelimit.missed = 0;
  msg_dump_ratelimit.begin = 0UL;
  if (((unsigned int )gigaset_debuglevel & (unsigned int )level) == 0U) {
    return;
  } else {
  }
  tmp = ___ratelimit(& msg_dump_ratelimit, tag);
  if (tmp == 0) {
    return;
  } else {
  }
  cdb = capi_cmsg2str(p);
  if ((unsigned long )cdb != (unsigned long )((_cdebbuf *)0)) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: %s: [%d] %s\n", tag, (int )p->ApplId, cdb->buf);
    } else {
    }
    cdebbuf_free(cdb);
  } else {
    tmp___2 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                               0L);
    if (tmp___2 != 0L) {
      tmp___1 = capi_cmd2str((int )p->Command, (int )p->Subcommand);
      printk("\017gigaset: %s: [%d] %s\n", tag, (int )p->ApplId, tmp___1);
    } else {
    }
  }
  return;
}
}
__inline static void dump_rawmsg(enum debuglevel level , char const *tag , unsigned char *data )
{
  char *dbgline ;
  int i ;
  int l ;
  long tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  void *tmp___4 ;
  long tmp___5 ;
  {
  if (((unsigned int )gigaset_debuglevel & (unsigned int )level) == 0U) {
    return;
  } else {
  }
  l = (int )*data | ((int )*(data + 1UL) << 8);
  if (l <= 11) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                           0L);
    if (tmp != 0L) {
      printk("\017gigaset: %s: ??? LEN=%04d\n", tag, l);
    } else {
    }
    return;
  } else {
  }
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                             0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: %s: 0x%02x:0x%02x: ID=%03d #0x%04x LEN=%04d NCCI=0x%x\n",
           tag, (int )*(data + 4UL), (int )*(data + 5UL), (int )*(data + 2UL) | ((int )*(data + 3UL) << 8),
           (int )*(data + 6UL) | ((int )*(data + 7UL) << 8), l, (((int )*(data + 8UL) | ((int )*(data + 9UL) << 8)) | ((int )*(data + 10UL) << 16)) | ((int )*(data + 11UL) << 24));
  } else {
  }
  l = l + -12;
  if (l <= 0) {
    return;
  } else {
  }
  if (l > 64) {
    l = 64;
  } else {
  }
  tmp___1 = kmalloc((size_t )(l * 3), 32U);
  dbgline = (char *)tmp___1;
  if ((unsigned long )dbgline == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_45527;
  ldv_45526:
  *(dbgline + (unsigned long )(i * 3)) = hex_asc[(int )*(data + (unsigned long )(i + 12)) >> 4];
  *(dbgline + ((unsigned long )(i * 3) + 1UL)) = hex_asc[(int )*(data + (unsigned long )(i + 12)) & 15];
  *(dbgline + ((unsigned long )(i * 3) + 2UL)) = 32;
  i = i + 1;
  ldv_45527: ;
  if (i < l) {
    goto ldv_45526;
  } else {
  }
  *(dbgline + ((unsigned long )(l * 3) + 0xffffffffffffffffUL)) = 0;
  tmp___2 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                             0L);
  if (tmp___2 != 0L) {
    printk("\017gigaset:   %s\n", dbgline);
  } else {
  }
  kfree((void const *)dbgline);
  if ((unsigned int )*(data + 4UL) == 134U && ((unsigned int )*(data + 5UL) == 128U || (unsigned int )*(data + 5UL) == 130U)) {
    l = (int )*(data + 16UL) | ((int )*(data + 17UL) << 8);
    tmp___3 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                               0L);
    if (tmp___3 != 0L) {
      printk("\017gigaset:    DataLength=%d\n", l);
    } else {
    }
    if (l <= 0 || (gigaset_debuglevel & 256) == 0) {
      return;
    } else {
    }
    if (l > 64) {
      l = 64;
    } else {
    }
    tmp___4 = kmalloc((size_t )(l * 3), 32U);
    dbgline = (char *)tmp___4;
    if ((unsigned long )dbgline == (unsigned long )((char *)0)) {
      return;
    } else {
    }
    data = data + (unsigned long )((int )*data | ((int )*(data + 1UL) << 8));
    i = 0;
    goto ldv_45530;
    ldv_45529:
    *(dbgline + (unsigned long )(i * 3)) = hex_asc[(int )*(data + (unsigned long )i) >> 4];
    *(dbgline + ((unsigned long )(i * 3) + 1UL)) = hex_asc[(int )*(data + (unsigned long )i) & 15];
    *(dbgline + ((unsigned long )(i * 3) + 2UL)) = 32;
    i = i + 1;
    ldv_45530: ;
    if (i < l) {
      goto ldv_45529;
    } else {
    }
    *(dbgline + ((unsigned long )(l * 3) + 0xffffffffffffffffUL)) = 0;
    tmp___5 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & (unsigned int )level) != 0U,
                               0L);
    if (tmp___5 != 0L) {
      printk("\017gigaset:   %s\n", dbgline);
    } else {
    }
    kfree((void const *)dbgline);
  } else {
  }
  return;
}
}
static char const *format_ie(char const *ie )
{
  char result[60U] ;
  int len ;
  int count ;
  char *pout ;
  char *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  int tmp___2 ;
  char *tmp___3 ;
  char *tmp___4 ;
  char *tmp___5 ;
  {
  pout = (char *)(& result);
  if ((unsigned long )ie == (unsigned long )((char const *)0)) {
    return ("NULL");
  } else {
  }
  len = (int )*ie;
  count = len;
  if (count > 20) {
    count = 19;
  } else {
  }
  goto ldv_45540;
  ldv_45539:
  tmp = pout;
  pout = pout + 1;
  ie = ie + 1;
  *tmp = hex_asc[((int )*ie & 240) >> 4];
  tmp___0 = pout;
  pout = pout + 1;
  *tmp___0 = hex_asc[(int )*ie & 15];
  tmp___1 = pout;
  pout = pout + 1;
  *tmp___1 = 32;
  ldv_45540:
  tmp___2 = count;
  count = count - 1;
  if (tmp___2 != 0) {
    goto ldv_45539;
  } else {
  }
  if (len > 20) {
    tmp___3 = pout;
    pout = pout + 1;
    *tmp___3 = 46;
    tmp___4 = pout;
    pout = pout + 1;
    *tmp___4 = 46;
    tmp___5 = pout;
    pout = pout + 1;
    *tmp___5 = 46;
  } else {
  }
  pout = pout - 1;
  *pout = 0;
  return ((char const *)(& result));
}
}
static void send_data_b3_conf(struct cardstate *cs , struct capi_ctr *ctr , u16 appl ,
                              u16 msgid , int channel , u16 handle , u16 info )
{
  struct sk_buff *cskb ;
  u8 *msg ;
  unsigned char *tmp ;
  {
  cskb = alloc_skb(16U, 32U);
  if ((unsigned long )cskb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "send_data_b3_conf");
    return;
  } else {
  }
  tmp = __skb_put(cskb, 16U);
  msg = tmp;
  capimsg_setu16((void *)msg, 0, 16);
  capimsg_setu16((void *)msg, 2, (int )appl);
  capimsg_setu8((void *)msg, 4, 134);
  capimsg_setu8((void *)msg, 5, 129);
  capimsg_setu16((void *)msg, 6, (int )msgid);
  capimsg_setu8((void *)msg, 8, (int )((__u8 )ctr->cnr));
  capimsg_setu8((void *)msg, 9, (int )((__u8 )channel));
  capimsg_setu16((void *)msg, 10, 1);
  capimsg_setu16((void *)msg, 12, (int )handle);
  capimsg_setu16((void *)msg, 14, (int )info);
  dump_rawmsg(16384, "send_data_b3_conf", msg);
  capi_ctr_handle_message(ctr, (int )appl, cskb);
  return;
}
}
void gigaset_skb_sent(struct bc_state *bcs , struct sk_buff *dskb )
{
  struct cardstate *cs ;
  struct gigaset_capi_ctr *iif ;
  struct gigaset_capi_appl *ap ;
  unsigned char *req ;
  unsigned char *tmp ;
  u16 flags ;
  long tmp___0 ;
  long tmp___1 ;
  {
  cs = bcs->cs;
  iif = (struct gigaset_capi_ctr *)cs->iif;
  ap = (struct gigaset_capi_appl *)bcs->ap;
  tmp = skb_mac_header((struct sk_buff const *)dskb);
  req = tmp;
  bcs->trans_up = bcs->trans_up + 1;
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 16384U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: %s: application gone\n", "gigaset_skb_sent");
    } else {
    }
    return;
  } else {
  }
  if (bcs->apconnstate <= 1) {
    tmp___1 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 16384U) != 0U,
                               0L);
    if (tmp___1 != 0L) {
      printk("\017gigaset: %s: disconnected\n", "gigaset_skb_sent");
    } else {
    }
    return;
  } else {
  }
  flags = (u16 )((int )((short )*(req + 20UL)) | (int )((short )((int )*(req + 21UL) << 8)));
  if (((int )flags & 4) != 0) {
    send_data_b3_conf(cs, & iif->ctr, (int )ap->id, (int )((u16 )((int )((short )*(req + 6UL)) | (int )((short )((int )*(req + 7UL) << 8)))),
                      bcs->channel + 1, (int )((u16 )((int )((short )*(req + 18UL)) | (int )((short )((int )*(req + 19UL) << 8)))),
                      ((int )flags & -5) != 0 ? 2 : 0);
  } else {
  }
  return;
}
}
static char const __kstrtab_gigaset_skb_sent[17U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        's', 'k', 'b', '_',
        's', 'e', 'n', 't',
        '\000'};
struct kernel_symbol const __ksymtab_gigaset_skb_sent ;
struct kernel_symbol const __ksymtab_gigaset_skb_sent = {(unsigned long )(& gigaset_skb_sent), (char const *)(& __kstrtab_gigaset_skb_sent)};
void gigaset_skb_rcvd(struct bc_state *bcs , struct sk_buff *skb )
{
  struct cardstate *cs ;
  struct gigaset_capi_ctr *iif ;
  struct gigaset_capi_appl *ap ;
  int len ;
  long tmp ;
  long tmp___0 ;
  u16 tmp___1 ;
  {
  cs = bcs->cs;
  iif = (struct gigaset_capi_ctr *)cs->iif;
  ap = (struct gigaset_capi_appl *)bcs->ap;
  len = (int )skb->len;
  bcs->trans_down = bcs->trans_down + 1;
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 16384U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: %s: application gone\n", "gigaset_skb_rcvd");
    } else {
    }
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  if (bcs->apconnstate <= 1) {
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 16384U) != 0U,
                               0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: %s: disconnected\n", "gigaset_skb_rcvd");
    } else {
    }
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  skb_push(skb, 22U);
  capimsg_setu16((void *)skb->data, 0, 22);
  capimsg_setu16((void *)skb->data, 2, (int )ap->id);
  capimsg_setu8((void *)skb->data, 4, 134);
  capimsg_setu8((void *)skb->data, 5, 130);
  tmp___1 = ap->nextMessageNumber;
  ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
  capimsg_setu16((void *)skb->data, 6, (int )tmp___1);
  capimsg_setu8((void *)skb->data, 8, (int )((__u8 )iif->ctr.cnr));
  capimsg_setu8((void *)skb->data, 9, (int )((unsigned int )((__u8 )bcs->channel) + 1U));
  capimsg_setu16((void *)skb->data, 10, 1);
  capimsg_setu16((void *)skb->data, 16, (int )((__u16 )len));
  capimsg_setu16((void *)skb->data, 20, 0);
  dump_rawmsg(16384, "gigaset_skb_rcvd", skb->data);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  return;
}
}
static char const __kstrtab_gigaset_skb_rcvd[17U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        's', 'k', 'b', '_',
        'r', 'c', 'v', 'd',
        '\000'};
struct kernel_symbol const __ksymtab_gigaset_skb_rcvd ;
struct kernel_symbol const __ksymtab_gigaset_skb_rcvd = {(unsigned long )(& gigaset_skb_rcvd), (char const *)(& __kstrtab_gigaset_skb_rcvd)};
void gigaset_isdn_rcv_err(struct bc_state *bcs )
{
  {
  if (bcs->ignore != 0) {
    bcs->ignore = bcs->ignore - 1;
    return;
  } else {
  }
  bcs->corrupted = bcs->corrupted + 1;
  return;
}
}
static char const __kstrtab_gigaset_isdn_rcv_err[21U] =
  { 'g', 'i', 'g', 'a',
        's', 'e', 't', '_',
        'i', 's', 'd', 'n',
        '_', 'r', 'c', 'v',
        '_', 'e', 'r', 'r',
        '\000'};
struct kernel_symbol const __ksymtab_gigaset_isdn_rcv_err ;
struct kernel_symbol const __ksymtab_gigaset_isdn_rcv_err = {(unsigned long )(& gigaset_isdn_rcv_err), (char const *)(& __kstrtab_gigaset_isdn_rcv_err)};
int gigaset_isdn_icall(struct at_state_t *at_state )
{
  struct cardstate *cs ;
  struct bc_state *bcs ;
  struct gigaset_capi_ctr *iif ;
  struct gigaset_capi_appl *ap ;
  u32 actCIPmask ;
  struct sk_buff *skb ;
  unsigned int msgsize ;
  unsigned long flags ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  size_t tmp___4 ;
  size_t tmp___5 ;
  char const *tmp___6 ;
  long tmp___7 ;
  char const *tmp___8 ;
  long tmp___9 ;
  char const *tmp___10 ;
  long tmp___11 ;
  char const *tmp___12 ;
  long tmp___13 ;
  raw_spinlock_t *tmp___14 ;
  struct list_head const *__mptr ;
  u16 tmp___15 ;
  unsigned char *tmp___16 ;
  unsigned int tmp___17 ;
  raw_spinlock_t *tmp___18 ;
  struct list_head const *__mptr___0 ;
  {
  cs = at_state->cs;
  bcs = at_state->bcs;
  iif = (struct gigaset_capi_ctr *)cs->iif;
  if ((unsigned long )bcs == (unsigned long )((struct bc_state *)0)) {
    return (2);
  } else {
  }
  capi_cmsg_header(& iif->hcmsg, 0, 2, 130, 0, (__u32 )(iif->ctr.cnr | ((bcs->channel + 1) << 8)));
  msgsize = 22U;
  if ((unsigned long )at_state->str_var[3] != (unsigned long )((char *)0)) {
    tmp = encode_ie(at_state->str_var[3], (u8 *)(& iif->bc_buf), 11);
    if (tmp < 0) {
      dev_warn((struct device const *)cs->dev, "RING ignored - bad BC %s\n", at_state->str_var[3]);
      return (2);
    } else {
    }
    iif->hcmsg.CIPValue = 0U;
    i = 0;
    goto ldv_45615;
    ldv_45614: ;
    if ((unsigned long )cip2bchlc[i].bc != (unsigned long )((u8 *)0U) && (unsigned long )cip2bchlc[i].hlc == (unsigned long )((u8 *)0U)) {
      tmp___0 = strcmp((char const *)cip2bchlc[i].bc, (char const *)at_state->str_var[3]);
      if (tmp___0 == 0) {
        iif->hcmsg.CIPValue = (__u16 )i;
        goto ldv_45613;
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_45615: ;
    if ((unsigned int )i <= 28U) {
      goto ldv_45614;
    } else {
    }
    ldv_45613: ;
  } else {
    iif->hcmsg.CIPValue = 1U;
    encode_ie((char *)cip2bchlc[1].bc, (u8 *)(& iif->bc_buf), 11);
  }
  iif->hcmsg.BC = (_cstruct )(& iif->bc_buf);
  msgsize = (unsigned int )*(iif->hcmsg.BC) + msgsize;
  if ((unsigned long )at_state->str_var[4] != (unsigned long )((char *)0)) {
    tmp___1 = encode_ie(at_state->str_var[4], (u8 *)(& iif->hlc_buf), 3);
    if (tmp___1 < 0) {
      dev_warn((struct device const *)cs->dev, "RING ignored - bad HLC %s\n", at_state->str_var[4]);
      return (2);
    } else {
    }
    iif->hcmsg.HLC = (_cstruct )(& iif->hlc_buf);
    msgsize = (unsigned int )*(iif->hcmsg.HLC) + msgsize;
    if ((unsigned long )at_state->str_var[3] != (unsigned long )((char *)0)) {
      i = 0;
      goto ldv_45620;
      ldv_45619: ;
      if ((unsigned long )cip2bchlc[i].hlc != (unsigned long )((u8 *)0U)) {
        tmp___2 = strcmp((char const *)cip2bchlc[i].hlc, (char const *)at_state->str_var[4]);
        if (tmp___2 == 0) {
          tmp___3 = strcmp((char const *)cip2bchlc[i].bc, (char const *)at_state->str_var[3]);
          if (tmp___3 == 0) {
            iif->hcmsg.CIPValue = (__u16 )i;
            goto ldv_45618;
          } else {
          }
        } else {
        }
      } else {
      }
      i = i + 1;
      ldv_45620: ;
      if ((unsigned int )i <= 28U) {
        goto ldv_45619;
      } else {
      }
      ldv_45618: ;
    } else {
    }
  } else {
  }
  if ((unsigned long )at_state->str_var[1] != (unsigned long )((char *)0)) {
    tmp___4 = strlen((char const *)at_state->str_var[1]);
    i = (int )tmp___4;
    if (i > 20) {
      dev_warn((struct device const *)cs->dev, "RING ignored - bad number %s\n",
               at_state->str_var[3]);
      return (2);
    } else {
    }
    iif->cdpty_buf[0] = (unsigned int )((u8 )i) + 1U;
    iif->cdpty_buf[1] = 128U;
    memcpy((void *)(& iif->cdpty_buf) + 2U, (void const *)at_state->str_var[1],
             (size_t )i);
    iif->hcmsg.CalledPartyNumber = (_cstruct )(& iif->cdpty_buf);
    msgsize = (unsigned int )*(iif->hcmsg.CalledPartyNumber) + msgsize;
  } else {
  }
  if ((unsigned long )at_state->str_var[0] != (unsigned long )((char *)0)) {
    tmp___5 = strlen((char const *)at_state->str_var[0]);
    i = (int )tmp___5;
    if (i > 20) {
      dev_warn((struct device const *)cs->dev, "RING ignored - bad number %s\n",
               at_state->str_var[3]);
      return (2);
    } else {
    }
    iif->cgpty_buf[0] = (unsigned int )((u8 )i) + 2U;
    iif->cgpty_buf[1] = 0U;
    iif->cgpty_buf[2] = 128U;
    memcpy((void *)(& iif->cgpty_buf) + 3U, (void const *)at_state->str_var[0],
             (size_t )i);
    iif->hcmsg.CallingPartyNumber = (_cstruct )(& iif->cgpty_buf);
    msgsize = (unsigned int )*(iif->hcmsg.CallingPartyNumber) + msgsize;
  } else {
  }
  tmp___7 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = format_ie((char const *)iif->hcmsg.BC);
    printk("\017gigaset: icall: PLCI %x CIP %d BC %s\n", iif->hcmsg.adr.adrPLCI, (int )iif->hcmsg.CIPValue,
           tmp___6);
  } else {
  }
  tmp___9 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = format_ie((char const *)iif->hcmsg.HLC);
    printk("\017gigaset: icall: HLC %s\n", tmp___8);
  } else {
  }
  tmp___11 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = format_ie((char const *)iif->hcmsg.CallingPartyNumber);
    printk("\017gigaset: icall: CgPty %s\n", tmp___10);
  } else {
  }
  tmp___13 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = format_ie((char const *)iif->hcmsg.CalledPartyNumber);
    printk("\017gigaset: icall: CdPty %s\n", tmp___12);
  } else {
  }
  tmp___14 = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp___14);
  if ((unsigned long )bcs->ap != (unsigned long )((void *)0) || bcs->apconnstate != 0) {
    dev_warn((struct device const *)cs->dev, "%s: channel not properly cleared (%p/%d)\n",
             "gigaset_isdn_icall", bcs->ap, bcs->apconnstate);
    bcs->ap = (void *)0;
    bcs->apconnstate = 0;
  } else {
  }
  spin_unlock_irqrestore(& bcs->aplock, flags);
  actCIPmask = (u32 )((1 << (int )iif->hcmsg.CIPValue) | 1);
  __mptr = (struct list_head const *)iif->appls.next;
  ap = (struct gigaset_capi_appl *)__mptr;
  goto ldv_45634;
  ldv_45633: ;
  if ((ap->listenCIPmask & actCIPmask) != 0U) {
    iif->hcmsg.ApplId = ap->id;
    tmp___15 = ap->nextMessageNumber;
    ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
    iif->hcmsg.Messagenumber = tmp___15;
    skb = alloc_skb(msgsize, 32U);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      dev_err((struct device const *)cs->dev, "%s: out of memory\n", "gigaset_isdn_icall");
      goto ldv_45629;
    } else {
    }
    tmp___16 = __skb_put(skb, msgsize);
    tmp___17 = capi_cmsg2message(& iif->hcmsg, tmp___16);
    if (tmp___17 != 0U) {
      dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "gigaset_isdn_icall");
      dev_kfree_skb_any(skb);
      goto ldv_45629;
    } else {
    }
    dump_cmsg(32, "gigaset_isdn_icall", & iif->hcmsg);
    tmp___18 = spinlock_check(& bcs->aplock);
    flags = _raw_spin_lock_irqsave(tmp___18);
    ap->bcnext = (struct gigaset_capi_appl *)bcs->ap;
    bcs->ap = (void *)ap;
    bcs->chstate = bcs->chstate | 4U;
    bcs->apconnstate = 1;
    spin_unlock_irqrestore(& bcs->aplock, flags);
    capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  } else {
  }
  __mptr___0 = (struct list_head const *)ap->ctrlist.next;
  ap = (struct gigaset_capi_appl *)__mptr___0;
  ldv_45634: ;
  if ((unsigned long )(& ap->ctrlist) != (unsigned long )(& iif->appls)) {
    goto ldv_45633;
  } else {
  }
  ldv_45629: ;
  return ((unsigned long )bcs->ap != (unsigned long )((void *)0) ? 1 : 2);
}
}
static void send_disconnect_ind(struct bc_state *bcs , struct gigaset_capi_appl *ap ,
                                u16 reason )
{
  struct cardstate *cs ;
  struct gigaset_capi_ctr *iif ;
  struct sk_buff *skb ;
  u16 tmp ;
  unsigned char *tmp___0 ;
  unsigned int tmp___1 ;
  {
  cs = bcs->cs;
  iif = (struct gigaset_capi_ctr *)cs->iif;
  if (bcs->apconnstate == 0) {
    return;
  } else {
  }
  tmp = ap->nextMessageNumber;
  ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
  capi_cmsg_header(& iif->hcmsg, (int )ap->id, 4, 130, (int )tmp, (__u32 )(iif->ctr.cnr | ((bcs->channel + 1) << 8)));
  iif->hcmsg.Reason = reason;
  skb = alloc_skb(14U, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "send_disconnect_ind");
    return;
  } else {
  }
  tmp___0 = __skb_put(skb, 14U);
  tmp___1 = capi_cmsg2message(& iif->hcmsg, tmp___0);
  if (tmp___1 != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "send_disconnect_ind");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "send_disconnect_ind", & iif->hcmsg);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  return;
}
}
static void send_disconnect_b3_ind(struct bc_state *bcs , struct gigaset_capi_appl *ap )
{
  struct cardstate *cs ;
  struct gigaset_capi_ctr *iif ;
  struct sk_buff *skb ;
  u16 tmp ;
  unsigned char *tmp___0 ;
  unsigned int tmp___1 ;
  {
  cs = bcs->cs;
  iif = (struct gigaset_capi_ctr *)cs->iif;
  if (bcs->apconnstate <= 1) {
    return;
  } else {
  }
  bcs->apconnstate = 1;
  tmp = ap->nextMessageNumber;
  ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
  capi_cmsg_header(& iif->hcmsg, (int )ap->id, 132, 130, (int )tmp, (__u32 )((iif->ctr.cnr | ((bcs->channel + 1) << 8)) | 65536));
  skb = alloc_skb(15U, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "send_disconnect_b3_ind");
    return;
  } else {
  }
  tmp___0 = __skb_put(skb, 15U);
  tmp___1 = capi_cmsg2message(& iif->hcmsg, tmp___0);
  if (tmp___1 != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "send_disconnect_b3_ind");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "send_disconnect_b3_ind", & iif->hcmsg);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  return;
}
}
void gigaset_isdn_connD(struct bc_state *bcs )
{
  struct cardstate *cs ;
  struct gigaset_capi_ctr *iif ;
  struct gigaset_capi_appl *ap ;
  struct sk_buff *skb ;
  unsigned int msgsize ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  u16 tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned int tmp___3 ;
  {
  cs = bcs->cs;
  iif = (struct gigaset_capi_ctr *)cs->iif;
  tmp = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp);
  ap = (struct gigaset_capi_appl *)bcs->ap;
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    spin_unlock_irqrestore(& bcs->aplock, flags);
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: %s: application gone\n", "gigaset_isdn_connD");
    } else {
    }
    return;
  } else {
  }
  if (bcs->apconnstate == 0) {
    spin_unlock_irqrestore(& bcs->aplock, flags);
    dev_warn((struct device const *)cs->dev, "%s: application %u not connected\n",
             "gigaset_isdn_connD", (int )ap->id);
    return;
  } else {
  }
  spin_unlock_irqrestore(& bcs->aplock, flags);
  goto ldv_45666;
  ldv_45665:
  dev_warn((struct device const *)cs->dev, "%s: dropping extra application %u\n",
           "gigaset_isdn_connD", (int )(ap->bcnext)->id);
  send_disconnect_ind(bcs, ap->bcnext, 13060);
  ap->bcnext = (ap->bcnext)->bcnext;
  ldv_45666: ;
  if ((unsigned long )ap->bcnext != (unsigned long )((struct gigaset_capi_appl *)0)) {
    goto ldv_45665;
  } else {
  }
  tmp___1 = ap->nextMessageNumber;
  ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
  capi_cmsg_header(& iif->hcmsg, (int )ap->id, 3, 130, (int )tmp___1, (__u32 )(iif->ctr.cnr | ((bcs->channel + 1) << 8)));
  msgsize = 15U;
  skb = alloc_skb(msgsize, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "gigaset_isdn_connD");
    return;
  } else {
  }
  tmp___2 = __skb_put(skb, msgsize);
  tmp___3 = capi_cmsg2message(& iif->hcmsg, tmp___2);
  if (tmp___3 != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "gigaset_isdn_connD");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "gigaset_isdn_connD", & iif->hcmsg);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  return;
}
}
void gigaset_isdn_hupD(struct bc_state *bcs )
{
  struct gigaset_capi_appl *ap ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp);
  goto ldv_45680;
  ldv_45679:
  ap = (struct gigaset_capi_appl *)bcs->ap;
  bcs->ap = (void *)ap->bcnext;
  spin_unlock_irqrestore(& bcs->aplock, flags);
  send_disconnect_b3_ind(bcs, ap);
  send_disconnect_ind(bcs, ap, 0);
  tmp___0 = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  ldv_45680: ;
  if ((unsigned long )bcs->ap != (unsigned long )((void *)0)) {
    goto ldv_45679;
  } else {
  }
  bcs->apconnstate = 0;
  spin_unlock_irqrestore(& bcs->aplock, flags);
  return;
}
}
void gigaset_isdn_connB(struct bc_state *bcs )
{
  struct cardstate *cs ;
  struct gigaset_capi_ctr *iif ;
  struct gigaset_capi_appl *ap ;
  struct sk_buff *skb ;
  unsigned long flags ;
  unsigned int msgsize ;
  u8 command ;
  raw_spinlock_t *tmp ;
  long tmp___0 ;
  u16 tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned int tmp___3 ;
  {
  cs = bcs->cs;
  iif = (struct gigaset_capi_ctr *)cs->iif;
  tmp = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp);
  ap = (struct gigaset_capi_appl *)bcs->ap;
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    spin_unlock_irqrestore(& bcs->aplock, flags);
    tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
    if (tmp___0 != 0L) {
      printk("\017gigaset: %s: application gone\n", "gigaset_isdn_connB");
    } else {
    }
    return;
  } else {
  }
  if (bcs->apconnstate == 0) {
    spin_unlock_irqrestore(& bcs->aplock, flags);
    dev_warn((struct device const *)cs->dev, "%s: application %u not connected\n",
             "gigaset_isdn_connB", (int )ap->id);
    return;
  } else {
  }
  if (bcs->apconnstate > 1) {
    command = 131U;
    msgsize = 13U;
  } else {
    command = 130U;
    msgsize = 13U;
  }
  bcs->apconnstate = 2;
  spin_unlock_irqrestore(& bcs->aplock, flags);
  goto ldv_45697;
  ldv_45696:
  dev_warn((struct device const *)cs->dev, "%s: dropping extra application %u\n",
           "gigaset_isdn_connB", (int )(ap->bcnext)->id);
  send_disconnect_ind(bcs, ap->bcnext, 13060);
  ap->bcnext = (ap->bcnext)->bcnext;
  ldv_45697: ;
  if ((unsigned long )ap->bcnext != (unsigned long )((struct gigaset_capi_appl *)0)) {
    goto ldv_45696;
  } else {
  }
  tmp___1 = ap->nextMessageNumber;
  ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
  capi_cmsg_header(& iif->hcmsg, (int )ap->id, (int )command, 130, (int )tmp___1,
                   (__u32 )((iif->ctr.cnr | ((bcs->channel + 1) << 8)) | 65536));
  skb = alloc_skb(msgsize, 32U);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "gigaset_isdn_connB");
    return;
  } else {
  }
  tmp___2 = __skb_put(skb, msgsize);
  tmp___3 = capi_cmsg2message(& iif->hcmsg, tmp___2);
  if (tmp___3 != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "gigaset_isdn_connB");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "gigaset_isdn_connB", & iif->hcmsg);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  return;
}
}
void gigaset_isdn_hupB(struct bc_state *bcs )
{
  struct gigaset_capi_appl *ap ;
  long tmp ;
  {
  ap = (struct gigaset_capi_appl *)bcs->ap;
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
    if (tmp != 0L) {
      printk("\017gigaset: %s: application gone\n", "gigaset_isdn_hupB");
    } else {
    }
    return;
  } else {
  }
  send_disconnect_b3_ind(bcs, ap);
  return;
}
}
void gigaset_isdn_start(struct cardstate *cs )
{
  struct gigaset_capi_ctr *iif ;
  {
  iif = (struct gigaset_capi_ctr *)cs->iif;
  strcpy((char *)(& iif->ctr.manu), "Siemens");
  iif->ctr.version.majorversion = 2U;
  iif->ctr.version.minorversion = 0U;
  iif->ctr.version.majormanuversion = cs->fwver[0];
  iif->ctr.version.minormanuversion = cs->fwver[1];
  iif->ctr.profile.nbchannel = (__u16 )cs->channels;
  iif->ctr.profile.goptions = 17U;
  iif->ctr.profile.support1 = 3U;
  iif->ctr.profile.support2 = 2U;
  iif->ctr.profile.support3 = 1U;
  strcpy((char *)(& iif->ctr.serial), "0");
  capi_ctr_ready(& iif->ctr);
  return;
}
}
void gigaset_isdn_stop(struct cardstate *cs )
{
  struct gigaset_capi_ctr *iif ;
  {
  iif = (struct gigaset_capi_ctr *)cs->iif;
  capi_ctr_down(& iif->ctr);
  return;
}
}
static void gigaset_register_appl(struct capi_ctr *ctr , u16 appl , capi_register_params *rp )
{
  struct gigaset_capi_ctr *iif ;
  struct capi_ctr const *__mptr ;
  struct cardstate *cs ;
  struct gigaset_capi_appl *ap ;
  long tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  void *tmp___0 ;
  {
  __mptr = (struct capi_ctr const *)ctr;
  iif = (struct gigaset_capi_ctr *)__mptr;
  cs = (struct cardstate *)ctr->driverdata;
  tmp = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
  if (tmp != 0L) {
    printk("\017gigaset: %s [%u] l3cnt=%u blkcnt=%u blklen=%u\n", "gigaset_register_appl",
           (int )appl, rp->level3cnt, rp->datablkcnt, rp->datablklen);
  } else {
  }
  __mptr___0 = (struct list_head const *)iif->appls.next;
  ap = (struct gigaset_capi_appl *)__mptr___0;
  goto ldv_45728;
  ldv_45727: ;
  if ((int )ap->id == (int )appl) {
    dev_notice((struct device const *)cs->dev, "application %u already registered\n",
               (int )appl);
    return;
  } else {
  }
  __mptr___1 = (struct list_head const *)ap->ctrlist.next;
  ap = (struct gigaset_capi_appl *)__mptr___1;
  ldv_45728: ;
  if ((unsigned long )(& ap->ctrlist) != (unsigned long )(& iif->appls)) {
    goto ldv_45727;
  } else {
  }
  tmp___0 = kzalloc(56UL, 208U);
  ap = (struct gigaset_capi_appl *)tmp___0;
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "gigaset_register_appl");
    return;
  } else {
  }
  ap->id = appl;
  ap->rp = *rp;
  list_add(& ap->ctrlist, & iif->appls);
  _dev_info((struct device const *)cs->dev, "application %u registered\n", (int )ap->id);
  return;
}
}
__inline static void remove_appl_from_channel(struct bc_state *bcs , struct gigaset_capi_appl *ap )
{
  struct cardstate *cs ;
  struct gigaset_capi_appl *bcap ;
  unsigned long flags ;
  int prevconnstate ;
  raw_spinlock_t *tmp ;
  {
  cs = bcs->cs;
  tmp = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp);
  bcap = (struct gigaset_capi_appl *)bcs->ap;
  if ((unsigned long )bcap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    spin_unlock_irqrestore(& bcs->aplock, flags);
    return;
  } else {
  }
  if ((unsigned long )bcap == (unsigned long )ap) {
    bcs->ap = (void *)ap->bcnext;
    if ((unsigned long )bcs->ap != (unsigned long )((void *)0)) {
      spin_unlock_irqrestore(& bcs->aplock, flags);
      return;
    } else {
    }
    prevconnstate = bcs->apconnstate;
    bcs->apconnstate = 0;
    spin_unlock_irqrestore(& bcs->aplock, flags);
    if (prevconnstate == 2) {
      dev_notice((struct device const *)cs->dev, "%s: hanging up channel %u\n",
                 "remove_appl_from_channel", bcs->channel);
      gigaset_add_event(cs, & bcs->at_state, -116, (void *)0, 0, (void *)0);
      gigaset_schedule_event(cs);
    } else {
    }
    return;
  } else {
  }
  ldv_45742: ;
  if ((unsigned long )bcap->bcnext == (unsigned long )ap) {
    bcap->bcnext = (bcap->bcnext)->bcnext;
    spin_unlock_irqrestore(& bcs->aplock, flags);
    return;
  } else {
  }
  bcap = bcap->bcnext;
  if ((unsigned long )bcap != (unsigned long )((struct gigaset_capi_appl *)0)) {
    goto ldv_45742;
  } else {
  }
  spin_unlock_irqrestore(& bcs->aplock, flags);
  return;
}
}
static void gigaset_release_appl(struct capi_ctr *ctr , u16 appl )
{
  struct gigaset_capi_ctr *iif ;
  struct capi_ctr const *__mptr ;
  struct cardstate *cs ;
  struct gigaset_capi_appl *ap ;
  struct gigaset_capi_appl *tmp ;
  unsigned int ch ;
  long tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  __mptr = (struct capi_ctr const *)ctr;
  iif = (struct gigaset_capi_ctr *)__mptr;
  cs = (struct cardstate *)iif->ctr.driverdata;
  tmp___0 = ldv__builtin_expect(((unsigned int )gigaset_debuglevel & 32U) != 0U, 0L);
  if (tmp___0 != 0L) {
    printk("\017gigaset: %s [%u]\n", "gigaset_release_appl", (int )appl);
  } else {
  }
  __mptr___0 = (struct list_head const *)iif->appls.next;
  ap = (struct gigaset_capi_appl *)__mptr___0;
  __mptr___1 = (struct list_head const *)ap->ctrlist.next;
  tmp = (struct gigaset_capi_appl *)__mptr___1;
  goto ldv_45766;
  ldv_45765: ;
  if ((int )ap->id == (int )appl) {
    ch = 0U;
    goto ldv_45763;
    ldv_45762:
    remove_appl_from_channel(cs->bcs + (unsigned long )ch, ap);
    ch = ch + 1U;
    ldv_45763: ;
    if ((unsigned int )cs->channels > ch) {
      goto ldv_45762;
    } else {
    }
    list_del(& ap->ctrlist);
    kfree((void const *)ap);
    _dev_info((struct device const *)cs->dev, "application %u released\n", (int )appl);
  } else {
  }
  ap = tmp;
  __mptr___2 = (struct list_head const *)tmp->ctrlist.next;
  tmp = (struct gigaset_capi_appl *)__mptr___2;
  ldv_45766: ;
  if ((unsigned long )(& ap->ctrlist) != (unsigned long )(& iif->appls)) {
    goto ldv_45765;
  } else {
  }
  return;
}
}
static void send_conf(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                      struct sk_buff *skb , u16 info )
{
  struct cardstate *cs ;
  unsigned int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  capi_cmsg_answer(& iif->acmsg);
  iif->acmsg.Info = info;
  tmp = capi_cmsg2message(& iif->acmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "send_conf");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  __skb_trim(skb, 14U);
  dump_cmsg(32, "send_conf", & iif->acmsg);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  return;
}
}
static void do_facility_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                            struct sk_buff *skb )
{
  struct cardstate *cs ;
  _cmsg *cmsg ;
  struct sk_buff *cskb ;
  u8 *pparam ;
  unsigned int msgsize ;
  u16 function ;
  u16 info ;
  u8 confparam[10U] ;
  unsigned int tmp ;
  unsigned char *tmp___0 ;
  unsigned int tmp___1 ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  cmsg = & iif->acmsg;
  msgsize = 17U;
  tmp = capi_message2cmsg(cmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_facility_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_facility_req", cmsg);
  switch ((int )cmsg->FacilitySelector) {
  case 1:
  info = 12299U;
  confparam[0] = 2U;
  capimsg_setu16((void *)(& confparam), 1, 2);
  goto ldv_45791;
  case 2:
  info = 12299U;
  confparam[0] = 2U;
  capimsg_setu16((void *)(& confparam), 1, 1);
  goto ldv_45791;
  case 3:
  pparam = cmsg->FacilityRequestParameter;
  if ((unsigned long )pparam == (unsigned long )((u8 *)0U) || (unsigned int )*pparam <= 1U) {
    dev_notice((struct device const *)cs->dev, "%s: %s missing\n", (char *)"FACILITY_REQ",
               (char *)"Facility Request Parameter");
    send_conf(iif, ap, skb, 8199);
    return;
  } else {
  }
  function = (u16 )((int )((short )*(pparam + 1UL)) | (int )((short )((int )*(pparam + 2UL) << 8)));
  switch ((int )function) {
  case 0:
  info = 0U;
  confparam[3] = 6U;
  capimsg_setu16((void *)(& confparam), 4, 0);
  capimsg_setu32((void *)(& confparam), 6, 0U);
  goto ldv_45795;
  case 1: ;
  if ((unsigned int )*pparam <= 6U || (unsigned int )*(pparam + 3UL) <= 3U) {
    dev_notice((struct device const *)cs->dev, "%s: %s missing\n", (char *)"FACILITY_REQ",
               (char *)"Notification Mask");
    send_conf(iif, ap, skb, 8199);
    return;
  } else {
  }
  if (((((int )*(pparam + 4UL) | ((int )*(pparam + 5UL) << 8)) | ((int )*(pparam + 6UL) << 16)) | ((int )*(pparam + 7UL) << 24)) != 0) {
    dev_notice((struct device const *)cs->dev, "%s: unsupported supplementary service notification mask 0x%x\n",
               (char *)"FACILITY_REQ", (((int )*(pparam + 4UL) | ((int )*(pparam + 5UL) << 8)) | ((int )*(pparam + 6UL) << 16)) | ((int )*(pparam + 7UL) << 24));
    info = 12305U;
    confparam[3] = 2U;
    capimsg_setu16((void *)(& confparam), 4, 12302);
    goto ldv_45795;
  } else {
  }
  info = 0U;
  confparam[3] = 2U;
  capimsg_setu16((void *)(& confparam), 4, 0);
  goto ldv_45795;
  default:
  dev_notice((struct device const *)cs->dev, "%s: unsupported supplementary service function 0x%04x\n",
             (char *)"FACILITY_REQ", (int )function);
  info = 12305U;
  confparam[3] = 2U;
  capimsg_setu16((void *)(& confparam), 4, 12302);
  }
  ldv_45795:
  confparam[0] = (unsigned int )confparam[3] + 3U;
  capimsg_setu16((void *)(& confparam), 1, (int )function);
  goto ldv_45791;
  case 4:
  info = 12299U;
  confparam[0] = 2U;
  capimsg_setu16((void *)(& confparam), 1, 0);
  goto ldv_45791;
  default:
  info = 12299U;
  confparam[0] = 0U;
  }
  ldv_45791:
  dev_kfree_skb_any(skb);
  capi_cmsg_answer(cmsg);
  cmsg->Info = info;
  cmsg->FacilityConfirmationParameter = (_cstruct )(& confparam);
  msgsize = (unsigned int )confparam[0] + msgsize;
  cskb = alloc_skb(msgsize, 32U);
  if ((unsigned long )cskb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "%s: out of memory\n", "do_facility_req");
    return;
  } else {
  }
  tmp___0 = __skb_put(cskb, msgsize);
  tmp___1 = capi_cmsg2message(cmsg, tmp___0);
  if (tmp___1 != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_facility_req");
    dev_kfree_skb_any(cskb);
    return;
  } else {
  }
  dump_cmsg(32, "do_facility_req", cmsg);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, cskb);
  return;
}
}
static void do_listen_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                          struct sk_buff *skb )
{
  struct cardstate *cs ;
  unsigned int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  tmp = capi_message2cmsg(& iif->acmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_listen_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_listen_req", & iif->acmsg);
  ap->listenInfoMask = iif->acmsg.InfoMask;
  ap->listenCIPmask = iif->acmsg.CIPmask;
  send_conf(iif, ap, skb, 0);
  return;
}
}
static void do_alert_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                         struct sk_buff *skb )
{
  struct cardstate *cs ;
  unsigned int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  tmp = capi_message2cmsg(& iif->acmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_alert_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_alert_req", & iif->acmsg);
  send_conf(iif, ap, skb, 3);
  return;
}
}
static void do_connect_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                           struct sk_buff *skb )
{
  struct cardstate *cs ;
  _cmsg *cmsg ;
  struct bc_state *bcs ;
  char **commands ;
  char *s ;
  u8 *pp ;
  unsigned long flags ;
  int i ;
  int l ;
  int lbc ;
  int lhlc ;
  u16 info ;
  unsigned int tmp ;
  raw_spinlock_t *tmp___0 ;
  void *tmp___1 ;
  u8 *tmp___2 ;
  void *tmp___3 ;
  u8 *tmp___4 ;
  void *tmp___5 ;
  size_t tmp___6 ;
  size_t tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  struct event_t *tmp___11 ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  cmsg = & iif->acmsg;
  tmp = capi_message2cmsg(cmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_connect_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_connect_req", cmsg);
  bcs = gigaset_get_free_channel(cs);
  if ((unsigned long )bcs == (unsigned long )((struct bc_state *)0)) {
    dev_notice((struct device const *)cs->dev, "%s: no B channel available\n", (char *)"CONNECT_REQ");
    send_conf(iif, ap, skb, 8195);
    return;
  } else {
  }
  tmp___0 = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if ((unsigned long )bcs->ap != (unsigned long )((void *)0) || bcs->apconnstate != 0) {
    dev_warn((struct device const *)cs->dev, "%s: channel not properly cleared (%p/%d)\n",
             "do_connect_req", bcs->ap, bcs->apconnstate);
  } else {
  }
  ap->bcnext = (struct gigaset_capi_appl *)0;
  bcs->ap = (void *)ap;
  bcs->apconnstate = 1;
  spin_unlock_irqrestore(& bcs->aplock, flags);
  bcs->rx_bufsize = ap->rp.datablklen;
  consume_skb(bcs->rx_skb);
  gigaset_new_rx_skb(bcs);
  cmsg->adr.adrPLCI = cmsg->adr.adrPLCI | (__u32 )((bcs->channel + 1) << 8);
  tmp___1 = kzalloc(56UL, 208U);
  commands = (char **)tmp___1;
  if ((unsigned long )commands == (unsigned long )((char **)0)) {
    goto oom;
  } else {
  }
  pp = cmsg->CalledPartyNumber;
  if ((unsigned long )pp == (unsigned long )((u8 *)0U) || (unsigned int )*pp == 0U) {
    dev_notice((struct device const *)cs->dev, "%s: %s missing\n", (char *)"CONNECT_REQ",
               (char *)"Called party number");
    info = 8199U;
    goto error;
  } else {
  }
  tmp___2 = pp;
  pp = pp + 1;
  l = (int )*tmp___2;
  switch ((int )*pp) {
  case 128: ;
  case 129: ;
  goto ldv_45839;
  default:
  dev_notice((struct device const *)cs->dev, "%s: %s type/plan 0x%02x unsupported\n",
             (char *)"CONNECT_REQ", (char *)"Called party number", (int )*pp);
  }
  ldv_45839:
  pp = pp + 1;
  l = l - 1;
  if ((l > 1 && (unsigned int )*pp == 42U) && (unsigned int )*(pp + 1UL) == 42U) {
    s = (char *)"^SCTP=0\r";
    pp = pp + 2UL;
    l = l + -2;
  } else {
    s = (char *)"^SCTP=1\r";
  }
  *(commands + 5UL) = kstrdup((char const *)s, 208U);
  if ((unsigned long )*(commands + 5UL) == (unsigned long )((char *)0)) {
    goto oom;
  } else {
  }
  tmp___3 = kmalloc((size_t )(l + 3), 208U);
  *(commands + 1UL) = (char *)tmp___3;
  if ((unsigned long )*(commands + 1UL) == (unsigned long )((char *)0)) {
    goto oom;
  } else {
  }
  snprintf(*(commands + 1UL), (size_t )(l + 3), "D%.*s\r", l, pp);
  pp = cmsg->CallingPartyNumber;
  if ((unsigned long )pp != (unsigned long )((u8 *)0U) && (unsigned int )*pp != 0U) {
    tmp___4 = pp;
    pp = pp + 1;
    l = (int )*tmp___4;
    switch ((int )*pp) {
    case 0: ;
    case 1: ;
    goto ldv_45843;
    default:
    dev_notice((struct device const *)cs->dev, "%s: %s type/plan 0x%02x unsupported\n",
               (char *)"CONNECT_REQ", (char *)"Calling party number", (int )*pp);
    }
    ldv_45843:
    pp = pp + 1;
    l = l - 1;
    if (l == 0) {
      dev_notice((struct device const *)cs->dev, "%s: %s IE truncated\n", (char *)"CONNECT_REQ",
                 (char *)"Calling party number");
      info = 8199U;
      goto error;
    } else {
    }
    switch ((int )*pp & 252) {
    case 128:
    s = (char *)"^SCLIP=1\r";
    goto ldv_45846;
    case 160:
    s = (char *)"^SCLIP=0\r";
    goto ldv_45846;
    default:
    dev_notice((struct device const *)cs->dev, "%s: invalid %s 0x%02x\n", (char *)"CONNECT_REQ",
               (char *)"Presentation/Screening indicator", (int )*pp);
    s = (char *)"^SCLIP=1\r";
    }
    ldv_45846:
    *(commands + 6UL) = kstrdup((char const *)s, 208U);
    if ((unsigned long )*(commands + 6UL) == (unsigned long )((char *)0)) {
      goto oom;
    } else {
    }
    pp = pp + 1;
    l = l - 1;
    if (l != 0) {
      tmp___5 = kmalloc((size_t )(l + 8), 208U);
      *(commands + 2UL) = (char *)tmp___5;
      if ((unsigned long )*(commands + 2UL) == (unsigned long )((char *)0)) {
        goto oom;
      } else {
      }
      snprintf(*(commands + 2UL), (size_t )(l + 8), "^SMSN=%*s\r", l, pp);
    } else {
    }
  } else {
  }
  if ((unsigned int )cmsg->CIPValue > 28U || ((unsigned int )cmsg->CIPValue != 0U && (unsigned long )cip2bchlc[(int )cmsg->CIPValue].bc == (unsigned long )((u8 *)0U))) {
    dev_notice((struct device const *)cs->dev, "%s: unknown CIP value %d\n", (char *)"CONNECT_REQ",
               (int )cmsg->CIPValue);
    info = 12297U;
    goto error;
  } else {
  }
  if ((unsigned long )cmsg->BC != (unsigned long )((_cstruct )0U) && (unsigned int )*(cmsg->BC) != 0U) {
    lbc = (int )*(cmsg->BC) * 2;
  } else
  if ((unsigned long )cip2bchlc[(int )cmsg->CIPValue].bc != (unsigned long )((u8 *)0U)) {
    tmp___6 = strlen((char const *)cip2bchlc[(int )cmsg->CIPValue].bc);
    lbc = (int )tmp___6;
  } else {
    lbc = 0;
  }
  if ((unsigned long )cmsg->HLC != (unsigned long )((_cstruct )0U) && (unsigned int )*(cmsg->HLC) != 0U) {
    lhlc = (int )*(cmsg->HLC) * 2;
  } else
  if ((unsigned long )cip2bchlc[(int )cmsg->CIPValue].hlc != (unsigned long )((u8 *)0U)) {
    tmp___7 = strlen((char const *)cip2bchlc[(int )cmsg->CIPValue].hlc);
    lhlc = (int )tmp___7;
  } else {
    lhlc = 0;
  }
  if (lbc != 0) {
    l = lbc + 7;
    if (lhlc != 0) {
      l = (lhlc + 7) + l;
    } else {
    }
    tmp___8 = kmalloc((size_t )l, 208U);
    *(commands + 3UL) = (char *)tmp___8;
    if ((unsigned long )*(commands + 3UL) == (unsigned long )((char *)0)) {
      goto oom;
    } else {
    }
    strcpy(*(commands + 3UL), "^SBC=");
    if ((unsigned long )cmsg->BC != (unsigned long )((_cstruct )0U) && (unsigned int )*(cmsg->BC) != 0U) {
      decode_ie(cmsg->BC, *(commands + 3UL) + 5UL);
    } else {
      strcpy(*(commands + 3UL) + 5UL, (char const *)cip2bchlc[(int )cmsg->CIPValue].bc);
    }
    if (lhlc != 0) {
      strcpy(*(commands + 3UL) + ((unsigned long )lbc + 5UL), ";^SHLC=");
      if ((unsigned long )cmsg->HLC != (unsigned long )((_cstruct )0U) && (unsigned int )*(cmsg->HLC) != 0U) {
        decode_ie(cmsg->HLC, *(commands + 3UL) + ((unsigned long )lbc + 12UL));
      } else {
        strcpy(*(commands + 3UL) + ((unsigned long )lbc + 12UL), (char const *)cip2bchlc[(int )cmsg->CIPValue].hlc);
      }
    } else {
    }
    strcpy(*(commands + 3UL) + ((unsigned long )l + 0xfffffffffffffffeUL), "\r");
  } else
  if (lhlc != 0) {
    dev_notice((struct device const *)cs->dev, "%s: cannot set HLC without BC\n",
               (char *)"CONNECT_REQ");
    info = 8199U;
    goto error;
  } else {
  }
  if ((unsigned int )cmsg->BProtocol == 1U) {
    bcs->proto2 = 1U;
    dev_warn((struct device const *)cs->dev, "B2 Protocol X.75 SLP unsupported, using Transparent\n");
  } else {
    switch ((int )cmsg->B1protocol) {
    case 0:
    bcs->proto2 = 1U;
    goto ldv_45852;
    case 1:
    bcs->proto2 = 2U;
    goto ldv_45852;
    default:
    dev_warn((struct device const *)cs->dev, "B1 Protocol %u unsupported, using Transparent\n",
             (int )cmsg->B1protocol);
    bcs->proto2 = 2U;
    }
    ldv_45852: ;
    if ((unsigned int )cmsg->B2protocol != 1U) {
      dev_warn((struct device const *)cs->dev, "B2 Protocol %u unsupported, using Transparent\n",
               (int )cmsg->B2protocol);
    } else {
    }
    if ((unsigned int )cmsg->B3protocol != 0U) {
      dev_warn((struct device const *)cs->dev, "B3 Protocol %u unsupported, using Transparent\n",
               (int )cmsg->B3protocol);
    } else {
    }
    ignore_cstruct_param(cs, cmsg->B1configuration, (char *)"CONNECT_REQ", (char *)"B1 Configuration");
    ignore_cstruct_param(cs, cmsg->B2configuration, (char *)"CONNECT_REQ", (char *)"B2 Configuration");
    ignore_cstruct_param(cs, cmsg->B3configuration, (char *)"CONNECT_REQ", (char *)"B3 Configuration");
  }
  tmp___9 = kmalloc(9UL, 208U);
  *(commands + 4UL) = (char *)tmp___9;
  if ((unsigned long )*(commands + 4UL) == (unsigned long )((char *)0)) {
    goto oom;
  } else {
  }
  snprintf(*(commands + 4UL), 9UL, "^SBPR=%u\r", bcs->proto2);
  ignore_cstruct_param(cs, cmsg->CalledPartySubaddress, (char *)"CONNECT_REQ", (char *)"Called pty subaddr");
  ignore_cstruct_param(cs, cmsg->CallingPartySubaddress, (char *)"CONNECT_REQ", (char *)"Calling pty subaddr");
  ignore_cstruct_param(cs, cmsg->LLC, (char *)"CONNECT_REQ", (char *)"LLC");
  if ((unsigned int )cmsg->AdditionalInfo != 1U) {
    ignore_cstruct_param(cs, cmsg->BChannelinformation, (char *)"CONNECT_REQ", (char *)"B Channel Information");
    ignore_cstruct_param(cs, cmsg->Keypadfacility, (char *)"CONNECT_REQ", (char *)"Keypad Facility");
    ignore_cstruct_param(cs, cmsg->Useruserdata, (char *)"CONNECT_REQ", (char *)"User-User Data");
    ignore_cstruct_param(cs, cmsg->Facilitydataarray, (char *)"CONNECT_REQ", (char *)"Facility Data Array");
  } else {
  }
  tmp___10 = kmalloc(9UL, 208U);
  *commands = (char *)tmp___10;
  if ((unsigned long )*commands == (unsigned long )((char *)0)) {
    goto oom;
  } else {
  }
  snprintf(*commands, 9UL, "^SISO=%u\r", (unsigned int )bcs->channel + 1U);
  tmp___11 = gigaset_add_event(cs, & bcs->at_state, -115, (void *)commands, (int )bcs->at_state.seq_index,
                               (void *)0);
  if ((unsigned long )tmp___11 == (unsigned long )((struct event_t *)0)) {
    info = 4360U;
    goto error;
  } else {
  }
  gigaset_schedule_event(cs);
  send_conf(iif, ap, skb, 0);
  return;
  oom:
  dev_err((struct device const *)cs->dev, "%s: out of memory\n", "do_connect_req");
  info = 4360U;
  error: ;
  if ((unsigned long )commands != (unsigned long )((char **)0)) {
    i = 0;
    goto ldv_45856;
    ldv_45855:
    kfree((void const *)*(commands + (unsigned long )i));
    i = i + 1;
    ldv_45856: ;
    if (i <= 6) {
      goto ldv_45855;
    } else {
    }
  } else {
  }
  kfree((void const *)commands);
  gigaset_free_channel(bcs);
  send_conf(iif, ap, skb, (int )info);
  return;
}
}
static void do_connect_resp(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                            struct sk_buff *skb )
{
  struct cardstate *cs ;
  _cmsg *cmsg ;
  struct bc_state *bcs ;
  struct gigaset_capi_appl *oap ;
  unsigned long flags ;
  int channel ;
  unsigned int tmp ;
  raw_spinlock_t *tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct event_t *tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  raw_spinlock_t *tmp___5 ;
  struct event_t *tmp___6 ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  cmsg = & iif->acmsg;
  tmp = capi_message2cmsg(cmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_connect_resp");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_connect_resp", cmsg);
  dev_kfree_skb_any(skb);
  channel = (int )(cmsg->adr.adrPLCI >> 8) & 255;
  if (channel == 0 || cs->channels < channel) {
    dev_notice((struct device const *)cs->dev, "%s: invalid %s 0x%02x\n", (char *)"CONNECT_RESP",
               (char *)"PLCI", cmsg->adr.adrPLCI);
    return;
  } else {
  }
  bcs = cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL);
  switch ((int )cmsg->Reject) {
  case 0:
  tmp___0 = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  goto ldv_45878;
  ldv_45877:
  oap = (struct gigaset_capi_appl *)bcs->ap;
  bcs->ap = (void *)oap->bcnext;
  if ((unsigned long )oap != (unsigned long )ap) {
    spin_unlock_irqrestore(& bcs->aplock, flags);
    send_disconnect_ind(bcs, oap, 13060);
    tmp___1 = spinlock_check(& bcs->aplock);
    flags = _raw_spin_lock_irqsave(tmp___1);
  } else {
  }
  ldv_45878: ;
  if ((unsigned long )bcs->ap != (unsigned long )((void *)0)) {
    goto ldv_45877;
  } else {
  }
  ap->bcnext = (struct gigaset_capi_appl *)0;
  bcs->ap = (void *)ap;
  spin_unlock_irqrestore(& bcs->aplock, flags);
  bcs->rx_bufsize = ap->rp.datablklen;
  consume_skb(bcs->rx_skb);
  gigaset_new_rx_skb(bcs);
  bcs->chstate = bcs->chstate | 4U;
  if ((unsigned int )cmsg->BProtocol == 1U) {
    bcs->proto2 = 1U;
    dev_warn((struct device const *)cs->dev, "B2 Protocol X.75 SLP unsupported, using Transparent\n");
  } else {
    switch ((int )cmsg->B1protocol) {
    case 0:
    bcs->proto2 = 1U;
    goto ldv_45881;
    case 1:
    bcs->proto2 = 2U;
    goto ldv_45881;
    default:
    dev_warn((struct device const *)cs->dev, "B1 Protocol %u unsupported, using Transparent\n",
             (int )cmsg->B1protocol);
    bcs->proto2 = 2U;
    }
    ldv_45881: ;
    if ((unsigned int )cmsg->B2protocol != 1U) {
      dev_warn((struct device const *)cs->dev, "B2 Protocol %u unsupported, using Transparent\n",
               (int )cmsg->B2protocol);
    } else {
    }
    if ((unsigned int )cmsg->B3protocol != 0U) {
      dev_warn((struct device const *)cs->dev, "B3 Protocol %u unsupported, using Transparent\n",
               (int )cmsg->B3protocol);
    } else {
    }
    ignore_cstruct_param(cs, cmsg->B1configuration, (char *)"CONNECT_RESP", (char *)"B1 Configuration");
    ignore_cstruct_param(cs, cmsg->B2configuration, (char *)"CONNECT_RESP", (char *)"B2 Configuration");
    ignore_cstruct_param(cs, cmsg->B3configuration, (char *)"CONNECT_RESP", (char *)"B3 Configuration");
  }
  ignore_cstruct_param(cs, cmsg->ConnectedNumber, (char *)"CONNECT_RESP", (char *)"Connected Number");
  ignore_cstruct_param(cs, cmsg->ConnectedSubaddress, (char *)"CONNECT_RESP", (char *)"Connected Subaddress");
  ignore_cstruct_param(cs, cmsg->LLC, (char *)"CONNECT_RESP", (char *)"LLC");
  if ((unsigned int )cmsg->AdditionalInfo != 1U) {
    ignore_cstruct_param(cs, cmsg->BChannelinformation, (char *)"CONNECT_RESP", (char *)"BChannel Information");
    ignore_cstruct_param(cs, cmsg->Keypadfacility, (char *)"CONNECT_RESP", (char *)"Keypad Facility");
    ignore_cstruct_param(cs, cmsg->Useruserdata, (char *)"CONNECT_RESP", (char *)"User-User Data");
    ignore_cstruct_param(cs, cmsg->Facilitydataarray, (char *)"CONNECT_RESP", (char *)"Facility Data Array");
  } else {
  }
  tmp___2 = gigaset_add_event(cs, & (cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL))->at_state,
                              -114, (void *)0, 0, (void *)0);
  if ((unsigned long )tmp___2 == (unsigned long )((struct event_t *)0)) {
    return;
  } else {
  }
  gigaset_schedule_event(cs);
  return;
  case 1:
  send_disconnect_ind(bcs, ap, 0);
  tmp___3 = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  if ((unsigned long )bcs->ap == (unsigned long )((void *)ap)) {
    bcs->ap = (void *)ap->bcnext;
    if ((unsigned long )bcs->ap == (unsigned long )((void *)0)) {
      bcs->apconnstate = 0;
      bcs->chstate = bcs->chstate & 4294967291U;
    } else {
    }
    spin_unlock_irqrestore(& bcs->aplock, flags);
    return;
  } else {
  }
  oap = (struct gigaset_capi_appl *)bcs->ap;
  goto ldv_45889;
  ldv_45888: ;
  if ((unsigned long )oap->bcnext == (unsigned long )ap) {
    oap->bcnext = (oap->bcnext)->bcnext;
    spin_unlock_irqrestore(& bcs->aplock, flags);
    return;
  } else {
  }
  oap = oap->bcnext;
  ldv_45889: ;
  if ((unsigned long )oap != (unsigned long )((struct gigaset_capi_appl *)0)) {
    goto ldv_45888;
  } else {
  }
  spin_unlock_irqrestore(& bcs->aplock, flags);
  dev_err((struct device const *)cs->dev, "%s: application %u not found\n", "do_connect_resp",
          (int )ap->id);
  return;
  default:
  tmp___4 = spinlock_check(& bcs->aplock);
  flags = _raw_spin_lock_irqsave(tmp___4);
  goto ldv_45899;
  ldv_45898:
  oap = (struct gigaset_capi_appl *)bcs->ap;
  bcs->ap = (void *)oap->bcnext;
  if ((unsigned long )oap != (unsigned long )ap) {
    spin_unlock_irqrestore(& bcs->aplock, flags);
    send_disconnect_ind(bcs, oap, 13060);
    tmp___5 = spinlock_check(& bcs->aplock);
    flags = _raw_spin_lock_irqsave(tmp___5);
  } else {
  }
  ldv_45899: ;
  if ((unsigned long )bcs->ap != (unsigned long )((void *)0)) {
    goto ldv_45898;
  } else {
  }
  ap->bcnext = (struct gigaset_capi_appl *)0;
  bcs->ap = (void *)ap;
  spin_unlock_irqrestore(& bcs->aplock, flags);
  _dev_info((struct device const *)cs->dev, "%s: Reject=%x\n", (char *)"CONNECT_RESP",
            (int )cmsg->Reject);
  tmp___6 = gigaset_add_event(cs, & (cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL))->at_state,
                              -116, (void *)0, 0, (void *)0);
  if ((unsigned long )tmp___6 == (unsigned long )((struct event_t *)0)) {
    return;
  } else {
  }
  gigaset_schedule_event(cs);
  return;
  }
}
}
static void do_connect_b3_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                              struct sk_buff *skb )
{
  struct cardstate *cs ;
  _cmsg *cmsg ;
  struct bc_state *bcs ;
  int channel ;
  unsigned int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  cmsg = & iif->acmsg;
  tmp = capi_message2cmsg(cmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_connect_b3_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_connect_b3_req", cmsg);
  channel = (int )(cmsg->adr.adrPLCI >> 8) & 255;
  if (channel == 0 || cs->channels < channel) {
    dev_notice((struct device const *)cs->dev, "%s: invalid %s 0x%02x\n", (char *)"CONNECT_B3_REQ",
               (char *)"PLCI", cmsg->adr.adrPLCI);
    send_conf(iif, ap, skb, 8194);
    return;
  } else {
  }
  bcs = cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL);
  bcs->apconnstate = 2;
  cmsg->adr.adrNCCI = cmsg->adr.adrNCCI | 65536U;
  ignore_cstruct_param(cs, cmsg->NCPI, (char *)"CONNECT_B3_REQ", (char *)"NCPI");
  send_conf(iif, ap, skb, (int )((u16 )((unsigned long )cmsg->NCPI != (unsigned long )((_cstruct )0U) && (unsigned int )*(cmsg->NCPI) != 0U)));
  return;
}
}
static void do_connect_b3_resp(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                               struct sk_buff *skb )
{
  struct cardstate *cs ;
  _cmsg *cmsg ;
  struct bc_state *bcs ;
  int channel ;
  unsigned int msgsize ;
  u8 command ;
  unsigned int tmp ;
  struct event_t *tmp___0 ;
  u16 tmp___1 ;
  unsigned int tmp___2 ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  cmsg = & iif->acmsg;
  tmp = capi_message2cmsg(cmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_connect_b3_resp");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_connect_b3_resp", cmsg);
  channel = (int )(cmsg->adr.adrNCCI >> 8) & 255;
  if ((channel == 0 || cs->channels < channel) || cmsg->adr.adrNCCI >> 16 != 1U) {
    dev_notice((struct device const *)cs->dev, "%s: invalid %s 0x%02x\n", (char *)"CONNECT_B3_RESP",
               (char *)"NCCI", cmsg->adr.adrNCCI);
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  bcs = cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL);
  if ((unsigned int )cmsg->Reject != 0U) {
    bcs->apconnstate = 1;
    tmp___0 = gigaset_add_event(cs, & bcs->at_state, -116, (void *)0, 0, (void *)0);
    if ((unsigned long )tmp___0 == (unsigned long )((struct event_t *)0)) {
      dev_kfree_skb_any(skb);
      return;
    } else {
    }
    gigaset_schedule_event(cs);
    command = 132U;
    msgsize = 15U;
  } else {
    command = 131U;
    msgsize = 13U;
  }
  tmp___1 = ap->nextMessageNumber;
  ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
  capi_cmsg_header(cmsg, (int )ap->id, (int )command, 130, (int )tmp___1, cmsg->adr.adrNCCI);
  __skb_trim(skb, msgsize);
  tmp___2 = capi_cmsg2message(cmsg, skb->data);
  if (tmp___2 != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_connect_b3_resp");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_connect_b3_resp", cmsg);
  capi_ctr_handle_message(& iif->ctr, (int )ap->id, skb);
  return;
}
}
static void do_disconnect_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                              struct sk_buff *skb )
{
  struct cardstate *cs ;
  _cmsg *cmsg ;
  struct bc_state *bcs ;
  _cmsg *b3cmsg ;
  struct sk_buff *b3skb ;
  int channel ;
  unsigned int tmp ;
  void *tmp___0 ;
  u16 tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned int tmp___3 ;
  struct event_t *tmp___4 ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  cmsg = & iif->acmsg;
  tmp = capi_message2cmsg(cmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_disconnect_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_disconnect_req", cmsg);
  channel = (int )(cmsg->adr.adrPLCI >> 8) & 255;
  if (channel == 0 || cs->channels < channel) {
    dev_notice((struct device const *)cs->dev, "%s: invalid %s 0x%02x\n", (char *)"DISCONNECT_REQ",
               (char *)"PLCI", cmsg->adr.adrPLCI);
    send_conf(iif, ap, skb, 8194);
    return;
  } else {
  }
  bcs = cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL);
  if ((unsigned int )cmsg->AdditionalInfo != 1U) {
    ignore_cstruct_param(cs, cmsg->BChannelinformation, (char *)"DISCONNECT_REQ",
                         (char *)"B Channel Information");
    ignore_cstruct_param(cs, cmsg->Keypadfacility, (char *)"DISCONNECT_REQ", (char *)"Keypad Facility");
    ignore_cstruct_param(cs, cmsg->Useruserdata, (char *)"DISCONNECT_REQ", (char *)"User-User Data");
    ignore_cstruct_param(cs, cmsg->Facilitydataarray, (char *)"DISCONNECT_REQ", (char *)"Facility Data Array");
  } else {
  }
  if (bcs->apconnstate == 0) {
    return;
  } else {
  }
  if (bcs->apconnstate > 1) {
    bcs->apconnstate = 1;
    tmp___0 = kmalloc(496UL, 208U);
    b3cmsg = (_cmsg *)tmp___0;
    if ((unsigned long )b3cmsg == (unsigned long )((_cmsg *)0)) {
      dev_err((struct device const *)cs->dev, "%s: out of memory\n", "do_disconnect_req");
      send_conf(iif, ap, skb, 4360);
      return;
    } else {
    }
    tmp___1 = ap->nextMessageNumber;
    ap->nextMessageNumber = (u16 )((int )ap->nextMessageNumber + 1);
    capi_cmsg_header(b3cmsg, (int )ap->id, 132, 130, (int )tmp___1, cmsg->adr.adrPLCI | 65536U);
    b3cmsg->Reason_B3 = 13057U;
    b3skb = alloc_skb(15U, 208U);
    if ((unsigned long )b3skb == (unsigned long )((struct sk_buff *)0)) {
      dev_err((struct device const *)cs->dev, "%s: out of memory\n", "do_disconnect_req");
      send_conf(iif, ap, skb, 4360);
      kfree((void const *)b3cmsg);
      return;
    } else {
    }
    tmp___2 = __skb_put(b3skb, 15U);
    tmp___3 = capi_cmsg2message(b3cmsg, tmp___2);
    if (tmp___3 != 0U) {
      dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_disconnect_req");
      kfree((void const *)b3cmsg);
      dev_kfree_skb_any(b3skb);
      return;
    } else {
    }
    dump_cmsg(32, "do_disconnect_req", b3cmsg);
    kfree((void const *)b3cmsg);
    capi_ctr_handle_message(& iif->ctr, (int )ap->id, b3skb);
  } else {
  }
  tmp___4 = gigaset_add_event(cs, & bcs->at_state, -116, (void *)0, 0, (void *)0);
  if ((unsigned long )tmp___4 == (unsigned long )((struct event_t *)0)) {
    send_conf(iif, ap, skb, 4360);
    return;
  } else {
  }
  gigaset_schedule_event(cs);
  send_conf(iif, ap, skb, 0);
  return;
}
}
static void do_disconnect_b3_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                                 struct sk_buff *skb )
{
  struct cardstate *cs ;
  _cmsg *cmsg ;
  struct bc_state *bcs ;
  int channel ;
  unsigned int tmp ;
  struct event_t *tmp___0 ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  cmsg = & iif->acmsg;
  tmp = capi_message2cmsg(cmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_disconnect_b3_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_disconnect_b3_req", cmsg);
  channel = (int )(cmsg->adr.adrNCCI >> 8) & 255;
  if ((channel == 0 || cs->channels < channel) || cmsg->adr.adrNCCI >> 16 != 1U) {
    dev_notice((struct device const *)cs->dev, "%s: invalid %s 0x%02x\n", (char *)"DISCONNECT_B3_REQ",
               (char *)"NCCI", cmsg->adr.adrNCCI);
    send_conf(iif, ap, skb, 8194);
    return;
  } else {
  }
  bcs = cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL);
  if (bcs->apconnstate <= 1) {
    send_conf(iif, ap, skb, 8193);
    return;
  } else {
  }
  tmp___0 = gigaset_add_event(cs, & bcs->at_state, -116, (void *)0, 0, (void *)0);
  if ((unsigned long )tmp___0 == (unsigned long )((struct event_t *)0)) {
    send_conf(iif, ap, skb, 4360);
    return;
  } else {
  }
  gigaset_schedule_event(cs);
  ignore_cstruct_param(cs, cmsg->NCPI, (char *)"DISCONNECT_B3_REQ", (char *)"NCPI");
  send_conf(iif, ap, skb, (int )((u16 )((unsigned long )cmsg->NCPI != (unsigned long )((_cstruct )0U) && (unsigned int )*(cmsg->NCPI) != 0U)));
  return;
}
}
static void do_data_b3_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                           struct sk_buff *skb )
{
  struct cardstate *cs ;
  struct bc_state *bcs ;
  int channel ;
  u16 ncci ;
  u16 msglen ;
  u16 datalen ;
  u16 flags ;
  u16 msgid ;
  u16 handle ;
  int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  channel = (int )*(skb->data + 9UL);
  ncci = (u16 )((int )((short )*(skb->data + 10UL)) | (int )((short )((int )*(skb->data + 11UL) << 8)));
  msglen = (u16 )((int )((short )*(skb->data)) | (int )((short )((int )*(skb->data + 1UL) << 8)));
  datalen = (u16 )((int )((short )*(skb->data + 16UL)) | (int )((short )((int )*(skb->data + 17UL) << 8)));
  flags = (u16 )((int )((short )*(skb->data + 20UL)) | (int )((short )((int )*(skb->data + 21UL) << 8)));
  msgid = (u16 )((int )((short )*(skb->data + 6UL)) | (int )((short )((int )*(skb->data + 7UL) << 8)));
  handle = (u16 )((int )((short )*(skb->data + 18UL)) | (int )((short )((int )*(skb->data + 19UL) << 8)));
  dump_rawmsg(16384, "do_data_b3_req", skb->data);
  if ((channel == 0 || cs->channels < channel) || (unsigned int )ncci != 1U) {
    dev_notice((struct device const *)cs->dev, "%s: invalid %s 0x%02x\n", (char *)"DATA_B3_REQ",
               (char *)"NCCI", (((int )*(skb->data + 8UL) | ((int )*(skb->data + 9UL) << 8)) | ((int )*(skb->data + 10UL) << 16)) | ((int )*(skb->data + 11UL) << 24));
    send_conf(iif, ap, skb, 8194);
    return;
  } else {
  }
  bcs = cs->bcs + ((unsigned long )channel + 0xffffffffffffffffUL);
  if ((unsigned int )msglen != 22U && (unsigned int )msglen != 30U) {
    dev_notice((struct device const *)cs->dev, "%s: unexpected length %d\n", (char *)"DATA_B3_REQ",
               (int )msglen);
  } else {
  }
  if ((unsigned int )((int )msglen + (int )datalen) != skb->len) {
    dev_notice((struct device const *)cs->dev, "%s: length mismatch (%d+%d!=%d)\n",
               (char *)"DATA_B3_REQ", (int )msglen, (int )datalen, skb->len);
  } else {
  }
  if ((unsigned int )((int )msglen + (int )datalen) > skb->len) {
    send_conf(iif, ap, skb, 8199);
    return;
  } else {
  }
  if (((int )flags & -32) != 0) {
    dev_notice((struct device const *)cs->dev, "%s: reserved flags set (%x)\n",
               (char *)"DATA_B3_REQ", (int )flags);
    send_conf(iif, ap, skb, 8199);
    return;
  } else {
  }
  if (bcs->apconnstate <= 1) {
    send_conf(iif, ap, skb, 8193);
    return;
  } else {
  }
  skb_reset_mac_header(skb);
  skb->mac_len = msglen;
  skb_pull(skb, (unsigned int )msglen);
  tmp = (*((cs->ops)->send_skb))(bcs, skb);
  if (tmp < 0) {
    send_conf(iif, ap, skb, 4360);
    return;
  } else {
  }
  if (((int )flags & 4) == 0) {
    send_data_b3_conf(cs, & iif->ctr, (int )ap->id, (int )msgid, channel, (int )handle,
                      (unsigned int )flags != 0U ? 2 : 0);
  } else {
  }
  return;
}
}
static void do_reset_b3_req(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                            struct sk_buff *skb )
{
  struct cardstate *cs ;
  unsigned int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  tmp = capi_message2cmsg(& iif->acmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_reset_b3_req");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_reset_b3_req", & iif->acmsg);
  send_conf(iif, ap, skb, 12301);
  return;
}
}
static void do_unsupported(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                           struct sk_buff *skb )
{
  struct cardstate *cs ;
  unsigned int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  tmp = capi_message2cmsg(& iif->acmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_unsupported");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_unsupported", & iif->acmsg);
  send_conf(iif, ap, skb, 8193);
  return;
}
}
static void do_nothing(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                       struct sk_buff *skb )
{
  struct cardstate *cs ;
  unsigned int tmp ;
  {
  cs = (struct cardstate *)iif->ctr.driverdata;
  tmp = capi_message2cmsg(& iif->acmsg, skb->data);
  if (tmp != 0U) {
    dev_err((struct device const *)cs->dev, "%s: message parser failure\n", "do_nothing");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  dump_cmsg(32, "do_nothing", & iif->acmsg);
  dev_kfree_skb_any(skb);
  return;
}
}
static void do_data_b3_resp(struct gigaset_capi_ctr *iif , struct gigaset_capi_appl *ap ,
                            struct sk_buff *skb )
{
  {
  dump_rawmsg(16384, "do_data_b3_resp", skb->data);
  dev_kfree_skb_any(skb);
  return;
}
}
static struct __anonstruct_capi_send_handler_table_332 capi_send_handler_table[24U] =
  { {34432U, & do_data_b3_req},
        {34435U, & do_data_b3_resp},
        {384U, & do_alert_req},
        {899U, & do_nothing},
        {33667U, & do_nothing},
        {33408U, & do_connect_b3_req},
        {33411U, & do_connect_b3_resp},
        {34947U, & do_nothing},
        {640U, & do_connect_req},
        {643U, & do_connect_resp},
        {33920U, & do_disconnect_b3_req},
        {33923U, & do_nothing},
        {1152U, & do_disconnect_req},
        {1155U, & do_nothing},
        {32896U, & do_facility_req},
        {32899U, & do_nothing},
        {1408U, & do_listen_req},
        {16768U, & do_unsupported},
        {34688U, & do_reset_b3_req},
        {34691U, & do_nothing},
        {2176U, & do_unsupported},
        {2179U, & do_nothing},
        {65408U, & do_nothing},
        {65411U, & do_nothing}};
__inline static capi_send_handler_t lookup_capi_send_handler(u16 const cmd )
{
  size_t i ;
  {
  i = 0UL;
  goto ldv_46002;
  ldv_46001: ;
  if ((int )capi_send_handler_table[i].cmd == (int )((unsigned short )cmd)) {
    return (capi_send_handler_table[i].handler);
  } else {
  }
  i = i + 1UL;
  ldv_46002: ;
  if (i <= 23UL) {
    goto ldv_46001;
  } else {
  }
  return ((void (*)(struct gigaset_capi_ctr * , struct gigaset_capi_appl * , struct sk_buff * ))0);
}
}
static u16 gigaset_send_message(struct capi_ctr *ctr , struct sk_buff *skb )
{
  struct gigaset_capi_ctr *iif ;
  struct capi_ctr const *__mptr ;
  struct cardstate *cs ;
  struct gigaset_capi_appl *ap ;
  void (*handler)(struct gigaset_capi_ctr * , struct gigaset_capi_appl * , struct sk_buff * ) ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct capi_ctr const *)ctr;
  iif = (struct gigaset_capi_ctr *)__mptr;
  cs = (struct cardstate *)ctr->driverdata;
  tmp = skb_linearize(skb);
  if (tmp < 0) {
    dev_warn((struct device const *)cs->dev, "%s: skb_linearize failed\n", "gigaset_send_message");
    return (4360U);
  } else {
  }
  ap = get_appl(iif, (int )((u16 )((int )((short )*(skb->data + 2UL)) | (int )((short )((int )*(skb->data + 3UL) << 8)))));
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    dev_notice((struct device const *)cs->dev, "%s: application %u not registered\n",
               "gigaset_send_message", (int )*(skb->data + 2UL) | ((int )*(skb->data + 3UL) << 8));
    return (4353U);
  } else {
  }
  handler = lookup_capi_send_handler((int )((u16 const )((int )((short )((int )*(skb->data + 4UL) << 8)) | (int )((short )*(skb->data + 5UL)))));
  if ((unsigned long )handler == (unsigned long )((void (*)(struct gigaset_capi_ctr * ,
                                                            struct gigaset_capi_appl * ,
                                                            struct sk_buff * ))0)) {
    tmp___0 = __printk_ratelimit("gigaset_send_message");
    if (tmp___0 != 0) {
      dev_notice((struct device const *)cs->dev, "%s: unsupported message %u\n",
                 "gigaset_send_message", ((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL));
    } else {
    }
    return (4354U);
  } else {
  }
  tmp___1 = atomic_add_return(1, & iif->sendqlen);
  if (tmp___1 > 1) {
    skb_queue_tail(& iif->sendqueue, skb);
    return (0U);
  } else {
  }
  (*handler)(iif, ap, skb);
  goto ldv_46015;
  ldv_46016:
  skb = skb_dequeue(& iif->sendqueue);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    dev_err((struct device const *)cs->dev, "%s: send queue empty\n", "gigaset_send_message");
    goto ldv_46015;
  } else {
  }
  ap = get_appl(iif, (int )((u16 )((int )((short )*(skb->data + 2UL)) | (int )((short )((int )*(skb->data + 3UL) << 8)))));
  if ((unsigned long )ap == (unsigned long )((struct gigaset_capi_appl *)0)) {
    dev_warn((struct device const *)cs->dev, "%s: application %u vanished\n", "gigaset_send_message",
             (int )*(skb->data + 2UL) | ((int )*(skb->data + 3UL) << 8));
    goto ldv_46015;
  } else {
  }
  handler = lookup_capi_send_handler((int )((u16 const )((int )((short )((int )*(skb->data + 4UL) << 8)) | (int )((short )*(skb->data + 5UL)))));
  if ((unsigned long )handler == (unsigned long )((void (*)(struct gigaset_capi_ctr * ,
                                                            struct gigaset_capi_appl * ,
                                                            struct sk_buff * ))0)) {
    dev_err((struct device const *)cs->dev, "%s: handler %x vanished\n", "gigaset_send_message",
            ((int )*(skb->data + 4UL) << 8) | (int )*(skb->data + 5UL));
    goto ldv_46015;
  } else {
  }
  (*handler)(iif, ap, skb);
  ldv_46015:
  tmp___2 = atomic_sub_return(1, & iif->sendqlen);
  if (tmp___2 > 0) {
    goto ldv_46016;
  } else {
  }
  return (0U);
}
}
static char *gigaset_procinfo(struct capi_ctr *ctr )
{
  {
  return ((char *)(& ctr->name));
}
}
static int gigaset_proc_show(struct seq_file *m , void *v )
{
  struct capi_ctr *ctr ;
  struct cardstate *cs ;
  char *s ;
  int i ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  ctr = (struct capi_ctr *)m->private;
  cs = (struct cardstate *)ctr->driverdata;
  seq_printf(m, "%-16s %s\n", (char *)"name", (char *)(& ctr->name));
  tmp = dev_name((struct device const *)cs->dev);
  tmp___0 = dev_driver_string((struct device const *)cs->dev);
  seq_printf(m, "%-16s %s %s\n", (char *)"dev", tmp___0, tmp);
  seq_printf(m, "%-16s %d\n", (char *)"id", cs->myid);
  if (cs->gotfwver != 0) {
    seq_printf(m, "%-16s %d.%d.%d.%d\n", (char *)"firmware", cs->fwver[0], cs->fwver[1],
               cs->fwver[2], cs->fwver[3]);
  } else {
  }
  seq_printf(m, "%-16s %d\n", (char *)"channels", cs->channels);
  seq_printf(m, "%-16s %s\n", (char *)"onechannel", cs->onechannel != 0 ? (char *)"yes" : (char *)"no");
  switch (cs->mode) {
  case 0:
  s = (char *)"unknown";
  goto ldv_46030;
  case 1:
  s = (char *)"config";
  goto ldv_46030;
  case 2:
  s = (char *)"Unimodem";
  goto ldv_46030;
  case 3:
  s = (char *)"CID";
  goto ldv_46030;
  default:
  s = (char *)"??";
  }
  ldv_46030:
  seq_printf(m, "%-16s %s\n", (char *)"mode", s);
  switch (cs->mstate) {
  case 0:
  s = (char *)"uninitialized";
  goto ldv_46036;
  case 1:
  s = (char *)"init";
  goto ldv_46036;
  case 2:
  s = (char *)"locked";
  goto ldv_46036;
  case 3:
  s = (char *)"shutdown";
  goto ldv_46036;
  case 4:
  s = (char *)"recover";
  goto ldv_46036;
  case 5:
  s = (char *)"ready";
  goto ldv_46036;
  default:
  s = (char *)"??";
  }
  ldv_46036:
  seq_printf(m, "%-16s %s\n", (char *)"mstate", s);
  seq_printf(m, "%-16s %s\n", (char *)"running", cs->running != 0U ? (char *)"yes" : (char *)"no");
  seq_printf(m, "%-16s %s\n", (char *)"connected", cs->connected != 0U ? (char *)"yes" : (char *)"no");
  seq_printf(m, "%-16s %s\n", (char *)"isdn_up", cs->isdn_up != 0U ? (char *)"yes" : (char *)"no");
  seq_printf(m, "%-16s %s\n", (char *)"cidmode", cs->cidmode != 0U ? (char *)"yes" : (char *)"no");
  i = 0;
  goto ldv_46049;
  ldv_46048:
  seq_printf(m, "[%d]%-13s %d\n", i, (char *)"corrupted", (cs->bcs + (unsigned long )i)->corrupted);
  seq_printf(m, "[%d]%-13s %d\n", i, (char *)"trans_down", (cs->bcs + (unsigned long )i)->trans_down);
  seq_printf(m, "[%d]%-13s %d\n", i, (char *)"trans_up", (cs->bcs + (unsigned long )i)->trans_up);
  seq_printf(m, "[%d]%-13s %d\n", i, (char *)"chstate", (cs->bcs + (unsigned long )i)->chstate);
  switch ((cs->bcs + (unsigned long )i)->proto2) {
  case 0U:
  s = (char *)"bitsync";
  goto ldv_46044;
  case 1U:
  s = (char *)"HDLC";
  goto ldv_46044;
  case 2U:
  s = (char *)"voice";
  goto ldv_46044;
  default:
  s = (char *)"??";
  }
  ldv_46044:
  seq_printf(m, "[%d]%-13s %s\n", i, (char *)"proto2", s);
  i = i + 1;
  ldv_46049: ;
  if (cs->channels > i) {
    goto ldv_46048;
  } else {
  }
  return (0);
}
}
static int gigaset_proc_open(struct inode *inode , struct file *file )
{
  void *tmp ;
  int tmp___0 ;
  {
  tmp = PDE_DATA((struct inode const *)inode);
  tmp___0 = single_open(file, & gigaset_proc_show, tmp);
  return (tmp___0);
}
}
static struct file_operations const gigaset_proc_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, & gigaset_proc_open,
    0, & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int gigaset_isdn_regdev(struct cardstate *cs , char const *isdnid )
{
  struct gigaset_capi_ctr *iif ;
  int rc ;
  void *tmp ;
  {
  tmp = kzalloc(1712UL, 208U);
  iif = (struct gigaset_capi_ctr *)tmp;
  if ((unsigned long )iif == (unsigned long )((struct gigaset_capi_ctr *)0)) {
    printk("\vgigaset: %s: out of memory\n", "gigaset_isdn_regdev");
    return (-12);
  } else {
  }
  iif->ctr.owner = & __this_module;
  iif->ctr.driverdata = (void *)cs;
  strncpy((char *)(& iif->ctr.name), isdnid, 31UL);
  iif->ctr.driver_name = (char *)"gigaset";
  iif->ctr.load_firmware = (int (*)(struct capi_ctr * , capiloaddata * ))0;
  iif->ctr.reset_ctr = (void (*)(struct capi_ctr * ))0;
  iif->ctr.register_appl = & gigaset_register_appl;
  iif->ctr.release_appl = & gigaset_release_appl;
  iif->ctr.send_message = & gigaset_send_message;
  iif->ctr.procinfo = & gigaset_procinfo;
  iif->ctr.proc_fops = & gigaset_proc_fops;
  INIT_LIST_HEAD(& iif->appls);
  skb_queue_head_init(& iif->sendqueue);
  atomic_set(& iif->sendqlen, 0);
  rc = attach_capi_ctr(& iif->ctr);
  if (rc != 0) {
    printk("\vgigaset: attach_capi_ctr failed (%d)\n", rc);
    kfree((void const *)iif);
    return (rc);
  } else {
  }
  cs->iif = (void *)iif;
  cs->hw_hdr_len = 22U;
  return (0);
}
}
void gigaset_isdn_unregdev(struct cardstate *cs )
{
  struct gigaset_capi_ctr *iif ;
  {
  iif = (struct gigaset_capi_ctr *)cs->iif;
  detach_capi_ctr(& iif->ctr);
  kfree((void const *)iif);
  cs->iif = (void *)0;
  return;
}
}
static struct capi_driver capi_driver_gigaset = {{'g', 'i', 'g', 'a', 's', 'e', 't', '\000'}, {'1', '.', '0', '\000'}, 0, {0, 0}};
void gigaset_isdn_regdrv(void)
{
  {
  printk("\016gigaset: Kernel CAPI interface\n");
  register_capi_driver(& capi_driver_gigaset);
  return;
}
}
void gigaset_isdn_unregdrv(void)
{
  {
  unregister_capi_driver(& capi_driver_gigaset);
  return;
}
}
int ldv_retval_1 ;
void ldv_file_operations_3(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  gigaset_proc_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  gigaset_proc_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_3(void)
{
  size_t ldvarg6 ;
  loff_t *ldvarg5 ;
  void *tmp ;
  int ldvarg3 ;
  loff_t ldvarg4 ;
  char *ldvarg7 ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg5 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg7 = (char *)tmp___0;
  ldv_memset((void *)(& ldvarg6), 0, 8UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  tmp___1 = __VERIFIER_nondet_int();
  switch (tmp___1) {
  case 0: ;
  if (ldv_state_variable_3 == 2) {
    seq_read(gigaset_proc_fops_group2, ldvarg7, ldvarg6, ldvarg5);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_46087;
  case 1: ;
  if (ldv_state_variable_3 == 1) {
    ldv_retval_1 = gigaset_proc_open(gigaset_proc_fops_group1, gigaset_proc_fops_group2);
    if (ldv_retval_1 == 0) {
      ldv_state_variable_3 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_46087;
  case 2: ;
  if (ldv_state_variable_3 == 2) {
    single_release(gigaset_proc_fops_group1, gigaset_proc_fops_group2);
    ldv_state_variable_3 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_46087;
  case 3: ;
  if (ldv_state_variable_3 == 2) {
    seq_lseek(gigaset_proc_fops_group2, ldvarg4, ldvarg3);
    ldv_state_variable_3 = 2;
  } else {
  }
  goto ldv_46087;
  default:
  ldv_stop();
  }
  ldv_46087: ;
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
int ldv_module_refcounter = 1;
void ldv_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_module_refcounter = ldv_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_try_module_get(struct module *module )
{
  int module_get_succeeded ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    module_get_succeeded = ldv_undef_int();
    if (module_get_succeeded == 1) {
      ldv_module_refcounter = ldv_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    if (ldv_module_refcounter <= 1) {
      ldv_error();
    } else {
    }
    ldv_module_refcounter = ldv_module_refcounter - 1;
  } else {
  }
  return;
}
}
void ldv_module_put_and_exit(void)
{
  {
  ldv_module_put((struct module *)1);
  LDV_STOP: ;
  goto LDV_STOP;
}
}
unsigned int ldv_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_module_refcounter + -1));
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_module_refcounter != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void *external_alloc(void);
void *PDE_DATA(const struct inode *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int ___ratelimit(struct ratelimit_state *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *__alloc_skb(unsigned int arg0, gfp_t arg1, int arg2, int arg3) {
  return (struct sk_buff *)external_alloc();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __printk_ratelimit(const char *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return (unsigned char *)external_alloc();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void *external_alloc(void);
struct tty_driver *__tty_alloc_driver(unsigned int arg0, struct module *arg1, unsigned long arg2) {
  return (struct tty_driver *)external_alloc();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
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
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int attach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
char *capi_cmd2str(__u8 arg0, __u8 arg1) {
  return (char *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int capi_cmsg2message(_cmsg *arg0, __u8 *arg1) {
  return __VERIFIER_nondet_uint();
}
void *external_alloc(void);
_cdebbuf *capi_cmsg2str(_cmsg *arg0) {
  return (_cdebbuf *)external_alloc();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int capi_cmsg_header(_cmsg *arg0, __u16 arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u32 arg5) {
  return __VERIFIER_nondet_uint();
}
void capi_ctr_down(struct capi_ctr *arg0) {
  return;
}
void capi_ctr_handle_message(struct capi_ctr *arg0, u16 arg1, struct sk_buff *arg2) {
  return;
}
void capi_ctr_ready(struct capi_ctr *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int capi_message2cmsg(_cmsg *arg0, __u8 *arg1) {
  return __VERIFIER_nondet_uint();
}
void cdebbuf_free(_cdebbuf *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int detach_capi_ctr(struct capi_ctr *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
const char *dev_driver_string(const struct device *arg0) {
  return (const char *)external_alloc();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_notice(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int hex_to_bin(char arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
char *kstrdup(const char *arg0, gfp_t arg1) {
  return (char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int kstrtoint(const char *arg0, unsigned int arg1, int *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtou8(const char *arg0, unsigned int arg1, u8 *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_tty_driver(struct tty_driver *arg0) {
  return;
}
void register_capi_driver(struct capi_driver *arg0) {
  return;
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int simple_strtol(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_release(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct sk_buff *skb_dequeue(struct sk_buff_head *arg0) {
  return (struct sk_buff *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_port *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void tty_port_destroy(struct tty_port *arg0) {
  return;
}
void tty_port_init(struct tty_port *arg0) {
  return;
}
void *external_alloc(void);
struct device *tty_port_register_device(struct tty_port *arg0, struct tty_driver *arg1, unsigned int arg2, struct device *arg3) {
  return (struct device *)external_alloc();
}
void tty_port_tty_set(struct tty_port *arg0, struct tty_struct *arg1) {
  return;
}
void tty_port_tty_wakeup(struct tty_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_register_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_set_operations(struct tty_driver *arg0, const struct tty_operations *arg1) {
  return;
}
void tty_unregister_device(struct tty_driver *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void unregister_capi_driver(struct capi_driver *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
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
