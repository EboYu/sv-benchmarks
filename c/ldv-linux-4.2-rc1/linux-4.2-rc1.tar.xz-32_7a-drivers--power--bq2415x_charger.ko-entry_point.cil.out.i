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
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
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
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct file_operations;
struct completion;
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
union __anonunion____missing_field_name_15 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
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
struct __anonstruct____missing_field_name_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_24 {
   struct __anonstruct____missing_field_name_25 __annonCompField11 ;
   struct __anonstruct____missing_field_name_26 __annonCompField12 ;
};
union __anonunion____missing_field_name_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_24 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_27 __annonCompField14 ;
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
struct __anonstruct____missing_field_name_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_31 __annonCompField16 ;
};
struct spinlock {
   union __anonunion____missing_field_name_30 __annonCompField17 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_34 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_35 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_36 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_33 {
   struct __anonstruct_futex_34 futex ;
   struct __anonstruct_nanosleep_35 nanosleep ;
   struct __anonstruct_poll_36 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_33 __annonCompField18 ;
};
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
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
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
struct vm_area_struct;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
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
struct __anonstruct_mm_context_t_113 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_113 mm_context_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct kmem_cache;
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct __anonstruct____missing_field_name_146 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_147 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_145 {
   struct __anonstruct____missing_field_name_146 __annonCompField33 ;
   struct __anonstruct____missing_field_name_147 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_145 __annonCompField35 ;
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
union __anonunion____missing_field_name_148 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_153 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_154 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_151 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_152 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_149 {
   union __anonunion____missing_field_name_150 __annonCompField37 ;
   union __anonunion____missing_field_name_151 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_157 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_155 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_156 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_157 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_158 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_148 __annonCompField36 ;
   struct __anonstruct____missing_field_name_149 __annonCompField42 ;
   union __anonunion____missing_field_name_155 __annonCompField45 ;
   union __anonunion____missing_field_name_158 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_159 {
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
   struct __anonstruct_shared_159 shared ;
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
typedef unsigned long cputime_t;
struct __anonstruct_kuid_t_161 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_161 kuid_t;
struct __anonstruct_kgid_t_162 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_162 kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_163 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_163 sigset_t;
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
struct __anonstruct__kill_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_166 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_167 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_170 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_170 _addr_bnd ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_164 {
   int _pad[28U] ;
   struct __anonstruct__kill_165 _kill ;
   struct __anonstruct__timer_166 _timer ;
   struct __anonstruct__rt_167 _rt ;
   struct __anonstruct__sigchld_168 _sigchld ;
   struct __anonstruct__sigfault_169 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_164 _sifields ;
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
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_179 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_180 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_182 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_181 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_182 __annonCompField49 ;
};
union __anonunion_type_data_183 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_185 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_184 {
   union __anonunion_payload_185 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_179 __annonCompField47 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_180 __annonCompField48 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_181 __annonCompField50 ;
   union __anonunion_type_data_183 type_data ;
   union __anonunion____missing_field_name_184 __annonCompField51 ;
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
union __anonunion____missing_field_name_186 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_186 __annonCompField52 ;
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
struct kernfs_node;
struct kernfs_ops;
struct kernfs_open_file;
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
struct kernfs_root;
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
struct i2c_client;
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
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_209 {
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
   union __anonunion____missing_field_name_209 __annonCompField56 ;
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
union __anonunion____missing_field_name_210 {
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
   union __anonunion____missing_field_name_210 __annonCompField57 ;
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
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
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
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
enum power_supply_property {
    POWER_SUPPLY_PROP_STATUS = 0,
    POWER_SUPPLY_PROP_CHARGE_TYPE = 1,
    POWER_SUPPLY_PROP_HEALTH = 2,
    POWER_SUPPLY_PROP_PRESENT = 3,
    POWER_SUPPLY_PROP_ONLINE = 4,
    POWER_SUPPLY_PROP_AUTHENTIC = 5,
    POWER_SUPPLY_PROP_TECHNOLOGY = 6,
    POWER_SUPPLY_PROP_CYCLE_COUNT = 7,
    POWER_SUPPLY_PROP_VOLTAGE_MAX = 8,
    POWER_SUPPLY_PROP_VOLTAGE_MIN = 9,
    POWER_SUPPLY_PROP_VOLTAGE_MAX_DESIGN = 10,
    POWER_SUPPLY_PROP_VOLTAGE_MIN_DESIGN = 11,
    POWER_SUPPLY_PROP_VOLTAGE_NOW = 12,
    POWER_SUPPLY_PROP_VOLTAGE_AVG = 13,
    POWER_SUPPLY_PROP_VOLTAGE_OCV = 14,
    POWER_SUPPLY_PROP_VOLTAGE_BOOT = 15,
    POWER_SUPPLY_PROP_CURRENT_MAX = 16,
    POWER_SUPPLY_PROP_CURRENT_NOW = 17,
    POWER_SUPPLY_PROP_CURRENT_AVG = 18,
    POWER_SUPPLY_PROP_CURRENT_BOOT = 19,
    POWER_SUPPLY_PROP_POWER_NOW = 20,
    POWER_SUPPLY_PROP_POWER_AVG = 21,
    POWER_SUPPLY_PROP_CHARGE_FULL_DESIGN = 22,
    POWER_SUPPLY_PROP_CHARGE_EMPTY_DESIGN = 23,
    POWER_SUPPLY_PROP_CHARGE_FULL = 24,
    POWER_SUPPLY_PROP_CHARGE_EMPTY = 25,
    POWER_SUPPLY_PROP_CHARGE_NOW = 26,
    POWER_SUPPLY_PROP_CHARGE_AVG = 27,
    POWER_SUPPLY_PROP_CHARGE_COUNTER = 28,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT = 29,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_CURRENT_MAX = 30,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE = 31,
    POWER_SUPPLY_PROP_CONSTANT_CHARGE_VOLTAGE_MAX = 32,
    POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT = 33,
    POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX = 34,
    POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT = 35,
    POWER_SUPPLY_PROP_ENERGY_FULL_DESIGN = 36,
    POWER_SUPPLY_PROP_ENERGY_EMPTY_DESIGN = 37,
    POWER_SUPPLY_PROP_ENERGY_FULL = 38,
    POWER_SUPPLY_PROP_ENERGY_EMPTY = 39,
    POWER_SUPPLY_PROP_ENERGY_NOW = 40,
    POWER_SUPPLY_PROP_ENERGY_AVG = 41,
    POWER_SUPPLY_PROP_CAPACITY = 42,
    POWER_SUPPLY_PROP_CAPACITY_ALERT_MIN = 43,
    POWER_SUPPLY_PROP_CAPACITY_ALERT_MAX = 44,
    POWER_SUPPLY_PROP_CAPACITY_LEVEL = 45,
    POWER_SUPPLY_PROP_TEMP = 46,
    POWER_SUPPLY_PROP_TEMP_MAX = 47,
    POWER_SUPPLY_PROP_TEMP_MIN = 48,
    POWER_SUPPLY_PROP_TEMP_ALERT_MIN = 49,
    POWER_SUPPLY_PROP_TEMP_ALERT_MAX = 50,
    POWER_SUPPLY_PROP_TEMP_AMBIENT = 51,
    POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MIN = 52,
    POWER_SUPPLY_PROP_TEMP_AMBIENT_ALERT_MAX = 53,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_NOW = 54,
    POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG = 55,
    POWER_SUPPLY_PROP_TIME_TO_FULL_NOW = 56,
    POWER_SUPPLY_PROP_TIME_TO_FULL_AVG = 57,
    POWER_SUPPLY_PROP_TYPE = 58,
    POWER_SUPPLY_PROP_SCOPE = 59,
    POWER_SUPPLY_PROP_CHARGE_TERM_CURRENT = 60,
    POWER_SUPPLY_PROP_CALIBRATE = 61,
    POWER_SUPPLY_PROP_MODEL_NAME = 62,
    POWER_SUPPLY_PROP_MANUFACTURER = 63,
    POWER_SUPPLY_PROP_SERIAL_NUMBER = 64
} ;
enum power_supply_type {
    POWER_SUPPLY_TYPE_UNKNOWN = 0,
    POWER_SUPPLY_TYPE_BATTERY = 1,
    POWER_SUPPLY_TYPE_UPS = 2,
    POWER_SUPPLY_TYPE_MAINS = 3,
    POWER_SUPPLY_TYPE_USB = 4,
    POWER_SUPPLY_TYPE_USB_DCP = 5,
    POWER_SUPPLY_TYPE_USB_CDP = 6,
    POWER_SUPPLY_TYPE_USB_ACA = 7
} ;
union power_supply_propval {
   int intval ;
   char const *strval ;
};
struct power_supply;
struct power_supply_config {
   struct device_node *of_node ;
   void *drv_data ;
   char **supplied_to ;
   size_t num_supplicants ;
};
struct power_supply_desc {
   char const *name ;
   enum power_supply_type type ;
   enum power_supply_property *properties ;
   size_t num_properties ;
   int (*get_property)(struct power_supply * , enum power_supply_property , union power_supply_propval * ) ;
   int (*set_property)(struct power_supply * , enum power_supply_property , union power_supply_propval const * ) ;
   int (*property_is_writeable)(struct power_supply * , enum power_supply_property ) ;
   void (*external_power_changed)(struct power_supply * ) ;
   void (*set_charged)(struct power_supply * ) ;
   bool no_thermal ;
   int use_for_apm ;
};
struct power_supply {
   struct power_supply_desc const *desc ;
   char **supplied_to ;
   size_t num_supplicants ;
   char **supplied_from ;
   size_t num_supplies ;
   struct device_node *of_node ;
   void *drv_data ;
   struct device dev ;
   struct work_struct changed_work ;
   struct delayed_work deferred_register_work ;
   spinlock_t changed_lock ;
   bool changed ;
   atomic_t use_cnt ;
   struct led_trigger *charging_full_trig ;
   char *charging_full_trig_name ;
   struct led_trigger *charging_trig ;
   char *charging_trig_name ;
   struct led_trigger *full_trig ;
   char *full_trig_name ;
   struct led_trigger *online_trig ;
   char *online_trig_name ;
   struct led_trigger *charging_blink_full_solid_trig ;
   char *charging_blink_full_solid_trig_name ;
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
struct i2c_driver;
struct i2c_board_info;
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
   int (*slave_cb)(struct i2c_client * , enum i2c_slave_event , u8 * ) ;
};
enum i2c_slave_event {
    I2C_SLAVE_READ_REQUESTED = 0,
    I2C_SLAVE_WRITE_REQUESTED = 1,
    I2C_SLAVE_READ_PROCESSED = 2,
    I2C_SLAVE_WRITE_RECEIVED = 3,
    I2C_SLAVE_STOP = 4
} ;
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
   int (*reg_slave)(struct i2c_client * ) ;
   int (*unreg_slave)(struct i2c_client * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_adapter * ) ;
   void (*unprepare_recovery)(struct i2c_adapter * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter_quirks {
   u64 flags ;
   int max_num_msgs ;
   u16 max_write_len ;
   u16 max_read_len ;
   u16 max_comb_1st_msg_len ;
   u16 max_comb_2nd_msg_len ;
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
   struct i2c_adapter_quirks const *quirks ;
};
typedef u64 acpi_io_address;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_221 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_222 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_223 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_224 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_225 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_226 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_227 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_221 integer ;
   struct __anonstruct_string_222 string ;
   struct __anonstruct_buffer_223 buffer ;
   struct __anonstruct_package_224 package ;
   struct __anonstruct_reference_225 reference ;
   struct __anonstruct_processor_226 processor ;
   struct __anonstruct_power_resource_227 power_resource ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_231 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField58 ;
};
struct lockref {
   union __anonunion____missing_field_name_230 __annonCompField59 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_233 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField60 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_232 __annonCompField61 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_234 {
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
   union __anonunion_d_u_234 d_u ;
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
struct __anonstruct____missing_field_name_238 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_237 {
   struct __anonstruct____missing_field_name_238 __annonCompField62 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_237 __annonCompField63 ;
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
struct bdi_writeback;
struct export_operations;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct __anonstruct_kprojid_t_242 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_242 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_243 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_243 __annonCompField65 ;
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
struct writeback_control;
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
union __anonunion____missing_field_name_246 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_247 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_248 {
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
   union __anonunion____missing_field_name_246 __annonCompField66 ;
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
   union __anonunion____missing_field_name_247 __annonCompField67 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_248 __annonCompField68 ;
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
union __anonunion_f_u_249 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_249 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_251 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_250 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_251 afs ;
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
   union __anonunion_fl_u_250 fl_u ;
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
struct proc_dir_entry;
struct acpi_driver;
struct acpi_device;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
   void (*notify_online)(struct acpi_device * ) ;
   bool enabled ;
   bool demand_offline ;
};
struct acpi_scan_handler {
   struct acpi_device_id const *ids ;
   struct list_head list_node ;
   bool (*match)(char * , struct acpi_device_id const ** ) ;
   int (*attach)(struct acpi_device * , struct acpi_device_id const * ) ;
   void (*detach)(struct acpi_device * ) ;
   void (*bind)(struct device * ) ;
   void (*unbind)(struct device * ) ;
   struct acpi_hotplug_profile hotplug ;
};
struct acpi_hotplug_context {
   struct acpi_device *self ;
   int (*notify)(struct acpi_device * , u32 ) ;
   void (*uevent)(struct acpi_device * , u32 ) ;
   void (*fixup)(struct acpi_device * ) ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * ) ;
   void (*notify)(struct acpi_device * , u32 ) ;
};
struct acpi_driver {
   char name[80U] ;
   char class[80U] ;
   struct acpi_device_id const *ids ;
   unsigned int flags ;
   struct acpi_device_ops ops ;
   struct device_driver drv ;
   struct module *owner ;
};
struct acpi_device_status {
   unsigned char present : 1 ;
   unsigned char enabled : 1 ;
   unsigned char show_in_ui : 1 ;
   unsigned char functional : 1 ;
   unsigned char battery_present : 1 ;
   unsigned int reserved : 27 ;
};
struct acpi_device_flags {
   unsigned char dynamic_status : 1 ;
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char match_driver : 1 ;
   unsigned char initialized : 1 ;
   unsigned char visited : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned char of_compatible_ok : 1 ;
   unsigned char coherent_dma : 1 ;
   unsigned char cca_seen : 1 ;
   unsigned int reserved : 20 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_pnp_type {
   unsigned char hardware_id : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char platform_id : 1 ;
   unsigned int reserved : 29 ;
};
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   struct acpi_pnp_type type ;
   acpi_bus_address bus_address ;
   char *unique_id ;
   struct list_head ids ;
   acpi_device_name device_name ;
   acpi_device_class device_class ;
   union acpi_object *str_obj ;
};
struct acpi_device_power_flags {
   unsigned char explicit_get : 1 ;
   unsigned char power_resources : 1 ;
   unsigned char inrush_current : 1 ;
   unsigned char power_removed : 1 ;
   unsigned char ignore_parent : 1 ;
   unsigned char dsw_present : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_flags_252 {
   unsigned char valid : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_252 flags ;
   int power ;
   int latency ;
   struct list_head resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_253 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_253 flags ;
   u8 power ;
   u8 performance ;
   int latency ;
};
struct acpi_device_perf {
   int state ;
   struct acpi_device_perf_flags flags ;
   int state_count ;
   struct acpi_device_perf_state *states ;
};
struct acpi_device_wakeup_flags {
   unsigned char valid : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char notifier_present : 1 ;
   unsigned char enabled : 1 ;
};
struct acpi_device_wakeup_context {
   struct work_struct work ;
   struct device *dev ;
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct list_head resources ;
   struct acpi_device_wakeup_flags flags ;
   struct acpi_device_wakeup_context context ;
   struct wakeup_source *ws ;
   int prepare_count ;
};
struct acpi_device_data {
   union acpi_object const *pointer ;
   union acpi_object const *properties ;
   union acpi_object const *of_compatible ;
};
struct acpi_gpio_mapping;
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
   struct fwnode_handle fwnode ;
   struct acpi_device *parent ;
   struct list_head children ;
   struct list_head node ;
   struct list_head wakeup_list ;
   struct list_head del_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_device_data data ;
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   struct acpi_gpio_mapping const *driver_gpios ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   unsigned int dep_unmet ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
};
struct acpi_gpio_params {
   unsigned int crs_entry_index ;
   unsigned int line_index ;
   bool active_low ;
};
struct acpi_gpio_mapping {
   char const *name ;
   struct acpi_gpio_params const *data ;
   unsigned int size ;
};
enum bq2415x_mode {
    BQ2415X_MODE_OFF = 0,
    BQ2415X_MODE_NONE = 1,
    BQ2415X_MODE_HOST_CHARGER = 2,
    BQ2415X_MODE_DEDICATED_CHARGER = 3,
    BQ2415X_MODE_BOOST = 4
} ;
struct bq2415x_platform_data {
   int current_limit ;
   int weak_battery_voltage ;
   int battery_regulation_voltage ;
   int charge_current ;
   int termination_current ;
   int resistor_sense ;
   char const *notify_device ;
};
enum bq2415x_command {
    BQ2415X_TIMER_RESET = 0,
    BQ2415X_OTG_STATUS = 1,
    BQ2415X_STAT_PIN_STATUS = 2,
    BQ2415X_STAT_PIN_ENABLE = 3,
    BQ2415X_STAT_PIN_DISABLE = 4,
    BQ2415X_CHARGE_STATUS = 5,
    BQ2415X_BOOST_STATUS = 6,
    BQ2415X_FAULT_STATUS = 7,
    BQ2415X_CHARGE_TERMINATION_STATUS = 8,
    BQ2415X_CHARGE_TERMINATION_ENABLE = 9,
    BQ2415X_CHARGE_TERMINATION_DISABLE = 10,
    BQ2415X_CHARGER_STATUS = 11,
    BQ2415X_CHARGER_ENABLE = 12,
    BQ2415X_CHARGER_DISABLE = 13,
    BQ2415X_HIGH_IMPEDANCE_STATUS = 14,
    BQ2415X_HIGH_IMPEDANCE_ENABLE = 15,
    BQ2415X_HIGH_IMPEDANCE_DISABLE = 16,
    BQ2415X_BOOST_MODE_STATUS = 17,
    BQ2415X_BOOST_MODE_ENABLE = 18,
    BQ2415X_BOOST_MODE_DISABLE = 19,
    BQ2415X_OTG_LEVEL = 20,
    BQ2415X_OTG_ACTIVATE_HIGH = 21,
    BQ2415X_OTG_ACTIVATE_LOW = 22,
    BQ2415X_OTG_PIN_STATUS = 23,
    BQ2415X_OTG_PIN_ENABLE = 24,
    BQ2415X_OTG_PIN_DISABLE = 25,
    BQ2415X_VENDER_CODE = 26,
    BQ2415X_PART_NUMBER = 27,
    BQ2415X_REVISION = 28
} ;
enum bq2415x_chip {
    BQUNKNOWN = 0,
    BQ24150 = 1,
    BQ24150A = 2,
    BQ24151 = 3,
    BQ24151A = 4,
    BQ24152 = 5,
    BQ24153 = 6,
    BQ24153A = 7,
    BQ24155 = 8,
    BQ24156 = 9,
    BQ24156A = 10,
    BQ24157S = 11,
    BQ24158 = 12
} ;
struct bq2415x_device {
   struct device *dev ;
   struct bq2415x_platform_data init_data ;
   struct power_supply *charger ;
   struct power_supply_desc charger_desc ;
   struct delayed_work work ;
   struct power_supply *notify_psy ;
   struct notifier_block nb ;
   enum bq2415x_mode reported_mode ;
   enum bq2415x_mode mode ;
   enum bq2415x_chip chip ;
   char const *timer_error ;
   char *model ;
   char *name ;
   int autotimer ;
   int automode ;
   int id ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{
  int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern char *kasprintf(gfp_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
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
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_bq2415x_i2c_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_bq2415x_i2c_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_bq2415x_id_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_bq2415x_id_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_bq2415x_timer_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_bq2415x_timer_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_23(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_25(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_6(8192, wq, dwork, delay);
  return (tmp);
}
}
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  return (tmp);
}
}
extern int idr_alloc(struct idr * , void * , int , int , gfp_t ) ;
extern void idr_remove(struct idr * , int ) ;
extern void kfree(void const * ) ;
int ldv_state_variable_8 ;
struct device *dev_attr_battery_regulation_voltage_group1 ;
struct device *dev_attr_mode_group1 ;
int ldv_state_variable_15 ;
struct device *dev_attr_current_limit_group1 ;
struct work_struct *ldv_work_struct_1_3 ;
struct device *dev_attr_registers_group1 ;
struct device_attribute *dev_attr_mode_group0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
int ldv_work_1_1 ;
int ldv_state_variable_12 ;
struct device_attribute *dev_attr_termination_current_group0 ;
int ldv_state_variable_14 ;
struct device_attribute *dev_attr_current_limit_group0 ;
struct device *dev_attr_charge_termination_enable_group1 ;
int ldv_state_variable_17 ;
struct device *dev_attr_otg_pin_enable_group1 ;
struct device *dev_attr_charge_current_group1 ;
int ldv_state_variable_19 ;
int ldv_state_variable_9 ;
struct device *dev_attr_weak_battery_voltage_group1 ;
int ref_cnt ;
struct device_attribute *dev_attr_otg_pin_enable_group0 ;
int ldv_state_variable_1 ;
struct device *dev_attr_termination_current_group1 ;
struct device_attribute *dev_attr_charge_termination_enable_group0 ;
int ldv_state_variable_7 ;
struct work_struct *ldv_work_struct_1_0 ;
struct work_struct *ldv_work_struct_1_1 ;
struct device_attribute *dev_attr_charge_current_group0 ;
int ldv_state_variable_10 ;
int ldv_work_1_3 ;
int ldv_state_variable_6 ;
int ldv_state_variable_16 ;
struct device_attribute *dev_attr_battery_regulation_voltage_group0 ;
int ldv_state_variable_2 ;
struct device_attribute *dev_attr_stat_pin_enable_group0 ;
struct device_attribute *dev_attr_weak_battery_voltage_group0 ;
struct device *dev_attr_timer_group1 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_18 ;
struct work_struct *ldv_work_struct_1_2 ;
struct i2c_client *bq2415x_driver_group0 ;
int ldv_state_variable_3 ;
struct device_attribute *dev_attr_high_impedance_enable_group0 ;
struct device_attribute *dev_attr_timer_group0 ;
int ldv_work_1_0 ;
int ldv_state_variable_4 ;
struct device *dev_attr_high_impedance_enable_group1 ;
struct device *dev_attr_stat_pin_enable_group1 ;
struct device_attribute *dev_attr_registers_group0 ;
void ldv_initialize_device_attribute_12(void) ;
void call_and_disable_work_1(struct work_struct *work ) ;
void ldv_initialize_device_attribute_13(void) ;
void ldv_initialize_device_attribute_17(void) ;
void ldv_initialize_device_attribute_14(void) ;
void call_and_disable_all_1(int state ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void ldv_initialize_device_attribute_16(void) ;
void ldv_initialize_device_attribute_11(void) ;
void ldv_initialize_device_attribute_19(void) ;
void ldv_initialize_device_attribute_9(void) ;
void disable_work_1(struct work_struct *work ) ;
void ldv_initialize_device_attribute_15(void) ;
void ldv_initialize_i2c_driver_2(void) ;
void ldv_initialize_device_attribute_8(void) ;
void work_init_1(void) ;
void invoke_work_1(void) ;
void ldv_initialize_device_attribute_7(void) ;
void ldv_initialize_device_attribute_18(void) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_notify(struct kobject * , char const * , char const * ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  return (tmp);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern void dev_err(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int power_supply_reg_notifier(struct notifier_block * ) ;
extern void power_supply_unreg_notifier(struct notifier_block * ) ;
extern struct power_supply *power_supply_get_by_name(char const * ) ;
extern void power_supply_put(struct power_supply * ) ;
extern struct power_supply *power_supply_get_by_phandle(struct device_node * , char const * ) ;
extern int power_supply_get_property(struct power_supply * , enum power_supply_property ,
                                     union power_supply_propval * ) ;
extern struct power_supply *power_supply_register(struct device * , struct power_supply_desc const * ,
                                                  struct power_supply_config const * ) ;
extern void power_supply_unregister(struct power_supply * ) ;
extern void *power_supply_get_drvdata(struct power_supply * ) ;
extern int device_property_read_u32_array(struct device * , char const * , u32 * ,
                                          size_t ) ;
__inline static int device_property_read_u32(struct device *dev , char const *propname ,
                                             u32 *val )
{
  int tmp ;
  {
  tmp = device_property_read_u32_array(dev, propname, val, 1UL);
  return (tmp);
}
}
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
__inline static void *i2c_get_clientdata(struct i2c_client const *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& dev->dev);
  return (tmp);
}
}
__inline static void i2c_set_clientdata(struct i2c_client *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int i2c_register_driver(struct module * , struct i2c_driver * ) ;
extern void i2c_del_driver(struct i2c_driver * ) ;
__inline static bool is_acpi_node(struct fwnode_handle *fwnode )
{
  {
  return ((bool )((unsigned long )fwnode != (unsigned long )((struct fwnode_handle *)0) && (unsigned int )fwnode->type == 2U));
}
}
__inline static struct acpi_device *to_acpi_node(struct fwnode_handle *fwnode )
{
  struct fwnode_handle const *__mptr ;
  struct acpi_device *tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = is_acpi_node(fwnode);
  if ((int )tmp___1) {
    __mptr = (struct fwnode_handle const *)fwnode;
    tmp___0 = (struct acpi_device *)__mptr + 0xfffffffffffffff0UL;
  } else {
    tmp___0 = (struct acpi_device *)0;
  }
  return (tmp___0);
}
}
__inline static acpi_handle acpi_device_handle(struct acpi_device *adev )
{
  {
  return ((unsigned long )adev != (unsigned long )((struct acpi_device *)0) ? adev->handle : (acpi_handle )0);
}
}
extern struct acpi_device_id const *acpi_match_device(struct acpi_device_id const * ,
                                                        struct device const * ) ;
static char *bq2415x_chip_name[13U] =
  { (char *)"unknown", (char *)"bq24150", (char *)"bq24150a", (char *)"bq24151",
        (char *)"bq24151a", (char *)"bq24152", (char *)"bq24153", (char *)"bq24153a",
        (char *)"bq24155", (char *)"bq24156", (char *)"bq24156a", (char *)"bq24157s",
        (char *)"bq24158"};
static struct idr bq2415x_id = {0, 0, 0, 0, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "bq2415x_id.lock",
                                                                 0, 0UL}}}}, 0, 0};
static struct mutex bq2415x_id_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "bq2415x_id_mutex.wait_lock",
                                                          0, 0UL}}}}, {& bq2415x_id_mutex.wait_list,
                                                                       & bq2415x_id_mutex.wait_list},
    0, (void *)(& bq2415x_id_mutex), {0, {0, 0}, "bq2415x_id_mutex", 0, 0UL}};
static struct mutex bq2415x_timer_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "bq2415x_timer_mutex.wait_lock",
                                                          0, 0UL}}}}, {& bq2415x_timer_mutex.wait_list,
                                                                       & bq2415x_timer_mutex.wait_list},
    0, (void *)(& bq2415x_timer_mutex), {0, {0, 0}, "bq2415x_timer_mutex", 0, 0UL}};
static struct mutex bq2415x_i2c_mutex = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "bq2415x_i2c_mutex.wait_lock",
                                                          0, 0UL}}}}, {& bq2415x_i2c_mutex.wait_list,
                                                                       & bq2415x_i2c_mutex.wait_list},
    0, (void *)(& bq2415x_i2c_mutex), {0, {0, 0}, "bq2415x_i2c_mutex", 0, 0UL}};
static int bq2415x_i2c_read(struct bq2415x_device *bq , u8 reg )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct i2c_msg msg[2U] ;
  u8 val ;
  int ret ;
  {
  __mptr = (struct device const *)bq->dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffe0UL;
  if ((unsigned long )client->adapter == (unsigned long )((struct i2c_adapter *)0)) {
    return (-19);
  } else {
  }
  msg[0].addr = client->addr;
  msg[0].flags = 0U;
  msg[0].buf = & reg;
  msg[0].len = 1U;
  msg[1].addr = client->addr;
  msg[1].flags = 1U;
  msg[1].buf = & val;
  msg[1].len = 1U;
  ldv_mutex_lock_17(& bq2415x_i2c_mutex);
  ret = i2c_transfer(client->adapter, (struct i2c_msg *)(& msg), 2);
  ldv_mutex_unlock_18(& bq2415x_i2c_mutex);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((int )val);
}
}
static int bq2415x_i2c_read_mask(struct bq2415x_device *bq , u8 reg , u8 mask , u8 shift )
{
  int ret ;
  {
  if ((unsigned int )shift > 8U) {
    return (-22);
  } else {
  }
  ret = bq2415x_i2c_read(bq, (int )reg);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (((int )mask & ret) >> (int )shift);
}
}
static int bq2415x_i2c_read_bit(struct bq2415x_device *bq , u8 reg , u8 bit )
{
  int tmp ;
  {
  if ((unsigned int )bit > 8U) {
    return (-22);
  } else {
  }
  tmp = bq2415x_i2c_read_mask(bq, (int )reg, (int )((u8 )(1UL << (int )bit)), (int )bit);
  return (tmp);
}
}
static int bq2415x_i2c_write(struct bq2415x_device *bq , u8 reg , u8 val )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  struct i2c_msg msg[1U] ;
  u8 data[2U] ;
  int ret ;
  {
  __mptr = (struct device const *)bq->dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffe0UL;
  data[0] = reg;
  data[1] = val;
  msg[0].addr = client->addr;
  msg[0].flags = 0U;
  msg[0].buf = (__u8 *)(& data);
  msg[0].len = 2U;
  ldv_mutex_lock_19(& bq2415x_i2c_mutex);
  ret = i2c_transfer(client->adapter, (struct i2c_msg *)(& msg), 1);
  ldv_mutex_unlock_20(& bq2415x_i2c_mutex);
  if (ret < 0) {
    return (ret);
  } else
  if (ret != 1) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int bq2415x_i2c_write_mask(struct bq2415x_device *bq , u8 reg , u8 val , u8 mask ,
                                  u8 shift )
{
  int ret ;
  int tmp ;
  {
  if ((unsigned int )shift > 8U) {
    return (-22);
  } else {
  }
  ret = bq2415x_i2c_read(bq, (int )reg);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = ~ ((int )mask) & ret;
  ret = ((int )val << (int )shift) | ret;
  tmp = bq2415x_i2c_write(bq, (int )reg, (int )((u8 )ret));
  return (tmp);
}
}
static int bq2415x_i2c_write_bit(struct bq2415x_device *bq , u8 reg , bool val , u8 bit )
{
  int tmp ;
  {
  if ((unsigned int )bit > 8U) {
    return (-22);
  } else {
  }
  tmp = bq2415x_i2c_write_mask(bq, (int )reg, (int )val, (int )((u8 )(1UL << (int )bit)),
                               (int )bit);
  return (tmp);
}
}
static int bq2415x_exec_command(struct bq2415x_device *bq , enum bq2415x_command command )
{
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  switch ((unsigned int )command) {
  case 0U:
  tmp = bq2415x_i2c_write_bit(bq, 0, 1, 7);
  return (tmp);
  case 1U:
  tmp___0 = bq2415x_i2c_read_bit(bq, 0, 7);
  return (tmp___0);
  case 2U:
  tmp___1 = bq2415x_i2c_read_bit(bq, 0, 6);
  return (tmp___1);
  case 3U:
  tmp___2 = bq2415x_i2c_write_bit(bq, 0, 1, 6);
  return (tmp___2);
  case 4U:
  tmp___3 = bq2415x_i2c_write_bit(bq, 0, 0, 6);
  return (tmp___3);
  case 5U:
  tmp___4 = bq2415x_i2c_read_mask(bq, 0, 48, 4);
  return (tmp___4);
  case 6U:
  tmp___5 = bq2415x_i2c_read_bit(bq, 0, 3);
  return (tmp___5);
  case 7U:
  tmp___6 = bq2415x_i2c_read_mask(bq, 0, 7, 0);
  return (tmp___6);
  case 8U:
  tmp___7 = bq2415x_i2c_read_bit(bq, 1, 3);
  return (tmp___7);
  case 9U:
  tmp___8 = bq2415x_i2c_write_bit(bq, 1, 1, 3);
  return (tmp___8);
  case 10U:
  tmp___9 = bq2415x_i2c_write_bit(bq, 1, 0, 3);
  return (tmp___9);
  case 11U:
  ret = bq2415x_i2c_read_bit(bq, 1, 2);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (ret <= 0);
  case 12U:
  tmp___10 = bq2415x_i2c_write_bit(bq, 1, 0, 2);
  return (tmp___10);
  case 13U:
  tmp___11 = bq2415x_i2c_write_bit(bq, 1, 1, 2);
  return (tmp___11);
  case 14U:
  tmp___12 = bq2415x_i2c_read_bit(bq, 1, 1);
  return (tmp___12);
  case 15U:
  tmp___13 = bq2415x_i2c_write_bit(bq, 1, 1, 1);
  return (tmp___13);
  case 16U:
  tmp___14 = bq2415x_i2c_write_bit(bq, 1, 0, 1);
  return (tmp___14);
  case 17U:
  tmp___15 = bq2415x_i2c_read_bit(bq, 1, 0);
  return (tmp___15);
  case 18U:
  tmp___16 = bq2415x_i2c_write_bit(bq, 1, 1, 0);
  return (tmp___16);
  case 19U:
  tmp___17 = bq2415x_i2c_write_bit(bq, 1, 0, 0);
  return (tmp___17);
  case 20U:
  tmp___18 = bq2415x_i2c_read_bit(bq, 2, 1);
  return (tmp___18);
  case 21U:
  tmp___19 = bq2415x_i2c_write_bit(bq, 2, 1, 1);
  return (tmp___19);
  case 22U:
  tmp___20 = bq2415x_i2c_write_bit(bq, 2, 0, 1);
  return (tmp___20);
  case 23U:
  tmp___21 = bq2415x_i2c_read_bit(bq, 2, 0);
  return (tmp___21);
  case 24U:
  tmp___22 = bq2415x_i2c_write_bit(bq, 2, 1, 0);
  return (tmp___22);
  case 25U:
  tmp___23 = bq2415x_i2c_write_bit(bq, 2, 0, 0);
  return (tmp___23);
  case 26U:
  tmp___24 = bq2415x_i2c_read_mask(bq, 3, 224, 5);
  return (tmp___24);
  case 27U:
  tmp___25 = bq2415x_i2c_read_mask(bq, 3, 24, 3);
  return (tmp___25);
  case 28U:
  tmp___26 = bq2415x_i2c_read_mask(bq, 3, 7, 0);
  return (tmp___26);
  }
  return (-22);
}
}
static enum bq2415x_chip bq2415x_detect_chip(struct bq2415x_device *bq )
{
  struct i2c_client *client ;
  struct device const *__mptr ;
  int ret ;
  int tmp ;
  {
  __mptr = (struct device const *)bq->dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffe0UL;
  tmp = bq2415x_exec_command(bq, 27);
  ret = tmp;
  if (ret < 0) {
    return ((enum bq2415x_chip )ret);
  } else {
  }
  switch ((int )client->addr) {
  case 107: ;
  switch (ret) {
  case 0: ;
  if ((unsigned int )bq->chip == 4U) {
    return (bq->chip);
  } else {
  }
  return (3);
  case 1: ;
  if (((unsigned int )bq->chip == 2U || (unsigned int )bq->chip == 5U) || (unsigned int )bq->chip == 8U) {
    return (bq->chip);
  } else {
  }
  return (1);
  case 2: ;
  if ((unsigned int )bq->chip == 7U) {
    return (bq->chip);
  } else {
  }
  return (6);
  default: ;
  return (0);
  }
  goto ldv_30963;
  case 106: ;
  switch (ret) {
  case 0: ;
  if ((unsigned int )bq->chip == 10U) {
    return (bq->chip);
  } else {
  }
  return (9);
  case 2: ;
  if ((unsigned int )bq->chip == 11U) {
    return (bq->chip);
  } else {
  }
  return (12);
  default: ;
  return (0);
  }
  goto ldv_30963;
  }
  ldv_30963: ;
  return (0);
}
}
static int bq2415x_detect_revision(struct bq2415x_device *bq )
{
  int ret ;
  int tmp ;
  int chip ;
  enum bq2415x_chip tmp___0 ;
  {
  tmp = bq2415x_exec_command(bq, 28);
  ret = tmp;
  tmp___0 = bq2415x_detect_chip(bq);
  chip = (int )tmp___0;
  if (ret < 0 || chip < 0) {
    return (-1);
  } else {
  }
  switch (chip) {
  case 1: ;
  case 2: ;
  case 3: ;
  case 4: ;
  case 5: ;
  if (ret >= 0 && ret <= 3) {
    return (ret);
  } else {
  }
  return (-1);
  case 6: ;
  case 7: ;
  case 9: ;
  case 10: ;
  case 11: ;
  case 12: ;
  if (ret == 3) {
    return (0);
  } else
  if (ret == 1) {
    return (1);
  } else {
  }
  return (-1);
  case 8: ;
  if (ret == 3) {
    return (3);
  } else {
  }
  return (-1);
  case 0: ;
  return (-1);
  }
  return (-1);
}
}
static int bq2415x_get_vender_code(struct bq2415x_device *bq )
{
  int ret ;
  {
  ret = bq2415x_exec_command(bq, 26);
  if (ret < 0) {
    return (0);
  } else {
  }
  return ((ret & 1) + (((ret >> 2) & 1) * 100 + ((ret >> 1) & 1) * 10));
}
}
static void bq2415x_reset_chip(struct bq2415x_device *bq )
{
  {
  bq2415x_i2c_write(bq, 4, 137);
  bq2415x_i2c_write(bq, 2, 10);
  bq2415x_i2c_write(bq, 1, 48);
  bq2415x_i2c_write(bq, 0, 64);
  bq->timer_error = (char const *)0;
  return;
}
}
static int bq2415x_set_current_limit(struct bq2415x_device *bq , int mA )
{
  int val ;
  int tmp ;
  {
  if (mA <= 100) {
    val = 0;
  } else
  if (mA <= 500) {
    val = 1;
  } else
  if (mA <= 800) {
    val = 2;
  } else {
    val = 3;
  }
  tmp = bq2415x_i2c_write_mask(bq, 1, (int )((u8 )val), 192, 6);
  return (tmp);
}
}
static int bq2415x_get_current_limit(struct bq2415x_device *bq )
{
  int ret ;
  {
  ret = bq2415x_i2c_read_mask(bq, 1, 192, 6);
  if (ret < 0) {
    return (ret);
  } else
  if (ret == 0) {
    return (100);
  } else
  if (ret == 1) {
    return (500);
  } else
  if (ret == 2) {
    return (800);
  } else
  if (ret == 3) {
    return (1800);
  } else {
  }
  return (-22);
}
}
static int bq2415x_set_weak_battery_voltage(struct bq2415x_device *bq , int mV )
{
  int val ;
  int tmp ;
  {
  if (mV <= 3450) {
    val = 0;
  } else
  if (mV <= 3550) {
    val = 1;
  } else
  if (mV <= 3650) {
    val = 2;
  } else {
    val = 3;
  }
  tmp = bq2415x_i2c_write_mask(bq, 1, (int )((u8 )val), 48, 4);
  return (tmp);
}
}
static int bq2415x_get_weak_battery_voltage(struct bq2415x_device *bq )
{
  int ret ;
  {
  ret = bq2415x_i2c_read_mask(bq, 1, 48, 4);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (ret * 100 + 3400);
}
}
static int bq2415x_set_battery_regulation_voltage(struct bq2415x_device *bq , int mV )
{
  int val ;
  int tmp ;
  {
  val = (mV / 10 + -350) / 2;
  if (val < 0) {
    val = 0;
  } else
  if (val > 47) {
    return (-22);
  } else {
  }
  tmp = bq2415x_i2c_write_mask(bq, 2, (int )((u8 )val), 252, 2);
  return (tmp);
}
}
static int bq2415x_get_battery_regulation_voltage(struct bq2415x_device *bq )
{
  int ret ;
  int tmp ;
  {
  tmp = bq2415x_i2c_read_mask(bq, 2, 252, 2);
  ret = tmp;
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (ret * 20 + 3500);
}
}
static int bq2415x_set_charge_current(struct bq2415x_device *bq , int mA )
{
  int val ;
  int tmp ;
  {
  if (bq->init_data.resistor_sense <= 0) {
    return (-22);
  } else {
  }
  val = (bq->init_data.resistor_sense * mA + -37400) / 6800;
  if (val < 0) {
    val = 0;
  } else
  if (val > 7) {
    val = 7;
  } else {
  }
  tmp = bq2415x_i2c_write_mask(bq, 4, (int )((u8 )val), 240, 4);
  return (tmp);
}
}
static int bq2415x_get_charge_current(struct bq2415x_device *bq )
{
  int ret ;
  {
  if (bq->init_data.resistor_sense <= 0) {
    return (-22);
  } else {
  }
  ret = bq2415x_i2c_read_mask(bq, 4, 112, 4);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((ret * 6800 + 37400) / bq->init_data.resistor_sense);
}
}
static int bq2415x_set_termination_current(struct bq2415x_device *bq , int mA )
{
  int val ;
  int tmp ;
  {
  if (bq->init_data.resistor_sense <= 0) {
    return (-22);
  } else {
  }
  val = (bq->init_data.resistor_sense * mA + -3400) / 3400;
  if (val < 0) {
    val = 0;
  } else
  if (val > 7) {
    val = 7;
  } else {
  }
  tmp = bq2415x_i2c_write_mask(bq, 4, (int )((u8 )val), 135, 0);
  return (tmp);
}
}
static int bq2415x_get_termination_current(struct bq2415x_device *bq )
{
  int ret ;
  {
  if (bq->init_data.resistor_sense <= 0) {
    return (-22);
  } else {
  }
  ret = bq2415x_i2c_read_mask(bq, 4, 7, 0);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (((ret + 1) * 3400) / bq->init_data.resistor_sense);
}
}
static int bq2415x_set_defaults(struct bq2415x_device *bq )
{
  int ret ;
  int ret___0 ;
  int ret___1 ;
  int ret___2 ;
  int ret___3 ;
  {
  bq2415x_exec_command(bq, 19);
  bq2415x_exec_command(bq, 13);
  bq2415x_exec_command(bq, 10);
  ret = 0;
  if (bq->init_data.current_limit != -1) {
    ret = bq2415x_set_current_limit(bq, bq->init_data.current_limit);
  } else {
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret___0 = 0;
  if (bq->init_data.weak_battery_voltage != -1) {
    ret___0 = bq2415x_set_weak_battery_voltage(bq, bq->init_data.weak_battery_voltage);
  } else {
  }
  if (ret___0 < 0) {
    return (ret___0);
  } else {
  }
  ret___1 = 0;
  if (bq->init_data.battery_regulation_voltage != -1) {
    ret___1 = bq2415x_set_battery_regulation_voltage(bq, bq->init_data.battery_regulation_voltage);
  } else {
  }
  if (ret___1 < 0) {
    return (ret___1);
  } else {
  }
  if (bq->init_data.resistor_sense > 0) {
    ret___2 = 0;
    if (bq->init_data.charge_current != -1) {
      ret___2 = bq2415x_set_charge_current(bq, bq->init_data.charge_current);
    } else {
    }
    if (ret___2 < 0) {
      return (ret___2);
    } else {
    }
    ret___3 = 0;
    if (bq->init_data.termination_current != -1) {
      ret___3 = bq2415x_set_termination_current(bq, bq->init_data.termination_current);
    } else {
    }
    if (ret___3 < 0) {
      return (ret___3);
    } else {
    }
    bq2415x_exec_command(bq, 9);
  } else {
  }
  bq2415x_exec_command(bq, 12);
  return (0);
}
}
static int bq2415x_set_mode(struct bq2415x_device *bq , enum bq2415x_mode mode )
{
  int ret ;
  int charger ;
  int boost ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  int ret___0 ;
  int ret___1 ;
  {
  ret = 0;
  charger = 0;
  boost = 0;
  if ((unsigned int )mode == 4U) {
    boost = 1;
  } else
  if ((unsigned int )mode != 0U) {
    charger = 1;
  } else {
  }
  if (charger == 0) {
    ret = bq2415x_exec_command(bq, 13);
  } else {
  }
  if (boost == 0) {
    ret = bq2415x_exec_command(bq, 19);
  } else {
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  switch ((unsigned int )mode) {
  case 0U:
  descriptor.modname = "bq2415x_charger";
  descriptor.function = "bq2415x_set_mode";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8348/dscv_tempdir/dscv/ri/32_7a/drivers/power/bq2415x_charger.c";
  descriptor.format = "changing mode to: Offline\n";
  descriptor.lineno = 753U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)bq->dev, "changing mode to: Offline\n");
  } else {
  }
  ret = bq2415x_set_current_limit(bq, 100);
  goto ldv_31056;
  case 1U:
  descriptor___0.modname = "bq2415x_charger";
  descriptor___0.function = "bq2415x_set_mode";
  descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8348/dscv_tempdir/dscv/ri/32_7a/drivers/power/bq2415x_charger.c";
  descriptor___0.format = "changing mode to: N/A\n";
  descriptor___0.lineno = 757U;
  descriptor___0.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)bq->dev, "changing mode to: N/A\n");
  } else {
  }
  ret = bq2415x_set_current_limit(bq, 100);
  goto ldv_31056;
  case 2U:
  descriptor___1.modname = "bq2415x_charger";
  descriptor___1.function = "bq2415x_set_mode";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8348/dscv_tempdir/dscv/ri/32_7a/drivers/power/bq2415x_charger.c";
  descriptor___1.format = "changing mode to: Host/HUB charger\n";
  descriptor___1.lineno = 761U;
  descriptor___1.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)bq->dev, "changing mode to: Host/HUB charger\n");
  } else {
  }
  ret = bq2415x_set_current_limit(bq, 500);
  goto ldv_31056;
  case 3U:
  descriptor___2.modname = "bq2415x_charger";
  descriptor___2.function = "bq2415x_set_mode";
  descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8348/dscv_tempdir/dscv/ri/32_7a/drivers/power/bq2415x_charger.c";
  descriptor___2.format = "changing mode to: Dedicated charger\n";
  descriptor___2.lineno = 765U;
  descriptor___2.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)bq->dev, "changing mode to: Dedicated charger\n");
  } else {
  }
  ret = bq2415x_set_current_limit(bq, 1800);
  goto ldv_31056;
  case 4U:
  descriptor___3.modname = "bq2415x_charger";
  descriptor___3.function = "bq2415x_set_mode";
  descriptor___3.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8348/dscv_tempdir/dscv/ri/32_7a/drivers/power/bq2415x_charger.c";
  descriptor___3.format = "changing mode to: Boost\n";
  descriptor___3.lineno = 769U;
  descriptor___3.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)bq->dev, "changing mode to: Boost\n");
  } else {
  }
  ret = bq2415x_set_current_limit(bq, 100);
  goto ldv_31056;
  }
  ldv_31056: ;
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (charger != 0) {
    ret = bq2415x_exec_command(bq, 12);
  } else
  if (boost != 0) {
    ret = bq2415x_exec_command(bq, 18);
  } else {
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret___0 = 0;
  if (bq->init_data.weak_battery_voltage != -1) {
    ret___0 = bq2415x_set_weak_battery_voltage(bq, bq->init_data.weak_battery_voltage);
  } else {
  }
  if (ret___0 < 0) {
    return (ret___0);
  } else {
  }
  ret___1 = 0;
  if (bq->init_data.battery_regulation_voltage != -1) {
    ret___1 = bq2415x_set_battery_regulation_voltage(bq, bq->init_data.battery_regulation_voltage);
  } else {
  }
  if (ret___1 < 0) {
    return (ret___1);
  } else {
  }
  bq->mode = mode;
  sysfs_notify(& (bq->charger)->dev.kobj, (char const *)0, "mode");
  return (0);
}
}
static int bq2415x_notifier_call(struct notifier_block *nb , unsigned long val , void *v )
{
  struct bq2415x_device *bq ;
  struct notifier_block const *__mptr ;
  struct power_supply *psy ;
  enum bq2415x_mode mode ;
  union power_supply_propval prop ;
  int ret ;
  int mA ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  __mptr = (struct notifier_block const *)nb;
  bq = (struct bq2415x_device *)__mptr + 0xfffffffffffffe98UL;
  psy = (struct power_supply *)v;
  if (val != 0UL) {
    return (1);
  } else {
  }
  if ((unsigned long )bq->notify_psy != (unsigned long )psy) {
    return (1);
  } else {
  }
  descriptor.modname = "bq2415x_charger";
  descriptor.function = "bq2415x_notifier_call";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--32_7a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/8348/dscv_tempdir/dscv/ri/32_7a/drivers/power/bq2415x_charger.c";
  descriptor.format = "notifier call was called\n";
  descriptor.lineno = 812U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)bq->dev, "notifier call was called\n");
  } else {
  }
  ret = power_supply_get_property(psy, 16, & prop);
  if (ret != 0) {
    return (1);
  } else {
  }
  mA = prop.intval;
  if (mA == 0) {
    mode = 0;
  } else
  if (mA <= 499) {
    mode = 1;
  } else
  if (mA <= 1799) {
    mode = 2;
  } else {
    mode = 3;
  }
  if ((unsigned int )bq->reported_mode == (unsigned int )mode) {
    return (1);
  } else {
  }
  bq->reported_mode = mode;
  if (bq->automode <= 0) {
    return (1);
  } else {
  }
  schedule_delayed_work(& bq->work, 0UL);
  return (1);
}
}
static void bq2415x_set_autotimer(struct bq2415x_device *bq , int state )
{
  {
  ldv_mutex_lock_21(& bq2415x_timer_mutex);
  if (bq->autotimer == state) {
    ldv_mutex_unlock_22(& bq2415x_timer_mutex);
    return;
  } else {
  }
  bq->autotimer = state;
  if (state != 0) {
    schedule_delayed_work(& bq->work, 2500UL);
    bq2415x_exec_command(bq, 0);
    bq->timer_error = (char const *)0;
  } else {
    ldv_cancel_delayed_work_sync_23(& bq->work);
  }
  ldv_mutex_unlock_24(& bq2415x_timer_mutex);
  return;
}
}
static void bq2415x_timer_error(struct bq2415x_device *bq , char const *msg )
{
  {
  bq->timer_error = msg;
  sysfs_notify(& (bq->charger)->dev.kobj, (char const *)0, "timer");
  dev_err((struct device const *)bq->dev, "%s\n", msg);
  if (bq->automode > 0) {
    bq->automode = 0;
  } else {
  }
  bq2415x_set_mode(bq, 0);
  bq2415x_set_autotimer(bq, 0);
  return;
}
}
static void bq2415x_timer_work(struct work_struct *work )
{
  struct bq2415x_device *bq ;
  struct work_struct const *__mptr ;
  int ret ;
  int error ;
  int boost ;
  {
  __mptr = (struct work_struct const *)work;
  bq = (struct bq2415x_device *)__mptr + 0xffffffffffffff80UL;
  if (bq->automode > 0 && (unsigned int )bq->reported_mode != (unsigned int )bq->mode) {
    sysfs_notify(& (bq->charger)->dev.kobj, (char const *)0, "reported_mode");
    bq2415x_set_mode(bq, bq->reported_mode);
  } else {
  }
  if (bq->autotimer == 0) {
    return;
  } else {
  }
  ret = bq2415x_exec_command(bq, 0);
  if (ret < 0) {
    bq2415x_timer_error(bq, "Resetting timer failed");
    return;
  } else {
  }
  boost = bq2415x_exec_command(bq, 17);
  if (boost < 0) {
    bq2415x_timer_error(bq, "Unknown error");
    return;
  } else {
  }
  error = bq2415x_exec_command(bq, 7);
  if (error < 0) {
    bq2415x_timer_error(bq, "Unknown error");
    return;
  } else {
  }
  if (boost != 0) {
    switch (error) {
    case 0: ;
    goto ldv_31100;
    case 6:
    dev_err((struct device const *)bq->dev, "Timer expired\n");
    goto ldv_31100;
    case 3:
    dev_err((struct device const *)bq->dev, "Battery voltage to low\n");
    goto ldv_31100;
    case 1:
    bq2415x_timer_error(bq, "Overvoltage protection (chip fried)");
    return;
    case 2:
    bq2415x_timer_error(bq, "Overload");
    return;
    case 4:
    bq2415x_timer_error(bq, "Battery overvoltage protection");
    return;
    case 5:
    bq2415x_timer_error(bq, "Thermal shutdown (too hot)");
    return;
    case 7:
    bq2415x_timer_error(bq, "Unknown error");
    return;
    }
    ldv_31100: ;
  } else {
    switch (error) {
    case 0: ;
    goto ldv_31109;
    case 2:
    dev_err((struct device const *)bq->dev, "Sleep mode\n");
    goto ldv_31109;
    case 3:
    dev_err((struct device const *)bq->dev, "Poor input source\n");
    goto ldv_31109;
    case 6:
    dev_err((struct device const *)bq->dev, "Timer expired\n");
    goto ldv_31109;
    case 7:
    dev_err((struct device const *)bq->dev, "No battery\n");
    goto ldv_31109;
    case 1:
    bq2415x_timer_error(bq, "Overvoltage protection (chip fried)");
    return;
    case 4:
    bq2415x_timer_error(bq, "Battery overvoltage protection");
    return;
    case 5:
    bq2415x_timer_error(bq, "Thermal shutdown (too hot)");
    return;
    }
    ldv_31109: ;
  }
  schedule_delayed_work(& bq->work, 2500UL);
  return;
}
}
static enum power_supply_property bq2415x_power_supply_props[2U] = { 0, 62};
static int bq2415x_power_supply_get_property(struct power_supply *psy , enum power_supply_property psp ,
                                             union power_supply_propval *val )
{
  struct bq2415x_device *bq ;
  void *tmp ;
  int ret ;
  {
  tmp = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp;
  switch ((unsigned int )psp) {
  case 0U:
  ret = bq2415x_exec_command(bq, 5);
  if (ret < 0) {
    return (ret);
  } else
  if (ret == 0) {
    val->intval = 3;
  } else
  if (ret == 1) {
    val->intval = 1;
  } else
  if (ret == 2) {
    val->intval = 4;
  } else {
    val->intval = 0;
  }
  goto ldv_31126;
  case 62U:
  val->strval = (char const *)bq->model;
  goto ldv_31126;
  default: ;
  return (-22);
  }
  ldv_31126: ;
  return (0);
}
}
static int bq2415x_power_supply_init(struct bq2415x_device *bq )
{
  int ret ;
  int chip ;
  char revstr[8U] ;
  struct power_supply_config psy_cfg ;
  enum bq2415x_chip tmp ;
  int tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  psy_cfg.of_node = 0;
  psy_cfg.drv_data = (void *)bq;
  psy_cfg.supplied_to = 0;
  psy_cfg.num_supplicants = 0UL;
  bq->charger_desc.name = (char const *)bq->name;
  bq->charger_desc.type = 4;
  bq->charger_desc.properties = (enum power_supply_property *)(& bq2415x_power_supply_props);
  bq->charger_desc.num_properties = 2UL;
  bq->charger_desc.get_property = & bq2415x_power_supply_get_property;
  tmp = bq2415x_detect_chip(bq);
  ret = (int )tmp;
  if (ret < 0) {
    chip = 0;
  } else {
    chip = ret;
  }
  ret = bq2415x_detect_revision(bq);
  if (ret < 0) {
    strcpy((char *)(& revstr), "unknown");
  } else {
    sprintf((char *)(& revstr), "1.%d", ret);
  }
  tmp___0 = bq2415x_get_vender_code(bq);
  bq->model = kasprintf(208U, "chip %s, revision %s, vender code %.3d", bq2415x_chip_name[chip],
                        (char *)(& revstr), tmp___0);
  if ((unsigned long )bq->model == (unsigned long )((char *)0)) {
    dev_err((struct device const *)bq->dev, "failed to allocate model name\n");
    return (-12);
  } else {
  }
  bq->charger = power_supply_register(bq->dev, (struct power_supply_desc const *)(& bq->charger_desc),
                                      (struct power_supply_config const *)(& psy_cfg));
  tmp___2 = IS_ERR((void const *)bq->charger);
  if ((int )tmp___2) {
    kfree((void const *)bq->model);
    tmp___1 = PTR_ERR((void const *)bq->charger);
    return ((int )tmp___1);
  } else {
  }
  return (0);
}
}
static void bq2415x_power_supply_exit(struct bq2415x_device *bq )
{
  {
  bq->autotimer = 0;
  if (bq->automode > 0) {
    bq->automode = 0;
  } else {
  }
  ldv_cancel_delayed_work_sync_25(& bq->work);
  power_supply_unregister(bq->charger);
  kfree((void const *)bq->model);
  return;
}
}
static ssize_t bq2415x_sysfs_show_status(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  enum bq2415x_command command ;
  int ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  tmp___4 = strcmp(attr->attr.name, "otg_status");
  if (tmp___4 == 0) {
    command = 1;
  } else {
    tmp___3 = strcmp(attr->attr.name, "charge_status");
    if (tmp___3 == 0) {
      command = 5;
    } else {
      tmp___2 = strcmp(attr->attr.name, "boost_status");
      if (tmp___2 == 0) {
        command = 6;
      } else {
        tmp___1 = strcmp(attr->attr.name, "fault_status");
        if (tmp___1 == 0) {
          command = 7;
        } else {
          return (-22L);
        }
      }
    }
  }
  ret = bq2415x_exec_command(bq, command);
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  tmp___5 = sprintf(buf, "%d\n", ret);
  return ((ssize_t )tmp___5);
}
}
static ssize_t bq2415x_sysfs_set_timer(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  int ret ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  ret = 0;
  tmp___2 = strncmp(buf, "auto", 4UL);
  if (tmp___2 == 0) {
    bq2415x_set_autotimer(bq, 1);
  } else {
    tmp___1 = strncmp(buf, "off", 3UL);
    if (tmp___1 == 0) {
      bq2415x_set_autotimer(bq, 0);
    } else {
      ret = bq2415x_exec_command(bq, 0);
    }
  }
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t bq2415x_sysfs_show_timer(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  if ((unsigned long )bq->timer_error != (unsigned long )((char const *)0)) {
    tmp___1 = sprintf(buf, "%s\n", bq->timer_error);
    return ((ssize_t )tmp___1);
  } else {
  }
  if (bq->autotimer != 0) {
    tmp___2 = sprintf(buf, "auto\n");
    return ((ssize_t )tmp___2);
  } else {
  }
  tmp___3 = sprintf(buf, "off\n");
  return ((ssize_t )tmp___3);
}
}
static ssize_t bq2415x_sysfs_set_mode(struct device *dev , struct device_attribute *attr ,
                                      char const *buf , size_t count )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  enum bq2415x_mode mode ;
  int ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  ret = 0;
  tmp___7 = strncmp(buf, "auto", 4UL);
  if (tmp___7 == 0) {
    if (bq->automode < 0) {
      return (-22L);
    } else {
    }
    bq->automode = 1;
    mode = bq->reported_mode;
  } else {
    tmp___6 = strncmp(buf, "off", 3UL);
    if (tmp___6 == 0) {
      if (bq->automode > 0) {
        bq->automode = 0;
      } else {
      }
      mode = 0;
    } else {
      tmp___5 = strncmp(buf, "none", 4UL);
      if (tmp___5 == 0) {
        if (bq->automode > 0) {
          bq->automode = 0;
        } else {
        }
        mode = 1;
      } else {
        tmp___4 = strncmp(buf, "host", 4UL);
        if (tmp___4 == 0) {
          if (bq->automode > 0) {
            bq->automode = 0;
          } else {
          }
          mode = 2;
        } else {
          tmp___3 = strncmp(buf, "dedicated", 9UL);
          if (tmp___3 == 0) {
            if (bq->automode > 0) {
              bq->automode = 0;
            } else {
            }
            mode = 3;
          } else {
            tmp___2 = strncmp(buf, "boost", 5UL);
            if (tmp___2 == 0) {
              if (bq->automode > 0) {
                bq->automode = 0;
              } else {
              }
              mode = 4;
            } else {
              tmp___1 = strncmp(buf, "reset", 5UL);
              if (tmp___1 == 0) {
                bq2415x_reset_chip(bq);
                bq2415x_set_defaults(bq);
                if (bq->automode <= 0) {
                  return ((ssize_t )count);
                } else {
                }
                bq->automode = 1;
                mode = bq->reported_mode;
              } else {
                return (-22L);
              }
            }
          }
        }
      }
    }
  }
  ret = bq2415x_set_mode(bq, mode);
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t bq2415x_sysfs_show_mode(struct device *dev , struct device_attribute *attr ,
                                       char *buf )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  ssize_t ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  ret = 0L;
  if (bq->automode > 0) {
    tmp___1 = sprintf(buf + (unsigned long )ret, "auto (");
    ret = (ssize_t )tmp___1 + ret;
  } else {
  }
  switch ((unsigned int )bq->mode) {
  case 0U:
  tmp___2 = sprintf(buf + (unsigned long )ret, "off");
  ret = (ssize_t )tmp___2 + ret;
  goto ldv_31185;
  case 1U:
  tmp___3 = sprintf(buf + (unsigned long )ret, "none");
  ret = (ssize_t )tmp___3 + ret;
  goto ldv_31185;
  case 2U:
  tmp___4 = sprintf(buf + (unsigned long )ret, "host");
  ret = (ssize_t )tmp___4 + ret;
  goto ldv_31185;
  case 3U:
  tmp___5 = sprintf(buf + (unsigned long )ret, "dedicated");
  ret = (ssize_t )tmp___5 + ret;
  goto ldv_31185;
  case 4U:
  tmp___6 = sprintf(buf + (unsigned long )ret, "boost");
  ret = (ssize_t )tmp___6 + ret;
  goto ldv_31185;
  }
  ldv_31185: ;
  if (bq->automode > 0) {
    tmp___7 = sprintf(buf + (unsigned long )ret, ")");
    ret = (ssize_t )tmp___7 + ret;
  } else {
  }
  tmp___8 = sprintf(buf + (unsigned long )ret, "\n");
  ret = (ssize_t )tmp___8 + ret;
  return (ret);
}
}
static ssize_t bq2415x_sysfs_show_reported_mode(struct device *dev , struct device_attribute *attr ,
                                                char *buf )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  if (bq->automode < 0) {
    return (-22L);
  } else {
  }
  switch ((unsigned int )bq->reported_mode) {
  case 0U:
  tmp___1 = sprintf(buf, "off\n");
  return ((ssize_t )tmp___1);
  case 1U:
  tmp___2 = sprintf(buf, "none\n");
  return ((ssize_t )tmp___2);
  case 2U:
  tmp___3 = sprintf(buf, "host\n");
  return ((ssize_t )tmp___3);
  case 3U:
  tmp___4 = sprintf(buf, "dedicated\n");
  return ((ssize_t )tmp___4);
  case 4U:
  tmp___5 = sprintf(buf, "boost\n");
  return ((ssize_t )tmp___5);
  }
  return (-22L);
}
}
static ssize_t bq2415x_sysfs_set_registers(struct device *dev , struct device_attribute *attr ,
                                           char const *buf , size_t count )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  ssize_t ret ;
  unsigned int reg ;
  unsigned int val ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  ret = 0L;
  tmp___1 = sscanf(buf, "%x %x", & reg, & val);
  if (tmp___1 != 2) {
    return (-22L);
  } else {
  }
  if (reg > 4U || val > 255U) {
    return (-22L);
  } else {
  }
  tmp___2 = bq2415x_i2c_write(bq, (int )((u8 )reg), (int )((u8 )val));
  ret = (ssize_t )tmp___2;
  if (ret < 0L) {
    return (ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t bq2415x_sysfs_print_reg(struct bq2415x_device *bq , u8 reg , char *buf )
{
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = bq2415x_i2c_read(bq, (int )reg);
  ret = tmp;
  if (ret < 0) {
    tmp___0 = sprintf(buf, "%#.2x=error %d\n", (int )reg, ret);
    return ((ssize_t )tmp___0);
  } else {
  }
  tmp___1 = sprintf(buf, "%#.2x=%#.2x\n", (int )reg, ret);
  return ((ssize_t )tmp___1);
}
}
static ssize_t bq2415x_sysfs_show_registers(struct device *dev , struct device_attribute *attr ,
                                            char *buf )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  ssize_t ret ;
  ssize_t tmp___1 ;
  ssize_t tmp___2 ;
  ssize_t tmp___3 ;
  ssize_t tmp___4 ;
  ssize_t tmp___5 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  ret = 0L;
  tmp___1 = bq2415x_sysfs_print_reg(bq, 0, buf + (unsigned long )ret);
  ret = tmp___1 + ret;
  tmp___2 = bq2415x_sysfs_print_reg(bq, 1, buf + (unsigned long )ret);
  ret = tmp___2 + ret;
  tmp___3 = bq2415x_sysfs_print_reg(bq, 2, buf + (unsigned long )ret);
  ret = tmp___3 + ret;
  tmp___4 = bq2415x_sysfs_print_reg(bq, 3, buf + (unsigned long )ret);
  ret = tmp___4 + ret;
  tmp___5 = bq2415x_sysfs_print_reg(bq, 4, buf + (unsigned long )ret);
  ret = tmp___5 + ret;
  return (ret);
}
}
static ssize_t bq2415x_sysfs_set_limit(struct device *dev , struct device_attribute *attr ,
                                       char const *buf , size_t count )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  long val ;
  int ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  tmp___1 = kstrtol(buf, 10U, & val);
  if (tmp___1 < 0) {
    return (-22L);
  } else {
  }
  tmp___6 = strcmp(attr->attr.name, "current_limit");
  if (tmp___6 == 0) {
    ret = bq2415x_set_current_limit(bq, (int )val);
  } else {
    tmp___5 = strcmp(attr->attr.name, "weak_battery_voltage");
    if (tmp___5 == 0) {
      ret = bq2415x_set_weak_battery_voltage(bq, (int )val);
    } else {
      tmp___4 = strcmp(attr->attr.name, "battery_regulation_voltage");
      if (tmp___4 == 0) {
        ret = bq2415x_set_battery_regulation_voltage(bq, (int )val);
      } else {
        tmp___3 = strcmp(attr->attr.name, "charge_current");
        if (tmp___3 == 0) {
          ret = bq2415x_set_charge_current(bq, (int )val);
        } else {
          tmp___2 = strcmp(attr->attr.name, "termination_current");
          if (tmp___2 == 0) {
            ret = bq2415x_set_termination_current(bq, (int )val);
          } else {
            return (-22L);
          }
        }
      }
    }
  }
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t bq2415x_sysfs_show_limit(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  int ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  tmp___5 = strcmp(attr->attr.name, "current_limit");
  if (tmp___5 == 0) {
    ret = bq2415x_get_current_limit(bq);
  } else {
    tmp___4 = strcmp(attr->attr.name, "weak_battery_voltage");
    if (tmp___4 == 0) {
      ret = bq2415x_get_weak_battery_voltage(bq);
    } else {
      tmp___3 = strcmp(attr->attr.name, "battery_regulation_voltage");
      if (tmp___3 == 0) {
        ret = bq2415x_get_battery_regulation_voltage(bq);
      } else {
        tmp___2 = strcmp(attr->attr.name, "charge_current");
        if (tmp___2 == 0) {
          ret = bq2415x_get_charge_current(bq);
        } else {
          tmp___1 = strcmp(attr->attr.name, "termination_current");
          if (tmp___1 == 0) {
            ret = bq2415x_get_termination_current(bq);
          } else {
            return (-22L);
          }
        }
      }
    }
  }
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  tmp___6 = sprintf(buf, "%d\n", ret);
  return ((ssize_t )tmp___6);
}
}
static ssize_t bq2415x_sysfs_set_enable(struct device *dev , struct device_attribute *attr ,
                                        char const *buf , size_t count )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  enum bq2415x_command command ;
  long val ;
  int ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  tmp___1 = kstrtol(buf, 10U, & val);
  if (tmp___1 < 0) {
    return (-22L);
  } else {
  }
  tmp___5 = strcmp(attr->attr.name, "charge_termination_enable");
  if (tmp___5 == 0) {
    command = val != 0L ? 9 : 10;
  } else {
    tmp___4 = strcmp(attr->attr.name, "high_impedance_enable");
    if (tmp___4 == 0) {
      command = val != 0L ? 15 : 16;
    } else {
      tmp___3 = strcmp(attr->attr.name, "otg_pin_enable");
      if (tmp___3 == 0) {
        command = val != 0L ? 24 : 25;
      } else {
        tmp___2 = strcmp(attr->attr.name, "stat_pin_enable");
        if (tmp___2 == 0) {
          command = val != 0L ? 3 : 4;
        } else {
          return (-22L);
        }
      }
    }
  }
  ret = bq2415x_exec_command(bq, command);
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  return ((ssize_t )count);
}
}
static ssize_t bq2415x_sysfs_show_enable(struct device *dev , struct device_attribute *attr ,
                                         char *buf )
{
  struct power_supply *psy ;
  void *tmp ;
  struct bq2415x_device *bq ;
  void *tmp___0 ;
  enum bq2415x_command command ;
  int ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  psy = (struct power_supply *)tmp;
  tmp___0 = power_supply_get_drvdata(psy);
  bq = (struct bq2415x_device *)tmp___0;
  tmp___4 = strcmp(attr->attr.name, "charge_termination_enable");
  if (tmp___4 == 0) {
    command = 8;
  } else {
    tmp___3 = strcmp(attr->attr.name, "high_impedance_enable");
    if (tmp___3 == 0) {
      command = 14;
    } else {
      tmp___2 = strcmp(attr->attr.name, "otg_pin_enable");
      if (tmp___2 == 0) {
        command = 23;
      } else {
        tmp___1 = strcmp(attr->attr.name, "stat_pin_enable");
        if (tmp___1 == 0) {
          command = 2;
        } else {
          return (-22L);
        }
      }
    }
  }
  ret = bq2415x_exec_command(bq, command);
  if (ret < 0) {
    return ((ssize_t )ret);
  } else {
  }
  tmp___5 = sprintf(buf, "%d\n", ret);
  return ((ssize_t )tmp___5);
}
}
static struct device_attribute dev_attr_current_limit = {{"current_limit", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_limit, & bq2415x_sysfs_set_limit};
static struct device_attribute dev_attr_weak_battery_voltage = {{"weak_battery_voltage", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}, {(char)0},
                                                  {(char)0}, {(char)0}}}}, & bq2415x_sysfs_show_limit,
    & bq2415x_sysfs_set_limit};
static struct device_attribute dev_attr_battery_regulation_voltage = {{"battery_regulation_voltage", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}, {(char)0},
                                                        {(char)0}, {(char)0}}}}, & bq2415x_sysfs_show_limit,
    & bq2415x_sysfs_set_limit};
static struct device_attribute dev_attr_charge_current = {{"charge_current", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_limit, & bq2415x_sysfs_set_limit};
static struct device_attribute dev_attr_termination_current = {{"termination_current", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & bq2415x_sysfs_show_limit,
    & bq2415x_sysfs_set_limit};
static struct device_attribute dev_attr_charge_termination_enable = {{"charge_termination_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & bq2415x_sysfs_show_enable,
    & bq2415x_sysfs_set_enable};
static struct device_attribute dev_attr_high_impedance_enable = {{"high_impedance_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & bq2415x_sysfs_show_enable,
    & bq2415x_sysfs_set_enable};
static struct device_attribute dev_attr_otg_pin_enable = {{"otg_pin_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_enable, & bq2415x_sysfs_set_enable};
static struct device_attribute dev_attr_stat_pin_enable = {{"stat_pin_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_enable, & bq2415x_sysfs_set_enable};
static struct device_attribute dev_attr_reported_mode = {{"reported_mode", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_reported_mode, (ssize_t (*)(struct device * , struct device_attribute * ,
                                                     char const * , size_t ))0};
static struct device_attribute dev_attr_mode = {{"mode", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & bq2415x_sysfs_show_mode,
    & bq2415x_sysfs_set_mode};
static struct device_attribute dev_attr_timer = {{"timer", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & bq2415x_sysfs_show_timer,
    & bq2415x_sysfs_set_timer};
static struct device_attribute dev_attr_registers = {{"registers", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_registers, & bq2415x_sysfs_set_registers};
static struct device_attribute dev_attr_otg_status = {{"otg_status", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_status, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static struct device_attribute dev_attr_charge_status = {{"charge_status", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_status, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static struct device_attribute dev_attr_boost_status = {{"boost_status", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_status, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static struct device_attribute dev_attr_fault_status = {{"fault_status", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & bq2415x_sysfs_show_status, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static struct attribute *bq2415x_sysfs_attributes[18U] =
  { & dev_attr_current_limit.attr, & dev_attr_weak_battery_voltage.attr, & dev_attr_battery_regulation_voltage.attr, & dev_attr_charge_current.attr,
        & dev_attr_termination_current.attr, & dev_attr_charge_termination_enable.attr, & dev_attr_high_impedance_enable.attr, & dev_attr_otg_pin_enable.attr,
        & dev_attr_stat_pin_enable.attr, & dev_attr_reported_mode.attr, & dev_attr_mode.attr, & dev_attr_timer.attr,
        & dev_attr_registers.attr, & dev_attr_otg_status.attr, & dev_attr_charge_status.attr, & dev_attr_boost_status.attr,
        & dev_attr_fault_status.attr, (struct attribute *)0};
static struct attribute_group const bq2415x_sysfs_attr_group = {0, 0, (struct attribute **)(& bq2415x_sysfs_attributes), 0};
static int bq2415x_sysfs_init(struct bq2415x_device *bq )
{
  int tmp ;
  {
  tmp = sysfs_create_group(& (bq->charger)->dev.kobj, & bq2415x_sysfs_attr_group);
  return (tmp);
}
}
static void bq2415x_sysfs_exit(struct bq2415x_device *bq )
{
  {
  sysfs_remove_group(& (bq->charger)->dev.kobj, & bq2415x_sysfs_attr_group);
  return;
}
}
static int bq2415x_probe(struct i2c_client *client , struct i2c_device_id const *id )
{
  int ret ;
  int num ;
  char *name ;
  struct bq2415x_device *bq ;
  struct device_node *np ;
  struct bq2415x_platform_data *pdata ;
  struct acpi_device_id const *acpi_id ;
  struct acpi_device *tmp ;
  acpi_handle tmp___0 ;
  struct acpi_device *tmp___1 ;
  acpi_handle tmp___2 ;
  void *tmp___3 ;
  long tmp___4 ;
  bool tmp___5 ;
  struct acpi_device *tmp___6 ;
  acpi_handle tmp___7 ;
  struct acpi_device *tmp___8 ;
  acpi_handle tmp___9 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  name = (char *)0;
  np = client->dev.of_node;
  pdata = (struct bq2415x_platform_data *)client->dev.platform_data;
  acpi_id = (struct acpi_device_id const *)0;
  if ((unsigned long )np == (unsigned long )((struct device_node *)0) && (unsigned long )pdata == (unsigned long )((struct bq2415x_platform_data *)0)) {
    tmp = to_acpi_node(client->dev.fwnode);
    tmp___0 = acpi_device_handle(tmp);
    if ((unsigned long )tmp___0 == (unsigned long )((acpi_handle )0)) {
      dev_err((struct device const *)(& client->dev), "Neither devicetree, nor platform data, nor ACPI support\n");
      return (-19);
    } else {
    }
  } else {
  }
  ldv_mutex_lock_26(& bq2415x_id_mutex);
  num = idr_alloc(& bq2415x_id, (void *)client, 0, 0, 208U);
  ldv_mutex_unlock_27(& bq2415x_id_mutex);
  if (num < 0) {
    return (num);
  } else {
  }
  if ((unsigned long )id != (unsigned long )((struct i2c_device_id const *)0)) {
    name = kasprintf(208U, "%s-%d", (char const *)(& id->name), num);
  } else {
    tmp___1 = to_acpi_node(client->dev.fwnode);
    tmp___2 = acpi_device_handle(tmp___1);
    if ((unsigned long )tmp___2 != (unsigned long )((acpi_handle )0)) {
      acpi_id = acpi_match_device((client->dev.driver)->acpi_match_table, (struct device const *)(& client->dev));
      name = kasprintf(208U, "%s-%d", (__u8 const *)(& acpi_id->id), num);
    } else {
    }
  }
  if ((unsigned long )name == (unsigned long )((char *)0)) {
    dev_err((struct device const *)(& client->dev), "failed to allocate device name\n");
    ret = -12;
    goto error_1;
  } else {
  }
  tmp___3 = devm_kzalloc(& client->dev, 440UL, 208U);
  bq = (struct bq2415x_device *)tmp___3;
  if ((unsigned long )bq == (unsigned long )((struct bq2415x_device *)0)) {
    ret = -12;
    goto error_2;
  } else {
  }
  if ((unsigned long )np != (unsigned long )((struct device_node *)0)) {
    bq->notify_psy = power_supply_get_by_phandle(np, "ti,usb-charger-detection");
    tmp___5 = IS_ERR((void const *)bq->notify_psy);
    if ((int )tmp___5) {
      tmp___4 = PTR_ERR((void const *)bq->notify_psy);
      _dev_info((struct device const *)(& client->dev), "no \'ti,usb-charger-detection\' property (err=%ld)\n",
                tmp___4);
      bq->notify_psy = (struct power_supply *)0;
    } else
    if ((unsigned long )bq->notify_psy == (unsigned long )((struct power_supply *)0)) {
      ret = -517;
      goto error_2;
    } else {
    }
  } else
  if ((unsigned long )pdata != (unsigned long )((struct bq2415x_platform_data *)0) && (unsigned long )pdata->notify_device != (unsigned long )((char const *)0)) {
    bq->notify_psy = power_supply_get_by_name(pdata->notify_device);
  } else {
    bq->notify_psy = (struct power_supply *)0;
  }
  i2c_set_clientdata(client, (void *)bq);
  bq->id = num;
  bq->dev = & client->dev;
  if ((unsigned long )id != (unsigned long )((struct i2c_device_id const *)0)) {
    bq->chip = (enum bq2415x_chip )id->driver_data;
  } else {
    tmp___6 = to_acpi_node((bq->dev)->fwnode);
    tmp___7 = acpi_device_handle(tmp___6);
    if ((unsigned long )tmp___7 != (unsigned long )((acpi_handle )0)) {
      bq->chip = (enum bq2415x_chip )acpi_id->driver_data;
    } else {
    }
  }
  bq->name = name;
  bq->mode = 0;
  bq->reported_mode = 0;
  bq->autotimer = 0;
  bq->automode = 0;
  if ((unsigned long )np != (unsigned long )((struct device_node *)0)) {
    goto _L;
  } else {
    tmp___8 = to_acpi_node((bq->dev)->fwnode);
    tmp___9 = acpi_device_handle(tmp___8);
    if ((unsigned long )tmp___9 != (unsigned long )((acpi_handle )0)) {
      _L:
      ret = device_property_read_u32(bq->dev, "ti,current-limit", (u32 *)(& bq->init_data.current_limit));
      if (ret != 0) {
        goto error_3;
      } else {
      }
      ret = device_property_read_u32(bq->dev, "ti,weak-battery-voltage", (u32 *)(& bq->init_data.weak_battery_voltage));
      if (ret != 0) {
        goto error_3;
      } else {
      }
      ret = device_property_read_u32(bq->dev, "ti,battery-regulation-voltage", (u32 *)(& bq->init_data.battery_regulation_voltage));
      if (ret != 0) {
        goto error_3;
      } else {
      }
      ret = device_property_read_u32(bq->dev, "ti,charge-current", (u32 *)(& bq->init_data.charge_current));
      if (ret != 0) {
        goto error_3;
      } else {
      }
      ret = device_property_read_u32(bq->dev, "ti,termination-current", (u32 *)(& bq->init_data.termination_current));
      if (ret != 0) {
        goto error_3;
      } else {
      }
      ret = device_property_read_u32(bq->dev, "ti,resistor-sense", (u32 *)(& bq->init_data.resistor_sense));
      if (ret != 0) {
        goto error_3;
      } else {
      }
    } else {
      memcpy((void *)(& bq->init_data), (void const *)pdata, 32UL);
    }
  }
  bq2415x_reset_chip(bq);
  ret = bq2415x_power_supply_init(bq);
  if (ret != 0) {
    dev_err((struct device const *)bq->dev, "failed to register power supply: %d\n",
            ret);
    goto error_3;
  } else {
  }
  ret = bq2415x_sysfs_init(bq);
  if (ret != 0) {
    dev_err((struct device const *)bq->dev, "failed to create sysfs entries: %d\n",
            ret);
    goto error_4;
  } else {
  }
  ret = bq2415x_set_defaults(bq);
  if (ret != 0) {
    dev_err((struct device const *)bq->dev, "failed to set default values: %d\n",
            ret);
    goto error_5;
  } else {
  }
  if ((unsigned long )bq->notify_psy != (unsigned long )((struct power_supply *)0)) {
    bq->nb.notifier_call = & bq2415x_notifier_call;
    ret = power_supply_reg_notifier(& bq->nb);
    if (ret != 0) {
      dev_err((struct device const *)bq->dev, "failed to reg notifier: %d\n", ret);
      goto error_6;
    } else {
    }
    bq2415x_notifier_call(& bq->nb, 0UL, (void *)bq->notify_psy);
    bq2415x_set_mode(bq, bq->reported_mode);
    bq->automode = 1;
    _dev_info((struct device const *)bq->dev, "automode enabled\n");
  } else {
    bq->automode = -1;
    _dev_info((struct device const *)bq->dev, "automode not supported\n");
  }
  __init_work(& bq->work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  bq->work.work.data = __constr_expr_0;
  lockdep_init_map(& bq->work.work.lockdep_map, "(&(&bq->work)->work)", & __key, 0);
  INIT_LIST_HEAD(& bq->work.work.entry);
  bq->work.work.func = & bq2415x_timer_work;
  init_timer_key(& bq->work.timer, 2097152U, "(&(&bq->work)->timer)", & __key___0);
  bq->work.timer.function = & delayed_work_timer_fn;
  bq->work.timer.data = (unsigned long )(& bq->work);
  bq2415x_set_autotimer(bq, 1);
  _dev_info((struct device const *)bq->dev, "driver registered\n");
  return (0);
  error_6: ;
  error_5:
  bq2415x_sysfs_exit(bq);
  error_4:
  bq2415x_power_supply_exit(bq);
  error_3: ;
  if ((unsigned long )bq->notify_psy != (unsigned long )((struct power_supply *)0)) {
    power_supply_put(bq->notify_psy);
  } else {
  }
  error_2:
  kfree((void const *)name);
  error_1:
  ldv_mutex_lock_28(& bq2415x_id_mutex);
  idr_remove(& bq2415x_id, num);
  ldv_mutex_unlock_29(& bq2415x_id_mutex);
  return (ret);
}
}
static int bq2415x_remove(struct i2c_client *client )
{
  struct bq2415x_device *bq ;
  void *tmp ;
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  bq = (struct bq2415x_device *)tmp;
  if ((unsigned long )bq->notify_psy != (unsigned long )((struct power_supply *)0)) {
    power_supply_unreg_notifier(& bq->nb);
    power_supply_put(bq->notify_psy);
  } else {
  }
  bq2415x_sysfs_exit(bq);
  bq2415x_power_supply_exit(bq);
  bq2415x_reset_chip(bq);
  ldv_mutex_lock_30(& bq2415x_id_mutex);
  idr_remove(& bq2415x_id, bq->id);
  ldv_mutex_unlock_31(& bq2415x_id_mutex);
  _dev_info((struct device const *)bq->dev, "driver unregistered\n");
  kfree((void const *)bq->name);
  return (0);
}
}
static struct i2c_device_id const bq2415x_i2c_id_table[14U] =
  { {{'b', 'q', '2', '4', '1', '5', 'x', '\000'}, 0UL},
        {{'b', 'q', '2', '4', '1', '5', '0', '\000'}, 1UL},
        {{'b', 'q', '2', '4', '1', '5', '0', 'a', '\000'}, 2UL},
        {{'b', 'q', '2', '4', '1', '5', '1', '\000'}, 3UL},
        {{'b', 'q', '2', '4', '1', '5', '1', 'a', '\000'}, 4UL},
        {{'b', 'q', '2', '4', '1', '5', '2', '\000'}, 5UL},
        {{'b', 'q', '2', '4', '1', '5', '3', '\000'}, 6UL},
        {{'b', 'q', '2', '4', '1', '5', '3', 'a', '\000'}, 7UL},
        {{'b', 'q', '2', '4', '1', '5', '5', '\000'}, 8UL},
        {{'b', 'q', '2', '4', '1', '5', '6', '\000'}, 9UL},
        {{'b', 'q', '2', '4', '1', '5', '6', 'a', '\000'}, 10UL},
        {{'b', 'q', '2', '4', '1', '5', '7', 's', '\000'}, 11UL},
        {{'b', 'q', '2', '4', '1', '5', '8', '\000'}, 12UL}};
struct i2c_device_id const __mod_i2c__bq2415x_i2c_id_table_device_table[14U] ;
static struct acpi_device_id const bq2415x_i2c_acpi_match[14U] =
  { {{'B', 'Q', '2', '4', '1', '5', 'X', '\000'}, 0UL},
        {{'B', 'Q', '2', '4', '1', '5', '0', '0', '\000'}, 1UL},
        {{'B', 'Q', 'A', '2', '4', '1', '5', '0', '\000'}, 2UL},
        {{'B', 'Q', '2', '4', '1', '5', '1', '0', '\000'}, 3UL},
        {{'B', 'Q', 'A', '2', '4', '1', '5', '1', '\000'}, 4UL},
        {{'B', 'Q', '2', '4', '1', '5', '2', '0', '\000'}, 5UL},
        {{'B', 'Q', '2', '4', '1', '5', '3', '0', '\000'}, 6UL},
        {{'B', 'Q', 'A', '2', '4', '1', '5', '3', '\000'}, 7UL},
        {{'B', 'Q', '2', '4', '1', '5', '5', '0', '\000'}, 8UL},
        {{'B', 'Q', '2', '4', '1', '5', '6', '0', '\000'}, 9UL},
        {{'B', 'Q', 'A', '2', '4', '1', '5', '6', '\000'}, 10UL},
        {{'B', 'Q', 'S', '2', '4', '1', '5', '7', '\000'}, 11UL},
        {{'B', 'Q', '2', '4', '1', '5', '8', '0', '\000'}, 12UL}};
struct acpi_device_id const __mod_acpi__bq2415x_i2c_acpi_match_device_table[14U] ;
static struct i2c_driver bq2415x_driver =
     {0U, 0, & bq2415x_probe, & bq2415x_remove, 0, 0, 0, {"bq2415x-charger", 0, 0, 0,
                                                        (_Bool)0, 0, 0, (struct acpi_device_id const *)(& bq2415x_i2c_acpi_match),
                                                        0, 0, 0, 0, 0, 0, 0, 0}, (struct i2c_device_id const *)(& bq2415x_i2c_id_table),
    0, 0, {0, 0}};
static int bq2415x_driver_init(void)
{
  int tmp ;
  {
  tmp = i2c_register_driver(& __this_module, & bq2415x_driver);
  return (tmp);
}
}
static void bq2415x_driver_exit(void)
{
  {
  i2c_del_driver(& bq2415x_driver);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
void ldv_initialize_device_attribute_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_otg_pin_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_otg_pin_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    bq2415x_timer_work(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    bq2415x_timer_work(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    bq2415x_timer_work(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    bq2415x_timer_work(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_high_impedance_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_high_impedance_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_17(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_battery_regulation_voltage_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_battery_regulation_voltage_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_charge_termination_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_charge_termination_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void call_and_disable_all_1(int state )
{
  {
  if (ldv_work_1_0 == state) {
    call_and_disable_work_1(ldv_work_struct_1_0);
  } else {
  }
  if (ldv_work_1_1 == state) {
    call_and_disable_work_1(ldv_work_struct_1_1);
  } else {
  }
  if (ldv_work_1_2 == state) {
    call_and_disable_work_1(ldv_work_struct_1_2);
  } else {
  }
  if (ldv_work_1_3 == state) {
    call_and_disable_work_1(ldv_work_struct_1_3);
  } else {
  }
  return;
}
}
void activate_work_1(struct work_struct *work , int state )
{
  {
  if (ldv_work_1_0 == 0) {
    ldv_work_struct_1_0 = work;
    ldv_work_1_0 = state;
    return;
  } else {
  }
  if (ldv_work_1_1 == 0) {
    ldv_work_struct_1_1 = work;
    ldv_work_1_1 = state;
    return;
  } else {
  }
  if (ldv_work_1_2 == 0) {
    ldv_work_struct_1_2 = work;
    ldv_work_1_2 = state;
    return;
  } else {
  }
  if (ldv_work_1_3 == 0) {
    ldv_work_struct_1_3 = work;
    ldv_work_1_3 = state;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_16(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_charge_current_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_charge_current_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_stat_pin_enable_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_stat_pin_enable_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_19(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_current_limit_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_current_limit_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_mode_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_mode_group1 = (struct device *)tmp___0;
  return;
}
}
void disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 3 || ldv_work_1_0 == 2) && (unsigned long )ldv_work_struct_1_0 == (unsigned long )work) {
    ldv_work_1_0 = 1;
  } else {
  }
  if ((ldv_work_1_1 == 3 || ldv_work_1_1 == 2) && (unsigned long )ldv_work_struct_1_1 == (unsigned long )work) {
    ldv_work_1_1 = 1;
  } else {
  }
  if ((ldv_work_1_2 == 3 || ldv_work_1_2 == 2) && (unsigned long )ldv_work_struct_1_2 == (unsigned long )work) {
    ldv_work_1_2 = 1;
  } else {
  }
  if ((ldv_work_1_3 == 3 || ldv_work_1_3 == 2) && (unsigned long )ldv_work_struct_1_3 == (unsigned long )work) {
    ldv_work_1_3 = 1;
  } else {
  }
  return;
}
}
void ldv_initialize_device_attribute_15(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_termination_current_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_termination_current_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_i2c_driver_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1480UL);
  bq2415x_driver_group0 = (struct i2c_client *)tmp;
  return;
}
}
void ldv_initialize_device_attribute_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_timer_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_timer_group1 = (struct device *)tmp___0;
  return;
}
}
void work_init_1(void)
{
  {
  ldv_work_1_0 = 0;
  ldv_work_1_1 = 0;
  ldv_work_1_2 = 0;
  ldv_work_1_3 = 0;
  return;
}
}
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    bq2415x_timer_work(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_31605;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    bq2415x_timer_work(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_31605;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    bq2415x_timer_work(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_31605;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    bq2415x_timer_work(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_31605;
  default:
  ldv_stop();
  }
  ldv_31605: ;
  return;
}
}
void ldv_initialize_device_attribute_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_registers_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_registers_group1 = (struct device *)tmp___0;
  return;
}
}
void ldv_initialize_device_attribute_18(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(48UL);
  dev_attr_weak_battery_voltage_group0 = (struct device_attribute *)tmp;
  tmp___0 = ldv_init_zalloc(1416UL);
  dev_attr_weak_battery_voltage_group1 = (struct device *)tmp___0;
  return;
}
}
int main(void)
{
  size_t ldvarg1 ;
  char *ldvarg0 ;
  void *tmp ;
  char *ldvarg2 ;
  void *tmp___0 ;
  size_t ldvarg4 ;
  char *ldvarg3 ;
  void *tmp___1 ;
  char *ldvarg5 ;
  void *tmp___2 ;
  char *ldvarg8 ;
  void *tmp___3 ;
  size_t ldvarg7 ;
  char *ldvarg6 ;
  void *tmp___4 ;
  struct i2c_device_id *ldvarg9 ;
  void *tmp___5 ;
  size_t ldvarg11 ;
  char *ldvarg10 ;
  void *tmp___6 ;
  char *ldvarg12 ;
  void *tmp___7 ;
  size_t ldvarg14 ;
  char *ldvarg13 ;
  void *tmp___8 ;
  char *ldvarg15 ;
  void *tmp___9 ;
  char *ldvarg18 ;
  void *tmp___10 ;
  size_t ldvarg17 ;
  char *ldvarg16 ;
  void *tmp___11 ;
  struct device_attribute *ldvarg21 ;
  void *tmp___12 ;
  char *ldvarg20 ;
  void *tmp___13 ;
  struct device *ldvarg19 ;
  void *tmp___14 ;
  struct device_attribute *ldvarg24 ;
  void *tmp___15 ;
  char *ldvarg23 ;
  void *tmp___16 ;
  struct device *ldvarg22 ;
  void *tmp___17 ;
  char *ldvarg27 ;
  void *tmp___18 ;
  size_t ldvarg26 ;
  char *ldvarg25 ;
  void *tmp___19 ;
  size_t ldvarg29 ;
  char *ldvarg28 ;
  void *tmp___20 ;
  char *ldvarg30 ;
  void *tmp___21 ;
  size_t ldvarg32 ;
  char *ldvarg31 ;
  void *tmp___22 ;
  char *ldvarg33 ;
  void *tmp___23 ;
  size_t ldvarg35 ;
  char *ldvarg36 ;
  void *tmp___24 ;
  char *ldvarg34 ;
  void *tmp___25 ;
  char *ldvarg39 ;
  void *tmp___26 ;
  char *ldvarg37 ;
  void *tmp___27 ;
  size_t ldvarg38 ;
  char *ldvarg41 ;
  void *tmp___28 ;
  struct device_attribute *ldvarg42 ;
  void *tmp___29 ;
  struct device *ldvarg40 ;
  void *tmp___30 ;
  char *ldvarg45 ;
  void *tmp___31 ;
  char *ldvarg43 ;
  void *tmp___32 ;
  size_t ldvarg44 ;
  struct device_attribute *ldvarg48 ;
  void *tmp___33 ;
  char *ldvarg47 ;
  void *tmp___34 ;
  struct device *ldvarg46 ;
  void *tmp___35 ;
  struct device_attribute *ldvarg51 ;
  void *tmp___36 ;
  struct device *ldvarg49 ;
  void *tmp___37 ;
  char *ldvarg50 ;
  void *tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  int tmp___41 ;
  int tmp___42 ;
  int tmp___43 ;
  int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
  int tmp___56 ;
  int tmp___57 ;
  int tmp___58 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg0 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg2 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg3 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___2;
  tmp___3 = ldv_init_zalloc(1UL);
  ldvarg8 = (char *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg6 = (char *)tmp___4;
  tmp___5 = ldv_init_zalloc(32UL);
  ldvarg9 = (struct i2c_device_id *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg10 = (char *)tmp___6;
  tmp___7 = ldv_init_zalloc(1UL);
  ldvarg12 = (char *)tmp___7;
  tmp___8 = ldv_init_zalloc(1UL);
  ldvarg13 = (char *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg18 = (char *)tmp___10;
  tmp___11 = ldv_init_zalloc(1UL);
  ldvarg16 = (char *)tmp___11;
  tmp___12 = ldv_init_zalloc(48UL);
  ldvarg21 = (struct device_attribute *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg20 = (char *)tmp___13;
  tmp___14 = ldv_init_zalloc(1416UL);
  ldvarg19 = (struct device *)tmp___14;
  tmp___15 = ldv_init_zalloc(48UL);
  ldvarg24 = (struct device_attribute *)tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg23 = (char *)tmp___16;
  tmp___17 = ldv_init_zalloc(1416UL);
  ldvarg22 = (struct device *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg27 = (char *)tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg25 = (char *)tmp___19;
  tmp___20 = ldv_init_zalloc(1UL);
  ldvarg28 = (char *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg30 = (char *)tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg31 = (char *)tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg33 = (char *)tmp___23;
  tmp___24 = ldv_init_zalloc(1UL);
  ldvarg36 = (char *)tmp___24;
  tmp___25 = ldv_init_zalloc(1UL);
  ldvarg34 = (char *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg39 = (char *)tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg37 = (char *)tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg41 = (char *)tmp___28;
  tmp___29 = ldv_init_zalloc(48UL);
  ldvarg42 = (struct device_attribute *)tmp___29;
  tmp___30 = ldv_init_zalloc(1416UL);
  ldvarg40 = (struct device *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg45 = (char *)tmp___31;
  tmp___32 = ldv_init_zalloc(1UL);
  ldvarg43 = (char *)tmp___32;
  tmp___33 = ldv_init_zalloc(48UL);
  ldvarg48 = (struct device_attribute *)tmp___33;
  tmp___34 = ldv_init_zalloc(1UL);
  ldvarg47 = (char *)tmp___34;
  tmp___35 = ldv_init_zalloc(1416UL);
  ldvarg46 = (struct device *)tmp___35;
  tmp___36 = ldv_init_zalloc(48UL);
  ldvarg51 = (struct device_attribute *)tmp___36;
  tmp___37 = ldv_init_zalloc(1416UL);
  ldvarg49 = (struct device *)tmp___37;
  tmp___38 = ldv_init_zalloc(1UL);
  ldvarg50 = (char *)tmp___38;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg7), 0, 8UL);
  ldv_memset((void *)(& ldvarg11), 0, 8UL);
  ldv_memset((void *)(& ldvarg14), 0, 8UL);
  ldv_memset((void *)(& ldvarg17), 0, 8UL);
  ldv_memset((void *)(& ldvarg26), 0, 8UL);
  ldv_memset((void *)(& ldvarg29), 0, 8UL);
  ldv_memset((void *)(& ldvarg32), 0, 8UL);
  ldv_memset((void *)(& ldvarg35), 0, 8UL);
  ldv_memset((void *)(& ldvarg38), 0, 8UL);
  ldv_memset((void *)(& ldvarg44), 0, 8UL);
  ldv_state_variable_11 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_17 = 0;
  ldv_state_variable_2 = 0;
  work_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_18 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_19 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_31805:
  tmp___39 = __VERIFIER_nondet_int();
  switch (tmp___39) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    tmp___40 = __VERIFIER_nondet_int();
    switch (tmp___40) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      bq2415x_sysfs_set_enable(dev_attr_stat_pin_enable_group1, dev_attr_stat_pin_enable_group0,
                               (char const *)ldvarg2, ldvarg1);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_31713;
    case 1: ;
    if (ldv_state_variable_11 == 1) {
      bq2415x_sysfs_show_enable(dev_attr_stat_pin_enable_group1, dev_attr_stat_pin_enable_group0,
                                ldvarg0);
      ldv_state_variable_11 = 1;
    } else {
    }
    goto ldv_31713;
    default:
    ldv_stop();
    }
    ldv_31713: ;
  } else {
  }
  goto ldv_31716;
  case 1: ;
  if (ldv_state_variable_7 != 0) {
    tmp___41 = __VERIFIER_nondet_int();
    switch (tmp___41) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      bq2415x_sysfs_set_registers(dev_attr_registers_group1, dev_attr_registers_group0,
                                  (char const *)ldvarg5, ldvarg4);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_31719;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      bq2415x_sysfs_show_registers(dev_attr_registers_group1, dev_attr_registers_group0,
                                   ldvarg3);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_31719;
    default:
    ldv_stop();
    }
    ldv_31719: ;
  } else {
  }
  goto ldv_31716;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    tmp___42 = __VERIFIER_nondet_int();
    switch (tmp___42) {
    case 0: ;
    if (ldv_state_variable_17 == 1) {
      bq2415x_sysfs_set_limit(dev_attr_battery_regulation_voltage_group1, dev_attr_battery_regulation_voltage_group0,
                              (char const *)ldvarg8, ldvarg7);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_31724;
    case 1: ;
    if (ldv_state_variable_17 == 1) {
      bq2415x_sysfs_show_limit(dev_attr_battery_regulation_voltage_group1, dev_attr_battery_regulation_voltage_group0,
                               ldvarg6);
      ldv_state_variable_17 = 1;
    } else {
    }
    goto ldv_31724;
    default:
    ldv_stop();
    }
    ldv_31724: ;
  } else {
  }
  goto ldv_31716;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___43 = __VERIFIER_nondet_int();
    switch (tmp___43) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_0 = bq2415x_probe(bq2415x_driver_group0, (struct i2c_device_id const *)ldvarg9);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_31729;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      bq2415x_remove(bq2415x_driver_group0);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_31729;
    default:
    ldv_stop();
    }
    ldv_31729: ;
  } else {
  }
  goto ldv_31716;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    invoke_work_1();
  } else {
  }
  goto ldv_31716;
  case 5: ;
  if (ldv_state_variable_18 != 0) {
    tmp___44 = __VERIFIER_nondet_int();
    switch (tmp___44) {
    case 0: ;
    if (ldv_state_variable_18 == 1) {
      bq2415x_sysfs_set_limit(dev_attr_weak_battery_voltage_group1, dev_attr_weak_battery_voltage_group0,
                              (char const *)ldvarg12, ldvarg11);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_31735;
    case 1: ;
    if (ldv_state_variable_18 == 1) {
      bq2415x_sysfs_show_limit(dev_attr_weak_battery_voltage_group1, dev_attr_weak_battery_voltage_group0,
                               ldvarg10);
      ldv_state_variable_18 = 1;
    } else {
    }
    goto ldv_31735;
    default:
    ldv_stop();
    }
    ldv_31735: ;
  } else {
  }
  goto ldv_31716;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___45 = __VERIFIER_nondet_int();
    switch (tmp___45) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      bq2415x_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_31741;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = bq2415x_driver_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_10 = 1;
        ldv_state_variable_19 = 1;
        ldv_initialize_device_attribute_19();
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_device_attribute_8();
        ldv_state_variable_15 = 1;
        ldv_initialize_device_attribute_15();
        ldv_state_variable_14 = 1;
        ldv_initialize_device_attribute_14();
        ldv_state_variable_12 = 1;
        ldv_initialize_device_attribute_12();
        ldv_state_variable_9 = 1;
        ldv_initialize_device_attribute_9();
        ldv_state_variable_3 = 1;
        ldv_state_variable_6 = 1;
        ldv_state_variable_13 = 1;
        ldv_initialize_device_attribute_13();
        ldv_state_variable_16 = 1;
        ldv_initialize_device_attribute_16();
        ldv_state_variable_18 = 1;
        ldv_initialize_device_attribute_18();
        ldv_state_variable_2 = 1;
        ldv_initialize_i2c_driver_2();
        ldv_state_variable_17 = 1;
        ldv_initialize_device_attribute_17();
        ldv_state_variable_7 = 1;
        ldv_initialize_device_attribute_7();
        ldv_state_variable_11 = 1;
        ldv_initialize_device_attribute_11();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_31741;
    default:
    ldv_stop();
    }
    ldv_31741: ;
  } else {
  }
  goto ldv_31716;
  case 7: ;
  if (ldv_state_variable_16 != 0) {
    tmp___46 = __VERIFIER_nondet_int();
    switch (tmp___46) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      bq2415x_sysfs_set_limit(dev_attr_charge_current_group1, dev_attr_charge_current_group0,
                              (char const *)ldvarg15, ldvarg14);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_31746;
    case 1: ;
    if (ldv_state_variable_16 == 1) {
      bq2415x_sysfs_show_limit(dev_attr_charge_current_group1, dev_attr_charge_current_group0,
                               ldvarg13);
      ldv_state_variable_16 = 1;
    } else {
    }
    goto ldv_31746;
    default:
    ldv_stop();
    }
    ldv_31746: ;
  } else {
  }
  goto ldv_31716;
  case 8: ;
  if (ldv_state_variable_13 != 0) {
    tmp___47 = __VERIFIER_nondet_int();
    switch (tmp___47) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      bq2415x_sysfs_set_enable(dev_attr_high_impedance_enable_group1, dev_attr_high_impedance_enable_group0,
                               (char const *)ldvarg18, ldvarg17);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_31751;
    case 1: ;
    if (ldv_state_variable_13 == 1) {
      bq2415x_sysfs_show_enable(dev_attr_high_impedance_enable_group1, dev_attr_high_impedance_enable_group0,
                                ldvarg16);
      ldv_state_variable_13 = 1;
    } else {
    }
    goto ldv_31751;
    default:
    ldv_stop();
    }
    ldv_31751: ;
  } else {
  }
  goto ldv_31716;
  case 9: ;
  if (ldv_state_variable_6 != 0) {
    tmp___48 = __VERIFIER_nondet_int();
    switch (tmp___48) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      bq2415x_sysfs_show_status(ldvarg19, ldvarg21, ldvarg20);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_31756;
    default:
    ldv_stop();
    }
    ldv_31756: ;
  } else {
  }
  goto ldv_31716;
  case 10: ;
  if (ldv_state_variable_3 != 0) {
    tmp___49 = __VERIFIER_nondet_int();
    switch (tmp___49) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      bq2415x_sysfs_show_status(ldvarg22, ldvarg24, ldvarg23);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_31760;
    default:
    ldv_stop();
    }
    ldv_31760: ;
  } else {
  }
  goto ldv_31716;
  case 11: ;
  if (ldv_state_variable_9 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      bq2415x_sysfs_set_mode(dev_attr_mode_group1, dev_attr_mode_group0, (char const *)ldvarg27,
                             ldvarg26);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_31764;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      bq2415x_sysfs_show_mode(dev_attr_mode_group1, dev_attr_mode_group0, ldvarg25);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_31764;
    default:
    ldv_stop();
    }
    ldv_31764: ;
  } else {
  }
  goto ldv_31716;
  case 12: ;
  if (ldv_state_variable_12 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      bq2415x_sysfs_set_enable(dev_attr_otg_pin_enable_group1, dev_attr_otg_pin_enable_group0,
                               (char const *)ldvarg30, ldvarg29);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_31769;
    case 1: ;
    if (ldv_state_variable_12 == 1) {
      bq2415x_sysfs_show_enable(dev_attr_otg_pin_enable_group1, dev_attr_otg_pin_enable_group0,
                                ldvarg28);
      ldv_state_variable_12 = 1;
    } else {
    }
    goto ldv_31769;
    default:
    ldv_stop();
    }
    ldv_31769: ;
  } else {
  }
  goto ldv_31716;
  case 13: ;
  if (ldv_state_variable_14 != 0) {
    tmp___52 = __VERIFIER_nondet_int();
    switch (tmp___52) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      bq2415x_sysfs_set_enable(dev_attr_charge_termination_enable_group1, dev_attr_charge_termination_enable_group0,
                               (char const *)ldvarg33, ldvarg32);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_31774;
    case 1: ;
    if (ldv_state_variable_14 == 1) {
      bq2415x_sysfs_show_enable(dev_attr_charge_termination_enable_group1, dev_attr_charge_termination_enable_group0,
                                ldvarg31);
      ldv_state_variable_14 = 1;
    } else {
    }
    goto ldv_31774;
    default:
    ldv_stop();
    }
    ldv_31774: ;
  } else {
  }
  goto ldv_31716;
  case 14: ;
  if (ldv_state_variable_15 != 0) {
    tmp___53 = __VERIFIER_nondet_int();
    switch (tmp___53) {
    case 0: ;
    if (ldv_state_variable_15 == 1) {
      bq2415x_sysfs_set_limit(dev_attr_termination_current_group1, dev_attr_termination_current_group0,
                              (char const *)ldvarg36, ldvarg35);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_31779;
    case 1: ;
    if (ldv_state_variable_15 == 1) {
      bq2415x_sysfs_show_limit(dev_attr_termination_current_group1, dev_attr_termination_current_group0,
                               ldvarg34);
      ldv_state_variable_15 = 1;
    } else {
    }
    goto ldv_31779;
    default:
    ldv_stop();
    }
    ldv_31779: ;
  } else {
  }
  goto ldv_31716;
  case 15: ;
  if (ldv_state_variable_8 != 0) {
    tmp___54 = __VERIFIER_nondet_int();
    switch (tmp___54) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      bq2415x_sysfs_set_timer(dev_attr_timer_group1, dev_attr_timer_group0, (char const *)ldvarg39,
                              ldvarg38);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_31784;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      bq2415x_sysfs_show_timer(dev_attr_timer_group1, dev_attr_timer_group0, ldvarg37);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_31784;
    default:
    ldv_stop();
    }
    ldv_31784: ;
  } else {
  }
  goto ldv_31716;
  case 16: ;
  if (ldv_state_variable_4 != 0) {
    tmp___55 = __VERIFIER_nondet_int();
    switch (tmp___55) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      bq2415x_sysfs_show_status(ldvarg40, ldvarg42, ldvarg41);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_31789;
    default:
    ldv_stop();
    }
    ldv_31789: ;
  } else {
  }
  goto ldv_31716;
  case 17: ;
  if (ldv_state_variable_19 != 0) {
    tmp___56 = __VERIFIER_nondet_int();
    switch (tmp___56) {
    case 0: ;
    if (ldv_state_variable_19 == 1) {
      bq2415x_sysfs_set_limit(dev_attr_current_limit_group1, dev_attr_current_limit_group0,
                              (char const *)ldvarg45, ldvarg44);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_31793;
    case 1: ;
    if (ldv_state_variable_19 == 1) {
      bq2415x_sysfs_show_limit(dev_attr_current_limit_group1, dev_attr_current_limit_group0,
                               ldvarg43);
      ldv_state_variable_19 = 1;
    } else {
    }
    goto ldv_31793;
    default:
    ldv_stop();
    }
    ldv_31793: ;
  } else {
  }
  goto ldv_31716;
  case 18: ;
  if (ldv_state_variable_10 != 0) {
    tmp___57 = __VERIFIER_nondet_int();
    switch (tmp___57) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      bq2415x_sysfs_show_reported_mode(ldvarg46, ldvarg48, ldvarg47);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_31798;
    default:
    ldv_stop();
    }
    ldv_31798: ;
  } else {
  }
  goto ldv_31716;
  case 19: ;
  if (ldv_state_variable_5 != 0) {
    tmp___58 = __VERIFIER_nondet_int();
    switch (tmp___58) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      bq2415x_sysfs_show_status(ldvarg49, ldvarg51, ldvarg50);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_31802;
    default:
    ldv_stop();
    }
    ldv_31802: ;
  } else {
  }
  goto ldv_31716;
  default:
  ldv_stop();
  }
  ldv_31716: ;
  goto ldv_31805;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv_ptr_err(ptr);
  return (tmp);
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
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_1(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_1(2);
  return;
}
}
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_1(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_13(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex_of_inode(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex_of_inode(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_bq2415x_i2c_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bq2415x_i2c_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_bq2415x_i2c_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bq2415x_i2c_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_bq2415x_timer_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bq2415x_timer_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_cancel_delayed_work_sync_23(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bq2415x_timer_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
bool ldv_cancel_delayed_work_sync_25(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_1(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_bq2415x_id_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bq2415x_id_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_bq2415x_id_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bq2415x_id_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_bq2415x_id_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bq2415x_id_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  tmp = ldv_undef_int();
  ret = tmp;
  if (ret >= 0) {
    ldv_stop();
  } else {
  }
  return (ret);
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
static int ldv_mutex_bq2415x_i2c_mutex = 1;
int ldv_mutex_lock_interruptible_bq2415x_i2c_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_i2c_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bq2415x_i2c_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_bq2415x_i2c_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_i2c_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bq2415x_i2c_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_bq2415x_i2c_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_bq2415x_i2c_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_bq2415x_i2c_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_bq2415x_i2c_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_bq2415x_i2c_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_bq2415x_i2c_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_bq2415x_i2c_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_bq2415x_i2c_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_bq2415x_i2c_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_bq2415x_i2c_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_i2c_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_bq2415x_i2c_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_bq2415x_i2c_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_bq2415x_i2c_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_bq2415x_i2c_mutex(void)
{
  {
  ldv_mutex_lock_bq2415x_i2c_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_bq2415x_i2c_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_bq2415x_i2c_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_bq2415x_i2c_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_bq2415x_i2c_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_bq2415x_i2c_mutex(void)
{
  {
  ldv_mutex_unlock_bq2415x_i2c_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_bq2415x_id_mutex = 1;
int ldv_mutex_lock_interruptible_bq2415x_id_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_id_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bq2415x_id_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_bq2415x_id_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_id_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bq2415x_id_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_bq2415x_id_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_bq2415x_id_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_bq2415x_id_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_bq2415x_id_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_bq2415x_id_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_bq2415x_id_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_bq2415x_id_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_bq2415x_id_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_bq2415x_id_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_bq2415x_id_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_id_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_bq2415x_id_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_bq2415x_id_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_bq2415x_id_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_bq2415x_id_mutex(void)
{
  {
  ldv_mutex_lock_bq2415x_id_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_bq2415x_id_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_bq2415x_id_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_bq2415x_id_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_bq2415x_id_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_bq2415x_id_mutex(void)
{
  {
  ldv_mutex_unlock_bq2415x_id_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_bq2415x_timer_mutex = 1;
int ldv_mutex_lock_interruptible_bq2415x_timer_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_timer_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bq2415x_timer_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_bq2415x_timer_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_timer_mutex != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_bq2415x_timer_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_bq2415x_timer_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_bq2415x_timer_mutex != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_bq2415x_timer_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_bq2415x_timer_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_bq2415x_timer_mutex != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_bq2415x_timer_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_bq2415x_timer_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_bq2415x_timer_mutex != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_bq2415x_timer_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_bq2415x_timer_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bq2415x_timer_mutex == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_bq2415x_timer_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_bq2415x_timer_mutex != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_bq2415x_timer_mutex = 1;
  return;
}
}
void ldv_usb_lock_device_bq2415x_timer_mutex(void)
{
  {
  ldv_mutex_lock_bq2415x_timer_mutex((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_bq2415x_timer_mutex(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_bq2415x_timer_mutex((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_bq2415x_timer_mutex(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_bq2415x_timer_mutex((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_bq2415x_timer_mutex(void)
{
  {
  ldv_mutex_unlock_bq2415x_timer_mutex((struct mutex *)0);
  return;
}
}
static int ldv_mutex_i_mutex_of_inode = 1;
int ldv_mutex_lock_interruptible_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 2;
  return;
}
}
int ldv_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_i_mutex_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex_of_inode == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex_of_inode != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_i_mutex_of_inode = 1;
  return;
}
}
void ldv_usb_lock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_i_mutex_of_inode(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_i_mutex_of_inode((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_i_mutex_of_inode(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_i_mutex_of_inode((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_i_mutex_of_inode(void)
{
  {
  ldv_mutex_unlock_i_mutex_of_inode((struct mutex *)0);
  return;
}
}
static int ldv_mutex_lock = 1;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_lock = 1;
  return;
}
}
void ldv_usb_lock_device_lock(void)
{
  {
  ldv_mutex_lock_lock((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_lock(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_lock((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_lock(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_lock((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_lock(void)
{
  {
  ldv_mutex_unlock_lock((struct mutex *)0);
  return;
}
}
static int ldv_mutex_mutex_of_device = 1;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  nondetermined = ldv_undef_int();
  if (nondetermined != 0) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  is_mutex_held_by_another_thread = ldv_undef_int();
  if (is_mutex_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  atomic_value_after_dec = ldv_undef_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = ldv_undef_int();
    if (nondetermined != 0) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device != 2) {
    ldv_error();
  } else {
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_usb_lock_device_mutex_of_device(void)
{
  {
  ldv_mutex_lock_mutex_of_device((struct mutex *)0);
  return;
}
}
int ldv_usb_trylock_device_mutex_of_device(void)
{
  int tmp ;
  {
  tmp = ldv_mutex_trylock_mutex_of_device((struct mutex *)0);
  return (tmp);
}
}
int ldv_usb_lock_device_for_reset_mutex_of_device(void)
{
  int tmp ;
  int tmp___0 ;
  {
  tmp___0 = ldv_undef_int();
  if (tmp___0 != 0) {
    ldv_mutex_lock_mutex_of_device((struct mutex *)0);
    return (0);
  } else {
    tmp = ldv_undef_int_negative();
    return (tmp);
  }
}
}
void ldv_usb_unlock_device_mutex_of_device(void)
{
  {
  ldv_mutex_unlock_mutex_of_device((struct mutex *)0);
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_bq2415x_i2c_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_bq2415x_id_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_bq2415x_timer_mutex != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_i_mutex_of_inode != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_lock != 1) {
    ldv_error();
  } else {
  }
  if (ldv_mutex_mutex_of_device != 1) {
    ldv_error();
  } else {
  }
  return;
}
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void *external_alloc(void);
const struct acpi_device_id *acpi_match_device(const struct acpi_device_id *arg0, const struct device *arg1) {
  return (const struct acpi_device_id *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_property_read_u32_array(struct device *arg0, const char *arg1, u32 *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return (void *)external_alloc();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void i2c_del_driver(struct i2c_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_register_driver(struct module *arg0, struct i2c_driver *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int idr_alloc(struct idr *arg0, void *arg1, int arg2, int arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
void idr_remove(struct idr *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
char *kasprintf(gfp_t arg0, const char *arg1, ...) {
  return (char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void *external_alloc(void);
struct power_supply *power_supply_get_by_name(const char *arg0) {
  return (struct power_supply *)external_alloc();
}
void *external_alloc(void);
struct power_supply *power_supply_get_by_phandle(struct device_node *arg0, const char *arg1) {
  return (struct power_supply *)external_alloc();
}
void *external_alloc(void);
void *power_supply_get_drvdata(struct power_supply *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int power_supply_get_property(struct power_supply *arg0, enum power_supply_property arg1, union power_supply_propval *arg2) {
  return __VERIFIER_nondet_int();
}
void power_supply_put(struct power_supply *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int power_supply_reg_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct power_supply *power_supply_register(struct device *arg0, const struct power_supply_desc *arg1, const struct power_supply_config *arg2) {
  return (struct power_supply *)external_alloc();
}
void power_supply_unreg_notifier(struct notifier_block *arg0) {
  return;
}
void power_supply_unregister(struct power_supply *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_notify(struct kobject *arg0, const char *arg1, const char *arg2) {
  return;
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
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
