extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
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
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
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
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
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
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
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
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct nsproxy;
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
struct __anonstruct_ldv_14006_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14010_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14011_135 {
   struct __anonstruct_ldv_14006_136 ldv_14006 ;
   struct __anonstruct_ldv_14010_137 ldv_14010 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14011_135 ldv_14011 ;
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
union __anonunion_ldv_14120_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14126_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14136_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14138_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14136_144 ldv_14136 ;
   int units ;
};
struct __anonstruct_ldv_14140_142 {
   union __anonunion_ldv_14138_143 ldv_14138 ;
   atomic_t _count ;
};
union __anonunion_ldv_14142_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14140_142 ldv_14140 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14143_139 {
   union __anonunion_ldv_14126_140 ldv_14126 ;
   union __anonunion_ldv_14142_141 ldv_14142 ;
};
struct __anonstruct_ldv_14150_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14155_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14150_146 ldv_14150 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14161_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 ldv_14120 ;
   struct __anonstruct_ldv_14143_139 ldv_14143 ;
   union __anonunion_ldv_14155_145 ldv_14155 ;
   union __anonunion_ldv_14161_147 ldv_14161 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
   struct list_head nonlinear ;
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
   union __anonunion_shared_148 shared ;
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
union __anonunion_ldv_14524_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14524_153 ldv_14524 ;
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
};
union __anonunion_ldv_14668_154 {
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
   union __anonunion_ldv_14668_154 ldv_14668 ;
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
union __anonunion_ldv_15343_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15343_155 ldv_15343 ;
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
struct tracepoint;
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
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15963_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15969_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15970_156 {
   struct __anonstruct_ldv_15963_157 ldv_15963 ;
   struct __anonstruct_ldv_15969_158 ldv_15969 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15970_156 ldv_15970 ;
};
struct thermal_cooling_device;
struct device_node;
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
struct of_device_id;
struct acpi_device_id;
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
   bool offline_disabled ;
   bool offline ;
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
   bool active ;
   bool autosleep_enabled ;
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
struct cpuidle_device;
struct cpuidle_driver;
struct cpuidle_state_usage {
   unsigned long long disable ;
   unsigned long long usage ;
   unsigned long long time ;
};
struct cpuidle_state {
   char name[16U] ;
   char desc[32U] ;
   unsigned int flags ;
   unsigned int exit_latency ;
   int power_usage ;
   unsigned int target_residency ;
   bool disabled ;
   int (*enter)(struct cpuidle_device * , struct cpuidle_driver * , int ) ;
   int (*enter_dead)(struct cpuidle_device * , int ) ;
};
struct cpuidle_device_kobj;
struct cpuidle_state_kobj;
struct cpuidle_driver_kobj;
struct cpuidle_device {
   unsigned char registered : 1 ;
   unsigned char enabled : 1 ;
   unsigned int cpu ;
   int last_residency ;
   int state_count ;
   struct cpuidle_state_usage states_usage[10U] ;
   struct cpuidle_state_kobj *kobjs[10U] ;
   struct cpuidle_driver_kobj *kobj_driver ;
   struct cpuidle_device_kobj *kobj_dev ;
   struct list_head device_list ;
};
struct cpuidle_driver {
   char const *name ;
   struct module *owner ;
   int refcnt ;
   unsigned char bctimer : 1 ;
   struct cpuidle_state states[10U] ;
   int state_count ;
   int safe_state_index ;
   struct cpumask *cpumask ;
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
struct __anonstruct__sigfault_169 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_170 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_171 {
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
   struct __anonstruct__sigpoll_170 _sigpoll ;
   struct __anonstruct__sigsys_171 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_164 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
union __anonunion_ldv_19544_174 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_19552_175 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_19565_177 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_19566_176 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_19565_177 ldv_19565 ;
};
union __anonunion_type_data_178 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_180 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_19581_179 {
   union __anonunion_payload_180 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_19544_174 ldv_19544 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_19552_175 ldv_19552 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_19566_176 ldv_19566 ;
   union __anonunion_type_data_178 type_data ;
   union __anonunion_ldv_19581_179 ldv_19581 ;
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
   unsigned char may_oom : 1 ;
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
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
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
typedef u64 acpi_io_address;
typedef u32 acpi_status;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_182 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_183 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_184 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_185 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_186 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_187 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_188 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_182 integer ;
   struct __anonstruct_string_183 string ;
   struct __anonstruct_buffer_184 buffer ;
   struct __anonstruct_package_185 package ;
   struct __anonstruct_reference_186 reference ;
   struct __anonstruct_processor_187 processor ;
   struct __anonstruct_power_resource_188 power_resource ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_23862_190 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_23863_189 {
   struct __anonstruct_ldv_23862_190 ldv_23862 ;
};
struct lockref {
   union __anonunion_ldv_23863_189 ldv_23863 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_23886_192 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_23888_191 {
   struct __anonstruct_ldv_23886_192 ldv_23886 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_23888_191 ldv_23888 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_193 {
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
   union __anonunion_d_u_193 d_u ;
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
struct __anonstruct_ldv_24249_195 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_24251_194 {
   struct __anonstruct_ldv_24249_195 ldv_24249 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_24251_194 ldv_24251 ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct export_operations;
struct iovec;
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
struct __anonstruct_kprojid_t_196 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_196 kprojid_t;
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
union __anonunion_ldv_24801_197 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_24801_197 ldv_24801 ;
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
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
struct writeback_control;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
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
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
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
union __anonunion_ldv_25216_200 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_25236_201 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_25253_202 {
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
   union __anonunion_ldv_25216_200 ldv_25216 ;
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
   union __anonunion_ldv_25236_201 ldv_25236 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_25253_202 ldv_25253 ;
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
union __anonunion_f_u_203 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_203 f_u ;
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
struct __anonstruct_afs_205 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_204 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_205 afs ;
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
   union __anonunion_fl_u_204 fl_u ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
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
struct proc_dir_entry;
struct acpi_driver;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
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
   unsigned char no_hotplug : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned int reserved : 22 ;
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
   unsigned long sun ;
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
struct __anonstruct_flags_206 {
   unsigned char valid : 1 ;
   unsigned char os_accessible : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_206 flags ;
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
struct __anonstruct_flags_207 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_207 flags ;
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
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct list_head resources ;
   struct acpi_device_wakeup_flags flags ;
   int prepare_count ;
};
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
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
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
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
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
struct thermal_cooling_device_ops {
   int (*get_max_state)(struct thermal_cooling_device * , unsigned long * ) ;
   int (*get_cur_state)(struct thermal_cooling_device * , unsigned long * ) ;
   int (*set_cur_state)(struct thermal_cooling_device * , unsigned long ) ;
};
struct thermal_cooling_device {
   int id ;
   char type[20U] ;
   struct device device ;
   struct device_node *np ;
   void *devdata ;
   struct thermal_cooling_device_ops const *ops ;
   bool updated ;
   struct mutex lock ;
   struct list_head thermal_instances ;
   struct list_head node ;
};
struct acpi_processor_cx;
struct acpi_processor_cx {
   u8 valid ;
   u8 type ;
   u32 address ;
   u8 entry_method ;
   u8 index ;
   u32 latency ;
   u8 bm_sts_skip ;
   char desc[32U] ;
};
struct acpi_processor_power {
   struct acpi_processor_cx *state ;
   unsigned long bm_check_timestamp ;
   u32 default_state ;
   int count ;
   struct acpi_processor_cx states[8U] ;
   int timer_broadcast_on_state ;
};
struct acpi_psd_package {
   u64 num_entries ;
   u64 revision ;
   u64 domain ;
   u64 coord_type ;
   u64 num_processors ;
};
struct acpi_pct_register {
   u8 descriptor ;
   u16 length ;
   u8 space_id ;
   u8 bit_width ;
   u8 bit_offset ;
   u8 reserved ;
   u64 address ;
};
struct acpi_processor_px {
   u64 core_frequency ;
   u64 power ;
   u64 transition_latency ;
   u64 bus_master_latency ;
   u64 control ;
   u64 status ;
};
struct acpi_processor_performance {
   unsigned int state ;
   unsigned int platform_limit ;
   struct acpi_pct_register control_register ;
   struct acpi_pct_register status_register ;
   unsigned int state_count ;
   struct acpi_processor_px *states ;
   struct acpi_psd_package domain_info ;
   cpumask_var_t shared_cpu_map ;
   unsigned int shared_type ;
};
struct acpi_tsd_package {
   u64 num_entries ;
   u64 revision ;
   u64 domain ;
   u64 coord_type ;
   u64 num_processors ;
};
struct acpi_processor_tx_tss {
   u64 freqpercentage ;
   u64 power ;
   u64 transition_latency ;
   u64 control ;
   u64 status ;
};
struct acpi_processor_tx {
   u16 power ;
   u16 performance ;
};
struct acpi_processor;
struct acpi_processor_throttling {
   unsigned int state ;
   unsigned int platform_limit ;
   struct acpi_pct_register control_register ;
   struct acpi_pct_register status_register ;
   unsigned int state_count ;
   struct acpi_processor_tx_tss *states_tss ;
   struct acpi_tsd_package domain_info ;
   cpumask_var_t shared_cpu_map ;
   int (*acpi_processor_get_throttling)(struct acpi_processor * ) ;
   int (*acpi_processor_set_throttling)(struct acpi_processor * , int , bool ) ;
   u32 address ;
   u8 duty_offset ;
   u8 duty_width ;
   u8 tsd_valid_flag ;
   unsigned int shared_type ;
   struct acpi_processor_tx states[16U] ;
};
struct acpi_processor_lx {
   int px ;
   int tx ;
};
struct acpi_processor_limit {
   struct acpi_processor_lx state ;
   struct acpi_processor_lx thermal ;
   struct acpi_processor_lx user ;
};
struct acpi_processor_flags {
   unsigned char power : 1 ;
   unsigned char performance : 1 ;
   unsigned char throttling : 1 ;
   unsigned char limit : 1 ;
   unsigned char bm_control : 1 ;
   unsigned char bm_check : 1 ;
   unsigned char has_cst : 1 ;
   unsigned char power_setup_done : 1 ;
   unsigned char bm_rld_set : 1 ;
   unsigned char need_hotplug_init : 1 ;
};
struct acpi_processor {
   acpi_handle handle ;
   u32 acpi_id ;
   u32 apic_id ;
   u32 id ;
   u32 pblk ;
   int performance_platform_limit ;
   int throttling_platform_limit ;
   struct acpi_processor_flags flags ;
   struct acpi_processor_power power ;
   struct acpi_processor_performance *performance ;
   struct acpi_processor_throttling throttling ;
   struct acpi_processor_limit limit ;
   struct thermal_cooling_device *cdev ;
   struct device *dev ;
};
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
};
struct tss_struct;
struct paravirt_callee_save {
   void *func ;
};
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*irq_enable_sysexit)(void) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct cpuinfo_x86;
struct cpuinfo_x86 {
   __u8 x86 ;
   __u8 x86_vendor ;
   __u8 x86_model ;
   __u8 x86_mask ;
   int x86_tlbsize ;
   __u8 x86_virt_bits ;
   __u8 x86_phys_bits ;
   __u8 x86_coreid_bits ;
   __u32 extended_cpuid_level ;
   int cpuid_level ;
   __u32 x86_capability[11U] ;
   char x86_vendor_id[16U] ;
   char x86_model_id[64U] ;
   int x86_cache_size ;
   int x86_cache_alignment ;
   int x86_power ;
   unsigned long loops_per_jiffy ;
   u16 x86_max_cores ;
   u16 apicid ;
   u16 initial_apicid ;
   u16 x86_clflush_size ;
   u16 booted_cores ;
   u16 phys_proc_id ;
   u16 cpu_core_id ;
   u8 compute_unit_id ;
   u16 cpu_index ;
   u32 microcode ;
};
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long stack[64U] ;
};
enum hrtimer_restart;
typedef u64 acpi_size;
typedef char *acpi_string;
struct acpi_object_list {
   u32 count ;
   union acpi_object *pointer ;
};
struct acpi_buffer {
   acpi_size length ;
   void *pointer ;
};
struct acpi_table_header {
   char signature[4U] ;
   u32 length ;
   u8 revision ;
   u8 checksum ;
   char oem_id[6U] ;
   char oem_table_id[8U] ;
   u32 oem_revision ;
   char asl_compiler_id[4U] ;
   u32 asl_compiler_revision ;
};
struct acpi_generic_address {
   u8 space_id ;
   u8 bit_width ;
   u8 bit_offset ;
   u8 access_width ;
   u64 address ;
};
struct acpi_table_fadt {
   struct acpi_table_header header ;
   u32 facs ;
   u32 dsdt ;
   u8 model ;
   u8 preferred_profile ;
   u16 sci_interrupt ;
   u32 smi_command ;
   u8 acpi_enable ;
   u8 acpi_disable ;
   u8 s4_bios_request ;
   u8 pstate_control ;
   u32 pm1a_event_block ;
   u32 pm1b_event_block ;
   u32 pm1a_control_block ;
   u32 pm1b_control_block ;
   u32 pm2_control_block ;
   u32 pm_timer_block ;
   u32 gpe0_block ;
   u32 gpe1_block ;
   u8 pm1_event_length ;
   u8 pm1_control_length ;
   u8 pm2_control_length ;
   u8 pm_timer_length ;
   u8 gpe0_block_length ;
   u8 gpe1_block_length ;
   u8 gpe1_base ;
   u8 cst_control ;
   u16 c2_latency ;
   u16 c3_latency ;
   u16 flush_size ;
   u16 flush_stride ;
   u8 duty_offset ;
   u8 duty_width ;
   u8 day_alarm ;
   u8 month_alarm ;
   u8 century ;
   u16 boot_flags ;
   u8 reserved ;
   u32 flags ;
   struct acpi_generic_address reset_register ;
   u8 reset_value ;
   u8 reserved4[3U] ;
   u64 Xfacs ;
   u64 Xdsdt ;
   struct acpi_generic_address xpm1a_event_block ;
   struct acpi_generic_address xpm1b_event_block ;
   struct acpi_generic_address xpm1a_control_block ;
   struct acpi_generic_address xpm1b_control_block ;
   struct acpi_generic_address xpm2_control_block ;
   struct acpi_generic_address xpm_timer_block ;
   struct acpi_generic_address xgpe0_block ;
   struct acpi_generic_address xgpe1_block ;
   struct acpi_generic_address sleep_control ;
   struct acpi_generic_address sleep_status ;
};
struct __anonstruct_piix4_208 {
   unsigned char throttle : 1 ;
   unsigned char fdma : 1 ;
   unsigned char reserved : 6 ;
   u32 bmisx ;
};
struct acpi_processor_errata {
   u8 smp ;
   struct __anonstruct_piix4_208 piix4 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct throttling_tstate {
   unsigned int cpu ;
   int target_state ;
};
struct acpi_processor_throttling_arg {
   struct acpi_processor *pr ;
   int target_state ;
   bool force ;
};
struct compat_timespec;
struct __anonstruct_futex_17 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_18 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_19 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2850_16 {
   struct __anonstruct_futex_17 futex ;
   struct __anonstruct_nanosleep_18 nanosleep ;
   struct __anonstruct_poll_19 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2850_16 ldv_2850 ;
};
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
enum hrtimer_restart;
struct dmi_strmatch {
   unsigned char slot : 7 ;
   unsigned char exact_match : 1 ;
   char substr[79U] ;
};
struct dmi_system_id {
   int (*callback)(struct dmi_system_id const * ) ;
   char const *ident ;
   struct dmi_strmatch matches[4U] ;
   void *driver_data ;
};
struct syscore_ops {
   struct list_head node ;
   int (*suspend)(void) ;
   void (*resume)(void) ;
   void (*shutdown)(void) ;
};
struct acpi_power_register {
   u8 descriptor ;
   u16 length ;
   u8 space_id ;
   u8 bit_width ;
   u8 bit_offset ;
   u8 access_size ;
   u64 address ;
};
enum hrtimer_restart;
struct clk;
struct cpufreq_governor;
struct cpufreq_cpuinfo {
   unsigned int max_freq ;
   unsigned int min_freq ;
   unsigned int transition_latency ;
};
struct cpufreq_real_policy {
   unsigned int min ;
   unsigned int max ;
   unsigned int policy ;
   struct cpufreq_governor *governor ;
};
struct cpufreq_frequency_table;
struct cpufreq_policy {
   cpumask_var_t cpus ;
   cpumask_var_t related_cpus ;
   unsigned int shared_type ;
   unsigned int cpu ;
   unsigned int last_cpu ;
   struct clk *clk ;
   struct cpufreq_cpuinfo cpuinfo ;
   unsigned int min ;
   unsigned int max ;
   unsigned int cur ;
   unsigned int restore_freq ;
   unsigned int suspend_freq ;
   unsigned int policy ;
   struct cpufreq_governor *governor ;
   void *governor_data ;
   bool governor_enabled ;
   struct work_struct update ;
   struct cpufreq_real_policy user_policy ;
   struct cpufreq_frequency_table *freq_table ;
   struct list_head policy_list ;
   struct kobject kobj ;
   struct completion kobj_unregister ;
   struct rw_semaphore rwsem ;
   bool transition_ongoing ;
   spinlock_t transition_lock ;
   wait_queue_head_t transition_wait ;
   struct task_struct *transition_task ;
};
struct cpufreq_governor {
   char name[16U] ;
   int initialized ;
   int (*governor)(struct cpufreq_policy * , unsigned int ) ;
   ssize_t (*show_setspeed)(struct cpufreq_policy * , char * ) ;
   int (*store_setspeed)(struct cpufreq_policy * , unsigned int ) ;
   unsigned int max_transition_latency ;
   struct list_head governor_list ;
   struct module *owner ;
};
struct cpufreq_frequency_table {
   unsigned int flags ;
   unsigned int driver_data ;
   unsigned int frequency ;
};
enum hrtimer_restart;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14126_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14120_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
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
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
extern int printk(char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern unsigned long __per_cpu_offset[8192U] ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp != 0L);
}
}
extern int acpi_disabled ;
extern int sysfs_create_link(struct kobject * , struct kobject * , char const * ) ;
extern void sysfs_remove_link(struct kobject * , char const * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void *__VERIFIER_nondet_pointer(void) ;
extern void __VERIFIER_assume(int expression ) ;
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
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
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
  ldv_error();
  return;
}
}
struct thermal_cooling_device *processor_cooling_ops_group0 ;
int ldv_state_variable_3 ;
int LDV_IN_INTERRUPT = 1;
struct device *acpi_processor_driver_group0 ;
int ldv_state_variable_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
void ldv_initialize_thermal_cooling_device_ops_2(void) ;
void ldv_initialize_device_driver_6(void) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
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
extern int dev_err(struct device const * , char const * , ...) ;
extern int register_cpu_notifier(struct notifier_block * ) ;
extern void unregister_cpu_notifier(struct notifier_block * ) ;
extern struct bus_type cpu_subsys ;
extern struct cpuidle_driver *cpuidle_get_driver(void) ;
extern u32 acpi_dbg_level ;
extern u32 acpi_dbg_layer ;
extern acpi_status acpi_install_notify_handler(acpi_handle , u32 , void (*)(acpi_handle ,
                                                                              u32 ,
                                                                              void * ) ,
                                               void * ) ;
extern acpi_status acpi_remove_notify_handler(acpi_handle , u32 , void (*)(acpi_handle ,
                                                                             u32 ,
                                                                             void * ) ) ;
extern void acpi_debug_print(u32 , u32 , char const * , char const * , u32 ,
                             char const * , ...) ;
__inline static void *acpi_driver_data(struct acpi_device *d )
{
  {
  return (d->driver_data);
}
}
extern int acpi_bus_generate_netlink_event(char const * , char const * , u8 ,
                                           int ) ;
extern int acpi_bus_get_device(acpi_handle , struct acpi_device ** ) ;
extern struct thermal_cooling_device *thermal_cooling_device_register(char * , void * ,
                                                                      struct thermal_cooling_device_ops const * ) ;
extern void thermal_cooling_device_unregister(struct thermal_cooling_device * ) ;
extern struct acpi_processor *processors ;
void acpi_processor_ppc_init(void) ;
void acpi_processor_ppc_exit(void) ;
int acpi_processor_ppc_has_changed(struct acpi_processor *pr , int event_flag ) ;
int acpi_processor_tstate_has_changed(struct acpi_processor *pr ) ;
int acpi_processor_get_throttling_info(struct acpi_processor *pr ) ;
void acpi_processor_reevaluate_tstate(struct acpi_processor *pr , unsigned long action ) ;
void acpi_processor_throttling_init(void) ;
int acpi_processor_power_init(struct acpi_processor *pr ) ;
int acpi_processor_power_exit(struct acpi_processor *pr ) ;
int acpi_processor_cst_has_changed(struct acpi_processor *pr ) ;
int acpi_processor_hotplug(struct acpi_processor *pr ) ;
struct cpuidle_driver acpi_idle_driver ;
void acpi_processor_syscore_init(void) ;
void acpi_processor_syscore_exit(void) ;
struct thermal_cooling_device_ops const processor_cooling_ops ;
void acpi_thermal_cpufreq_init(void) ;
void acpi_thermal_cpufreq_exit(void) ;
static char const _acpi_module_name[17U] =
  { 'p', 'r', 'o', 'c',
        'e', 's', 's', 'o',
        'r', '_', 'd', 'r',
        'i', 'v', 'e', 'r',
        '\000'};
static int acpi_processor_start(struct device *dev ) ;
static int acpi_processor_stop(struct device *dev ) ;
static struct acpi_device_id const processor_device_ids[3U] = { {{'L', 'N', 'X', 'C', 'P', 'U', '\000'}, 0UL},
        {{'A', 'C', 'P', 'I', '0', '0', '0', '7', '\000'}, 0UL},
        {{'\000'}, 0UL}};
struct acpi_device_id const __mod_acpi__processor_device_ids_device_table ;
static struct device_driver acpi_processor_driver =
     {"processor", & cpu_subsys, 0, 0, (_Bool)0, 0, (struct acpi_device_id const *)(& processor_device_ids),
    & acpi_processor_start, & acpi_processor_stop, 0, 0, 0, 0, 0, 0};
static void acpi_processor_notify(acpi_handle handle , u32 event , void *data )
{
  struct acpi_device *device ;
  struct acpi_processor *pr ;
  int saved ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  {
  device = (struct acpi_device *)data;
  if ((unsigned long )device->handle != (unsigned long )handle) {
    return;
  } else {
  }
  tmp = acpi_driver_data(device);
  pr = (struct acpi_processor *)tmp;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return;
  } else {
  }
  switch (event) {
  case 128U:
  saved = pr->performance_platform_limit;
  acpi_processor_ppc_has_changed(pr, 1);
  if (pr->performance_platform_limit == saved) {
    goto ldv_29053;
  } else {
  }
  tmp___0 = dev_name((struct device const *)(& device->dev));
  acpi_bus_generate_netlink_event((char const *)(& device->pnp.device_class), tmp___0,
                                  (int )((u8 )event), pr->performance_platform_limit);
  goto ldv_29053;
  case 129U:
  acpi_processor_cst_has_changed(pr);
  tmp___1 = dev_name((struct device const *)(& device->dev));
  acpi_bus_generate_netlink_event((char const *)(& device->pnp.device_class), tmp___1,
                                  (int )((u8 )event), 0);
  goto ldv_29053;
  case 130U:
  acpi_processor_tstate_has_changed(pr);
  tmp___2 = dev_name((struct device const *)(& device->dev));
  acpi_bus_generate_netlink_event((char const *)(& device->pnp.device_class), tmp___2,
                                  (int )((u8 )event), 0);
  goto ldv_29053;
  default: ;
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 141U, "acpi_processor_notify", (char const *)(& _acpi_module_name),
                     536870912U, "Unsupported event [0x%x]\n", event);
  } else {
  }
  goto ldv_29053;
  }
  ldv_29053: ;
  return;
}
}
static int __acpi_processor_start(struct acpi_device *device ) ;
static int acpi_cpu_soft_notify(struct notifier_block *nfb , unsigned long action ,
                                void *hcpu )
{
  unsigned int cpu ;
  struct acpi_processor *pr ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  struct acpi_device *device ;
  int tmp ;
  int ret ;
  int __ret_warn_on ;
  long tmp___0 ;
  {
  cpu = (unsigned int )((long )hcpu);
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[cpu] + __ptr));
  if (action == 10UL || action == 8UL) {
    return (0);
  } else {
  }
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (0);
  } else {
    tmp = acpi_bus_get_device(pr->handle, & device);
    if (tmp != 0) {
      return (0);
    } else {
    }
  }
  if (action == 2UL) {
    if ((unsigned int )*((unsigned char *)pr + 33UL) != 0U) {
      printk("\016Will online and init hotplugged CPU: %d\n", pr->id);
      pr->flags.need_hotplug_init = 0U;
      ret = __acpi_processor_start(device);
      __ret_warn_on = ret != 0;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/7693/dscv_tempdir/dscv/ri/43_2a/drivers/acpi/processor_driver.o.c.prepared",
                          179, "Failed to start CPU: %d\n", pr->id);
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    } else {
      acpi_processor_ppc_has_changed(pr, 0);
      acpi_processor_hotplug(pr);
      acpi_processor_reevaluate_tstate(pr, action);
      acpi_processor_tstate_has_changed(pr);
    }
  } else
  if (action == 7UL) {
    acpi_processor_reevaluate_tstate(pr, action);
  } else {
  }
  return (1);
}
}
static struct notifier_block acpi_cpu_notifier = {& acpi_cpu_soft_notify, 0, 0};
static int __acpi_processor_start(struct acpi_device *device )
{
  struct acpi_processor *pr ;
  void *tmp ;
  acpi_status status ;
  int result ;
  struct cpuidle_driver *tmp___0 ;
  struct cpuidle_driver *tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  {
  tmp = acpi_driver_data(device);
  pr = (struct acpi_processor *)tmp;
  result = 0;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-19);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 33UL) != 0U) {
    return (0);
  } else {
  }
  acpi_processor_ppc_has_changed(pr, 0);
  acpi_processor_get_throttling_info(pr);
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    pr->flags.limit = 1U;
  } else {
  }
  tmp___0 = cpuidle_get_driver();
  if ((unsigned long )tmp___0 == (unsigned long )((struct cpuidle_driver *)0)) {
    acpi_processor_power_init(pr);
  } else {
    tmp___1 = cpuidle_get_driver();
    if ((unsigned long )tmp___1 == (unsigned long )(& acpi_idle_driver)) {
      acpi_processor_power_init(pr);
    } else {
    }
  }
  pr->cdev = thermal_cooling_device_register((char *)"Processor", (void *)device,
                                             & processor_cooling_ops);
  tmp___3 = IS_ERR((void const *)pr->cdev);
  if ((int )tmp___3) {
    tmp___2 = PTR_ERR((void const *)pr->cdev);
    result = (int )tmp___2;
    goto err_power_exit;
  } else {
  }
  descriptor.modname = "processor";
  descriptor.function = "__acpi_processor_start";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/7693/dscv_tempdir/dscv/ri/43_2a/drivers/acpi/processor_driver.o.c.prepared";
  descriptor.format = "registered as cooling_device%d\n";
  descriptor.lineno = 229U;
  descriptor.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& device->dev), "registered as cooling_device%d\n",
                      (pr->cdev)->id);
  } else {
  }
  result = sysfs_create_link(& device->dev.kobj, & (pr->cdev)->device.kobj, "thermal_cooling");
  if (result != 0) {
    dev_err((struct device const *)(& device->dev), "Failed to create sysfs link \'thermal_cooling\'\n");
    goto err_thermal_unregister;
  } else {
  }
  result = sysfs_create_link(& (pr->cdev)->device.kobj, & device->dev.kobj, "device");
  if (result != 0) {
    dev_err((struct device const *)(& (pr->cdev)->device), "Failed to create sysfs link \'device\'\n");
    goto err_remove_sysfs_thermal;
  } else {
  }
  status = acpi_install_notify_handler(device->handle, 2U, & acpi_processor_notify,
                                       (void *)device);
  if (status == 0U) {
    return (0);
  } else {
  }
  sysfs_remove_link(& (pr->cdev)->device.kobj, "device");
  err_remove_sysfs_thermal:
  sysfs_remove_link(& device->dev.kobj, "thermal_cooling");
  err_thermal_unregister:
  thermal_cooling_device_unregister(pr->cdev);
  err_power_exit:
  acpi_processor_power_exit(pr);
  return (result);
}
}
static int acpi_processor_start(struct device *dev )
{
  struct acpi_device *device ;
  int tmp ;
  {
  device = dev->acpi_node.companion;
  if ((unsigned long )device == (unsigned long )((struct acpi_device *)0)) {
    return (-19);
  } else {
  }
  tmp = __acpi_processor_start(device);
  return (tmp);
}
}
static int acpi_processor_stop(struct device *dev )
{
  struct acpi_device *device ;
  struct acpi_processor *pr ;
  void *tmp ;
  {
  device = dev->acpi_node.companion;
  if ((unsigned long )device == (unsigned long )((struct acpi_device *)0)) {
    return (0);
  } else {
  }
  acpi_remove_notify_handler(device->handle, 2U, & acpi_processor_notify);
  tmp = acpi_driver_data(device);
  pr = (struct acpi_processor *)tmp;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (0);
  } else {
  }
  acpi_processor_power_exit(pr);
  if ((unsigned long )pr->cdev != (unsigned long )((struct thermal_cooling_device *)0)) {
    sysfs_remove_link(& device->dev.kobj, "thermal_cooling");
    sysfs_remove_link(& (pr->cdev)->device.kobj, "device");
    thermal_cooling_device_unregister(pr->cdev);
    pr->cdev = (struct thermal_cooling_device *)0;
  } else {
  }
  return (0);
}
}
static int acpi_processor_driver_init(void)
{
  int result ;
  {
  result = 0;
  if (acpi_disabled != 0) {
    return (0);
  } else {
  }
  result = driver_register(& acpi_processor_driver);
  if (result < 0) {
    return (result);
  } else {
  }
  acpi_processor_syscore_init();
  register_cpu_notifier(& acpi_cpu_notifier);
  acpi_thermal_cpufreq_init();
  acpi_processor_ppc_init();
  acpi_processor_throttling_init();
  return (0);
}
}
static void acpi_processor_driver_exit(void)
{
  {
  if (acpi_disabled != 0) {
    return;
  } else {
  }
  acpi_processor_ppc_exit();
  acpi_thermal_cpufreq_exit();
  unregister_cpu_notifier(& acpi_cpu_notifier);
  acpi_processor_syscore_exit();
  driver_unregister(& acpi_processor_driver);
  return;
}
}
int ldv_retval_0 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_initialize_device_driver_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1416UL);
  acpi_processor_driver_group0 = (struct device *)tmp;
  return;
}
}
void ldv_main_exported_4(void) ;
void ldv_main_exported_1(void) ;
void ldv_main_exported_3(void) ;
void ldv_main_exported_2(void) ;
int main(void)
{
  unsigned long ldvarg11 ;
  unsigned long tmp ;
  void *ldvarg10 ;
  void *tmp___0 ;
  struct notifier_block *ldvarg9 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = __VERIFIER_nondet_ulong();
  ldvarg11 = tmp;
  tmp___0 = ldv_zalloc(1UL);
  ldvarg10 = tmp___0;
  tmp___1 = ldv_zalloc(24UL);
  ldvarg9 = (struct notifier_block *)tmp___1;
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_5 = 0;
  ldv_29166:
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = acpi_processor_start(acpi_processor_driver_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_29147;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      acpi_processor_stop(acpi_processor_driver_group0);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_29147;
    default:
    ldv_stop();
    }
    ldv_29147: ;
  } else {
  }
  goto ldv_29150;
  case 1: ;
  if (ldv_state_variable_4 != 0) {
    ldv_main_exported_4();
  } else {
  }
  goto ldv_29150;
  case 2: ;
  if (ldv_state_variable_1 != 0) {
    ldv_main_exported_1();
  } else {
  }
  goto ldv_29150;
  case 3: ;
  if (ldv_state_variable_0 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      acpi_processor_driver_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_29156;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = acpi_processor_driver_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_state_variable_2 = 1;
        ldv_initialize_thermal_cooling_device_ops_2();
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_6 = 1;
        ldv_initialize_device_driver_6();
      } else {
      }
    } else {
    }
    goto ldv_29156;
    default:
    ldv_stop();
    }
    ldv_29156: ;
  } else {
  }
  goto ldv_29150;
  case 4: ;
  if (ldv_state_variable_3 != 0) {
    ldv_main_exported_3();
  } else {
  }
  goto ldv_29150;
  case 5: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_29150;
  case 6: ;
  if (ldv_state_variable_5 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      acpi_cpu_soft_notify(ldvarg9, ldvarg11, ldvarg10);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_29163;
    default:
    ldv_stop();
    }
    ldv_29163: ;
  } else {
  }
  goto ldv_29150;
  default:
  ldv_stop();
  }
  ldv_29150: ;
  goto ldv_29166;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern struct pv_cpu_ops pv_cpu_ops ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern void __bad_percpu_size(void) ;
__inline static int x86_this_cpu_constant_test_bit(unsigned int nr , unsigned long const *addr )
{
  unsigned long *a ;
  unsigned long pfo_ret__ ;
  {
  a = (unsigned long *)addr + (unsigned long )(nr / 64U);
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (*a));
  goto ldv_2775;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (*a));
  goto ldv_2775;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (*a));
  goto ldv_2775;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (*a));
  goto ldv_2775;
  default:
  __bad_percpu_size();
  }
  ldv_2775: ;
  return ((int )(pfo_ret__ >> ((int )nr & 63)) & 1);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3067;
  default:
  __bad_percpu_size();
  }
  ldv_3067: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
__inline static void bitmap_zero(unsigned long *dst , int nbits )
{
  int len ;
  {
  len = (int )((unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U);
  memset((void *)dst, 0, (size_t )len);
  return;
}
}
__inline static void bitmap_copy(unsigned long *dst , unsigned long const *src ,
                                 int nbits )
{
  int len ;
  size_t __len ;
  void *__ret ;
  {
  len = (int )((unsigned int )(((unsigned long )nbits + 63UL) / 64UL) * 8U);
  __len = (size_t )len;
  __ret = memcpy((void *)dst, (void const *)src, __len);
  return;
}
}
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_possible_mask ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (unsigned int )nr_cpu_ids <= cpu;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/cpumask.h", 108);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (cpu);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    cpumask_check((unsigned int )n);
  } else {
  }
  tmp = find_next_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                      (unsigned long )(n + 1));
  return ((unsigned int )tmp);
}
}
extern int cpumask_next_and(int , struct cpumask const * , struct cpumask const * ) ;
__inline static void cpumask_set_cpu(unsigned int cpu , struct cpumask *dstp )
{
  unsigned int tmp ;
  {
  tmp = cpumask_check(cpu);
  set_bit((long )tmp, (unsigned long volatile *)(& dstp->bits));
  return;
}
}
__inline static void cpumask_clear(struct cpumask *dstp )
{
  {
  bitmap_zero((unsigned long *)(& dstp->bits), nr_cpu_ids);
  return;
}
}
__inline static void cpumask_copy(struct cpumask *dstp , struct cpumask const *srcp )
{
  {
  bitmap_copy((unsigned long *)(& dstp->bits), (unsigned long const *)(& srcp->bits),
              nr_cpu_ids);
  return;
}
}
extern bool alloc_cpumask_var(cpumask_var_t ** , gfp_t ) ;
extern bool zalloc_cpumask_var(cpumask_var_t ** , gfp_t ) ;
extern void free_cpumask_var(cpumask_var_t ) ;
extern unsigned long const cpu_bit_bitmap[65U][128U] ;
__inline static struct cpumask const *get_cpu_mask(unsigned int cpu )
{
  unsigned long const *p ;
  {
  p = (unsigned long const *)(& cpu_bit_bitmap) + (unsigned long )((cpu & 63U) + 1U);
  p = p + - ((unsigned long )(cpu / 64U));
  return ((struct cpumask const *)p);
}
}
__inline static u64 paravirt_read_msr(unsigned int msr , int *err )
{
  u64 __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_cpu_ops.read_msr == (unsigned long )((u64 (*)(unsigned int ,
                                                                                          int * ))0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (128), "i" (12UL));
    ldv_4051: ;
    goto ldv_4051;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c6;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c5\n  .byte 772b-771b\n  .short %c7\n.popsection\n": "=D" (__edi),
                       "=S" (__esi), "=d" (__edx), "=c" (__ecx), "=a" (__eax): [paravirt_typenum] "i" (32UL),
                       [paravirt_opptr] "i" (& pv_cpu_ops.read_msr), [paravirt_clobber] "i" (511),
                       "D" ((unsigned long )msr), "S" ((unsigned long )err): "memory",
                       "cc", "r8", "r9", "r10", "r11");
  __ret = (unsigned long long )__eax;
  return (__ret);
}
}
__inline static int paravirt_write_msr(unsigned int msr , unsigned int low , unsigned int high )
{
  int __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_cpu_ops.write_msr == (unsigned long )((int (*)(unsigned int ,
                                                                                           unsigned int ,
                                                                                           unsigned int ))0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (133), "i" (12UL));
    ldv_4064: ;
    goto ldv_4064;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c6;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c5\n  .byte 772b-771b\n  .short %c7\n.popsection\n": "=D" (__edi),
                       "=S" (__esi), "=d" (__edx), "=c" (__ecx), "=a" (__eax): [paravirt_typenum] "i" (33UL),
                       [paravirt_opptr] "i" (& pv_cpu_ops.write_msr), [paravirt_clobber] "i" (511),
                       "D" ((unsigned long )msr), "S" ((unsigned long )low), "d" ((unsigned long )high): "memory",
                       "cc", "r8", "r9", "r10", "r11");
  __ret = (int )__eax;
  return (__ret);
}
}
__inline static void arch_local_irq_disable(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_disable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (814), "i" (12UL));
    ldv_4870: ;
    goto ldv_4870;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static void arch_local_irq_enable(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_enable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (819), "i" (12UL));
    ldv_4879: ;
    goto ldv_4879;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (47UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_enable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
extern struct cpuinfo_x86 cpu_info ;
extern long work_on_cpu(int , long (*)(void * ) , void * ) ;
__inline static void outl(unsigned int value , int port )
{
  {
  __asm__ volatile ("outl %0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned int inl(int port )
{
  unsigned int value ;
  {
  __asm__ volatile ("inl %w1, %0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern void __bad_size_call_parameter(void) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
void *ldv_kmem_cache_alloc_35(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *ldv_kmalloc_31(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern int set_cpus_allowed_ptr(struct task_struct * , struct cpumask const * ) ;
extern acpi_status acpi_os_read_port(acpi_io_address , u32 * , u32 ) ;
extern acpi_status acpi_os_write_port(acpi_io_address , u32 , u32 ) ;
extern struct acpi_table_fadt acpi_gbl_FADT ;
extern acpi_status acpi_evaluate_object(acpi_handle , acpi_string , struct acpi_object_list * ,
                                        struct acpi_buffer * ) ;
extern void acpi_exception(char const * , u32 , acpi_status , char const *
                           , ...) ;
extern acpi_status acpi_extract_package(union acpi_object * , struct acpi_buffer * ,
                                        struct acpi_buffer * ) ;
extern acpi_status acpi_evaluate_integer(acpi_handle , acpi_string , struct acpi_object_list * ,
                                         unsigned long long * ) ;
extern struct acpi_processor_errata errata ;
int acpi_processor_set_throttling(struct acpi_processor *pr , int state , bool force ) ;
static char const _acpi_module_name___0[21U] =
  { 'p', 'r', 'o', 'c',
        'e', 's', 's', 'o',
        'r', '_', 't', 'h',
        'r', 'o', 't', 't',
        'l', 'i', 'n', 'g',
        '\000'};
static int ignore_tpc ;
static int acpi_processor_get_throttling(struct acpi_processor *pr ) ;
static int acpi_processor_update_tsd_coord(void)
{
  int count ;
  int count_target ;
  int retval ;
  unsigned int i ;
  unsigned int j ;
  cpumask_var_t covered_cpus ;
  struct acpi_processor *pr ;
  struct acpi_processor *match_pr ;
  struct acpi_tsd_package *pdomain ;
  struct acpi_tsd_package *match_pdomain ;
  struct acpi_processor_throttling *pthrottling ;
  struct acpi_processor_throttling *match_pthrottling ;
  bool tmp ;
  int tmp___0 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  void const *__vpp_verify___1 ;
  unsigned long __ptr___1 ;
  void const *__vpp_verify___2 ;
  unsigned long __ptr___2 ;
  void const *__vpp_verify___3 ;
  unsigned long __ptr___3 ;
  {
  retval = 0;
  tmp = zalloc_cpumask_var(& covered_cpus, 208U);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-12);
  } else {
  }
  i = 4294967295U;
  goto ldv_28980;
  ldv_28982:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28980;
  } else {
  }
  pthrottling = & pr->throttling;
  if ((unsigned int )pthrottling->tsd_valid_flag == 0U) {
    retval = -22;
    goto ldv_28981;
  } else {
  }
  ldv_28980:
  i = cpumask_next((int )i, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_28982;
  } else {
  }
  ldv_28981: ;
  if (retval != 0) {
    goto err_ret;
  } else {
  }
  i = 4294967295U;
  goto ldv_28988;
  ldv_29003:
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr___0));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28988;
  } else {
  }
  tmp___1 = cpumask_check(i);
  tmp___2 = variable_test_bit((long )tmp___1, (unsigned long const volatile *)(& covered_cpus->bits));
  if (tmp___2 != 0) {
    goto ldv_28988;
  } else {
  }
  pthrottling = & pr->throttling;
  pdomain = & pthrottling->domain_info;
  cpumask_set_cpu(i, pthrottling->shared_cpu_map);
  cpumask_set_cpu(i, covered_cpus);
  if (pdomain->num_processors <= 1ULL) {
    goto ldv_28988;
  } else {
  }
  count_target = (int )pdomain->num_processors;
  count = 1;
  j = 4294967295U;
  goto ldv_28989;
  ldv_28994: ;
  if (i == j) {
    goto ldv_28989;
  } else {
  }
  __vpp_verify___1 = (void const *)0;
  __asm__ ("": "=r" (__ptr___1): "0" (& processors));
  match_pr = *((struct acpi_processor **)(__per_cpu_offset[j] + __ptr___1));
  if ((unsigned long )match_pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28989;
  } else {
  }
  match_pthrottling = & match_pr->throttling;
  match_pdomain = & match_pthrottling->domain_info;
  if (match_pdomain->domain != pdomain->domain) {
    goto ldv_28989;
  } else {
  }
  if (match_pdomain->num_processors != (u64 )count_target) {
    retval = -22;
    goto err_ret;
  } else {
  }
  if (pdomain->coord_type != match_pdomain->coord_type) {
    retval = -22;
    goto err_ret;
  } else {
  }
  cpumask_set_cpu(j, covered_cpus);
  cpumask_set_cpu(j, pthrottling->shared_cpu_map);
  count = count + 1;
  ldv_28989:
  j = cpumask_next((int )j, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > j) {
    goto ldv_28994;
  } else {
  }
  j = 4294967295U;
  goto ldv_28996;
  ldv_29001: ;
  if (i == j) {
    goto ldv_28996;
  } else {
  }
  __vpp_verify___2 = (void const *)0;
  __asm__ ("": "=r" (__ptr___2): "0" (& processors));
  match_pr = *((struct acpi_processor **)(__per_cpu_offset[j] + __ptr___2));
  if ((unsigned long )match_pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28996;
  } else {
  }
  match_pthrottling = & match_pr->throttling;
  match_pdomain = & match_pthrottling->domain_info;
  if (match_pdomain->domain != pdomain->domain) {
    goto ldv_28996;
  } else {
  }
  cpumask_copy(match_pthrottling->shared_cpu_map, (struct cpumask const *)pthrottling->shared_cpu_map);
  ldv_28996:
  j = cpumask_next((int )j, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > j) {
    goto ldv_29001;
  } else {
  }
  ldv_28988:
  i = cpumask_next((int )i, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_29003;
  } else {
  }
  err_ret:
  free_cpumask_var(covered_cpus);
  i = 4294967295U;
  goto ldv_29009;
  ldv_29010:
  __vpp_verify___3 = (void const *)0;
  __asm__ ("": "=r" (__ptr___3): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr___3));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_29009;
  } else {
  }
  if (retval != 0) {
    pthrottling = & pr->throttling;
    cpumask_clear(pthrottling->shared_cpu_map);
    cpumask_set_cpu(i, pthrottling->shared_cpu_map);
    pthrottling->shared_type = 252U;
  } else {
  }
  ldv_29009:
  i = cpumask_next((int )i, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_29010;
  } else {
  }
  return (retval);
}
}
void acpi_processor_throttling_init(void)
{
  int tmp ;
  {
  tmp = acpi_processor_update_tsd_coord();
  if (tmp != 0) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 251U, "acpi_processor_throttling_init", (char const *)(& _acpi_module_name___0),
                       536870912U, "Assume no T-state coordination\n");
    } else {
    }
  } else {
  }
  return;
}
}
static int acpi_processor_throttling_notifier(unsigned long event , void *data )
{
  struct throttling_tstate *p_tstate ;
  struct acpi_processor *pr ;
  unsigned int cpu ;
  int target_state ;
  struct acpi_processor_limit *p_limit ;
  struct acpi_processor_throttling *p_throttling ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  p_tstate = (struct throttling_tstate *)data;
  cpu = p_tstate->cpu;
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[cpu] + __ptr));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 269U, "acpi_processor_throttling_notifier", (char const *)(& _acpi_module_name___0),
                       536870912U, "Invalid pr pointer\n");
    } else {
    }
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 274U, "acpi_processor_throttling_notifier", (char const *)(& _acpi_module_name___0),
                       536870912U, "Throttling control is unsupported on CPU %d\n",
                       cpu);
    } else {
    }
    return (0);
  } else {
  }
  target_state = p_tstate->target_state;
  p_throttling = & pr->throttling;
  switch (event) {
  case 1UL:
  p_limit = & pr->limit;
  if (p_limit->thermal.tx > target_state) {
    target_state = p_limit->thermal.tx;
  } else {
  }
  if (p_limit->user.tx > target_state) {
    target_state = p_limit->user.tx;
  } else {
  }
  if (pr->throttling_platform_limit > target_state) {
    target_state = pr->throttling_platform_limit;
  } else {
  }
  if ((unsigned int )target_state >= p_throttling->state_count) {
    printk("\fExceed the limit of T-state \n");
    target_state = (int )(p_throttling->state_count - 1U);
  } else {
  }
  p_tstate->target_state = target_state;
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 300U, "acpi_processor_throttling_notifier", (char const *)(& _acpi_module_name___0),
                     536870912U, "PreChange Event:target T-state of CPU %d is T%d\n",
                     cpu, target_state);
  } else {
  }
  goto ldv_29032;
  case 2UL:
  p_throttling->state = (unsigned int )target_state;
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 310U, "acpi_processor_throttling_notifier", (char const *)(& _acpi_module_name___0),
                     536870912U, "PostChange Event:CPU %d is switched to T%d\n", cpu,
                     target_state);
  } else {
  }
  goto ldv_29032;
  default:
  printk("\fUnsupported Throttling notifier event\n");
  goto ldv_29032;
  }
  ldv_29032: ;
  return (0);
}
}
static int acpi_processor_get_platform_limit(struct acpi_processor *pr )
{
  acpi_status status ;
  unsigned long long tpc ;
  {
  status = 0U;
  tpc = 0ULL;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  if (ignore_tpc != 0) {
    goto end;
  } else {
  }
  status = acpi_evaluate_integer(pr->handle, (char *)"_TPC", (struct acpi_object_list *)0,
                                 & tpc);
  if (status != 0U) {
    if (status != 5U) {
      acpi_exception((char const *)(& _acpi_module_name___0), 338U, status, "Evaluating _TPC");
    } else {
    }
    return (-19);
  } else {
  }
  end:
  pr->throttling_platform_limit = (int )tpc;
  return (0);
}
}
int acpi_processor_tstate_has_changed(struct acpi_processor *pr )
{
  int result ;
  int throttling_limit ;
  int current_state ;
  struct acpi_processor_limit *limit ;
  int target_state ;
  int tmp ;
  {
  result = 0;
  if (ignore_tpc != 0) {
    return (0);
  } else {
  }
  result = acpi_processor_get_platform_limit(pr);
  if (result != 0) {
    return (result);
  } else {
  }
  throttling_limit = pr->throttling_platform_limit;
  if ((unsigned int )throttling_limit >= pr->throttling.state_count) {
    return (-22);
  } else {
  }
  current_state = (int )pr->throttling.state;
  if (current_state > throttling_limit) {
    limit = & pr->limit;
    target_state = throttling_limit;
    if (limit->thermal.tx > target_state) {
      target_state = limit->thermal.tx;
    } else {
    }
    if (limit->user.tx > target_state) {
      target_state = limit->user.tx;
    } else {
    }
  } else
  if (current_state == throttling_limit) {
    return (0);
  } else {
    target_state = throttling_limit;
  }
  tmp = acpi_processor_set_throttling(pr, target_state, 0);
  return (tmp);
}
}
void acpi_processor_reevaluate_tstate(struct acpi_processor *pr , unsigned long action )
{
  int result ;
  {
  result = 0;
  if (action == 7UL) {
    pr->flags.throttling = 0U;
    return;
  } else {
  }
  if (pr->throttling.state_count == 0U) {
    pr->flags.throttling = 0U;
    return;
  } else {
  }
  pr->flags.throttling = 1U;
  result = acpi_processor_get_throttling(pr);
  if (result != 0) {
    goto end;
  } else {
  }
  if (pr->throttling.state != 0U) {
    result = acpi_processor_set_throttling(pr, 0, 0);
    if (result != 0) {
      goto end;
    } else {
    }
  } else {
  }
  end: ;
  if (result != 0) {
    pr->flags.throttling = 0U;
  } else {
  }
  return;
}
}
static int acpi_processor_get_throttling_control(struct acpi_processor *pr )
{
  int result ;
  acpi_status status ;
  struct acpi_buffer buffer ;
  union acpi_object *ptc ;
  union acpi_object obj ;
  struct acpi_processor_throttling *throttling ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  result = 0;
  status = 0U;
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  ptc = (union acpi_object *)0;
  obj.type = 0U;
  status = acpi_evaluate_object(pr->handle, (char *)"_PTC", (struct acpi_object_list *)0,
                                & buffer);
  if (status != 0U) {
    if (status != 5U) {
      acpi_exception((char const *)(& _acpi_module_name___0), 471U, status, "Evaluating _PTC");
    } else {
    }
    return (-19);
  } else {
  }
  ptc = (union acpi_object *)buffer.pointer;
  if (((unsigned long )ptc == (unsigned long )((union acpi_object *)0) || ptc->type != 4U) || ptc->package.count != 2U) {
    printk("\vACPI: Invalid _PTC data\n");
    result = -14;
    goto end;
  } else {
  }
  obj = *(ptc->package.elements);
  if ((obj.type != 3U || obj.buffer.length <= 14U) || (unsigned long )obj.buffer.pointer == (unsigned long )((u8 *)0U)) {
    printk("\vACPI: Invalid _PTC data (control_register)\n");
    result = -14;
    goto end;
  } else {
  }
  __len = 15UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& pr->throttling.control_register), (void const *)obj.buffer.pointer,
                     __len);
  } else {
    __ret = memcpy((void *)(& pr->throttling.control_register), (void const *)obj.buffer.pointer,
                             __len);
  }
  obj = *(ptc->package.elements + 1UL);
  if ((obj.type != 3U || obj.buffer.length <= 14U) || (unsigned long )obj.buffer.pointer == (unsigned long )((u8 *)0U)) {
    printk("\vACPI: Invalid _PTC data (status_register)\n");
    result = -14;
    goto end;
  } else {
  }
  __len___0 = 15UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& pr->throttling.status_register), (void const *)obj.buffer.pointer,
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& pr->throttling.status_register), (void const *)obj.buffer.pointer,
                                 __len___0);
  }
  throttling = & pr->throttling;
  if ((int )throttling->control_register.bit_width + (int )throttling->control_register.bit_offset > 32) {
    printk("\vACPI: Invalid _PTC control register\n");
    result = -14;
    goto end;
  } else {
  }
  if ((int )throttling->status_register.bit_width + (int )throttling->status_register.bit_offset > 32) {
    printk("\vACPI: Invalid _PTC status register\n");
    result = -14;
    goto end;
  } else {
  }
  end:
  kfree((void const *)buffer.pointer);
  return (result);
}
}
static int acpi_processor_get_throttling_states(struct acpi_processor *pr )
{
  int result ;
  acpi_status status ;
  struct acpi_buffer buffer ;
  struct acpi_buffer format ;
  struct acpi_buffer state ;
  union acpi_object *tss ;
  int i ;
  void *tmp ;
  struct acpi_processor_tx_tss *tx ;
  {
  result = 0;
  status = 0U;
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  format.length = 6ULL;
  format.pointer = (void *)"NNNNN";
  state.length = 0ULL;
  state.pointer = (void *)0;
  tss = (union acpi_object *)0;
  status = acpi_evaluate_object(pr->handle, (char *)"_TSS", (struct acpi_object_list *)0,
                                & buffer);
  if (status != 0U) {
    if (status != 5U) {
      acpi_exception((char const *)(& _acpi_module_name___0), 556U, status, "Evaluating _TSS");
    } else {
    }
    return (-19);
  } else {
  }
  tss = (union acpi_object *)buffer.pointer;
  if ((unsigned long )tss == (unsigned long )((union acpi_object *)0) || tss->type != 4U) {
    printk("\vACPI: Invalid _TSS data\n");
    result = -14;
    goto end;
  } else {
  }
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 569U, "acpi_processor_get_throttling_states", (char const *)(& _acpi_module_name___0),
                     536870912U, "Found %d throttling states\n", tss->package.count);
  } else {
  }
  pr->throttling.state_count = tss->package.count;
  tmp = kmalloc((unsigned long )tss->package.count * 40UL, 208U);
  pr->throttling.states_tss = (struct acpi_processor_tx_tss *)tmp;
  if ((unsigned long )pr->throttling.states_tss == (unsigned long )((struct acpi_processor_tx_tss *)0)) {
    result = -12;
    goto end;
  } else {
  }
  i = 0;
  goto ldv_29085;
  ldv_29084:
  tx = pr->throttling.states_tss + (unsigned long )i;
  state.length = 40ULL;
  state.pointer = (void *)tx;
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 589U, "acpi_processor_get_throttling_states", (char const *)(& _acpi_module_name___0),
                     536870912U, "Extracting state %d\n", i);
  } else {
  }
  status = acpi_extract_package(tss->package.elements + (unsigned long )i, & format,
                                & state);
  if (status != 0U) {
    acpi_exception((char const *)(& _acpi_module_name___0), 594U, status, "Invalid _TSS data");
    result = -14;
    kfree((void const *)pr->throttling.states_tss);
    goto end;
  } else {
  }
  if (tx->freqpercentage == 0ULL) {
    printk("\vACPI: Invalid _TSS data: freq is zero\n");
    result = -14;
    kfree((void const *)pr->throttling.states_tss);
    goto end;
  } else {
  }
  i = i + 1;
  ldv_29085: ;
  if ((unsigned int )i < pr->throttling.state_count) {
    goto ldv_29084;
  } else {
  }
  end:
  kfree((void const *)buffer.pointer);
  return (result);
}
}
static int acpi_processor_get_tsd(struct acpi_processor *pr )
{
  int result ;
  acpi_status status ;
  struct acpi_buffer buffer ;
  struct acpi_buffer format ;
  struct acpi_buffer state ;
  union acpi_object *tsd ;
  struct acpi_tsd_package *pdomain ;
  struct acpi_processor_throttling *pthrottling ;
  {
  result = 0;
  status = 0U;
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  format.length = 6ULL;
  format.pointer = (void *)"NNNNN";
  state.length = 0ULL;
  state.pointer = (void *)0;
  tsd = (union acpi_object *)0;
  pthrottling = & pr->throttling;
  pthrottling->tsd_valid_flag = 0U;
  status = acpi_evaluate_object(pr->handle, (char *)"_TSD", (struct acpi_object_list *)0,
                                & buffer);
  if (status != 0U) {
    if (status != 5U) {
      acpi_exception((char const *)(& _acpi_module_name___0), 635U, status, "Evaluating _TSD");
    } else {
    }
    return (-19);
  } else {
  }
  tsd = (union acpi_object *)buffer.pointer;
  if ((unsigned long )tsd == (unsigned long )((union acpi_object *)0) || tsd->type != 4U) {
    printk("\vACPI: Invalid _TSD data\n");
    result = -14;
    goto end;
  } else {
  }
  if (tsd->package.count != 1U) {
    printk("\vACPI: Invalid _TSD data\n");
    result = -14;
    goto end;
  } else {
  }
  pdomain = & pr->throttling.domain_info;
  state.length = 40ULL;
  state.pointer = (void *)pdomain;
  status = acpi_extract_package(tsd->package.elements, & format, & state);
  if (status != 0U) {
    printk("\vACPI: Invalid _TSD data\n");
    result = -14;
    goto end;
  } else {
  }
  if (pdomain->num_entries != 5ULL) {
    printk("\vACPI: Unknown _TSD:num_entries\n");
    result = -14;
    goto end;
  } else {
  }
  if (pdomain->revision != 0ULL) {
    printk("\vACPI: Unknown _TSD:revision\n");
    result = -14;
    goto end;
  } else {
  }
  pthrottling = & pr->throttling;
  pthrottling->tsd_valid_flag = 1U;
  pthrottling->shared_type = (unsigned int )pdomain->coord_type;
  cpumask_set_cpu(pr->id, pthrottling->shared_cpu_map);
  if ((pdomain->coord_type != 252ULL && pdomain->coord_type != 253ULL) && pdomain->coord_type != 254ULL) {
    pthrottling->tsd_valid_flag = 0U;
    pthrottling->shared_type = 252U;
  } else {
  }
  end:
  kfree((void const *)buffer.pointer);
  return (result);
}
}
static int acpi_processor_get_throttling_fadt(struct acpi_processor *pr )
{
  int state ;
  u32 value ;
  u32 duty_mask ;
  u32 duty_value ;
  {
  state = 0;
  value = 0U;
  duty_mask = 0U;
  duty_value = 0U;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  pr->throttling.state = 0U;
  duty_mask = pr->throttling.state_count - 1U;
  duty_mask = duty_mask << (int )pr->throttling.duty_offset;
  arch_local_irq_disable();
  trace_hardirqs_off();
  value = inl((int )pr->throttling.address);
  if ((value & 16U) != 0U) {
    duty_value = value & duty_mask;
    duty_value = duty_value >> (int )pr->throttling.duty_offset;
    if (duty_value != 0U) {
      state = (int )(pr->throttling.state_count - duty_value);
    } else {
    }
  } else {
  }
  pr->throttling.state = (unsigned int )state;
  trace_hardirqs_on();
  arch_local_irq_enable();
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 743U, "acpi_processor_get_throttling_fadt", (char const *)(& _acpi_module_name___0),
                     536870912U, "Throttling state is T%d (%d%% throttling applied)\n",
                     state, (int )pr->throttling.states[state].performance);
  } else {
  }
  return (0);
}
}
static int acpi_throttling_rdmsr(u64 *value )
{
  u64 msr_high ;
  u64 msr_low ;
  u64 msr ;
  int ret ;
  int _err ;
  u64 _l ;
  u64 tmp ;
  __u8 pscr_ret__ ;
  void const *__vpp_verify ;
  __u8 pfo_ret__ ;
  __u8 pfo_ret_____0 ;
  __u8 pfo_ret_____1 ;
  __u8 pfo_ret_____2 ;
  int tmp___0 ;
  {
  msr = 0ULL;
  ret = -1;
  __vpp_verify = (void const *)0;
  switch (1UL) {
  case 1UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29119;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29119;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29119;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29119;
  default:
  __bad_percpu_size();
  }
  ldv_29119:
  pscr_ret__ = pfo_ret__;
  goto ldv_29125;
  case 2UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29129;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29129;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29129;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29129;
  default:
  __bad_percpu_size();
  }
  ldv_29129:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_29125;
  case 4UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29138;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29138;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29138;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29138;
  default:
  __bad_percpu_size();
  }
  ldv_29138:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_29125;
  case 8UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29147;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29147;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29147;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29147;
  default:
  __bad_percpu_size();
  }
  ldv_29147:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_29125;
  default:
  __bad_size_call_parameter();
  goto ldv_29125;
  }
  ldv_29125: ;
  if ((unsigned int )pscr_ret__ != 0U) {
    printk("\vACPI: HARDWARE addr space,NOT supported yet\n");
  } else {
    tmp___0 = x86_this_cpu_constant_test_bit(22U, (unsigned long const *)(& cpu_info.x86_capability));
    if (tmp___0 == 0) {
      printk("\vACPI: HARDWARE addr space,NOT supported yet\n");
    } else {
      msr_low = 0ULL;
      msr_high = 0ULL;
      tmp = paravirt_read_msr(410U, & _err);
      _l = tmp;
      *((u32 *)(& msr_low)) = (unsigned int )_l;
      *((u32 *)(& msr_high)) = (u32 )(_l >> 32);
      msr = (msr_high << 32) | msr_low;
      *value = msr;
      ret = 0;
    }
  }
  return (ret);
}
}
static int acpi_throttling_wrmsr(u64 value )
{
  int ret ;
  u64 msr ;
  __u8 pscr_ret__ ;
  void const *__vpp_verify ;
  __u8 pfo_ret__ ;
  __u8 pfo_ret_____0 ;
  __u8 pfo_ret_____1 ;
  __u8 pfo_ret_____2 ;
  int tmp ;
  {
  ret = -1;
  __vpp_verify = (void const *)0;
  switch (1UL) {
  case 1UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29168;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29168;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29168;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_info.x86_vendor));
  goto ldv_29168;
  default:
  __bad_percpu_size();
  }
  ldv_29168:
  pscr_ret__ = pfo_ret__;
  goto ldv_29174;
  case 2UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29178;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29178;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29178;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_info.x86_vendor));
  goto ldv_29178;
  default:
  __bad_percpu_size();
  }
  ldv_29178:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_29174;
  case 4UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29187;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29187;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29187;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_info.x86_vendor));
  goto ldv_29187;
  default:
  __bad_percpu_size();
  }
  ldv_29187:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_29174;
  case 8UL: ;
  switch (1UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29196;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29196;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29196;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_info.x86_vendor));
  goto ldv_29196;
  default:
  __bad_percpu_size();
  }
  ldv_29196:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_29174;
  default:
  __bad_size_call_parameter();
  goto ldv_29174;
  }
  ldv_29174: ;
  if ((unsigned int )pscr_ret__ != 0U) {
    printk("\vACPI: HARDWARE addr space,NOT supported yet\n");
  } else {
    tmp = x86_this_cpu_constant_test_bit(22U, (unsigned long const *)(& cpu_info.x86_capability));
    if (tmp == 0) {
      printk("\vACPI: HARDWARE addr space,NOT supported yet\n");
    } else {
      msr = value;
      paravirt_write_msr(410U, (unsigned int )msr, (unsigned int )(msr >> 32));
      ret = 0;
    }
  }
  return (ret);
}
}
static int acpi_read_throttling_status(struct acpi_processor *pr , u64 *value )
{
  u32 bit_width ;
  u32 bit_offset ;
  u32 ptc_value ;
  u64 ptc_mask ;
  struct acpi_processor_throttling *throttling ;
  int ret ;
  {
  ret = -1;
  throttling = & pr->throttling;
  switch ((int )throttling->status_register.space_id) {
  case 1:
  bit_width = (u32 )throttling->status_register.bit_width;
  bit_offset = (u32 )throttling->status_register.bit_offset;
  acpi_os_read_port(throttling->status_register.address, & ptc_value, bit_width + bit_offset);
  ptc_mask = (u64 )((1 << (int )bit_width) + -1);
  *value = (u64 )(ptc_value >> (int )bit_offset) & ptc_mask;
  ret = 0;
  goto ldv_29215;
  case 127:
  ret = acpi_throttling_rdmsr(value);
  goto ldv_29215;
  default:
  printk("\vACPI: Unknown addr space %d\n", (unsigned int )throttling->status_register.space_id);
  }
  ldv_29215: ;
  return (ret);
}
}
static int acpi_write_throttling_state(struct acpi_processor *pr , u64 value )
{
  u32 bit_width ;
  u32 bit_offset ;
  u64 ptc_value ;
  u64 ptc_mask ;
  struct acpi_processor_throttling *throttling ;
  int ret ;
  {
  ret = -1;
  throttling = & pr->throttling;
  switch ((int )throttling->control_register.space_id) {
  case 1:
  bit_width = (u32 )throttling->control_register.bit_width;
  bit_offset = (u32 )throttling->control_register.bit_offset;
  ptc_mask = (u64 )((1 << (int )bit_width) + -1);
  ptc_value = value & ptc_mask;
  acpi_os_write_port(throttling->control_register.address, (unsigned int )(ptc_value << (int )bit_offset),
                     bit_width + bit_offset);
  ret = 0;
  goto ldv_29229;
  case 127:
  ret = acpi_throttling_wrmsr(value);
  goto ldv_29229;
  default:
  printk("\vACPI: Unknown addr space %d\n", (unsigned int )throttling->control_register.space_id);
  }
  ldv_29229: ;
  return (ret);
}
}
static int acpi_get_throttling_state(struct acpi_processor *pr , u64 value )
{
  int i ;
  struct acpi_processor_tx_tss *tx ;
  {
  i = 0;
  goto ldv_29239;
  ldv_29238:
  tx = pr->throttling.states_tss + (unsigned long )i;
  if (tx->control == value) {
    return (i);
  } else {
  }
  i = i + 1;
  ldv_29239: ;
  if ((unsigned int )i < pr->throttling.state_count) {
    goto ldv_29238;
  } else {
  }
  return (-1);
}
}
static int acpi_get_throttling_value(struct acpi_processor *pr , int state , u64 *value )
{
  int ret ;
  struct acpi_processor_tx_tss *tx ;
  {
  ret = -1;
  if (state >= 0 && (unsigned int )state <= pr->throttling.state_count) {
    tx = pr->throttling.states_tss + (unsigned long )state;
    *value = tx->control;
    ret = 0;
  } else {
  }
  return (ret);
}
}
static int acpi_processor_get_throttling_ptc(struct acpi_processor *pr )
{
  int state ;
  int ret ;
  u64 value ;
  {
  state = 0;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  pr->throttling.state = 0U;
  value = 0ULL;
  ret = acpi_read_throttling_status(pr, & value);
  if (ret >= 0) {
    state = acpi_get_throttling_state(pr, value);
    if (state == -1) {
      if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
        acpi_debug_print(4U, 919U, "acpi_processor_get_throttling_ptc", (char const *)(& _acpi_module_name___0),
                         536870912U, "Invalid throttling state, reset\n");
      } else {
      }
      state = 0;
      ret = acpi_processor_set_throttling(pr, state, 1);
      if (ret != 0) {
        return (ret);
      } else {
      }
    } else {
    }
    pr->throttling.state = (unsigned int )state;
  } else {
  }
  return (0);
}
}
static int acpi_processor_get_throttling(struct acpi_processor *pr )
{
  cpumask_var_t saved_mask ;
  int ret ;
  bool tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  struct cpumask const *tmp___2 ;
  struct task_struct *tmp___3 ;
  int tmp___4 ;
  struct task_struct *tmp___5 ;
  {
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  tmp = alloc_cpumask_var(& saved_mask, 208U);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-12);
  } else {
  }
  tmp___1 = get_current();
  cpumask_copy(saved_mask, (struct cpumask const *)(& tmp___1->cpus_allowed));
  tmp___2 = get_cpu_mask(pr->id);
  tmp___3 = get_current();
  tmp___4 = set_cpus_allowed_ptr(tmp___3, tmp___2);
  if (tmp___4 != 0) {
    free_cpumask_var(saved_mask);
    return (-19);
  } else {
  }
  ret = (*(pr->throttling.acpi_processor_get_throttling))(pr);
  tmp___5 = get_current();
  set_cpus_allowed_ptr(tmp___5, (struct cpumask const *)saved_mask);
  free_cpumask_var(saved_mask);
  return (ret);
}
}
static int acpi_processor_get_fadt_info(struct acpi_processor *pr )
{
  int i ;
  int step ;
  {
  if (pr->throttling.address == 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 968U, "acpi_processor_get_fadt_info", (char const *)(& _acpi_module_name___0),
                       536870912U, "No throttling register\n");
    } else {
    }
    return (-22);
  } else
  if ((unsigned int )pr->throttling.duty_width == 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 971U, "acpi_processor_get_fadt_info", (char const *)(& _acpi_module_name___0),
                       536870912U, "No throttling states\n");
    } else {
    }
    return (-22);
  } else
  if ((int )pr->throttling.duty_offset + (int )pr->throttling.duty_width > 4) {
    printk("\fACPI: duty_cycle spans bit 4\n");
    return (-22);
  } else {
  }
  pr->throttling.state_count = (unsigned int )(1 << (int )acpi_gbl_FADT.duty_width);
  step = (int )(1000U / pr->throttling.state_count);
  i = 0;
  goto ldv_29267;
  ldv_29266:
  pr->throttling.states[i].performance = 1000U - (unsigned int )((int )((u16 )step) * (int )((u16 )i));
  pr->throttling.states[i].power = 1000U - (unsigned int )((int )((u16 )step) * (int )((u16 )i));
  i = i + 1;
  ldv_29267: ;
  if ((unsigned int )i < pr->throttling.state_count) {
    goto ldv_29266;
  } else {
  }
  return (0);
}
}
static int acpi_processor_set_throttling_fadt(struct acpi_processor *pr , int state ,
                                              bool force )
{
  u32 value ;
  u32 duty_mask ;
  u32 duty_value ;
  {
  value = 0U;
  duty_mask = 0U;
  duty_value = 0U;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  if (state < 0 || (unsigned int )state > pr->throttling.state_count - 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  if (! force && (unsigned int )state == pr->throttling.state) {
    return (0);
  } else {
  }
  if (pr->throttling_platform_limit > state) {
    return (-1);
  } else {
  }
  if (state != 0) {
    duty_value = pr->throttling.state_count - (unsigned int )state;
    duty_value = duty_value << (int )pr->throttling.duty_offset;
    duty_mask = pr->throttling.state_count - 1U;
    duty_mask = duty_mask << (int )acpi_gbl_FADT.duty_offset;
    duty_mask = ~ duty_mask;
  } else {
  }
  arch_local_irq_disable();
  trace_hardirqs_off();
  value = inl((int )pr->throttling.address);
  if ((value & 16U) != 0U) {
    value = value & 4294967279U;
    outl(value, (int )pr->throttling.address);
  } else {
  }
  if (state != 0) {
    value = value & duty_mask;
    value = value | duty_value;
    outl(value, (int )pr->throttling.address);
    value = value | 16U;
    outl(value, (int )pr->throttling.address);
  } else {
  }
  pr->throttling.state = (unsigned int )state;
  trace_hardirqs_on();
  arch_local_irq_enable();
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 1065U, "acpi_processor_set_throttling_fadt", (char const *)(& _acpi_module_name___0),
                     536870912U, "Throttling state set to T%d (%d%%)\n", state, (unsigned int )pr->throttling.states[state].performance != 0U ? (int )((unsigned int )pr->throttling.states[state].performance / 10U) : 0);
  } else {
  }
  return (0);
}
}
static int acpi_processor_set_throttling_ptc(struct acpi_processor *pr , int state ,
                                             bool force )
{
  int ret ;
  u64 value ;
  {
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  if (state < 0 || (unsigned int )state > pr->throttling.state_count - 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  if (! force && (unsigned int )state == pr->throttling.state) {
    return (0);
  } else {
  }
  if (pr->throttling_platform_limit > state) {
    return (-1);
  } else {
  }
  value = 0ULL;
  ret = acpi_get_throttling_value(pr, state, & value);
  if (ret >= 0) {
    acpi_write_throttling_state(pr, value);
    pr->throttling.state = (unsigned int )state;
  } else {
  }
  return (0);
}
}
static long acpi_processor_throttling_fn(void *data )
{
  struct acpi_processor_throttling_arg *arg ;
  struct acpi_processor *pr ;
  int tmp ;
  {
  arg = (struct acpi_processor_throttling_arg *)data;
  pr = arg->pr;
  tmp = (*(pr->throttling.acpi_processor_set_throttling))(pr, arg->target_state, (int )arg->force);
  return ((long )tmp);
}
}
int acpi_processor_set_throttling(struct acpi_processor *pr , int state , bool force )
{
  int ret ;
  unsigned int i ;
  struct acpi_processor *match_pr ;
  struct acpi_processor_throttling *p_throttling ;
  struct acpi_processor_throttling_arg arg ;
  struct throttling_tstate t_state ;
  unsigned int tmp ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  long tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  ret = 0;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  if (state < 0 || (unsigned int )state > pr->throttling.state_count - 1U) {
    return (-22);
  } else {
  }
  tmp = cpumask_check(pr->id);
  tmp___0 = variable_test_bit((long )tmp, (unsigned long const volatile *)(& cpu_online_mask->bits));
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    return (-19);
  } else {
  }
  t_state.target_state = state;
  p_throttling = & pr->throttling;
  i = 4294967295U;
  goto ldv_29302;
  ldv_29301:
  t_state.cpu = i;
  acpi_processor_throttling_notifier(1UL, (void *)(& t_state));
  ldv_29302:
  tmp___2 = cpumask_next_and((int )i, cpu_online_mask, (struct cpumask const *)p_throttling->shared_cpu_map);
  i = (unsigned int )tmp___2;
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_29301;
  } else {
  }
  if (p_throttling->shared_type == 253U) {
    arg.pr = pr;
    arg.target_state = state;
    arg.force = force;
    tmp___3 = work_on_cpu((int )pr->id, & acpi_processor_throttling_fn, (void *)(& arg));
    ret = (int )tmp___3;
  } else {
    i = 4294967295U;
    goto ldv_29309;
    ldv_29310:
    __vpp_verify = (void const *)0;
    __asm__ ("": "=r" (__ptr): "0" (& processors));
    match_pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr));
    if ((unsigned long )match_pr == (unsigned long )((struct acpi_processor *)0)) {
      if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
        acpi_debug_print(4U, 1176U, "acpi_processor_set_throttling", (char const *)(& _acpi_module_name___0),
                         536870912U, "Invalid Pointer for CPU %d\n", i);
      } else {
      }
      goto ldv_29309;
    } else {
    }
    if ((unsigned int )*((unsigned char *)match_pr + 32UL) == 0U) {
      if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
        acpi_debug_print(4U, 1186U, "acpi_processor_set_throttling", (char const *)(& _acpi_module_name___0),
                         536870912U, "Throttling Control is unsupported on CPU %d\n",
                         i);
      } else {
      }
      goto ldv_29309;
    } else {
    }
    arg.pr = match_pr;
    arg.target_state = state;
    arg.force = force;
    tmp___4 = work_on_cpu((int )pr->id, & acpi_processor_throttling_fn, (void *)(& arg));
    ret = (int )tmp___4;
    ldv_29309:
    tmp___5 = cpumask_next_and((int )i, cpu_online_mask, (struct cpumask const *)p_throttling->shared_cpu_map);
    i = (unsigned int )tmp___5;
    if ((unsigned int )nr_cpu_ids > i) {
      goto ldv_29310;
    } else {
    }
  }
  i = 4294967295U;
  goto ldv_29313;
  ldv_29312:
  t_state.cpu = i;
  acpi_processor_throttling_notifier(2UL, (void *)(& t_state));
  ldv_29313:
  tmp___6 = cpumask_next_and((int )i, cpu_online_mask, (struct cpumask const *)p_throttling->shared_cpu_map);
  i = (unsigned int )tmp___6;
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_29312;
  } else {
  }
  return (ret);
}
}
int acpi_processor_get_throttling_info(struct acpi_processor *pr )
{
  int result ;
  struct acpi_processor_throttling *pthrottling ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  result = 0;
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 1221U, "acpi_processor_get_throttling_info", (char const *)(& _acpi_module_name___0),
                     536870912U, "pblk_address[0x%08x] duty_offset[%d] duty_width[%d]\n",
                     pr->throttling.address, (int )pr->throttling.duty_offset, (int )pr->throttling.duty_width);
  } else {
  }
  tmp___0 = acpi_processor_get_throttling_control(pr);
  if (tmp___0 != 0) {
    goto _L;
  } else {
    tmp___1 = acpi_processor_get_throttling_states(pr);
    if (tmp___1 != 0) {
      goto _L;
    } else {
      tmp___2 = acpi_processor_get_platform_limit(pr);
      if (tmp___2 != 0) {
        _L:
        pr->throttling.acpi_processor_get_throttling = & acpi_processor_get_throttling_fadt;
        pr->throttling.acpi_processor_set_throttling = & acpi_processor_set_throttling_fadt;
        tmp = acpi_processor_get_fadt_info(pr);
        if (tmp != 0) {
          return (0);
        } else {
        }
      } else {
        pr->throttling.acpi_processor_get_throttling = & acpi_processor_get_throttling_ptc;
        pr->throttling.acpi_processor_set_throttling = & acpi_processor_set_throttling_ptc;
      }
    }
  }
  tmp___3 = acpi_processor_get_tsd(pr);
  if (tmp___3 != 0) {
    pthrottling = & pr->throttling;
    pthrottling->tsd_valid_flag = 0U;
    cpumask_set_cpu(pr->id, pthrottling->shared_cpu_map);
    pthrottling->shared_type = 252U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)(& errata) + 4UL) != 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 1262U, "acpi_processor_get_throttling_info", (char const *)(& _acpi_module_name___0),
                       536870912U, "Throttling not supported on PIIX4 A- or B-step\n");
    } else {
    }
    return (0);
  } else {
  }
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 1267U, "acpi_processor_get_throttling_info", (char const *)(& _acpi_module_name___0),
                     536870912U, "Found %d throttling states\n", pr->throttling.state_count);
  } else {
  }
  pr->flags.throttling = 1U;
  result = acpi_processor_get_throttling(pr);
  if (result != 0) {
    goto end;
  } else {
  }
  if (pr->throttling.state != 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 1284U, "acpi_processor_get_throttling_info", (char const *)(& _acpi_module_name___0),
                       536870912U, "Disabling throttling (was T%d)\n", pr->throttling.state);
    } else {
    }
    result = acpi_processor_set_throttling(pr, 0, 0);
    if (result != 0) {
      goto end;
    } else {
    }
  } else {
  }
  end: ;
  if (result != 0) {
    pr->flags.throttling = 0U;
  } else {
  }
  return (result);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_31(size, flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_35(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern struct module __this_module ;
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
__inline static void arch_safe_halt(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.safe_halt == (unsigned long )((void (*)(void))0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (111), "i" (12UL));
    ldv_4022: ;
    goto ldv_4022;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c5;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c4\n  .byte 772b-771b\n  .short %c6\n.popsection\n": "=D" (__edi),
                       "=S" (__esi), "=d" (__edx), "=c" (__ecx): [paravirt_typenum] "i" (48UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.safe_halt), [paravirt_clobber] "i" (511): "memory",
                       "cc", "rax", "r8", "r9", "r10", "r11");
  return;
}
}
__inline static void wbinvd(void)
{
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_cpu_ops.wbinvd == (unsigned long )((void (*)(void))0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (121), "i" (12UL));
    ldv_4040: ;
    goto ldv_4040;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c5;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c4\n  .byte 772b-771b\n  .short %c6\n.popsection\n": "=D" (__edi),
                       "=S" (__esi), "=d" (__edx), "=c" (__ecx): [paravirt_typenum] "i" (29UL),
                       [paravirt_opptr] "i" (& pv_cpu_ops.wbinvd), [paravirt_clobber] "i" (511): "memory",
                       "cc", "rax", "r8", "r9", "r10", "r11");
  return;
}
}
__inline static void slow_down_io(void)
{
  {
  (*(pv_cpu_ops.io_delay))();
  return;
}
}
extern void stop_critical_timings(void) ;
extern void start_critical_timings(void) ;
extern struct cpuinfo_x86 boot_cpu_data ;
extern unsigned long boot_option_idle_override ;
extern bool amd_e400_c1e_detected ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5945;
  default:
  __bad_percpu_size();
  }
  ldv_5945:
  ti = (struct thread_info *)(pfo_ret__ - 16344UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern int smp_call_function_single(int , void (*)(void * ) , void * , int ) ;
extern void mark_tsc_unstable(char * ) ;
extern void leave_mm(int ) ;
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static unsigned char inb_p(int port )
{
  unsigned char value ;
  unsigned char tmp ;
  {
  tmp = inb(port);
  value = tmp;
  slow_down_io();
  return (value);
}
}
__inline static unsigned int acpi_processor_cstate_check(unsigned int max_cstate___0 )
{
  {
  if ((((unsigned int )boot_cpu_data.x86 == 15U && (unsigned int )boot_cpu_data.x86_vendor == 2U) && (unsigned int )boot_cpu_data.x86_model <= 5U) && (unsigned int )boot_cpu_data.x86_mask <= 9U) {
    return (1U);
  } else
  if ((int )amd_e400_c1e_detected) {
    return (1U);
  } else {
    return (max_cstate___0);
  }
}
}
extern int local_apic_timer_c2_ok ;
extern int cpu_number ;
__inline static void __this_cpu_preempt_check(char const *op )
{
  {
  return;
}
}
void *ldv_kmem_cache_alloc_54(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void sched_clock_idle_sleep_event(void) ;
extern void sched_clock_idle_wakeup_event(u64 ) ;
__inline static acpi_status acpi_read_bit_register(u32 register_id , u32 *return_value )
{
  {
  return (28U);
}
}
__inline static acpi_status acpi_write_bit_register(u32 register_id , u32 value )
{
  {
  return (28U);
}
}
extern int dmi_check_system(struct dmi_system_id const * ) ;
extern int clockevents_notify(unsigned long , void * ) ;
extern int cpuidle_register_driver(struct cpuidle_driver * ) ;
extern void cpuidle_unregister_driver(struct cpuidle_driver * ) ;
extern int cpuidle_register_device(struct cpuidle_device * ) ;
extern void cpuidle_unregister_device(struct cpuidle_device * ) ;
extern void cpuidle_pause_and_lock(void) ;
extern void cpuidle_resume_and_unlock(void) ;
extern int cpuidle_enable_device(struct cpuidle_device * ) ;
extern void cpuidle_disable_device(struct cpuidle_device * ) ;
extern void register_syscore_ops(struct syscore_ops * ) ;
extern void unregister_syscore_ops(struct syscore_ops * ) ;
extern void get_online_cpus(void) ;
extern void put_online_cpus(void) ;
extern void acpi_processor_power_init_bm_check(struct acpi_processor_flags * , unsigned int ) ;
extern int acpi_processor_ffh_cstate_probe(unsigned int , struct acpi_processor_cx * ,
                                           struct acpi_power_register * ) ;
extern void acpi_processor_ffh_cstate_enter(struct acpi_processor_cx * ) ;
static char const _acpi_module_name___1[15U] =
  { 'p', 'r', 'o', 'c',
        'e', 's', 's', 'o',
        'r', '_', 'i', 'd',
        'l', 'e', '\000'};
static unsigned int max_cstate = 8U;
static unsigned int nocst ;
static int bm_check_disable ;
static unsigned int latency_factor = 2U;
char __pcpu_unique_acpi_cpuidle_device ;
struct cpuidle_device *acpi_cpuidle_device ;
char __pcpu_unique_acpi_cstate ;
struct acpi_processor_cx *acpi_cstate[10U] ;
static int disabled_by_idle_boot_param(void)
{
  {
  return (boot_option_idle_override == 3UL || boot_option_idle_override == 1UL);
}
}
static int set_max_cstate(struct dmi_system_id const *id )
{
  {
  if (max_cstate > 8U) {
    return (0);
  } else {
  }
  printk("\rACPI: %s detected - limiting to C%ld max_cstate. Override with \"processor.max_cstate=%d\"\n",
         id->ident, (long )id->driver_data, 9);
  max_cstate = (unsigned int )((long )id->driver_data);
  return (0);
}
}
static struct dmi_system_id processor_power_dmi_table[4U] = { {& set_max_cstate, "Clevo 5600D", {{1U, (unsigned char)0, {'P', 'h', 'o', 'e',
                                                                'n', 'i', 'x', ' ',
                                                                'T', 'e', 'c', 'h',
                                                                'n', 'o', 'l', 'o',
                                                                'g', 'i', 'e', 's',
                                                                ' ', 'L', 'T', 'D',
                                                                '\000'}}, {2U, (unsigned char)0,
                                                                           {'S', 'H',
                                                                            'E', '8',
                                                                            '4', '5',
                                                                            'M', '0',
                                                                            '.', '8',
                                                                            '6', 'C',
                                                                            '.', '0',
                                                                            '0', '1',
                                                                            '3', '.',
                                                                            'D', '.',
                                                                            '0', '3',
                                                                            '0', '2',
                                                                            '1', '3',
                                                                            '1', '3',
                                                                            '0', '7',
                                                                            '\000'}}},
      (void *)2},
        {& set_max_cstate, "Pavilion zv5000", {{4U, (unsigned char)0, {'H', 'e', 'w',
                                                                    'l', 'e', 't',
                                                                    't', '-', 'P',
                                                                    'a', 'c', 'k',
                                                                    'a', 'r', 'd',
                                                                    '\000'}}, {5U,
                                                                               (unsigned char)0,
                                                                               {'P',
                                                                                'a',
                                                                                'v',
                                                                                'i',
                                                                                'l',
                                                                                'i',
                                                                                'o',
                                                                                'n',
                                                                                ' ',
                                                                                'z',
                                                                                'v',
                                                                                '5',
                                                                                '0',
                                                                                '0',
                                                                                '0',
                                                                                ' ',
                                                                                '(',
                                                                                'D',
                                                                                'S',
                                                                                '5',
                                                                                '0',
                                                                                '2',
                                                                                'A',
                                                                                '#',
                                                                                'A',
                                                                                'B',
                                                                                'A',
                                                                                ')',
                                                                                '\000'}}},
      (void *)1},
        {& set_max_cstate, "Asus L8400B", {{4U, (unsigned char)0, {'A', 'S', 'U', 'S',
                                                                'T', 'e', 'K', ' ',
                                                                'C', 'o', 'm', 'p',
                                                                'u', 't', 'e', 'r',
                                                                ' ', 'I', 'n', 'c',
                                                                '.', '\000'}}, {5U,
                                                                                (unsigned char)0,
                                                                                {'L',
                                                                                 '8',
                                                                                 '4',
                                                                                 '0',
                                                                                 '0',
                                                                                 'B',
                                                                                 ' ',
                                                                                 's',
                                                                                 'e',
                                                                                 'r',
                                                                                 'i',
                                                                                 'e',
                                                                                 's',
                                                                                 ' ',
                                                                                 'N',
                                                                                 'o',
                                                                                 't',
                                                                                 'e',
                                                                                 'b',
                                                                                 'o',
                                                                                 'o',
                                                                                 'k',
                                                                                 ' ',
                                                                                 'P',
                                                                                 'C',
                                                                                 '\000'}}},
      (void *)1}};
static void acpi_safe_halt(void)
{
  struct thread_info *tmp ;
  int tmp___0 ;
  {
  tmp = current_thread_info();
  tmp___0 = test_ti_thread_flag(tmp, 3);
  if (tmp___0 == 0) {
    trace_hardirqs_on();
    arch_safe_halt();
    arch_local_irq_disable();
    trace_hardirqs_off();
  } else {
  }
  return;
}
}
static void lapic_timer_check_state(int state , struct acpi_processor *pr , struct acpi_processor_cx *cx )
{
  struct acpi_processor_power *pwr ;
  u8 type ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  int tmp ;
  {
  pwr = & pr->power;
  type = local_apic_timer_c2_ok != 0 ? 3U : 2U;
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& cpu_info));
  tmp = constant_test_bit(225L, (unsigned long const volatile *)(& ((struct cpuinfo_x86 *)(__per_cpu_offset[pr->id] + __ptr))->x86_capability));
  if (tmp != 0) {
    return;
  } else {
  }
  if ((int )amd_e400_c1e_detected) {
    type = 1U;
  } else {
  }
  if (pwr->timer_broadcast_on_state < state) {
    return;
  } else {
  }
  if ((int )cx->type >= (int )type) {
    pr->power.timer_broadcast_on_state = state;
  } else {
  }
  return;
}
}
static void __lapic_timer_propagate_broadcast(void *arg )
{
  struct acpi_processor *pr ;
  unsigned long reason ;
  {
  pr = (struct acpi_processor *)arg;
  reason = pr->power.timer_broadcast_on_state != 2147483647 ? 1UL : 2UL;
  clockevents_notify(reason, (void *)(& pr->id));
  return;
}
}
static void lapic_timer_propagate_broadcast(struct acpi_processor *pr )
{
  {
  smp_call_function_single((int )pr->id, & __lapic_timer_propagate_broadcast, (void *)pr,
                           1);
  return;
}
}
static void lapic_timer_state_broadcast(struct acpi_processor *pr , struct acpi_processor_cx *cx ,
                                        int broadcast )
{
  int state ;
  unsigned long reason ;
  {
  state = (int )(((long )cx - (long )(& pr->power.states)) / 52L);
  if (pr->power.timer_broadcast_on_state <= state) {
    reason = broadcast != 0 ? 4UL : 5UL;
    clockevents_notify(reason, (void *)(& pr->id));
  } else {
  }
  return;
}
}
static u32 saved_bm_rld ;
static int acpi_processor_suspend(void)
{
  {
  acpi_read_bit_register(15U, & saved_bm_rld);
  return (0);
}
}
static void acpi_processor_resume(void)
{
  u32 resumed_bm_rld ;
  {
  resumed_bm_rld = 0U;
  acpi_read_bit_register(15U, & resumed_bm_rld);
  if (resumed_bm_rld == saved_bm_rld) {
    return;
  } else {
  }
  acpi_write_bit_register(15U, saved_bm_rld);
  return;
}
}
static struct syscore_ops acpi_processor_syscore_ops = {{0, 0}, & acpi_processor_suspend, & acpi_processor_resume, 0};
void acpi_processor_syscore_init(void)
{
  {
  register_syscore_ops(& acpi_processor_syscore_ops);
  return;
}
}
void acpi_processor_syscore_exit(void)
{
  {
  unregister_syscore_ops(& acpi_processor_syscore_ops);
  return;
}
}
static void tsc_check_state(int state )
{
  int tmp ;
  {
  switch ((int )boot_cpu_data.x86_vendor) {
  case 2: ;
  case 0:
  tmp = constant_test_bit(120L, (unsigned long const volatile *)(& boot_cpu_data.x86_capability));
  if (tmp != 0) {
    return;
  } else {
  }
  default: ;
  if (state > 1) {
    mark_tsc_unstable((char *)"TSC halts in idle");
  } else {
  }
  }
  return;
}
}
static int acpi_processor_get_power_info_fadt(struct acpi_processor *pr )
{
  {
  if (pr->pblk == 0U) {
    return (-19);
  } else {
  }
  pr->power.states[2].type = 2U;
  pr->power.states[3].type = 3U;
  pr->power.states[2].address = pr->pblk + 4U;
  pr->power.states[3].address = pr->pblk + 5U;
  pr->power.states[2].latency = (u32 )acpi_gbl_FADT.c2_latency;
  pr->power.states[3].latency = (u32 )acpi_gbl_FADT.c3_latency;
  if ((unsigned int )acpi_gbl_FADT.c2_latency > 100U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 329U, "acpi_processor_get_power_info_fadt", (char const *)(& _acpi_module_name___1),
                       536870912U, "C2 latency too large [%d]\n", (int )acpi_gbl_FADT.c2_latency);
    } else {
    }
    pr->power.states[2].address = 0U;
  } else {
  }
  if ((unsigned int )acpi_gbl_FADT.c3_latency > 1000U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 340U, "acpi_processor_get_power_info_fadt", (char const *)(& _acpi_module_name___1),
                       536870912U, "C3 latency too large [%d]\n", (int )acpi_gbl_FADT.c3_latency);
    } else {
    }
    pr->power.states[3].address = 0U;
  } else {
  }
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 348U, "acpi_processor_get_power_info_fadt", (char const *)(& _acpi_module_name___1),
                     536870912U, "lvl2[0x%08x] lvl3[0x%08x]\n", pr->power.states[2].address,
                     pr->power.states[3].address);
  } else {
  }
  return (0);
}
}
static int acpi_processor_get_power_info_default(struct acpi_processor *pr )
{
  {
  if ((unsigned int )pr->power.states[1].valid == 0U) {
    pr->power.states[1].type = 1U;
    pr->power.states[1].valid = 1U;
    pr->power.states[1].entry_method = 2U;
  } else {
  }
  pr->power.states[0].valid = 1U;
  return (0);
}
}
static int acpi_processor_get_power_info_cst(struct acpi_processor *pr )
{
  acpi_status status ;
  u64 count ;
  int current_count ;
  int i ;
  struct acpi_buffer buffer ;
  union acpi_object *cst ;
  union acpi_object *element ;
  union acpi_object *obj ;
  struct acpi_power_register *reg ;
  struct acpi_processor_cx cx ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  {
  status = 0U;
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  if (nocst != 0U) {
    return (-19);
  } else {
  }
  current_count = 0;
  status = acpi_evaluate_object(pr->handle, (char *)"_CST", (struct acpi_object_list *)0,
                                & buffer);
  if (status != 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 384U, "acpi_processor_get_power_info_cst", (char const *)(& _acpi_module_name___1),
                       536870912U, "No _CST, giving up\n");
    } else {
    }
    return (-19);
  } else {
  }
  cst = (union acpi_object *)buffer.pointer;
  if (((unsigned long )cst == (unsigned long )((union acpi_object *)0) || cst->type != 4U) || cst->package.count <= 1U) {
    printk("\vACPI: not enough elements in _CST\n");
    status = 4294967282U;
    goto end;
  } else {
  }
  count = (cst->package.elements)->integer.value;
  if (count == 0ULL || (u64 )(cst->package.count - 1U) != count) {
    printk("\vACPI: count given by _CST is not valid\n");
    status = 4294967282U;
    goto end;
  } else {
  }
  pr->flags.has_cst = 1U;
  i = 1;
  goto ldv_28925;
  ldv_28924:
  memset((void *)(& cx), 0, 52UL);
  element = cst->package.elements + (unsigned long )i;
  if (element->type != 4U) {
    goto ldv_28919;
  } else {
  }
  if (element->package.count != 4U) {
    goto ldv_28919;
  } else {
  }
  obj = element->package.elements;
  if (obj->type != 3U) {
    goto ldv_28919;
  } else {
  }
  reg = (struct acpi_power_register *)obj->buffer.pointer;
  if ((unsigned int )reg->space_id != 1U && (unsigned int )reg->space_id != 127U) {
    goto ldv_28919;
  } else {
  }
  obj = element->package.elements + 1UL;
  if (obj->type != 1U) {
    goto ldv_28919;
  } else {
  }
  cx.type = (u8 )obj->integer.value;
  if (i == 1 && (unsigned int )cx.type != 1U) {
    current_count = current_count + 1;
  } else {
  }
  cx.address = (u32 )reg->address;
  cx.index = (unsigned int )((u8 )current_count) + 1U;
  cx.entry_method = 0U;
  if ((unsigned int )reg->space_id == 127U) {
    tmp = acpi_processor_ffh_cstate_probe(pr->id, & cx, reg);
    if (tmp == 0) {
      cx.entry_method = 1U;
    } else
    if ((unsigned int )cx.type == 1U) {
      cx.entry_method = 2U;
      snprintf((char *)(& cx.desc), 32UL, "ACPI HLT");
    } else {
      goto ldv_28919;
    }
    if ((unsigned int )cx.type == 1U && boot_option_idle_override == 2UL) {
      cx.entry_method = 2U;
      snprintf((char *)(& cx.desc), 32UL, "ACPI HLT");
    } else {
    }
  } else {
    snprintf((char *)(& cx.desc), 32UL, "ACPI IOPORT 0x%x", cx.address);
  }
  if ((unsigned int )cx.type == 1U) {
    cx.valid = 1U;
  } else {
  }
  obj = element->package.elements + 2UL;
  if (obj->type != 1U) {
    goto ldv_28919;
  } else {
  }
  cx.latency = (u32 )obj->integer.value;
  obj = element->package.elements + 3UL;
  if (obj->type != 1U) {
    goto ldv_28919;
  } else {
  }
  current_count = current_count + 1;
  __len = 52UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& pr->power.states) + (unsigned long )current_count,
                     (void const *)(& cx), __len);
  } else {
    __ret = memcpy((void *)(& pr->power.states) + (unsigned long )current_count,
                             (void const *)(& cx), __len);
  }
  if (current_count > 6) {
    printk("\fLimiting number of power states to max (%d)\n", 8);
    printk("\fPlease increase ACPI_PROCESSOR_MAX_POWER if needed.\n");
    goto ldv_28923;
  } else {
  }
  ldv_28919:
  i = i + 1;
  ldv_28925: ;
  if ((u64 )i <= count) {
    goto ldv_28924;
  } else {
  }
  ldv_28923: ;
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 520U, "acpi_processor_get_power_info_cst", (char const *)(& _acpi_module_name___1),
                     536870912U, "Found %d power states\n", current_count);
  } else {
  }
  if (current_count <= 1) {
    status = 4294967282U;
  } else {
  }
  end:
  kfree((void const *)buffer.pointer);
  return ((int )status);
}
}
static void acpi_processor_power_verify_c3(struct acpi_processor *pr , struct acpi_processor_cx *cx )
{
  int bm_check_flag ;
  int bm_control_flag ;
  {
  bm_check_flag = -1;
  bm_control_flag = -1;
  if (cx->address == 0U) {
    return;
  } else
  if ((unsigned int )*((unsigned char *)(& errata) + 4UL) != 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 551U, "acpi_processor_power_verify_c3", (char const *)(& _acpi_module_name___1),
                       536870912U, "C3 not supported on PIIX4 with Type-F DMA\n");
    } else {
    }
    return;
  } else {
  }
  if (bm_check_flag == -1) {
    acpi_processor_power_init_bm_check(& pr->flags, pr->id);
    bm_check_flag = (int )pr->flags.bm_check;
    bm_control_flag = (int )pr->flags.bm_control;
  } else {
    pr->flags.bm_check = (unsigned char )bm_check_flag;
    pr->flags.bm_control = (unsigned char )bm_control_flag;
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
      if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
        if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
          acpi_debug_print(4U, 571U, "acpi_processor_power_verify_c3", (char const *)(& _acpi_module_name___1),
                           536870912U, "C3 support requires BM control\n");
        } else {
        }
        return;
      } else
      if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
        acpi_debug_print(4U, 576U, "acpi_processor_power_verify_c3", (char const *)(& _acpi_module_name___1),
                         536870912U, "C3 support without BM control\n");
      } else {
      }
    } else {
    }
  } else
  if ((acpi_gbl_FADT.flags & 1U) == 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 587U, "acpi_processor_power_verify_c3", (char const *)(& _acpi_module_name___1),
                       536870912U, "Cache invalidation should work properly for C3 to be enabled on SMP systems\n");
    } else {
    }
    return;
  } else {
  }
  cx->valid = 1U;
  acpi_write_bit_register(15U, 1U);
  return;
}
}
static int acpi_processor_power_verify(struct acpi_processor *pr )
{
  unsigned int i ;
  unsigned int working ;
  struct acpi_processor_cx *cx ;
  {
  working = 0U;
  pr->power.timer_broadcast_on_state = 2147483647;
  i = 1U;
  goto ldv_28945;
  ldv_28944:
  cx = (struct acpi_processor_cx *)(& pr->power.states) + (unsigned long )i;
  switch ((int )cx->type) {
  case 1:
  cx->valid = 1U;
  goto ldv_28940;
  case 2: ;
  if (cx->address == 0U) {
    goto ldv_28940;
  } else {
  }
  cx->valid = 1U;
  goto ldv_28940;
  case 3:
  acpi_processor_power_verify_c3(pr, cx);
  goto ldv_28940;
  }
  ldv_28940: ;
  if ((unsigned int )cx->valid == 0U) {
    goto ldv_28943;
  } else {
  }
  lapic_timer_check_state((int )i, pr, cx);
  tsc_check_state((int )cx->type);
  working = working + 1U;
  ldv_28943:
  i = i + 1U;
  ldv_28945: ;
  if (i <= 7U && i <= max_cstate) {
    goto ldv_28944;
  } else {
  }
  lapic_timer_propagate_broadcast(pr);
  return ((int )working);
}
}
static int acpi_processor_get_power_info(struct acpi_processor *pr )
{
  unsigned int i ;
  int result ;
  {
  memset((void *)(& pr->power.states), 0, 416UL);
  result = acpi_processor_get_power_info_cst(pr);
  if (result == -19) {
    result = acpi_processor_get_power_info_fadt(pr);
  } else {
  }
  if (result != 0) {
    return (result);
  } else {
  }
  acpi_processor_get_power_info_default(pr);
  pr->power.count = acpi_processor_power_verify(pr);
  i = 1U;
  goto ldv_28953;
  ldv_28952: ;
  if ((unsigned int )pr->power.states[i].valid != 0U) {
    pr->power.count = (int )i;
    if ((unsigned int )pr->power.states[i].type > 1U) {
      pr->flags.power = 1U;
    } else {
    }
  } else {
  }
  i = i + 1U;
  ldv_28953: ;
  if (i <= 7U) {
    goto ldv_28952;
  } else {
  }
  return (0);
}
}
static int acpi_idle_bm_check(void)
{
  u32 bm_status ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  bm_status = 0U;
  if (bm_check_disable != 0) {
    return (0);
  } else {
  }
  acpi_read_bit_register(1U, & bm_status);
  if (bm_status != 0U) {
    acpi_write_bit_register(1U, 1U);
  } else
  if (errata.piix4.bmisx != 0U) {
    tmp = inb_p((int )(errata.piix4.bmisx + 2U));
    if ((int )tmp & 1) {
      bm_status = 1U;
    } else {
      tmp___0 = inb_p((int )(errata.piix4.bmisx + 10U));
      if ((int )tmp___0 & 1) {
        bm_status = 1U;
      } else {
      }
    }
  } else {
  }
  return ((int )bm_status);
}
}
__inline static void acpi_idle_do_entry(struct acpi_processor_cx *cx )
{
  {
  stop_critical_timings();
  if ((unsigned int )cx->entry_method == 1U) {
    acpi_processor_ffh_cstate_enter(cx);
  } else
  if ((unsigned int )cx->entry_method == 2U) {
    acpi_safe_halt();
  } else {
    inb((int )cx->address);
    inl((int )acpi_gbl_FADT.xpm_timer_block.address);
  }
  start_critical_timings();
  return;
}
}
static int acpi_idle_enter_c1(struct cpuidle_device *dev , struct cpuidle_driver *drv ,
                              int index )
{
  struct acpi_processor *pr ;
  struct acpi_processor_cx *cx ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  struct acpi_processor *pscr_ret__ ;
  void const *__vpp_verify___0 ;
  struct acpi_processor *pfo_ret__ ;
  struct acpi_processor *pfo_ret_____0 ;
  struct acpi_processor *pfo_ret_____1 ;
  struct acpi_processor *pfo_ret_____2 ;
  long tmp ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" ((struct acpi_processor_cx **)(& acpi_cstate) + (unsigned long )index));
  cx = *((struct acpi_processor_cx **)(__per_cpu_offset[dev->cpu] + __ptr));
  __this_cpu_preempt_check("read");
  __vpp_verify___0 = (void const *)0;
  switch (8UL) {
  case 1UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (processors));
  goto ldv_28978;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_28978;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_28978;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_28978;
  default:
  __bad_percpu_size();
  }
  ldv_28978:
  pscr_ret__ = pfo_ret__;
  goto ldv_28984;
  case 2UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (processors));
  goto ldv_28988;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_28988;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_28988;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_28988;
  default:
  __bad_percpu_size();
  }
  ldv_28988:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_28984;
  case 4UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (processors));
  goto ldv_28997;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_28997;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_28997;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_28997;
  default:
  __bad_percpu_size();
  }
  ldv_28997:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_28984;
  case 8UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (processors));
  goto ldv_29006;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29006;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29006;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29006;
  default:
  __bad_percpu_size();
  }
  ldv_29006:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_28984;
  default:
  __bad_size_call_parameter();
  goto ldv_28984;
  }
  ldv_28984:
  pr = pscr_ret__;
  tmp = ldv__builtin_expect((unsigned long )pr == (unsigned long )((struct acpi_processor *)0),
                         0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  lapic_timer_state_broadcast(pr, cx, 1);
  acpi_idle_do_entry(cx);
  lapic_timer_state_broadcast(pr, cx, 0);
  return (index);
}
}
static int acpi_idle_play_dead(struct cpuidle_device *dev , int index )
{
  struct acpi_processor_cx *cx ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" ((struct acpi_processor_cx **)(& acpi_cstate) + (unsigned long )index));
  cx = *((struct acpi_processor_cx **)(__per_cpu_offset[dev->cpu] + __ptr));
  wbinvd();
  ldv_29023: ;
  if ((unsigned int )cx->entry_method == 2U) {
    trace_hardirqs_on();
    arch_safe_halt();
  } else
  if ((unsigned int )cx->entry_method == 0U) {
    inb((int )cx->address);
    inl((int )acpi_gbl_FADT.xpm_timer_block.address);
  } else {
    return (-19);
  }
  goto ldv_29023;
  return (0);
}
}
static int acpi_idle_enter_simple(struct cpuidle_device *dev , struct cpuidle_driver *drv ,
                                  int index )
{
  struct acpi_processor *pr ;
  struct acpi_processor_cx *cx ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  struct acpi_processor *pscr_ret__ ;
  void const *__vpp_verify___0 ;
  struct acpi_processor *pfo_ret__ ;
  struct acpi_processor *pfo_ret_____0 ;
  struct acpi_processor *pfo_ret_____1 ;
  struct acpi_processor *pfo_ret_____2 ;
  long tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" ((struct acpi_processor_cx **)(& acpi_cstate) + (unsigned long )index));
  cx = *((struct acpi_processor_cx **)(__per_cpu_offset[dev->cpu] + __ptr));
  __this_cpu_preempt_check("read");
  __vpp_verify___0 = (void const *)0;
  switch (8UL) {
  case 1UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (processors));
  goto ldv_29040;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_29040;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_29040;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_29040;
  default:
  __bad_percpu_size();
  }
  ldv_29040:
  pscr_ret__ = pfo_ret__;
  goto ldv_29046;
  case 2UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (processors));
  goto ldv_29050;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_29050;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_29050;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_29050;
  default:
  __bad_percpu_size();
  }
  ldv_29050:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_29046;
  case 4UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (processors));
  goto ldv_29059;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_29059;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_29059;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_29059;
  default:
  __bad_percpu_size();
  }
  ldv_29059:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_29046;
  case 8UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (processors));
  goto ldv_29068;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29068;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29068;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29068;
  default:
  __bad_percpu_size();
  }
  ldv_29068:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_29046;
  default:
  __bad_size_call_parameter();
  goto ldv_29046;
  }
  ldv_29046:
  pr = pscr_ret__;
  tmp = ldv__builtin_expect((unsigned long )pr == (unsigned long )((struct acpi_processor *)0),
                         0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  if ((unsigned int )cx->type != 1U) {
    tmp___1 = cpumask_weight(cpu_online_mask);
    if (tmp___1 > 1U) {
      if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
        if ((acpi_gbl_FADT.flags & 8U) == 0U) {
          tmp___0 = acpi_idle_enter_c1(dev, drv, 1);
          return (tmp___0);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  lapic_timer_state_broadcast(pr, cx, 1);
  if ((unsigned int )cx->type == 3U) {
    wbinvd();
  } else {
  }
  sched_clock_idle_sleep_event();
  acpi_idle_do_entry(cx);
  sched_clock_idle_wakeup_event(0ULL);
  lapic_timer_state_broadcast(pr, cx, 0);
  return (index);
}
}
static int c3_cpu_count ;
static raw_spinlock_t c3_lock = {{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "c3_lock", 0, 0UL}};
static int acpi_idle_enter_bm(struct cpuidle_device *dev , struct cpuidle_driver *drv ,
                              int index )
{
  struct acpi_processor *pr ;
  struct acpi_processor_cx *cx ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  struct acpi_processor *pscr_ret__ ;
  void const *__vpp_verify___0 ;
  struct acpi_processor *pfo_ret__ ;
  struct acpi_processor *pfo_ret_____0 ;
  struct acpi_processor *pfo_ret_____1 ;
  struct acpi_processor *pfo_ret_____2 ;
  long tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___1 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  unsigned int tmp___4 ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" ((struct acpi_processor_cx **)(& acpi_cstate) + (unsigned long )index));
  cx = *((struct acpi_processor_cx **)(__per_cpu_offset[dev->cpu] + __ptr));
  __this_cpu_preempt_check("read");
  __vpp_verify___0 = (void const *)0;
  switch (8UL) {
  case 1UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (processors));
  goto ldv_29095;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_29095;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_29095;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (processors));
  goto ldv_29095;
  default:
  __bad_percpu_size();
  }
  ldv_29095:
  pscr_ret__ = pfo_ret__;
  goto ldv_29101;
  case 2UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (processors));
  goto ldv_29105;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_29105;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_29105;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (processors));
  goto ldv_29105;
  default:
  __bad_percpu_size();
  }
  ldv_29105:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_29101;
  case 4UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (processors));
  goto ldv_29114;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_29114;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_29114;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (processors));
  goto ldv_29114;
  default:
  __bad_percpu_size();
  }
  ldv_29114:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_29101;
  case 8UL: ;
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (processors));
  goto ldv_29123;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29123;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29123;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (processors));
  goto ldv_29123;
  default:
  __bad_percpu_size();
  }
  ldv_29123:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_29101;
  default:
  __bad_size_call_parameter();
  goto ldv_29101;
  }
  ldv_29101:
  pr = pscr_ret__;
  tmp = ldv__builtin_expect((unsigned long )pr == (unsigned long )((struct acpi_processor *)0),
                         0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  if ((unsigned int )cx->type != 1U) {
    tmp___1 = cpumask_weight(cpu_online_mask);
    if (tmp___1 > 1U) {
      if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
        if ((acpi_gbl_FADT.flags & 8U) == 0U) {
          tmp___0 = acpi_idle_enter_c1(dev, drv, 1);
          return (tmp___0);
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )cx->bm_sts_skip == 0U) {
    tmp___3 = acpi_idle_bm_check();
    if (tmp___3 != 0) {
      if (drv->safe_state_index >= 0) {
        tmp___2 = (*(drv->states[drv->safe_state_index].enter))(dev, drv, drv->safe_state_index);
        return (tmp___2);
      } else {
        acpi_safe_halt();
        return (-16);
      }
    } else {
    }
  } else {
  }
  __vpp_verify___1 = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_29136;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_29136;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_29136;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_29136;
  default:
  __bad_percpu_size();
  }
  ldv_29136:
  pscr_ret_____0 = pfo_ret_____3;
  goto ldv_29142;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_29146;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_29146;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_29146;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_29146;
  default:
  __bad_percpu_size();
  }
  ldv_29146:
  pscr_ret_____0 = pfo_ret_____4;
  goto ldv_29142;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_29155;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_29155;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_29155;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_29155;
  default:
  __bad_percpu_size();
  }
  ldv_29155:
  pscr_ret_____0 = pfo_ret_____5;
  goto ldv_29142;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_29164;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_29164;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_29164;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_29164;
  default:
  __bad_percpu_size();
  }
  ldv_29164:
  pscr_ret_____0 = pfo_ret_____6;
  goto ldv_29142;
  default:
  __bad_size_call_parameter();
  goto ldv_29142;
  }
  ldv_29142:
  leave_mm(pscr_ret_____0);
  sched_clock_idle_sleep_event();
  lapic_timer_state_broadcast(pr, cx, 1);
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U && (unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    _raw_spin_lock(& c3_lock);
    c3_cpu_count = c3_cpu_count + 1;
    tmp___4 = cpumask_weight(cpu_online_mask);
    if ((unsigned int )c3_cpu_count == tmp___4) {
      acpi_write_bit_register(19U, 1U);
    } else {
    }
    _raw_spin_unlock(& c3_lock);
  } else
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    wbinvd();
  } else {
  }
  acpi_idle_do_entry(cx);
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U && (unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    _raw_spin_lock(& c3_lock);
    acpi_write_bit_register(19U, 0U);
    c3_cpu_count = c3_cpu_count - 1;
    _raw_spin_unlock(& c3_lock);
  } else {
  }
  sched_clock_idle_wakeup_event(0ULL);
  lapic_timer_state_broadcast(pr, cx, 0);
  return (index);
}
}
struct cpuidle_driver acpi_idle_driver =
     {"acpi_idle", & __this_module, 0, (unsigned char)0, {{{(char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0}, {(char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0},
                                                         0U, 0U, 0, 0U, (_Bool)0,
                                                         0, 0}, {{(char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0},
                                                                 {(char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0},
                                                                 0U, 0U, 0, 0U, (_Bool)0,
                                                                 0, 0}, {{(char)0,
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
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0},
                                                                         0U, 0U, 0,
                                                                         0U, (_Bool)0,
                                                                         0, 0}, {{(char)0,
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
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 0U,
                                                                                 (_Bool)0,
                                                                                 0,
                                                                                 0},
                                                        {{(char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0}, {(char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0},
                                                         0U, 0U, 0, 0U, (_Bool)0,
                                                         0, 0}, {{(char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0},
                                                                 {(char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0},
                                                                 0U, 0U, 0, 0U, (_Bool)0,
                                                                 0, 0}, {{(char)0,
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
                                                                          (char)0,
                                                                          (char)0,
                                                                          (char)0},
                                                                         0U, 0U, 0,
                                                                         0U, (_Bool)0,
                                                                         0, 0}, {{(char)0,
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
                                                                                  (char)0,
                                                                                  (char)0,
                                                                                  (char)0},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 0U,
                                                                                 (_Bool)0,
                                                                                 0,
                                                                                 0},
                                                        {{(char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0, (char)0, (char)0,
                                                          (char)0}, {(char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0,
                                                                     (char)0, (char)0},
                                                         0U, 0U, 0, 0U, (_Bool)0,
                                                         0, 0}, {{(char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0},
                                                                 {(char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0,
                                                                  (char)0, (char)0},
                                                                 0U, 0U, 0, 0U, (_Bool)0,
                                                                 0, 0}}, 0, 0, 0};
static int acpi_processor_setup_cpuidle_cx(struct acpi_processor *pr , struct cpuidle_device *dev )
{
  int i ;
  int count ;
  struct acpi_processor_cx *cx ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  count = 1;
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned long )dev == (unsigned long )((struct cpuidle_device *)0)) {
    return (-22);
  } else {
  }
  dev->cpu = pr->id;
  if (max_cstate == 0U) {
    max_cstate = 1U;
  } else {
  }
  i = 1;
  goto ldv_29187;
  ldv_29186:
  cx = (struct acpi_processor_cx *)(& pr->power.states) + (unsigned long )i;
  if ((unsigned int )cx->valid == 0U) {
    goto ldv_29180;
  } else {
  }
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" ((struct acpi_processor_cx **)(& acpi_cstate) + (unsigned long )count));
  *((struct acpi_processor_cx **)(__per_cpu_offset[dev->cpu] + __ptr)) = cx;
  count = count + 1;
  if (count == 10) {
    goto ldv_29185;
  } else {
  }
  ldv_29180:
  i = i + 1;
  ldv_29187: ;
  if (i <= 7 && (unsigned int )i <= max_cstate) {
    goto ldv_29186;
  } else {
  }
  ldv_29185: ;
  if (count == 0) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int acpi_processor_setup_cpuidle_states(struct acpi_processor *pr )
{
  int i ;
  int count ;
  struct acpi_processor_cx *cx ;
  struct cpuidle_state *state ;
  struct cpuidle_driver *drv ;
  {
  count = 1;
  drv = & acpi_idle_driver;
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-22);
  } else {
  }
  drv->safe_state_index = -1;
  i = 0;
  goto ldv_29197;
  ldv_29196:
  drv->states[i].name[0] = 0;
  drv->states[i].desc[0] = 0;
  i = i + 1;
  ldv_29197: ;
  if (i <= 9) {
    goto ldv_29196;
  } else {
  }
  if (max_cstate == 0U) {
    max_cstate = 1U;
  } else {
  }
  i = 1;
  goto ldv_29206;
  ldv_29205:
  cx = (struct acpi_processor_cx *)(& pr->power.states) + (unsigned long )i;
  if ((unsigned int )cx->valid == 0U) {
    goto ldv_29199;
  } else {
  }
  state = (struct cpuidle_state *)(& drv->states) + (unsigned long )count;
  snprintf((char *)(& state->name), 16UL, "C%d", i);
  strncpy((char *)(& state->desc), (char const *)(& cx->desc), 32UL);
  state->exit_latency = cx->latency;
  state->target_residency = cx->latency * latency_factor;
  state->flags = 0U;
  switch ((int )cx->type) {
  case 1: ;
  if ((unsigned int )cx->entry_method == 1U) {
    state->flags = state->flags | 1U;
  } else {
  }
  state->enter = & acpi_idle_enter_c1;
  state->enter_dead = & acpi_idle_play_dead;
  drv->safe_state_index = count;
  goto ldv_29201;
  case 2:
  state->flags = state->flags | 1U;
  state->enter = & acpi_idle_enter_simple;
  state->enter_dead = & acpi_idle_play_dead;
  drv->safe_state_index = count;
  goto ldv_29201;
  case 3:
  state->flags = state->flags | 1U;
  state->enter = (unsigned int )*((unsigned char *)pr + 32UL) != 0U ? & acpi_idle_enter_bm : & acpi_idle_enter_simple;
  goto ldv_29201;
  }
  ldv_29201:
  count = count + 1;
  if (count == 10) {
    goto ldv_29204;
  } else {
  }
  ldv_29199:
  i = i + 1;
  ldv_29206: ;
  if (i <= 7 && (unsigned int )i <= max_cstate) {
    goto ldv_29205;
  } else {
  }
  ldv_29204:
  drv->state_count = count;
  if (count == 0) {
    return (-22);
  } else {
  }
  return (0);
}
}
int acpi_processor_hotplug(struct acpi_processor *pr )
{
  int ret ;
  struct cpuidle_device *dev ;
  int tmp ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  ret = 0;
  tmp = disabled_by_idle_boot_param();
  if (tmp != 0) {
    return (0);
  } else {
  }
  if (nocst != 0U) {
    return (-19);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& acpi_cpuidle_device));
  dev = *((struct cpuidle_device **)(__per_cpu_offset[pr->id] + __ptr));
  cpuidle_pause_and_lock();
  cpuidle_disable_device(dev);
  acpi_processor_get_power_info(pr);
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    acpi_processor_setup_cpuidle_cx(pr, dev);
    ret = cpuidle_enable_device(dev);
  } else {
  }
  cpuidle_resume_and_unlock();
  return (ret);
}
}
int acpi_processor_cst_has_changed(struct acpi_processor *pr )
{
  int cpu ;
  struct acpi_processor *_pr ;
  struct cpuidle_device *dev ;
  int tmp ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  unsigned int tmp___0 ;
  void const *__vpp_verify___1 ;
  unsigned long __ptr___1 ;
  void const *__vpp_verify___2 ;
  unsigned long __ptr___2 ;
  unsigned int tmp___1 ;
  struct cpuidle_driver *tmp___2 ;
  {
  tmp = disabled_by_idle_boot_param();
  if (tmp != 0) {
    return (0);
  } else {
  }
  if (nocst != 0U) {
    return (-19);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) == 0U) {
    return (-19);
  } else {
  }
  if (pr->id == 0U) {
    tmp___2 = cpuidle_get_driver();
    if ((unsigned long )tmp___2 == (unsigned long )(& acpi_idle_driver)) {
      cpuidle_pause_and_lock();
      get_online_cpus();
      cpu = -1;
      goto ldv_29226;
      ldv_29231:
      __vpp_verify = (void const *)0;
      __asm__ ("": "=r" (__ptr): "0" (& processors));
      _pr = *((struct acpi_processor **)(__per_cpu_offset[cpu] + __ptr));
      if ((unsigned long )_pr == (unsigned long )((struct acpi_processor *)0) || (unsigned int )*((unsigned char *)_pr + 32UL) == 0U) {
        goto ldv_29226;
      } else {
      }
      __vpp_verify___0 = (void const *)0;
      __asm__ ("": "=r" (__ptr___0): "0" (& acpi_cpuidle_device));
      dev = *((struct cpuidle_device **)(__per_cpu_offset[cpu] + __ptr___0));
      cpuidle_disable_device(dev);
      ldv_29226:
      tmp___0 = cpumask_next(cpu, cpu_online_mask);
      cpu = (int )tmp___0;
      if (cpu < nr_cpu_ids) {
        goto ldv_29231;
      } else {
      }
      acpi_processor_get_power_info(pr);
      acpi_processor_setup_cpuidle_states(pr);
      cpu = -1;
      goto ldv_29237;
      ldv_29242:
      __vpp_verify___1 = (void const *)0;
      __asm__ ("": "=r" (__ptr___1): "0" (& processors));
      _pr = *((struct acpi_processor **)(__per_cpu_offset[cpu] + __ptr___1));
      if ((unsigned long )_pr == (unsigned long )((struct acpi_processor *)0) || (unsigned int )*((unsigned char *)_pr + 32UL) == 0U) {
        goto ldv_29237;
      } else {
      }
      acpi_processor_get_power_info(_pr);
      if ((unsigned int )*((unsigned char *)_pr + 32UL) != 0U) {
        __vpp_verify___2 = (void const *)0;
        __asm__ ("": "=r" (__ptr___2): "0" (& acpi_cpuidle_device));
        dev = *((struct cpuidle_device **)(__per_cpu_offset[cpu] + __ptr___2));
        acpi_processor_setup_cpuidle_cx(_pr, dev);
        cpuidle_enable_device(dev);
      } else {
      }
      ldv_29237:
      tmp___1 = cpumask_next(cpu, cpu_online_mask);
      cpu = (int )tmp___1;
      if (cpu < nr_cpu_ids) {
        goto ldv_29242;
      } else {
      }
      put_online_cpus();
      cpuidle_resume_and_unlock();
    } else {
    }
  } else {
  }
  return (0);
}
}
static int acpi_processor_registered ;
int acpi_processor_power_init(struct acpi_processor *pr )
{
  acpi_status status ;
  int retval ;
  struct cpuidle_device *dev ;
  int first_run ;
  int tmp ;
  void *tmp___0 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  status = 0U;
  tmp = disabled_by_idle_boot_param();
  if (tmp != 0) {
    return (0);
  } else {
  }
  if (first_run == 0) {
    dmi_check_system((struct dmi_system_id const *)(& processor_power_dmi_table));
    max_cstate = acpi_processor_cstate_check(max_cstate);
    if (max_cstate <= 2U) {
      printk("\rACPI: processor limited to max C-state %d\n", max_cstate);
    } else {
    }
    first_run = first_run + 1;
  } else {
  }
  if ((unsigned int )acpi_gbl_FADT.cst_control != 0U && nocst == 0U) {
    status = acpi_os_write_port((acpi_io_address )acpi_gbl_FADT.smi_command, (u32 )acpi_gbl_FADT.cst_control,
                                8U);
    if (status != 0U) {
      acpi_exception((char const *)(& _acpi_module_name___1), 1169U, status, "Notifying BIOS of _CST ability failed");
    } else {
    }
  } else {
  }
  acpi_processor_get_power_info(pr);
  pr->flags.power_setup_done = 1U;
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    if (acpi_processor_registered == 0) {
      acpi_processor_setup_cpuidle_states(pr);
      retval = cpuidle_register_driver(& acpi_idle_driver);
      if (retval != 0) {
        return (retval);
      } else {
      }
      printk("\017ACPI: %s registered with cpuidle\n", acpi_idle_driver.name);
    } else {
    }
    tmp___0 = kzalloc(368UL, 208U);
    dev = (struct cpuidle_device *)tmp___0;
    if ((unsigned long )dev == (unsigned long )((struct cpuidle_device *)0)) {
      return (-12);
    } else {
    }
    __vpp_verify = (void const *)0;
    __asm__ ("": "=r" (__ptr): "0" (& acpi_cpuidle_device));
    *((struct cpuidle_device **)(__per_cpu_offset[pr->id] + __ptr)) = dev;
    acpi_processor_setup_cpuidle_cx(pr, dev);
    retval = cpuidle_register_device(dev);
    if (retval != 0) {
      if (acpi_processor_registered == 0) {
        cpuidle_unregister_driver(& acpi_idle_driver);
      } else {
      }
      return (retval);
    } else {
    }
    acpi_processor_registered = acpi_processor_registered + 1;
  } else {
  }
  return (0);
}
}
int acpi_processor_power_exit(struct acpi_processor *pr )
{
  struct cpuidle_device *dev ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  int tmp ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& acpi_cpuidle_device));
  dev = *((struct cpuidle_device **)(__per_cpu_offset[pr->id] + __ptr));
  tmp = disabled_by_idle_boot_param();
  if (tmp != 0) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    cpuidle_unregister_device(dev);
    acpi_processor_registered = acpi_processor_registered - 1;
    if (acpi_processor_registered == 0) {
      cpuidle_unregister_driver(& acpi_idle_driver);
    } else {
    }
  } else {
  }
  pr->flags.power_setup_done = 0U;
  return (0);
}
}
extern int ldv_release_4(void) ;
extern int ldv_probe_4(void) ;
int ldv_retval_1 ;
void ldv_main_exported_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 == 2) {
    ldv_retval_1 = acpi_processor_suspend();
    if (ldv_retval_1 == 0) {
      ldv_state_variable_4 = 3;
    } else {
    }
  } else {
  }
  goto ldv_29273;
  case 1: ;
  if (ldv_state_variable_4 == 3) {
    acpi_processor_resume();
    ldv_state_variable_4 = 2;
  } else {
  }
  goto ldv_29273;
  case 2: ;
  if (ldv_state_variable_4 == 3) {
    ldv_release_4();
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  if (ldv_state_variable_4 == 2) {
    ldv_release_4();
    ldv_state_variable_4 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_29273;
  case 3: ;
  if (ldv_state_variable_4 == 1) {
    ldv_probe_4();
    ldv_state_variable_4 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_29273;
  default:
  ldv_stop();
  }
  ldv_29273: ;
  return;
}
}
void *ldv_kmem_cache_alloc_54(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
void *ldv_kmem_cache_alloc_73(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
extern int cpufreq_get_policy(struct cpufreq_policy * , unsigned int ) ;
extern int cpufreq_update_policy(unsigned int ) ;
__inline static void cpufreq_verify_within_limits(struct cpufreq_policy *policy ,
                                                  unsigned int min , unsigned int max )
{
  {
  if (policy->min < min) {
    policy->min = min;
  } else {
  }
  if (policy->max < min) {
    policy->max = min;
  } else {
  }
  if (policy->min > max) {
    policy->min = max;
  } else {
  }
  if (policy->max > max) {
    policy->max = max;
  } else {
  }
  if (policy->min > policy->max) {
    policy->min = policy->max;
  } else {
  }
  return;
}
}
extern int cpufreq_register_notifier(struct notifier_block * , unsigned int ) ;
extern int cpufreq_unregister_notifier(struct notifier_block * , unsigned int ) ;
char __pcpu_unique_cpufreq_thermal_reduction_pctg ;
unsigned int cpufreq_thermal_reduction_pctg ;
static unsigned int acpi_thermal_cpufreq_is_init = 0U;
static int phys_package_first_cpu(int cpu )
{
  int i ;
  int id ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  unsigned int tmp ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& cpu_info));
  id = (int )((struct cpuinfo_x86 *)(__per_cpu_offset[cpu] + __ptr))->phys_proc_id;
  i = -1;
  goto ldv_28952;
  ldv_28951:
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (& cpu_info));
  if ((int )((struct cpuinfo_x86 *)(__per_cpu_offset[i] + __ptr___0))->phys_proc_id == id) {
    return (i);
  } else {
  }
  ldv_28952:
  tmp = cpumask_next(i, cpu_online_mask);
  i = (int )tmp;
  if (i < nr_cpu_ids) {
    goto ldv_28951;
  } else {
  }
  return (0);
}
}
static int cpu_has_cpufreq(unsigned int cpu )
{
  struct cpufreq_policy policy ;
  int tmp ;
  {
  if (acpi_thermal_cpufreq_is_init == 0U) {
    return (0);
  } else {
    tmp = cpufreq_get_policy(& policy, cpu);
    if (tmp != 0) {
      return (0);
    } else {
    }
  }
  return (1);
}
}
static int acpi_thermal_cpufreq_notifier(struct notifier_block *nb , unsigned long event ,
                                         void *data )
{
  struct cpufreq_policy *policy ;
  unsigned long max_freq ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  int tmp ;
  {
  policy = (struct cpufreq_policy *)data;
  max_freq = 0UL;
  if (event != 0UL) {
    goto out;
  } else {
  }
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& cpufreq_thermal_reduction_pctg));
  tmp = phys_package_first_cpu((int )policy->cpu);
  max_freq = (unsigned long )((policy->cpuinfo.max_freq * (100U - *((unsigned int *)(__per_cpu_offset[tmp] + __ptr)) * 20U)) / 100U);
  cpufreq_verify_within_limits(policy, 0U, (unsigned int )max_freq);
  out: ;
  return (0);
}
}
static struct notifier_block acpi_thermal_cpufreq_notifier_block = {& acpi_thermal_cpufreq_notifier, 0, 0};
static int cpufreq_get_max_state(unsigned int cpu )
{
  int tmp ;
  {
  tmp = cpu_has_cpufreq(cpu);
  if (tmp == 0) {
    return (0);
  } else {
  }
  return (3);
}
}
static int cpufreq_get_cur_state(unsigned int cpu )
{
  int tmp ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  int tmp___0 ;
  {
  tmp = cpu_has_cpufreq(cpu);
  if (tmp == 0) {
    return (0);
  } else {
  }
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& cpufreq_thermal_reduction_pctg));
  tmp___0 = phys_package_first_cpu((int )cpu);
  return ((int )*((unsigned int *)(__per_cpu_offset[tmp___0] + __ptr)));
}
}
static int cpufreq_set_cur_state(unsigned int cpu , int state )
{
  int i ;
  int tmp ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  int tmp___0 ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  void const *__vpp_verify___1 ;
  unsigned long __ptr___1 ;
  unsigned int tmp___1 ;
  {
  tmp = cpu_has_cpufreq(cpu);
  if (tmp == 0) {
    return (0);
  } else {
  }
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& cpufreq_thermal_reduction_pctg));
  tmp___0 = phys_package_first_cpu((int )cpu);
  *((unsigned int *)(__per_cpu_offset[tmp___0] + __ptr)) = (unsigned int )state;
  i = -1;
  goto ldv_28999;
  ldv_28998:
  __vpp_verify___0 = (void const *)0;
  __asm__ ("": "=r" (__ptr___0): "0" (& cpu_info));
  __vpp_verify___1 = (void const *)0;
  __asm__ ("": "=r" (__ptr___1): "0" (& cpu_info));
  if ((int )((struct cpuinfo_x86 *)(__per_cpu_offset[i] + __ptr___0))->phys_proc_id == (int )((struct cpuinfo_x86 *)(__per_cpu_offset[cpu] + __ptr___1))->phys_proc_id) {
    cpufreq_update_policy((unsigned int )i);
  } else {
  }
  ldv_28999:
  tmp___1 = cpumask_next(i, cpu_online_mask);
  i = (int )tmp___1;
  if (i < nr_cpu_ids) {
    goto ldv_28998;
  } else {
  }
  return (0);
}
}
void acpi_thermal_cpufreq_init(void)
{
  int i ;
  {
  i = cpufreq_register_notifier(& acpi_thermal_cpufreq_notifier_block, 1U);
  if (i == 0) {
    acpi_thermal_cpufreq_is_init = 1U;
  } else {
  }
  return;
}
}
void acpi_thermal_cpufreq_exit(void)
{
  {
  if (acpi_thermal_cpufreq_is_init != 0U) {
    cpufreq_unregister_notifier(& acpi_thermal_cpufreq_notifier_block, 1U);
  } else {
  }
  acpi_thermal_cpufreq_is_init = 0U;
  return;
}
}
static int acpi_processor_max_state(struct acpi_processor *pr )
{
  int max_state ;
  int tmp ;
  {
  max_state = 0;
  tmp = cpufreq_get_max_state(pr->id);
  max_state = tmp + max_state;
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    max_state = (int )((pr->throttling.state_count + (unsigned int )max_state) - 1U);
  } else {
  }
  return (max_state);
}
}
static int processor_get_max_state(struct thermal_cooling_device *cdev , unsigned long *state )
{
  struct acpi_device *device ;
  struct acpi_processor *pr ;
  void *tmp ;
  int tmp___0 ;
  {
  device = (struct acpi_device *)cdev->devdata;
  if ((unsigned long )device == (unsigned long )((struct acpi_device *)0)) {
    return (-22);
  } else {
  }
  tmp = acpi_driver_data(device);
  pr = (struct acpi_processor *)tmp;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = acpi_processor_max_state(pr);
  *state = (unsigned long )tmp___0;
  return (0);
}
}
static int processor_get_cur_state(struct thermal_cooling_device *cdev , unsigned long *cur_state )
{
  struct acpi_device *device ;
  struct acpi_processor *pr ;
  void *tmp ;
  int tmp___0 ;
  {
  device = (struct acpi_device *)cdev->devdata;
  if ((unsigned long )device == (unsigned long )((struct acpi_device *)0)) {
    return (-22);
  } else {
  }
  tmp = acpi_driver_data(device);
  pr = (struct acpi_processor *)tmp;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = cpufreq_get_cur_state(pr->id);
  *cur_state = (unsigned long )tmp___0;
  if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U) {
    *cur_state = *cur_state + (unsigned long )pr->throttling.state;
  } else {
  }
  return (0);
}
}
static int processor_set_cur_state(struct thermal_cooling_device *cdev , unsigned long state )
{
  struct acpi_device *device ;
  struct acpi_processor *pr ;
  int result ;
  int max_pstate ;
  void *tmp ;
  int tmp___0 ;
  {
  device = (struct acpi_device *)cdev->devdata;
  result = 0;
  if ((unsigned long )device == (unsigned long )((struct acpi_device *)0)) {
    return (-22);
  } else {
  }
  tmp = acpi_driver_data(device);
  pr = (struct acpi_processor *)tmp;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  max_pstate = cpufreq_get_max_state(pr->id);
  tmp___0 = acpi_processor_max_state(pr);
  if ((unsigned long )tmp___0 < state) {
    return (-22);
  } else {
  }
  if ((unsigned long )max_pstate >= state) {
    if ((unsigned int )*((unsigned char *)pr + 32UL) != 0U && pr->throttling.state != 0U) {
      result = acpi_processor_set_throttling(pr, 0, 0);
    } else {
    }
    cpufreq_set_cur_state(pr->id, (int )state);
  } else {
    cpufreq_set_cur_state(pr->id, max_pstate);
    result = acpi_processor_set_throttling(pr, (int )((unsigned int )state - (unsigned int )max_pstate),
                                           0);
  }
  return (result);
}
}
struct thermal_cooling_device_ops const processor_cooling_ops = {& processor_get_max_state, & processor_get_cur_state, & processor_set_cur_state};
void ldv_initialize_thermal_cooling_device_ops_2(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1672UL);
  processor_cooling_ops_group0 = (struct thermal_cooling_device *)tmp;
  return;
}
}
void ldv_main_exported_3(void)
{
  unsigned long ldvarg5 ;
  unsigned long tmp ;
  struct notifier_block *ldvarg3 ;
  void *tmp___0 ;
  void *ldvarg4 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_ulong();
  ldvarg5 = tmp;
  tmp___0 = ldv_zalloc(24UL);
  ldvarg3 = (struct notifier_block *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg4 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_3 == 1) {
    acpi_thermal_cpufreq_notifier(ldvarg3, ldvarg5, ldvarg4);
    ldv_state_variable_3 = 1;
  } else {
  }
  goto ldv_29043;
  default:
  ldv_stop();
  }
  ldv_29043: ;
  return;
}
}
void ldv_main_exported_2(void)
{
  unsigned long *ldvarg6 ;
  void *tmp ;
  unsigned long *ldvarg7 ;
  void *tmp___0 ;
  unsigned long ldvarg8 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  tmp = ldv_zalloc(8UL);
  ldvarg6 = (unsigned long *)tmp;
  tmp___0 = ldv_zalloc(8UL);
  ldvarg7 = (unsigned long *)tmp___0;
  tmp___1 = __VERIFIER_nondet_ulong();
  ldvarg8 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    processor_set_cur_state(processor_cooling_ops_group0, ldvarg8);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_29052;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    processor_get_max_state(processor_cooling_ops_group0, ldvarg7);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_29052;
  case 2: ;
  if (ldv_state_variable_2 == 1) {
    processor_get_cur_state(processor_cooling_ops_group0, ldvarg6);
    ldv_state_variable_2 = 1;
  } else {
  }
  goto ldv_29052;
  default:
  ldv_stop();
  }
  ldv_29052: ;
  return;
}
}
void *ldv_kmem_cache_alloc_73(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
void *ldv_kmem_cache_alloc_92(struct kmem_cache *ldv_func_arg1 , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern acpi_status acpi_evaluate_ost(acpi_handle , u32 , u32 , struct acpi_buffer * ) ;
extern bool acpi_has_method(acpi_handle , char * ) ;
int acpi_processor_preregister_performance(struct acpi_processor_performance *performance ) ;
int acpi_processor_register_performance(struct acpi_processor_performance *performance ,
                                        unsigned int cpu ) ;
void acpi_processor_unregister_performance(struct acpi_processor_performance *performance ,
                                           unsigned int cpu ) ;
int acpi_processor_notify_smm(struct module *calling_module ) ;
int acpi_processor_get_performance_info(struct acpi_processor *pr ) ;
int acpi_processor_get_bios_limit(int cpu , unsigned int *limit ) ;
static char const _acpi_module_name___2[18U] =
  { 'p', 'r', 'o', 'c',
        'e', 's', 's', 'o',
        'r', '_', 'p', 'e',
        'r', 'f', 'l', 'i',
        'b', '\000'};
static struct mutex performance_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "performance_mutex.wait_lock",
                                                           0, 0UL}}}}, {& performance_mutex.wait_list,
                                                                        & performance_mutex.wait_list},
    0, 0, (void *)(& performance_mutex), {0, {0, 0}, "performance_mutex", 0, 0UL}};
static int ignore_ppc = -1;
static int acpi_processor_ppc_status ;
static int acpi_processor_ppc_notifier(struct notifier_block *nb , unsigned long event ,
                                       void *data )
{
  struct cpufreq_policy *policy ;
  struct acpi_processor *pr ;
  unsigned int ppc ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  policy = (struct cpufreq_policy *)data;
  ppc = 0U;
  if (event == 3UL && ignore_ppc <= 0) {
    ignore_ppc = 0;
    return (0);
  } else {
  }
  if (ignore_ppc != 0) {
    return (0);
  } else {
  }
  if (event != 1UL) {
    return (0);
  } else {
  }
  mutex_lock_nested(& performance_mutex, 0U);
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[policy->cpu] + __ptr));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0) || (unsigned long )pr->performance == (unsigned long )((struct acpi_processor_performance *)0)) {
    goto out;
  } else {
  }
  ppc = (unsigned int )pr->performance_platform_limit;
  if ((pr->performance)->state_count <= ppc) {
    goto out;
  } else {
  }
  cpufreq_verify_within_limits(policy, 0U, (unsigned int )((pr->performance)->states + (unsigned long )ppc)->core_frequency * 1000U);
  out:
  mutex_unlock(& performance_mutex);
  return (0);
}
}
static struct notifier_block acpi_ppc_notifier_block = {& acpi_processor_ppc_notifier, 0, 0};
static int acpi_processor_get_platform_limit___0(struct acpi_processor *pr )
{
  acpi_status status ;
  unsigned long long ppc ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  status = 0U;
  ppc = 0ULL;
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    return (-22);
  } else {
  }
  status = acpi_evaluate_integer(pr->handle, (char *)"_PPC", (struct acpi_object_list *)0,
                                 & ppc);
  if (status != 5U) {
    acpi_processor_ppc_status = acpi_processor_ppc_status | 2;
  } else {
  }
  if (status != 0U && status != 5U) {
    acpi_exception((char const *)(& _acpi_module_name___2), 169U, status, "Evaluating _PPC");
    return (-19);
  } else {
  }
  descriptor.modname = "processor";
  descriptor.function = "acpi_processor_get_platform_limit";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/7693/dscv_tempdir/dscv/ri/43_2a/drivers/acpi/processor_perflib.o.c.prepared";
  descriptor.format = "CPU %d: _PPC is %d - frequency %s limited\n";
  descriptor.lineno = 174U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "CPU %d: _PPC is %d - frequency %s limited\n",
                       pr->id, (int )ppc, ppc != 0ULL ? (char *)"" : (char *)"not");
  } else {
  }
  pr->performance_platform_limit = (int )ppc;
  return (0);
}
}
static void acpi_processor_ppc_ost(acpi_handle handle , int status )
{
  bool tmp ;
  {
  tmp = acpi_has_method(handle, (char *)"_OST");
  if ((int )tmp) {
    acpi_evaluate_ost(handle, 128U, (u32 )status, (struct acpi_buffer *)0);
  } else {
  }
  return;
}
}
int acpi_processor_ppc_has_changed(struct acpi_processor *pr , int event_flag )
{
  int ret ;
  int tmp ;
  {
  if (ignore_ppc != 0) {
    if (event_flag != 0) {
      acpi_processor_ppc_ost(pr->handle, 1);
    } else {
    }
    return (0);
  } else {
  }
  ret = acpi_processor_get_platform_limit___0(pr);
  if (event_flag != 0) {
    if (ret < 0) {
      acpi_processor_ppc_ost(pr->handle, 1);
    } else {
      acpi_processor_ppc_ost(pr->handle, 0);
    }
  } else {
  }
  if (ret < 0) {
    return (ret);
  } else {
    tmp = cpufreq_update_policy(pr->id);
    return (tmp);
  }
}
}
int acpi_processor_get_bios_limit(int cpu , unsigned int *limit )
{
  struct acpi_processor *pr ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[cpu] + __ptr));
  if (((unsigned long )pr == (unsigned long )((struct acpi_processor *)0) || (unsigned long )pr->performance == (unsigned long )((struct acpi_processor_performance *)0)) || (pr->performance)->state_count == 0U) {
    return (-19);
  } else {
  }
  *limit = (unsigned int )((pr->performance)->states + (unsigned long )pr->performance_platform_limit)->core_frequency * 1000U;
  return (0);
}
}
static char const __kstrtab_acpi_processor_get_bios_limit[30U] =
  { 'a', 'c', 'p', 'i',
        '_', 'p', 'r', 'o',
        'c', 'e', 's', 's',
        'o', 'r', '_', 'g',
        'e', 't', '_', 'b',
        'i', 'o', 's', '_',
        'l', 'i', 'm', 'i',
        't', '\000'};
struct kernel_symbol const __ksymtab_acpi_processor_get_bios_limit ;
struct kernel_symbol const __ksymtab_acpi_processor_get_bios_limit = {(unsigned long )(& acpi_processor_get_bios_limit), (char const *)(& __kstrtab_acpi_processor_get_bios_limit)};
void acpi_processor_ppc_init(void)
{
  int tmp ;
  {
  tmp = cpufreq_register_notifier(& acpi_ppc_notifier_block, 1U);
  if (tmp == 0) {
    acpi_processor_ppc_status = acpi_processor_ppc_status | 1;
  } else {
    printk("\017Warning: Processor Platform Limit not supported.\n");
  }
  return;
}
}
void acpi_processor_ppc_exit(void)
{
  {
  if (acpi_processor_ppc_status & 1) {
    cpufreq_unregister_notifier(& acpi_ppc_notifier_block, 1U);
  } else {
  }
  acpi_processor_ppc_status = acpi_processor_ppc_status & -2;
  return;
}
}
static int acpi_processor_get_performance_control(struct acpi_processor *pr )
{
  int result ;
  acpi_status status ;
  struct acpi_buffer buffer ;
  union acpi_object *pct ;
  union acpi_object obj ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  result = 0;
  status = 0U;
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  pct = (union acpi_object *)0;
  obj.type = 0U;
  status = acpi_evaluate_object(pr->handle, (char *)"_PCT", (struct acpi_object_list *)0,
                                & buffer);
  if (status != 0U) {
    acpi_exception((char const *)(& _acpi_module_name___2), 270U, status, "Evaluating _PCT");
    return (-19);
  } else {
  }
  pct = (union acpi_object *)buffer.pointer;
  if (((unsigned long )pct == (unsigned long )((union acpi_object *)0) || pct->type != 4U) || pct->package.count != 2U) {
    printk("\vACPI: Invalid _PCT data\n");
    result = -14;
    goto end;
  } else {
  }
  obj = *(pct->package.elements);
  if ((obj.type != 3U || obj.buffer.length <= 14U) || (unsigned long )obj.buffer.pointer == (unsigned long )((u8 *)0U)) {
    printk("\vACPI: Invalid _PCT data (control_register)\n");
    result = -14;
    goto end;
  } else {
  }
  __len = 15UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& (pr->performance)->control_register), (void const *)obj.buffer.pointer,
                     __len);
  } else {
    __ret = memcpy((void *)(& (pr->performance)->control_register), (void const *)obj.buffer.pointer,
                             __len);
  }
  obj = *(pct->package.elements + 1UL);
  if ((obj.type != 3U || obj.buffer.length <= 14U) || (unsigned long )obj.buffer.pointer == (unsigned long )((u8 *)0U)) {
    printk("\vACPI: Invalid _PCT data (status_register)\n");
    result = -14;
    goto end;
  } else {
  }
  __len___0 = 15UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& (pr->performance)->status_register), (void const *)obj.buffer.pointer,
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& (pr->performance)->status_register), (void const *)obj.buffer.pointer,
                                 __len___0);
  }
  end:
  kfree((void const *)buffer.pointer);
  return (result);
}
}
static void amd_fixup_frequency(struct acpi_processor_px *px , int i )
{
  u32 hi ;
  u32 lo ;
  u32 fid ;
  u32 did ;
  int index ;
  int _err ;
  u64 _l ;
  u64 tmp ;
  {
  index = (int )px->control & 7;
  if ((unsigned int )boot_cpu_data.x86_vendor != 2U) {
    return;
  } else {
  }
  if (((unsigned int )boot_cpu_data.x86 == 16U && (unsigned int )boot_cpu_data.x86_model <= 9U) || (unsigned int )boot_cpu_data.x86 == 17U) {
    tmp = paravirt_read_msr((unsigned int )index + 3221291108U, & _err);
    _l = tmp;
    lo = (unsigned int )_l;
    hi = (u32 )(_l >> 32);
    if ((int )hi >= 0) {
      return;
    } else {
    }
    fid = lo & 63U;
    did = (lo >> 6) & 7U;
    if ((unsigned int )boot_cpu_data.x86 == 16U) {
      px->core_frequency = (u64 )((fid * 100U + 1600U) >> (int )did);
    } else {
      px->core_frequency = (u64 )((fid * 100U + 800U) >> (int )did);
    }
  } else {
  }
  return;
}
}
static int acpi_processor_get_performance_states(struct acpi_processor *pr )
{
  int result ;
  acpi_status status ;
  struct acpi_buffer buffer ;
  struct acpi_buffer format ;
  struct acpi_buffer state ;
  union acpi_object *pss ;
  int i ;
  int last_invalid ;
  void *tmp ;
  struct acpi_processor_px *px ;
  size_t __len ;
  void *__ret ;
  {
  result = 0;
  status = 0U;
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  format.length = 7ULL;
  format.pointer = (void *)"NNNNNN";
  state.length = 0ULL;
  state.pointer = (void *)0;
  pss = (union acpi_object *)0;
  last_invalid = -1;
  status = acpi_evaluate_object(pr->handle, (char *)"_PSS", (struct acpi_object_list *)0,
                                & buffer);
  if (status != 0U) {
    acpi_exception((char const *)(& _acpi_module_name___2), 370U, status, "Evaluating _PSS");
    return (-19);
  } else {
  }
  pss = (union acpi_object *)buffer.pointer;
  if ((unsigned long )pss == (unsigned long )((union acpi_object *)0) || pss->type != 4U) {
    printk("\vACPI: Invalid _PSS data\n");
    result = -14;
    goto end;
  } else {
  }
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 382U, "acpi_processor_get_performance_states", (char const *)(& _acpi_module_name___2),
                     536870912U, "Found %d performance states\n", pss->package.count);
  } else {
  }
  (pr->performance)->state_count = pss->package.count;
  tmp = kmalloc((unsigned long )pss->package.count * 48UL, 208U);
  (pr->performance)->states = (struct acpi_processor_px *)tmp;
  if ((unsigned long )(pr->performance)->states == (unsigned long )((struct acpi_processor_px *)0)) {
    result = -12;
    goto end;
  } else {
  }
  i = 0;
  goto ldv_28857;
  ldv_28856:
  px = (pr->performance)->states + (unsigned long )i;
  state.length = 48ULL;
  state.pointer = (void *)px;
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 400U, "acpi_processor_get_performance_states", (char const *)(& _acpi_module_name___2),
                     536870912U, "Extracting state %d\n", i);
  } else {
  }
  status = acpi_extract_package(pss->package.elements + (unsigned long )i, & format,
                                & state);
  if (status != 0U) {
    acpi_exception((char const *)(& _acpi_module_name___2), 405U, status, "Invalid _PSS data");
    result = -14;
    kfree((void const *)(pr->performance)->states);
    goto end;
  } else {
  }
  amd_fixup_frequency(px, i);
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 420U, "acpi_processor_get_performance_states", (char const *)(& _acpi_module_name___2),
                     536870912U, "State [%d]: core_frequency[%d] power[%d] transition_latency[%d] bus_master_latency[%d] control[0x%x] status[0x%x]\n",
                     i, (unsigned int )px->core_frequency, (unsigned int )px->power,
                     (unsigned int )px->transition_latency, (unsigned int )px->bus_master_latency,
                     (unsigned int )px->control, (unsigned int )px->status);
  } else {
  }
  if (px->core_frequency == 0ULL || (u64 )((unsigned int )px->core_frequency * 1000U) != px->core_frequency * 1000ULL) {
    printk("\v[Firmware Bug]: ACPI: Invalid BIOS _PSS frequency found for processor %d: 0x%llx MHz\n",
           pr->id, px->core_frequency);
    if (last_invalid == -1) {
      last_invalid = i;
    } else {
    }
  } else
  if (last_invalid != -1) {
    __len = 48UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(pr->performance)->states + (unsigned long )last_invalid,
                       (void const *)px, __len);
    } else {
      __ret = memcpy((void *)(pr->performance)->states + (unsigned long )last_invalid,
                               (void const *)px, __len);
    }
    last_invalid = last_invalid + 1;
  } else {
  }
  i = i + 1;
  ldv_28857: ;
  if ((unsigned int )i < (pr->performance)->state_count) {
    goto ldv_28856;
  } else {
  }
  if (last_invalid == 0) {
    printk("\v[Firmware Bug]: ACPI: No valid BIOS _PSS frequency found for processor %d\n",
           pr->id);
    result = -14;
    kfree((void const *)(pr->performance)->states);
    (pr->performance)->states = (struct acpi_processor_px *)0;
  } else {
  }
  if (last_invalid > 0) {
    (pr->performance)->state_count = (unsigned int )last_invalid;
  } else {
  }
  end:
  kfree((void const *)buffer.pointer);
  return (result);
}
}
int acpi_processor_get_performance_info(struct acpi_processor *pr )
{
  int result ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  result = 0;
  if (((unsigned long )pr == (unsigned long )((struct acpi_processor *)0) || (unsigned long )pr->performance == (unsigned long )((struct acpi_processor_performance *)0)) || (unsigned long )pr->handle == (unsigned long )((acpi_handle )0)) {
    return (-22);
  } else {
  }
  tmp = acpi_has_method(pr->handle, (char *)"_PCT");
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 471U, "acpi_processor_get_performance_info", (char const *)(& _acpi_module_name___2),
                       536870912U, "ACPI-based processor performance control unavailable\n");
    } else {
    }
    return (-19);
  } else {
  }
  result = acpi_processor_get_performance_control(pr);
  if (result != 0) {
    goto update_bios;
  } else {
  }
  result = acpi_processor_get_performance_states(pr);
  if (result != 0) {
    goto update_bios;
  } else {
  }
  if (ignore_ppc != 1) {
    result = acpi_processor_get_platform_limit___0(pr);
  } else {
  }
  return (result);
  update_bios:
  tmp___2 = acpi_has_method(pr->handle, (char *)"_PPC");
  if ((int )tmp___2) {
    tmp___1 = constant_test_bit(135L, (unsigned long const volatile *)(& boot_cpu_data.x86_capability));
    if (tmp___1 != 0) {
      printk("\f[Firmware Bug]: BIOS needs update for CPU frequency support\n");
    } else {
    }
  } else {
  }
  return (result);
}
}
static char const __kstrtab_acpi_processor_get_performance_info[36U] =
  { 'a', 'c', 'p', 'i',
        '_', 'p', 'r', 'o',
        'c', 'e', 's', 's',
        'o', 'r', '_', 'g',
        'e', 't', '_', 'p',
        'e', 'r', 'f', 'o',
        'r', 'm', 'a', 'n',
        'c', 'e', '_', 'i',
        'n', 'f', 'o', '\000'};
struct kernel_symbol const __ksymtab_acpi_processor_get_performance_info ;
struct kernel_symbol const __ksymtab_acpi_processor_get_performance_info = {(unsigned long )(& acpi_processor_get_performance_info), (char const *)(& __kstrtab_acpi_processor_get_performance_info)};
int acpi_processor_notify_smm(struct module *calling_module )
{
  acpi_status status ;
  int is_done ;
  bool tmp ;
  int tmp___0 ;
  {
  is_done = 0;
  if ((acpi_processor_ppc_status & 1) == 0) {
    return (-16);
  } else {
  }
  tmp = try_module_get(calling_module);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-22);
  } else {
  }
  if (is_done > 0) {
    module_put(calling_module);
    return (0);
  } else
  if (is_done < 0) {
    module_put(calling_module);
    return (is_done);
  } else {
  }
  is_done = -5;
  if (acpi_gbl_FADT.smi_command == 0U || (unsigned int )acpi_gbl_FADT.pstate_control == 0U) {
    if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
      acpi_debug_print(4U, 533U, "acpi_processor_notify_smm", (char const *)(& _acpi_module_name___2),
                       536870912U, "No SMI port or pstate_control\n");
    } else {
    }
    module_put(calling_module);
    return (0);
  } else {
  }
  if ((acpi_dbg_level & 4U) != 0U && (acpi_dbg_layer & 536870912U) != 0U) {
    acpi_debug_print(4U, 540U, "acpi_processor_notify_smm", (char const *)(& _acpi_module_name___2),
                     536870912U, "Writing pstate_control [0x%x] to smi_command [0x%x]\n",
                     (int )acpi_gbl_FADT.pstate_control, acpi_gbl_FADT.smi_command);
  } else {
  }
  status = acpi_os_write_port((acpi_io_address )acpi_gbl_FADT.smi_command, (unsigned int )acpi_gbl_FADT.pstate_control,
                              8U);
  if (status != 0U) {
    acpi_exception((char const *)(& _acpi_module_name___2), 548U, status, "Failed to write pstate_control [0x%x] to smi_command [0x%x]",
                   (int )acpi_gbl_FADT.pstate_control, acpi_gbl_FADT.smi_command);
    module_put(calling_module);
    return ((int )status);
  } else {
  }
  is_done = 1;
  if ((acpi_processor_ppc_status & 2) == 0) {
    module_put(calling_module);
  } else {
  }
  return (0);
}
}
static char const __kstrtab_acpi_processor_notify_smm[26U] =
  { 'a', 'c', 'p', 'i',
        '_', 'p', 'r', 'o',
        'c', 'e', 's', 's',
        'o', 'r', '_', 'n',
        'o', 't', 'i', 'f',
        'y', '_', 's', 'm',
        'm', '\000'};
struct kernel_symbol const __ksymtab_acpi_processor_notify_smm ;
struct kernel_symbol const __ksymtab_acpi_processor_notify_smm = {(unsigned long )(& acpi_processor_notify_smm), (char const *)(& __kstrtab_acpi_processor_notify_smm)};
static int acpi_processor_get_psd(struct acpi_processor *pr )
{
  int result ;
  acpi_status status ;
  struct acpi_buffer buffer ;
  struct acpi_buffer format ;
  struct acpi_buffer state ;
  union acpi_object *psd ;
  struct acpi_psd_package *pdomain ;
  {
  result = 0;
  status = 0U;
  buffer.length = 0xffffffffffffffffULL;
  buffer.pointer = (void *)0;
  format.length = 6ULL;
  format.pointer = (void *)"NNNNN";
  state.length = 0ULL;
  state.pointer = (void *)0;
  psd = (union acpi_object *)0;
  status = acpi_evaluate_object(pr->handle, (char *)"_PSD", (struct acpi_object_list *)0,
                                & buffer);
  if (status != 0U) {
    return (-19);
  } else {
  }
  psd = (union acpi_object *)buffer.pointer;
  if ((unsigned long )psd == (unsigned long )((union acpi_object *)0) || psd->type != 4U) {
    printk("\vACPI: Invalid _PSD data\n");
    result = -14;
    goto end;
  } else {
  }
  if (psd->package.count != 1U) {
    printk("\vACPI: Invalid _PSD data\n");
    result = -14;
    goto end;
  } else {
  }
  pdomain = & (pr->performance)->domain_info;
  state.length = 40ULL;
  state.pointer = (void *)pdomain;
  status = acpi_extract_package(psd->package.elements, & format, & state);
  if (status != 0U) {
    printk("\vACPI: Invalid _PSD data\n");
    result = -14;
    goto end;
  } else {
  }
  if (pdomain->num_entries != 5ULL) {
    printk("\vACPI: Unknown _PSD:num_entries\n");
    result = -14;
    goto end;
  } else {
  }
  if (pdomain->revision != 0ULL) {
    printk("\vACPI: Unknown _PSD:revision\n");
    result = -14;
    goto end;
  } else {
  }
  if ((pdomain->coord_type != 252ULL && pdomain->coord_type != 253ULL) && pdomain->coord_type != 254ULL) {
    printk("\vACPI: Invalid _PSD:coord_type\n");
    result = -14;
    goto end;
  } else {
  }
  end:
  kfree((void const *)buffer.pointer);
  return (result);
}
}
int acpi_processor_preregister_performance(struct acpi_processor_performance *performance )
{
  int count_target ;
  int retval ;
  unsigned int i ;
  unsigned int j ;
  cpumask_var_t covered_cpus ;
  struct acpi_processor *pr ;
  struct acpi_psd_package *pdomain ;
  struct acpi_processor *match_pr ;
  struct acpi_psd_package *match_pdomain ;
  bool tmp ;
  int tmp___0 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  void const *__vpp_verify___0 ;
  unsigned long __ptr___0 ;
  void const *__vpp_verify___1 ;
  unsigned long __ptr___1 ;
  void const *__vpp_verify___2 ;
  unsigned long __ptr___2 ;
  int tmp___1 ;
  void const *__vpp_verify___3 ;
  unsigned long __ptr___3 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  void const *__vpp_verify___4 ;
  unsigned long __ptr___4 ;
  void const *__vpp_verify___5 ;
  unsigned long __ptr___5 ;
  void const *__vpp_verify___6 ;
  unsigned long __ptr___6 ;
  {
  retval = 0;
  tmp = zalloc_cpumask_var(& covered_cpus, 208U);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-12);
  } else {
  }
  mutex_lock_nested(& performance_mutex, 0U);
  i = 4294967295U;
  goto ldv_28912;
  ldv_28918:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28912;
  } else {
  }
  if ((unsigned long )pr->performance != (unsigned long )((struct acpi_processor_performance *)0)) {
    retval = -16;
    goto err_out;
  } else {
  }
  if ((unsigned long )performance == (unsigned long )((struct acpi_processor_performance *)0)) {
    retval = -22;
    goto err_out;
  } else {
    __vpp_verify___0 = (void const *)0;
    __asm__ ("": "=r" (__ptr___0): "0" (performance));
    if ((unsigned long )((struct acpi_processor_performance *)(__per_cpu_offset[i] + __ptr___0)) == (unsigned long )((struct acpi_processor_performance *)0)) {
      retval = -22;
      goto err_out;
    } else {
    }
  }
  ldv_28912:
  i = cpumask_next((int )i, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_28918;
  } else {
  }
  i = 4294967295U;
  goto ldv_28924;
  ldv_28929:
  __vpp_verify___1 = (void const *)0;
  __asm__ ("": "=r" (__ptr___1): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr___1));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28924;
  } else {
  }
  __vpp_verify___2 = (void const *)0;
  __asm__ ("": "=r" (__ptr___2): "0" (performance));
  pr->performance = (struct acpi_processor_performance *)(__per_cpu_offset[i] + __ptr___2);
  cpumask_set_cpu(i, (pr->performance)->shared_cpu_map);
  tmp___1 = acpi_processor_get_psd(pr);
  if (tmp___1 != 0) {
    retval = -22;
    goto ldv_28924;
  } else {
  }
  ldv_28924:
  i = cpumask_next((int )i, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_28929;
  } else {
  }
  if (retval != 0) {
    goto err_ret;
  } else {
  }
  i = 4294967295U;
  goto ldv_28936;
  ldv_28951:
  __vpp_verify___3 = (void const *)0;
  __asm__ ("": "=r" (__ptr___3): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr___3));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28936;
  } else {
  }
  tmp___2 = cpumask_check(i);
  tmp___3 = variable_test_bit((long )tmp___2, (unsigned long const volatile *)(& covered_cpus->bits));
  if (tmp___3 != 0) {
    goto ldv_28936;
  } else {
  }
  pdomain = & (pr->performance)->domain_info;
  cpumask_set_cpu(i, (pr->performance)->shared_cpu_map);
  cpumask_set_cpu(i, covered_cpus);
  if (pdomain->num_processors <= 1ULL) {
    goto ldv_28936;
  } else {
  }
  count_target = (int )pdomain->num_processors;
  if (pdomain->coord_type == 252ULL) {
    (pr->performance)->shared_type = 2U;
  } else
  if (pdomain->coord_type == 254ULL) {
    (pr->performance)->shared_type = 1U;
  } else
  if (pdomain->coord_type == 253ULL) {
    (pr->performance)->shared_type = 3U;
  } else {
  }
  j = 4294967295U;
  goto ldv_28937;
  ldv_28942: ;
  if (i == j) {
    goto ldv_28937;
  } else {
  }
  __vpp_verify___4 = (void const *)0;
  __asm__ ("": "=r" (__ptr___4): "0" (& processors));
  match_pr = *((struct acpi_processor **)(__per_cpu_offset[j] + __ptr___4));
  if ((unsigned long )match_pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28937;
  } else {
  }
  match_pdomain = & (match_pr->performance)->domain_info;
  if (match_pdomain->domain != pdomain->domain) {
    goto ldv_28937;
  } else {
  }
  if (match_pdomain->num_processors != (u64 )count_target) {
    retval = -22;
    goto err_ret;
  } else {
  }
  if (pdomain->coord_type != match_pdomain->coord_type) {
    retval = -22;
    goto err_ret;
  } else {
  }
  cpumask_set_cpu(j, covered_cpus);
  cpumask_set_cpu(j, (pr->performance)->shared_cpu_map);
  ldv_28937:
  j = cpumask_next((int )j, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > j) {
    goto ldv_28942;
  } else {
  }
  j = 4294967295U;
  goto ldv_28944;
  ldv_28949: ;
  if (i == j) {
    goto ldv_28944;
  } else {
  }
  __vpp_verify___5 = (void const *)0;
  __asm__ ("": "=r" (__ptr___5): "0" (& processors));
  match_pr = *((struct acpi_processor **)(__per_cpu_offset[j] + __ptr___5));
  if ((unsigned long )match_pr == (unsigned long )((struct acpi_processor *)0)) {
    goto ldv_28944;
  } else {
  }
  match_pdomain = & (match_pr->performance)->domain_info;
  if (match_pdomain->domain != pdomain->domain) {
    goto ldv_28944;
  } else {
  }
  (match_pr->performance)->shared_type = (pr->performance)->shared_type;
  cpumask_copy((match_pr->performance)->shared_cpu_map, (struct cpumask const *)(pr->performance)->shared_cpu_map);
  ldv_28944:
  j = cpumask_next((int )j, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > j) {
    goto ldv_28949;
  } else {
  }
  ldv_28936:
  i = cpumask_next((int )i, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_28951;
  } else {
  }
  err_ret:
  i = 4294967295U;
  goto ldv_28957;
  ldv_28958:
  __vpp_verify___6 = (void const *)0;
  __asm__ ("": "=r" (__ptr___6): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[i] + __ptr___6));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0) || (unsigned long )pr->performance == (unsigned long )((struct acpi_processor_performance *)0)) {
    goto ldv_28957;
  } else {
  }
  if (retval != 0) {
    cpumask_clear((pr->performance)->shared_cpu_map);
    cpumask_set_cpu(i, (pr->performance)->shared_cpu_map);
    (pr->performance)->shared_type = 2U;
  } else {
  }
  pr->performance = (struct acpi_processor_performance *)0;
  ldv_28957:
  i = cpumask_next((int )i, cpu_possible_mask);
  if ((unsigned int )nr_cpu_ids > i) {
    goto ldv_28958;
  } else {
  }
  err_out:
  mutex_unlock(& performance_mutex);
  free_cpumask_var(covered_cpus);
  return (retval);
}
}
static char const __kstrtab_acpi_processor_preregister_performance[39U] =
  { 'a', 'c', 'p', 'i',
        '_', 'p', 'r', 'o',
        'c', 'e', 's', 's',
        'o', 'r', '_', 'p',
        'r', 'e', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'p',
        'e', 'r', 'f', 'o',
        'r', 'm', 'a', 'n',
        'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_acpi_processor_preregister_performance ;
struct kernel_symbol const __ksymtab_acpi_processor_preregister_performance = {(unsigned long )(& acpi_processor_preregister_performance),
    (char const *)(& __kstrtab_acpi_processor_preregister_performance)};
int acpi_processor_register_performance(struct acpi_processor_performance *performance ,
                                        unsigned int cpu )
{
  struct acpi_processor *pr ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  if ((acpi_processor_ppc_status & 1) == 0) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& performance_mutex, 0U);
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[cpu] + __ptr));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    mutex_unlock(& performance_mutex);
    return (-19);
  } else {
  }
  if ((unsigned long )pr->performance != (unsigned long )((struct acpi_processor_performance *)0)) {
    mutex_unlock(& performance_mutex);
    return (-16);
  } else {
  }
  __ret_warn_on = (unsigned long )performance == (unsigned long )((struct acpi_processor_performance *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/7693/dscv_tempdir/dscv/ri/43_2a/drivers/acpi/processor_perflib.o.c.prepared",
                       803);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  pr->performance = performance;
  tmp___0 = acpi_processor_get_performance_info(pr);
  if (tmp___0 != 0) {
    pr->performance = (struct acpi_processor_performance *)0;
    mutex_unlock(& performance_mutex);
    return (-5);
  } else {
  }
  mutex_unlock(& performance_mutex);
  return (0);
}
}
static char const __kstrtab_acpi_processor_register_performance[36U] =
  { 'a', 'c', 'p', 'i',
        '_', 'p', 'r', 'o',
        'c', 'e', 's', 's',
        'o', 'r', '_', 'r',
        'e', 'g', 'i', 's',
        't', 'e', 'r', '_',
        'p', 'e', 'r', 'f',
        'o', 'r', 'm', 'a',
        'n', 'c', 'e', '\000'};
struct kernel_symbol const __ksymtab_acpi_processor_register_performance ;
struct kernel_symbol const __ksymtab_acpi_processor_register_performance = {(unsigned long )(& acpi_processor_register_performance), (char const *)(& __kstrtab_acpi_processor_register_performance)};
void acpi_processor_unregister_performance(struct acpi_processor_performance *performance ,
                                           unsigned int cpu )
{
  struct acpi_processor *pr ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  {
  mutex_lock_nested(& performance_mutex, 0U);
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (& processors));
  pr = *((struct acpi_processor **)(__per_cpu_offset[cpu] + __ptr));
  if ((unsigned long )pr == (unsigned long )((struct acpi_processor *)0)) {
    mutex_unlock(& performance_mutex);
    return;
  } else {
  }
  if ((unsigned long )pr->performance != (unsigned long )((struct acpi_processor_performance *)0)) {
    kfree((void const *)(pr->performance)->states);
  } else {
  }
  pr->performance = (struct acpi_processor_performance *)0;
  mutex_unlock(& performance_mutex);
  return;
}
}
static char const __kstrtab_acpi_processor_unregister_performance[38U] =
  { 'a', 'c', 'p', 'i',
        '_', 'p', 'r', 'o',
        'c', 'e', 's', 's',
        'o', 'r', '_', 'u',
        'n', 'r', 'e', 'g',
        'i', 's', 't', 'e',
        'r', '_', 'p', 'e',
        'r', 'f', 'o', 'r',
        'm', 'a', 'n', 'c',
        'e', '\000'};
struct kernel_symbol const __ksymtab_acpi_processor_unregister_performance ;
struct kernel_symbol const __ksymtab_acpi_processor_unregister_performance = {(unsigned long )(& acpi_processor_unregister_performance), (char const *)(& __kstrtab_acpi_processor_unregister_performance)};
void ldv_main_exported_1(void)
{
  unsigned long ldvarg2 ;
  unsigned long tmp ;
  struct notifier_block *ldvarg0 ;
  void *tmp___0 ;
  void *ldvarg1 ;
  void *tmp___1 ;
  int tmp___2 ;
  {
  tmp = __VERIFIER_nondet_ulong();
  ldvarg2 = tmp;
  tmp___0 = ldv_zalloc(24UL);
  ldvarg0 = (struct notifier_block *)tmp___0;
  tmp___1 = ldv_zalloc(1UL);
  ldvarg1 = tmp___1;
  tmp___2 = __VERIFIER_nondet_int();
  switch (tmp___2) {
  case 0: ;
  if (ldv_state_variable_1 == 1) {
    acpi_processor_ppc_notifier(ldvarg0, ldvarg2, ldvarg1);
    ldv_state_variable_1 = 1;
  } else {
  }
  goto ldv_29010;
  default:
  ldv_stop();
  }
  ldv_29010: ;
  return;
}
}
void *ldv_kmem_cache_alloc_92(struct kmem_cache *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  kmem_cache_alloc(ldv_func_arg1, flags);
  return ((void *)0);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
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
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int acpi_bus_generate_netlink_event(const char *arg0, const char *arg1, u8 arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int acpi_bus_get_device(acpi_handle arg0, struct acpi_device **arg1) {
  return __VERIFIER_nondet_int();
}
void acpi_debug_print(u32 arg0, u32 arg1, const char *arg2, const char *arg3, u32 arg4, const char *arg5, ...) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_evaluate_integer(acpi_handle arg0, acpi_string arg1, struct acpi_object_list *arg2, unsigned long long *arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_evaluate_object(acpi_handle arg0, acpi_string arg1, struct acpi_object_list *arg2, struct acpi_buffer *arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_evaluate_ost(acpi_handle arg0, u32 arg1, u32 arg2, struct acpi_buffer *arg3) {
  return __VERIFIER_nondet_uint();
}
void acpi_exception(const char *arg0, u32 arg1, acpi_status arg2, const char *arg3, ...) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_extract_package(union acpi_object *arg0, struct acpi_buffer *arg1, struct acpi_buffer *arg2) {
  return __VERIFIER_nondet_uint();
}
bool __VERIFIER_nondet_bool(void);
bool acpi_has_method(acpi_handle arg0, char *arg1) {
  return __VERIFIER_nondet_bool();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_install_notify_handler(acpi_handle arg0, u32 arg1, void (*arg2)(acpi_handle , u32 , void *), void *arg3) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_os_read_port(acpi_io_address arg0, u32 *arg1, u32 arg2) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_os_write_port(acpi_io_address arg0, u32 arg1, u32 arg2) {
  return __VERIFIER_nondet_uint();
}
void acpi_processor_ffh_cstate_enter(struct acpi_processor_cx *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int acpi_processor_ffh_cstate_probe(unsigned int arg0, struct acpi_processor_cx *arg1, struct acpi_power_register *arg2) {
  return __VERIFIER_nondet_int();
}
void acpi_processor_power_init_bm_check(struct acpi_processor_flags *arg0, unsigned int arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
acpi_status acpi_remove_notify_handler(acpi_handle arg0, u32 arg1, void (*arg2)(acpi_handle , u32 , void *)) {
  return __VERIFIER_nondet_uint();
}
bool __VERIFIER_nondet_bool(void);
bool alloc_cpumask_var(cpumask_var_t **arg0, gfp_t arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int clockevents_notify(unsigned long arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cpufreq_get_policy(struct cpufreq_policy *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cpufreq_register_notifier(struct notifier_block *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cpufreq_unregister_notifier(struct notifier_block *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cpufreq_update_policy(unsigned int arg0) {
  return __VERIFIER_nondet_int();
}
void cpuidle_disable_device(struct cpuidle_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int cpuidle_enable_device(struct cpuidle_device *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct cpuidle_driver *cpuidle_get_driver() {
  return (struct cpuidle_driver *)external_alloc();
}
void cpuidle_pause_and_lock() {
  return;
}
int __VERIFIER_nondet_int(void);
int cpuidle_register_device(struct cpuidle_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int cpuidle_register_driver(struct cpuidle_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void cpuidle_resume_and_unlock() {
  return;
}
void cpuidle_unregister_device(struct cpuidle_device *arg0) {
  return;
}
void cpuidle_unregister_driver(struct cpuidle_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int cpumask_next_and(int arg0, const struct cpumask *arg1, const struct cpumask *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dmi_check_system(const struct dmi_system_id *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
void free_cpumask_var(cpumask_var_t arg0) {
  return;
}
void get_online_cpus() {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_4() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_4() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct page___0 *ldv_some_page() {
  return (struct page___0 *)external_alloc();
}
void leave_mm(int arg0) {
  return;
}
void mark_tsc_unstable(char *arg0) {
  return;
}
void module_put(struct module *arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_online_cpus() {
  return;
}
int __VERIFIER_nondet_int(void);
int register_cpu_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void register_syscore_ops(struct syscore_ops *arg0) {
  return;
}
void sched_clock_idle_sleep_event() {
  return;
}
void sched_clock_idle_wakeup_event(u64 arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int set_cpus_allowed_ptr(struct task_struct *arg0, const struct cpumask *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int smp_call_function_single(int arg0, void (*arg1)(void *), void *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void start_critical_timings() {
  return;
}
void stop_critical_timings() {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_link(struct kobject *arg0, struct kobject *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_link(struct kobject *arg0, const char *arg1) {
  return;
}
void *external_alloc(void);
struct thermal_cooling_device *thermal_cooling_device_register(char *arg0, void *arg1, const struct thermal_cooling_device_ops *arg2) {
  return (struct thermal_cooling_device *)external_alloc();
}
void thermal_cooling_device_unregister(struct thermal_cooling_device *arg0) {
  return;
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void unregister_cpu_notifier(struct notifier_block *arg0) {
  return;
}
void unregister_syscore_ops(struct syscore_ops *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
long int work_on_cpu(int arg0, long int (*arg1)(void *), void *arg2) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool zalloc_cpumask_var(cpumask_var_t **arg0, gfp_t arg1) {
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
