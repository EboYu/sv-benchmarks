extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef unsigned short umode_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned char u_char;
typedef u64 dma_addr_t;
typedef __u16 __be16;
typedef unsigned int gfp_t;
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
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct page;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
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
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct task_struct;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct page;
struct page;
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
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct scatterlist;
struct scatterlist;
struct crypto_ablkcipher;
struct crypto_ablkcipher;
struct crypto_async_request;
struct crypto_async_request;
struct crypto_aead;
struct crypto_aead;
struct crypto_blkcipher;
struct crypto_blkcipher;
struct crypto_hash;
struct crypto_hash;
struct crypto_rng;
struct crypto_rng;
struct crypto_tfm;
struct crypto_tfm;
struct crypto_type;
struct crypto_type;
struct aead_givcrypt_request;
struct aead_givcrypt_request;
struct skcipher_givcrypt_request;
struct skcipher_givcrypt_request;
struct crypto_async_request {
   struct list_head list ;
   void (*complete)(struct crypto_async_request *req , int err ) ;
   void *data ;
   struct crypto_tfm *tfm ;
   u32 flags ;
};
struct ablkcipher_request {
   struct crypto_async_request base ;
   unsigned int nbytes ;
   void *info ;
   struct scatterlist *src ;
   struct scatterlist *dst ;
   void *__ctx[] __attribute__((__aligned__(__alignof__(unsigned long long )))) ;
};
struct aead_request {
   struct crypto_async_request base ;
   unsigned int assoclen ;
   unsigned int cryptlen ;
   u8 *iv ;
   struct scatterlist *assoc ;
   struct scatterlist *src ;
   struct scatterlist *dst ;
   void *__ctx[] __attribute__((__aligned__(__alignof__(unsigned long long )))) ;
};
struct blkcipher_desc {
   struct crypto_blkcipher *tfm ;
   void *info ;
   u32 flags ;
};
struct hash_desc {
   struct crypto_hash *tfm ;
   u32 flags ;
};
struct ablkcipher_alg {
   int (*setkey)(struct crypto_ablkcipher *tfm , u8 const *key , unsigned int keylen ) ;
   int (*encrypt)(struct ablkcipher_request *req ) ;
   int (*decrypt)(struct ablkcipher_request *req ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request *req ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request *req ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct aead_alg {
   int (*setkey)(struct crypto_aead *tfm , u8 const *key , unsigned int keylen ) ;
   int (*setauthsize)(struct crypto_aead *tfm , unsigned int authsize ) ;
   int (*encrypt)(struct aead_request *req ) ;
   int (*decrypt)(struct aead_request *req ) ;
   int (*givencrypt)(struct aead_givcrypt_request *req ) ;
   int (*givdecrypt)(struct aead_givcrypt_request *req ) ;
   char const *geniv ;
   unsigned int ivsize ;
   unsigned int maxauthsize ;
};
struct blkcipher_alg {
   int (*setkey)(struct crypto_tfm *tfm , u8 const *key , unsigned int keylen ) ;
   int (*encrypt)(struct blkcipher_desc *desc , struct scatterlist *dst , struct scatterlist *src ,
                  unsigned int nbytes ) ;
   int (*decrypt)(struct blkcipher_desc *desc , struct scatterlist *dst , struct scatterlist *src ,
                  unsigned int nbytes ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct cipher_alg {
   unsigned int cia_min_keysize ;
   unsigned int cia_max_keysize ;
   int (*cia_setkey)(struct crypto_tfm *tfm , u8 const *key , unsigned int keylen ) ;
   void (*cia_encrypt)(struct crypto_tfm *tfm , u8 *dst , u8 const *src ) ;
   void (*cia_decrypt)(struct crypto_tfm *tfm , u8 *dst , u8 const *src ) ;
};
struct compress_alg {
   int (*coa_compress)(struct crypto_tfm *tfm , u8 const *src , unsigned int slen ,
                       u8 *dst , unsigned int *dlen ) ;
   int (*coa_decompress)(struct crypto_tfm *tfm , u8 const *src , unsigned int slen ,
                         u8 *dst , unsigned int *dlen ) ;
};
struct rng_alg {
   int (*rng_make_random)(struct crypto_rng *tfm , u8 *rdata , unsigned int dlen ) ;
   int (*rng_reset)(struct crypto_rng *tfm , u8 *seed , unsigned int slen ) ;
   unsigned int seedsize ;
};
union __anonunion_cra_u_201 {
   struct ablkcipher_alg ablkcipher ;
   struct aead_alg aead ;
   struct blkcipher_alg blkcipher ;
   struct cipher_alg cipher ;
   struct compress_alg compress ;
   struct rng_alg rng ;
};
struct crypto_alg {
   struct list_head cra_list ;
   struct list_head cra_users ;
   u32 cra_flags ;
   unsigned int cra_blocksize ;
   unsigned int cra_ctxsize ;
   unsigned int cra_alignmask ;
   int cra_priority ;
   atomic_t cra_refcnt ;
   char cra_name[64] ;
   char cra_driver_name[64] ;
   struct crypto_type const *cra_type ;
   union __anonunion_cra_u_201 cra_u ;
   int (*cra_init)(struct crypto_tfm *tfm ) ;
   void (*cra_exit)(struct crypto_tfm *tfm ) ;
   void (*cra_destroy)(struct crypto_alg *alg ) ;
   struct module *cra_module ;
};
struct ablkcipher_tfm {
   int (*setkey)(struct crypto_ablkcipher *tfm , u8 const *key , unsigned int keylen ) ;
   int (*encrypt)(struct ablkcipher_request *req ) ;
   int (*decrypt)(struct ablkcipher_request *req ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request *req ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request *req ) ;
   struct crypto_ablkcipher *base ;
   unsigned int ivsize ;
   unsigned int reqsize ;
};
struct aead_tfm {
   int (*setkey)(struct crypto_aead *tfm , u8 const *key , unsigned int keylen ) ;
   int (*encrypt)(struct aead_request *req ) ;
   int (*decrypt)(struct aead_request *req ) ;
   int (*givencrypt)(struct aead_givcrypt_request *req ) ;
   int (*givdecrypt)(struct aead_givcrypt_request *req ) ;
   struct crypto_aead *base ;
   unsigned int ivsize ;
   unsigned int authsize ;
   unsigned int reqsize ;
};
struct blkcipher_tfm {
   void *iv ;
   int (*setkey)(struct crypto_tfm *tfm , u8 const *key , unsigned int keylen ) ;
   int (*encrypt)(struct blkcipher_desc *desc , struct scatterlist *dst , struct scatterlist *src ,
                  unsigned int nbytes ) ;
   int (*decrypt)(struct blkcipher_desc *desc , struct scatterlist *dst , struct scatterlist *src ,
                  unsigned int nbytes ) ;
};
struct cipher_tfm {
   int (*cit_setkey)(struct crypto_tfm *tfm , u8 const *key , unsigned int keylen ) ;
   void (*cit_encrypt_one)(struct crypto_tfm *tfm , u8 *dst , u8 const *src ) ;
   void (*cit_decrypt_one)(struct crypto_tfm *tfm , u8 *dst , u8 const *src ) ;
};
struct hash_tfm {
   int (*init)(struct hash_desc *desc ) ;
   int (*update)(struct hash_desc *desc , struct scatterlist *sg , unsigned int nsg ) ;
   int (*final)(struct hash_desc *desc , u8 *out ) ;
   int (*digest)(struct hash_desc *desc , struct scatterlist *sg , unsigned int nsg ,
                 u8 *out ) ;
   int (*setkey)(struct crypto_hash *tfm , u8 const *key , unsigned int keylen ) ;
   unsigned int digestsize ;
};
struct compress_tfm {
   int (*cot_compress)(struct crypto_tfm *tfm , u8 const *src , unsigned int slen ,
                       u8 *dst , unsigned int *dlen ) ;
   int (*cot_decompress)(struct crypto_tfm *tfm , u8 const *src , unsigned int slen ,
                         u8 *dst , unsigned int *dlen ) ;
};
struct rng_tfm {
   int (*rng_gen_random)(struct crypto_rng *tfm , u8 *rdata , unsigned int dlen ) ;
   int (*rng_reset)(struct crypto_rng *tfm , u8 *seed , unsigned int slen ) ;
};
union __anonunion_crt_u_202 {
   struct ablkcipher_tfm ablkcipher ;
   struct aead_tfm aead ;
   struct blkcipher_tfm blkcipher ;
   struct cipher_tfm cipher ;
   struct hash_tfm hash ;
   struct compress_tfm compress ;
   struct rng_tfm rng ;
};
struct crypto_tfm {
   u32 crt_flags ;
   union __anonunion_crt_u_202 crt_u ;
   void (*exit)(struct crypto_tfm *tfm ) ;
   struct crypto_alg *__crt_alg ;
   void *__crt_ctx[] __attribute__((__aligned__(__alignof__(unsigned long long )))) ;
};
struct crypto_ablkcipher {
   struct crypto_tfm base ;
};
struct crypto_aead {
   struct crypto_tfm base ;
};
struct crypto_blkcipher {
   struct crypto_tfm base ;
};
struct crypto_hash {
   struct crypto_tfm base ;
};
struct crypto_rng {
   struct crypto_tfm base ;
};
struct task_struct;
struct task_struct;
struct address_space;
struct address_space;
union __anonunion____missing_field_name_205 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_209 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_208 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_209 __annonCompField34 ;
};
struct __anonstruct____missing_field_name_207 {
   union __anonunion____missing_field_name_208 __annonCompField35 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_206 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_207 __annonCompField36 ;
};
struct __anonstruct____missing_field_name_204 {
   union __anonunion____missing_field_name_205 __annonCompField33 ;
   union __anonunion____missing_field_name_206 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_211 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_210 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
};
union __anonunion____missing_field_name_212 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_204 __annonCompField38 ;
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   union __anonunion____missing_field_name_212 __annonCompField41 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct page;
struct compstat {
   __u32 unc_bytes ;
   __u32 unc_packets ;
   __u32 comp_bytes ;
   __u32 comp_packets ;
   __u32 inc_bytes ;
   __u32 inc_packets ;
   __u32 in_count ;
   __u32 bytes_out ;
   double ratio ;
};
struct module;
struct compressor {
   int compress_proto ;
   void *(*comp_alloc)(unsigned char *options , int opt_len ) ;
   void (*comp_free)(void *state ) ;
   int (*comp_init)(void *state , unsigned char *options , int opt_len , int unit ,
                    int opthdr , int debug ) ;
   void (*comp_reset)(void *state ) ;
   int (*compress)(void *state , unsigned char *rptr , unsigned char *obuf , int isize ,
                   int osize ) ;
   void (*comp_stat)(void *state , struct compstat *stats ) ;
   void *(*decomp_alloc)(unsigned char *options , int opt_len ) ;
   void (*decomp_free)(void *state ) ;
   int (*decomp_init)(void *state , unsigned char *options , int opt_len , int unit ,
                      int opthdr , int mru , int debug ) ;
   void (*decomp_reset)(void *state ) ;
   int (*decompress)(void *state , unsigned char *ibuf , int isize , unsigned char *obuf ,
                     int osize ) ;
   void (*incomp)(void *state , unsigned char *ibuf , int icnt ) ;
   void (*decomp_stat)(void *state , struct compstat *stats ) ;
   struct module *owner ;
   unsigned int comp_extra ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sha_pad {
   unsigned char sha_pad1[40] ;
   unsigned char sha_pad2[40] ;
};
struct ppp_mppe_state {
   struct crypto_blkcipher *arc4 ;
   struct crypto_hash *sha1 ;
   unsigned char *sha1_digest ;
   unsigned char master_key[16] ;
   unsigned char session_key[16] ;
   unsigned int keylen ;
   unsigned char bits ;
   unsigned int ccount ;
   unsigned int stateful ;
   int discard ;
   int sanity_errors ;
   int unit ;
   int debug ;
   struct compstat stats ;
};
long ldv__builtin_expect(long val , long res ) ;
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void const *ptr ) __attribute__((__no_instrument_function__)) ;
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void const *ptr )
{ long tmp ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  long __cil_tmp7 ;
  {
  {
  __cil_tmp3 = (unsigned long )ptr;
  __cil_tmp4 = __cil_tmp3 >= 0xfffffffffffff001UL;
  __cil_tmp5 = ! __cil_tmp4;
  __cil_tmp6 = ! __cil_tmp5;
  __cil_tmp7 = (long )__cil_tmp6;
  tmp = ldv__builtin_expect(__cil_tmp7, 0L);
  }
  return (tmp);
}
}
__inline static __u16 __fswab16(__u16 val ) __attribute__((__no_instrument_function__,
__const__)) ;
__inline static __u16 __fswab16(__u16 val )
{ int __cil_tmp2 ;
  int __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  {
  {
  __cil_tmp2 = (int )val;
  __cil_tmp3 = __cil_tmp2 & 65280;
  __cil_tmp4 = __cil_tmp3 >> 8;
  __cil_tmp5 = (int )val;
  __cil_tmp6 = __cil_tmp5 & 255;
  __cil_tmp7 = __cil_tmp6 << 8;
  __cil_tmp8 = __cil_tmp7 | __cil_tmp4;
  return ((__u16 )__cil_tmp8);
  }
}
}
extern int ( printk)(char const *fmt , ...) ;
extern int ( sprintf)(char *buf , char const *fmt , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void *to , void const *from , size_t len ) ;
extern void *memset(void *s , int c , size_t n ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
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
extern int crypto_has_alg(char const *name , u32 type , u32 mask ) ;
extern struct crypto_tfm *crypto_alloc_base(char const *alg_name , u32 type , u32 mask ) ;
extern void crypto_destroy_tfm(void *mem , struct crypto_tfm *tfm ) ;
__inline static void crypto_free_tfm(struct crypto_tfm *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static void crypto_free_tfm(struct crypto_tfm *tfm )
{ void *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (void *)tfm;
  crypto_destroy_tfm(__cil_tmp2, tfm);
  }
  return;
}
}
__inline static struct crypto_blkcipher *__crypto_blkcipher_cast(struct crypto_tfm *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static struct crypto_blkcipher *__crypto_blkcipher_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_blkcipher *)tfm);
}
}
__inline static struct crypto_blkcipher *crypto_alloc_blkcipher(char const *alg_name ,
                                                                u32 type , u32 mask ) __attribute__((__no_instrument_function__)) ;
__inline static struct crypto_blkcipher *crypto_alloc_blkcipher(char const *alg_name ,
                                                                u32 type , u32 mask )
{ struct crypto_tfm *tmp ;
  struct crypto_blkcipher *tmp___0 ;
  {
  {
  type = type & 4294967280U;
  type = type | 4U;
  mask = mask | 15U;
  tmp = crypto_alloc_base(alg_name, type, mask);
  tmp___0 = __crypto_blkcipher_cast(tmp);
  }
  return (tmp___0);
}
}
__inline static struct crypto_tfm *crypto_blkcipher_tfm(struct crypto_blkcipher *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static struct crypto_tfm *crypto_blkcipher_tfm(struct crypto_blkcipher *tfm )
{
  {
  return ((struct crypto_tfm *)tfm);
}
}
__inline static void crypto_free_blkcipher(struct crypto_blkcipher *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static void crypto_free_blkcipher(struct crypto_blkcipher *tfm )
{ struct crypto_tfm *tmp ;
  {
  {
  tmp = crypto_blkcipher_tfm(tfm);
  crypto_free_tfm(tmp);
  }
  return;
}
}
__inline static int crypto_has_blkcipher(char const *alg_name , u32 type , u32 mask ) __attribute__((__no_instrument_function__)) ;
__inline static int crypto_has_blkcipher(char const *alg_name , u32 type , u32 mask )
{ int tmp ;
  {
  {
  type = type & 4294967280U;
  type = type | 4U;
  mask = mask | 15U;
  tmp = crypto_has_alg(alg_name, type, mask);
  }
  return (tmp);
}
}
__inline static struct blkcipher_tfm *crypto_blkcipher_crt(struct crypto_blkcipher *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static struct blkcipher_tfm *crypto_blkcipher_crt(struct crypto_blkcipher *tfm )
{ struct crypto_tfm *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  {
  tmp = crypto_blkcipher_tfm(tfm);
  }
  {
  __cil_tmp3 = (unsigned long )tmp;
  __cil_tmp4 = __cil_tmp3 + 8;
  return ((struct blkcipher_tfm *)__cil_tmp4);
  }
}
}
__inline static int crypto_blkcipher_setkey(struct crypto_blkcipher *tfm , u8 const *key ,
                                            unsigned int keylen ) __attribute__((__no_instrument_function__)) ;
__inline static int crypto_blkcipher_setkey(struct crypto_blkcipher *tfm , u8 const *key ,
                                            unsigned int keylen )
{ struct blkcipher_tfm *tmp ;
  struct crypto_tfm *tmp___0 ;
  int tmp___1 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  int (*__cil_tmp9)(struct crypto_tfm *tfm , u8 const *key , unsigned int keylen ) ;
  {
  {
  tmp = crypto_blkcipher_crt(tfm);
  tmp___0 = crypto_blkcipher_tfm(tfm);
  __cil_tmp7 = (unsigned long )tmp;
  __cil_tmp8 = __cil_tmp7 + 8;
  __cil_tmp9 = *((int (**)(struct crypto_tfm *tfm , u8 const *key , unsigned int keylen ))__cil_tmp8);
  tmp___1 = (*__cil_tmp9)(tmp___0, key, keylen);
  }
  return (tmp___1);
}
}
__inline static int crypto_blkcipher_encrypt(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                             struct scatterlist *src , unsigned int nbytes ) __attribute__((__no_instrument_function__)) ;
__inline static int crypto_blkcipher_encrypt(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                             struct scatterlist *src , unsigned int nbytes )
{ struct blkcipher_tfm *tmp ;
  struct blkcipher_tfm *tmp___0 ;
  int tmp___1 ;
  struct crypto_blkcipher *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct crypto_blkcipher *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int (*__cil_tmp14)(struct blkcipher_desc *desc , struct scatterlist *dst , struct scatterlist *src ,
                     unsigned int nbytes ) ;
  {
  {
  __cil_tmp8 = *((struct crypto_blkcipher **)desc);
  tmp = crypto_blkcipher_crt(__cil_tmp8);
  __cil_tmp9 = (unsigned long )desc;
  __cil_tmp10 = __cil_tmp9 + 8;
  *((void **)__cil_tmp10) = *((void **)tmp);
  __cil_tmp11 = *((struct crypto_blkcipher **)desc);
  tmp___0 = crypto_blkcipher_crt(__cil_tmp11);
  __cil_tmp12 = (unsigned long )tmp___0;
  __cil_tmp13 = __cil_tmp12 + 16;
  __cil_tmp14 = *((int (**)(struct blkcipher_desc *desc , struct scatterlist *dst ,
                            struct scatterlist *src , unsigned int nbytes ))__cil_tmp13);
  tmp___1 = (*__cil_tmp14)(desc, dst, src, nbytes);
  }
  return (tmp___1);
}
}
__inline static int crypto_blkcipher_decrypt(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                             struct scatterlist *src , unsigned int nbytes ) __attribute__((__no_instrument_function__)) ;
__inline static int crypto_blkcipher_decrypt(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                             struct scatterlist *src , unsigned int nbytes )
{ struct blkcipher_tfm *tmp ;
  struct blkcipher_tfm *tmp___0 ;
  int tmp___1 ;
  struct crypto_blkcipher *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct crypto_blkcipher *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int (*__cil_tmp14)(struct blkcipher_desc *desc , struct scatterlist *dst , struct scatterlist *src ,
                     unsigned int nbytes ) ;
  {
  {
  __cil_tmp8 = *((struct crypto_blkcipher **)desc);
  tmp = crypto_blkcipher_crt(__cil_tmp8);
  __cil_tmp9 = (unsigned long )desc;
  __cil_tmp10 = __cil_tmp9 + 8;
  *((void **)__cil_tmp10) = *((void **)tmp);
  __cil_tmp11 = *((struct crypto_blkcipher **)desc);
  tmp___0 = crypto_blkcipher_crt(__cil_tmp11);
  __cil_tmp12 = (unsigned long )tmp___0;
  __cil_tmp13 = __cil_tmp12 + 24;
  __cil_tmp14 = *((int (**)(struct blkcipher_desc *desc , struct scatterlist *dst ,
                            struct scatterlist *src , unsigned int nbytes ))__cil_tmp13);
  tmp___1 = (*__cil_tmp14)(desc, dst, src, nbytes);
  }
  return (tmp___1);
}
}
__inline static struct crypto_hash *__crypto_hash_cast(struct crypto_tfm *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static struct crypto_hash *__crypto_hash_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_hash *)tfm);
}
}
__inline static struct crypto_hash *crypto_alloc_hash(char const *alg_name , u32 type ,
                                                      u32 mask ) __attribute__((__no_instrument_function__)) ;
__inline static struct crypto_hash *crypto_alloc_hash(char const *alg_name , u32 type ,
                                                      u32 mask )
{ struct crypto_tfm *tmp ;
  struct crypto_hash *tmp___0 ;
  {
  {
  type = type & 4294967280U;
  mask = mask & 4294967280U;
  type = type | 8U;
  mask = mask | 14U;
  tmp = crypto_alloc_base(alg_name, type, mask);
  tmp___0 = __crypto_hash_cast(tmp);
  }
  return (tmp___0);
}
}
__inline static struct crypto_tfm *crypto_hash_tfm(struct crypto_hash *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static struct crypto_tfm *crypto_hash_tfm(struct crypto_hash *tfm )
{
  {
  return ((struct crypto_tfm *)tfm);
}
}
__inline static void crypto_free_hash(struct crypto_hash *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static void crypto_free_hash(struct crypto_hash *tfm )
{ struct crypto_tfm *tmp ;
  {
  {
  tmp = crypto_hash_tfm(tfm);
  crypto_free_tfm(tmp);
  }
  return;
}
}
__inline static int crypto_has_hash(char const *alg_name , u32 type , u32 mask ) __attribute__((__no_instrument_function__)) ;
__inline static int crypto_has_hash(char const *alg_name , u32 type , u32 mask )
{ int tmp ;
  {
  {
  type = type & 4294967280U;
  mask = mask & 4294967280U;
  type = type | 8U;
  mask = mask | 14U;
  tmp = crypto_has_alg(alg_name, type, mask);
  }
  return (tmp);
}
}
__inline static struct hash_tfm *crypto_hash_crt(struct crypto_hash *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static struct hash_tfm *crypto_hash_crt(struct crypto_hash *tfm )
{ struct crypto_tfm *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  {
  tmp = crypto_hash_tfm(tfm);
  }
  {
  __cil_tmp3 = (unsigned long )tmp;
  __cil_tmp4 = __cil_tmp3 + 8;
  return ((struct hash_tfm *)__cil_tmp4);
  }
}
}
__inline static unsigned int crypto_hash_digestsize(struct crypto_hash *tfm ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int crypto_hash_digestsize(struct crypto_hash *tfm )
{ struct hash_tfm *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  {
  tmp = crypto_hash_crt(tfm);
  }
  {
  __cil_tmp3 = (unsigned long )tmp;
  __cil_tmp4 = __cil_tmp3 + 40;
  return (*((unsigned int *)__cil_tmp4));
  }
}
}
__inline static int crypto_hash_digest(struct hash_desc *desc , struct scatterlist *sg ,
                                       unsigned int nbytes , u8 *out ) __attribute__((__no_instrument_function__)) ;
__inline static int crypto_hash_digest(struct hash_desc *desc , struct scatterlist *sg ,
                                       unsigned int nbytes , u8 *out )
{ struct hash_tfm *tmp ;
  int tmp___0 ;
  struct crypto_hash *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int (*__cil_tmp10)(struct hash_desc *desc , struct scatterlist *sg , unsigned int nsg ,
                     u8 *out ) ;
  {
  {
  __cil_tmp7 = *((struct crypto_hash **)desc);
  tmp = crypto_hash_crt(__cil_tmp7);
  __cil_tmp8 = (unsigned long )tmp;
  __cil_tmp9 = __cil_tmp8 + 24;
  __cil_tmp10 = *((int (**)(struct hash_desc *desc , struct scatterlist *sg , unsigned int nsg ,
                            u8 *out ))__cil_tmp9);
  tmp___0 = (*__cil_tmp10)(desc, sg, nbytes, out);
  }
  return (tmp___0);
}
}
extern int ppp_register_compressor(struct compressor * ) ;
extern void ppp_unregister_compressor(struct compressor * ) ;
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page ) __attribute__((__no_instrument_function__)) ;
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{ unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  {
  __cil_tmp7 = (unsigned long )sg;
  __cil_tmp8 = __cil_tmp7 + 8;
  __cil_tmp9 = *((unsigned long *)__cil_tmp8);
  page_link = __cil_tmp9 & 3UL;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp10 = (unsigned long )page;
    __cil_tmp11 = __cil_tmp10 & 3UL;
    __cil_tmp12 = ! __cil_tmp11;
    __cil_tmp13 = ! __cil_tmp12;
    __cil_tmp14 = (long )__cil_tmp13;
    tmp = ldv__builtin_expect(__cil_tmp14, 0L);
    }
    if (tmp) {
      {
      while (1) {
        while_continue___0: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/linux/scatterlist.h"),
                             "i" (65), "i" (12UL));
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
  while (1) {
    while_continue___2: ;
    {
    __cil_tmp15 = *((unsigned long *)sg);
    __cil_tmp16 = __cil_tmp15 != 2271560481UL;
    __cil_tmp17 = ! __cil_tmp16;
    __cil_tmp18 = ! __cil_tmp17;
    __cil_tmp19 = (long )__cil_tmp18;
    tmp___0 = ldv__builtin_expect(__cil_tmp19, 0L);
    }
    if (tmp___0) {
      {
      while (1) {
        while_continue___3: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/linux/scatterlist.h"),
                             "i" (67), "i" (12UL));
        {
        while (1) {
          while_continue___4: ;
        }
        while_break___4: ;
        }
        goto while_break___3;
      }
      while_break___3: ;
      }
    } else {
    }
    goto while_break___2;
  }
  while_break___2: ;
  }
  {
  while (1) {
    while_continue___5: ;
    {
    __cil_tmp20 = (unsigned long )sg;
    __cil_tmp21 = __cil_tmp20 + 8;
    __cil_tmp22 = *((unsigned long *)__cil_tmp21);
    __cil_tmp23 = __cil_tmp22 & 1UL;
    __cil_tmp24 = ! __cil_tmp23;
    __cil_tmp25 = ! __cil_tmp24;
    __cil_tmp26 = (long )__cil_tmp25;
    tmp___1 = ldv__builtin_expect(__cil_tmp26, 0L);
    }
    if (tmp___1) {
      {
      while (1) {
        while_continue___6: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/linux/scatterlist.h"),
                             "i" (68), "i" (12UL));
        {
        while (1) {
          while_continue___7: ;
        }
        while_break___7: ;
        }
        goto while_break___6;
      }
      while_break___6: ;
      }
    } else {
    }
    goto while_break___5;
  }
  while_break___5: ;
  }
  __cil_tmp27 = (unsigned long )sg;
  __cil_tmp28 = __cil_tmp27 + 8;
  __cil_tmp29 = (unsigned long )page;
  *((unsigned long *)__cil_tmp28) = page_link | __cil_tmp29;
  return;
}
}
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset ) __attribute__((__no_instrument_function__)) ;
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset )
{ unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  {
  {
  sg_assign_page(sg, page);
  __cil_tmp5 = (unsigned long )sg;
  __cil_tmp6 = __cil_tmp5 + 16;
  *((unsigned int *)__cil_tmp6) = offset;
  __cil_tmp7 = (unsigned long )sg;
  __cil_tmp8 = __cil_tmp7 + 20;
  *((unsigned int *)__cil_tmp8) = len;
  }
  return;
}
}
__inline static void sg_set_buf(struct scatterlist *sg , void const *buf , unsigned int buflen ) __attribute__((__no_instrument_function__)) ;
__inline static void sg_set_buf(struct scatterlist *sg , void const *buf , unsigned int buflen )
{ unsigned long tmp ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct page *__cil_tmp7 ;
  struct page *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  {
  {
  __cil_tmp5 = (unsigned long )buf;
  tmp = __phys_addr(__cil_tmp5);
  __cil_tmp6 = tmp >> 12;
  __cil_tmp7 = (struct page *)0xffffea0000000000UL;
  __cil_tmp8 = __cil_tmp7 + __cil_tmp6;
  __cil_tmp9 = 1UL << 12;
  __cil_tmp10 = __cil_tmp9 - 1UL;
  __cil_tmp11 = ~ __cil_tmp10;
  __cil_tmp12 = ~ __cil_tmp11;
  __cil_tmp13 = (unsigned long )buf;
  __cil_tmp14 = __cil_tmp13 & __cil_tmp12;
  __cil_tmp15 = (unsigned int )__cil_tmp14;
  sg_set_page(sg, __cil_tmp8, buflen, __cil_tmp15);
  }
  return;
}
}
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
__inline static void put_unaligned_be16(u16 val , void *p ) __attribute__((__no_instrument_function__)) ;
__inline static void put_unaligned_be16(u16 val , void *p )
{ __u16 tmp ;
  __be16 *__cil_tmp4 ;
  int __cil_tmp5 ;
  {
  {
  tmp = __fswab16(val);
  __cil_tmp4 = (__be16 *)p;
  __cil_tmp5 = (int )tmp;
  *__cil_tmp4 = (__be16 )__cil_tmp5;
  }
  return;
}
}
static char const __mod_author63[42] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'F',
        (char const )'r', (char const )'a', (char const )'n', (char const )'k',
        (char const )' ', (char const )'C', (char const )'u', (char const )'s',
        (char const )'a', (char const )'c', (char const )'k', (char const )' ',
        (char const )'<', (char const )'f', (char const )'c', (char const )'u',
        (char const )'s', (char const )'a', (char const )'c', (char const )'k',
        (char const )'@', (char const )'f', (char const )'c', (char const )'u',
        (char const )'s', (char const )'a', (char const )'c', (char const )'k',
        (char const )'.', (char const )'c', (char const )'o', (char const )'m',
        (char const )'>', (char const )'\000'};
static char const __mod_description64[80] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'P', (char const )'o', (char const )'i', (char const )'n',
        (char const )'t', (char const )'-', (char const )'t', (char const )'o',
        (char const )'-', (char const )'P', (char const )'o', (char const )'i',
        (char const )'n', (char const )'t', (char const )' ', (char const )'P',
        (char const )'r', (char const )'o', (char const )'t', (char const )'o',
        (char const )'c', (char const )'o', (char const )'l', (char const )' ',
        (char const )'M', (char const )'i', (char const )'c', (char const )'r',
        (char const )'o', (char const )'s', (char const )'o', (char const )'f',
        (char const )'t', (char const )' ', (char const )'P', (char const )'o',
        (char const )'i', (char const )'n', (char const )'t', (char const )'-',
        (char const )'t', (char const )'o', (char const )'-', (char const )'P',
        (char const )'o', (char const )'i', (char const )'n', (char const )'t',
        (char const )' ', (char const )'E', (char const )'n', (char const )'c',
        (char const )'r', (char const )'y', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )' ',
        (char const )'s', (char const )'u', (char const )'p', (char const )'p',
        (char const )'o', (char const )'r', (char const )'t', (char const )'\000'};
static char const __mod_license65[21] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'D', (char const )'u', (char const )'a', (char const )'l',
        (char const )' ', (char const )'B', (char const )'S', (char const )'D',
        (char const )'/', (char const )'G', (char const )'P', (char const )'L',
        (char const )'\000'};
static char const __mod_alias66[22] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'l', (char const )'i', (char const )'a',
        (char const )'s', (char const )'=', (char const )'p', (char const )'p',
        (char const )'p', (char const )'-', (char const )'c', (char const )'o',
        (char const )'m', (char const )'p', (char const )'r', (char const )'e',
        (char const )'s', (char const )'s', (char const )'-', (char const )'1',
        (char const )'8', (char const )'\000'};
static char const __mod_version67[14] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'v', (char const )'e', (char const )'r', (char const )'s',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'1', (char const )'.', (char const )'0', (char const )'.',
        (char const )'2', (char const )'\000'};
static unsigned int setup_sg(struct scatterlist *sg , void const *address , unsigned int length )
{
  {
  {
  sg_set_buf(sg, address, length);
  }
  return (length);
}
}
static struct sha_pad *sha_pad ;
__inline static void sha_pad_init(struct sha_pad *shapad ) __attribute__((__no_instrument_function__)) ;
__inline static void sha_pad_init(struct sha_pad *shapad )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned char *__cil_tmp6 ;
  void *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  void *__cil_tmp13 ;
  {
  {
  __cil_tmp2 = 0 * 1UL;
  __cil_tmp3 = 0 + __cil_tmp2;
  __cil_tmp4 = (unsigned long )shapad;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  __cil_tmp6 = (unsigned char *)__cil_tmp5;
  __cil_tmp7 = (void *)__cil_tmp6;
  memset(__cil_tmp7, 0, 40UL);
  __cil_tmp8 = 0 * 1UL;
  __cil_tmp9 = 40 + __cil_tmp8;
  __cil_tmp10 = (unsigned long )shapad;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
  __cil_tmp12 = (unsigned char *)__cil_tmp11;
  __cil_tmp13 = (void *)__cil_tmp12;
  memset(__cil_tmp13, 242, 40UL);
  }
  return;
}
}
static void get_new_key_from_sha(struct ppp_mppe_state *state )
{ struct hash_desc desc ;
  struct scatterlist sg[4] ;
  unsigned int nbytes ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct scatterlist *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct scatterlist *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  void const *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct scatterlist *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned char *__cil_tmp30 ;
  void const *__cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct scatterlist *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned char *__cil_tmp40 ;
  void const *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  struct scatterlist *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned char *__cil_tmp52 ;
  void const *__cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  struct hash_desc *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  struct scatterlist *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned char *__cil_tmp64 ;
  {
  {
  __cil_tmp8 = 0 * 40UL;
  __cil_tmp9 = (unsigned long )(sg) + __cil_tmp8;
  __cil_tmp10 = (struct scatterlist *)__cil_tmp9;
  sg_init_table(__cil_tmp10, 4U);
  __cil_tmp11 = 0 * 40UL;
  __cil_tmp12 = (unsigned long )(sg) + __cil_tmp11;
  __cil_tmp13 = (struct scatterlist *)__cil_tmp12;
  __cil_tmp14 = 0 * 1UL;
  __cil_tmp15 = 24 + __cil_tmp14;
  __cil_tmp16 = (unsigned long )state;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  __cil_tmp18 = (unsigned char *)__cil_tmp17;
  __cil_tmp19 = (void const *)__cil_tmp18;
  __cil_tmp20 = (unsigned long )state;
  __cil_tmp21 = __cil_tmp20 + 56;
  __cil_tmp22 = *((unsigned int *)__cil_tmp21);
  nbytes = setup_sg(__cil_tmp13, __cil_tmp19, __cil_tmp22);
  __cil_tmp23 = 1 * 40UL;
  __cil_tmp24 = (unsigned long )(sg) + __cil_tmp23;
  __cil_tmp25 = (struct scatterlist *)__cil_tmp24;
  __cil_tmp26 = 0 * 1UL;
  __cil_tmp27 = 0 + __cil_tmp26;
  __cil_tmp28 = (unsigned long )sha_pad;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  __cil_tmp30 = (unsigned char *)__cil_tmp29;
  __cil_tmp31 = (void const *)__cil_tmp30;
  __cil_tmp32 = (unsigned int )40UL;
  tmp = setup_sg(__cil_tmp25, __cil_tmp31, __cil_tmp32);
  nbytes = nbytes + tmp;
  __cil_tmp33 = 2 * 40UL;
  __cil_tmp34 = (unsigned long )(sg) + __cil_tmp33;
  __cil_tmp35 = (struct scatterlist *)__cil_tmp34;
  __cil_tmp36 = 0 * 1UL;
  __cil_tmp37 = 40 + __cil_tmp36;
  __cil_tmp38 = (unsigned long )state;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  __cil_tmp40 = (unsigned char *)__cil_tmp39;
  __cil_tmp41 = (void const *)__cil_tmp40;
  __cil_tmp42 = (unsigned long )state;
  __cil_tmp43 = __cil_tmp42 + 56;
  __cil_tmp44 = *((unsigned int *)__cil_tmp43);
  tmp___0 = setup_sg(__cil_tmp35, __cil_tmp41, __cil_tmp44);
  nbytes = nbytes + tmp___0;
  __cil_tmp45 = 3 * 40UL;
  __cil_tmp46 = (unsigned long )(sg) + __cil_tmp45;
  __cil_tmp47 = (struct scatterlist *)__cil_tmp46;
  __cil_tmp48 = 0 * 1UL;
  __cil_tmp49 = 40 + __cil_tmp48;
  __cil_tmp50 = (unsigned long )sha_pad;
  __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
  __cil_tmp52 = (unsigned char *)__cil_tmp51;
  __cil_tmp53 = (void const *)__cil_tmp52;
  __cil_tmp54 = (unsigned int )40UL;
  tmp___1 = setup_sg(__cil_tmp47, __cil_tmp53, __cil_tmp54);
  nbytes = nbytes + tmp___1;
  __cil_tmp55 = & desc;
  __cil_tmp56 = (unsigned long )state;
  __cil_tmp57 = __cil_tmp56 + 8;
  *((struct crypto_hash **)__cil_tmp55) = *((struct crypto_hash **)__cil_tmp57);
  __cil_tmp58 = (unsigned long )(& desc) + 8;
  *((u32 *)__cil_tmp58) = (u32 )0;
  __cil_tmp59 = 0 * 40UL;
  __cil_tmp60 = (unsigned long )(sg) + __cil_tmp59;
  __cil_tmp61 = (struct scatterlist *)__cil_tmp60;
  __cil_tmp62 = (unsigned long )state;
  __cil_tmp63 = __cil_tmp62 + 16;
  __cil_tmp64 = *((unsigned char **)__cil_tmp63);
  crypto_hash_digest(& desc, __cil_tmp61, nbytes, __cil_tmp64);
  }
  return;
}
}
static void mppe_rekey(struct ppp_mppe_state *state , int initial_key )
{ struct scatterlist sg_in[1] ;
  struct scatterlist sg_out[1] ;
  struct blkcipher_desc desc ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  struct blkcipher_desc *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct crypto_blkcipher *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  u8 const *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct scatterlist *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct scatterlist *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct scatterlist *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned char *__cil_tmp31 ;
  void const *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct scatterlist *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  void const *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  struct scatterlist *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  struct scatterlist *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned char *__cil_tmp64 ;
  void *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned char *__cil_tmp68 ;
  void const *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned int __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  struct crypto_blkcipher *__cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned char *__cil_tmp90 ;
  u8 const *__cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned int __cil_tmp94 ;
  {
  {
  __cil_tmp9 = & desc;
  *((struct crypto_blkcipher **)__cil_tmp9) = *((struct crypto_blkcipher **)state);
  __cil_tmp10 = (unsigned long )(& desc) + 8;
  *((void **)__cil_tmp10) = (void *)0;
  __cil_tmp11 = (unsigned long )(& desc) + 16;
  *((u32 *)__cil_tmp11) = 0U;
  get_new_key_from_sha(state);
  }
  if (! initial_key) {
    {
    __cil_tmp12 = *((struct crypto_blkcipher **)state);
    __cil_tmp13 = (unsigned long )state;
    __cil_tmp14 = __cil_tmp13 + 16;
    __cil_tmp15 = *((unsigned char **)__cil_tmp14);
    __cil_tmp16 = (u8 const *)__cil_tmp15;
    __cil_tmp17 = (unsigned long )state;
    __cil_tmp18 = __cil_tmp17 + 56;
    __cil_tmp19 = *((unsigned int *)__cil_tmp18);
    crypto_blkcipher_setkey(__cil_tmp12, __cil_tmp16, __cil_tmp19);
    __cil_tmp20 = 0 * 40UL;
    __cil_tmp21 = (unsigned long )(sg_in) + __cil_tmp20;
    __cil_tmp22 = (struct scatterlist *)__cil_tmp21;
    sg_init_table(__cil_tmp22, 1U);
    __cil_tmp23 = 0 * 40UL;
    __cil_tmp24 = (unsigned long )(sg_out) + __cil_tmp23;
    __cil_tmp25 = (struct scatterlist *)__cil_tmp24;
    sg_init_table(__cil_tmp25, 1U);
    __cil_tmp26 = 0 * 40UL;
    __cil_tmp27 = (unsigned long )(sg_in) + __cil_tmp26;
    __cil_tmp28 = (struct scatterlist *)__cil_tmp27;
    __cil_tmp29 = (unsigned long )state;
    __cil_tmp30 = __cil_tmp29 + 16;
    __cil_tmp31 = *((unsigned char **)__cil_tmp30);
    __cil_tmp32 = (void const *)__cil_tmp31;
    __cil_tmp33 = (unsigned long )state;
    __cil_tmp34 = __cil_tmp33 + 56;
    __cil_tmp35 = *((unsigned int *)__cil_tmp34);
    setup_sg(__cil_tmp28, __cil_tmp32, __cil_tmp35);
    __cil_tmp36 = 0 * 40UL;
    __cil_tmp37 = (unsigned long )(sg_out) + __cil_tmp36;
    __cil_tmp38 = (struct scatterlist *)__cil_tmp37;
    __cil_tmp39 = 0 * 1UL;
    __cil_tmp40 = 40 + __cil_tmp39;
    __cil_tmp41 = (unsigned long )state;
    __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
    __cil_tmp43 = (unsigned char *)__cil_tmp42;
    __cil_tmp44 = (void const *)__cil_tmp43;
    __cil_tmp45 = (unsigned long )state;
    __cil_tmp46 = __cil_tmp45 + 56;
    __cil_tmp47 = *((unsigned int *)__cil_tmp46);
    setup_sg(__cil_tmp38, __cil_tmp44, __cil_tmp47);
    __cil_tmp48 = 0 * 40UL;
    __cil_tmp49 = (unsigned long )(sg_out) + __cil_tmp48;
    __cil_tmp50 = (struct scatterlist *)__cil_tmp49;
    __cil_tmp51 = 0 * 40UL;
    __cil_tmp52 = (unsigned long )(sg_in) + __cil_tmp51;
    __cil_tmp53 = (struct scatterlist *)__cil_tmp52;
    __cil_tmp54 = (unsigned long )state;
    __cil_tmp55 = __cil_tmp54 + 56;
    __cil_tmp56 = *((unsigned int *)__cil_tmp55);
    tmp = crypto_blkcipher_encrypt(& desc, __cil_tmp50, __cil_tmp53, __cil_tmp56);
    }
    if (tmp != 0) {
      {
      printk("<4>mppe_rekey: cipher_encrypt failed\n");
      }
    } else {
    }
  } else {
    {
    __cil_tmp57 = (unsigned long )state;
    __cil_tmp58 = __cil_tmp57 + 56;
    __cil_tmp59 = *((unsigned int *)__cil_tmp58);
    __len = (size_t )__cil_tmp59;
    __cil_tmp60 = 0 * 1UL;
    __cil_tmp61 = 40 + __cil_tmp60;
    __cil_tmp62 = (unsigned long )state;
    __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
    __cil_tmp64 = (unsigned char *)__cil_tmp63;
    __cil_tmp65 = (void *)__cil_tmp64;
    __cil_tmp66 = (unsigned long )state;
    __cil_tmp67 = __cil_tmp66 + 16;
    __cil_tmp68 = *((unsigned char **)__cil_tmp67);
    __cil_tmp69 = (void const *)__cil_tmp68;
    __ret = memcpy(__cil_tmp65, __cil_tmp69, __len);
    }
  }
  {
  __cil_tmp70 = (unsigned long )state;
  __cil_tmp71 = __cil_tmp70 + 56;
  __cil_tmp72 = *((unsigned int *)__cil_tmp71);
  if (__cil_tmp72 == 8U) {
    __cil_tmp73 = 0 * 1UL;
    __cil_tmp74 = 40 + __cil_tmp73;
    __cil_tmp75 = (unsigned long )state;
    __cil_tmp76 = __cil_tmp75 + __cil_tmp74;
    *((unsigned char *)__cil_tmp76) = (unsigned char)209;
    __cil_tmp77 = 1 * 1UL;
    __cil_tmp78 = 40 + __cil_tmp77;
    __cil_tmp79 = (unsigned long )state;
    __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
    *((unsigned char *)__cil_tmp80) = (unsigned char)38;
    __cil_tmp81 = 2 * 1UL;
    __cil_tmp82 = 40 + __cil_tmp81;
    __cil_tmp83 = (unsigned long )state;
    __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
    *((unsigned char *)__cil_tmp84) = (unsigned char)158;
  } else {
  }
  }
  {
  __cil_tmp85 = *((struct crypto_blkcipher **)state);
  __cil_tmp86 = 0 * 1UL;
  __cil_tmp87 = 40 + __cil_tmp86;
  __cil_tmp88 = (unsigned long )state;
  __cil_tmp89 = __cil_tmp88 + __cil_tmp87;
  __cil_tmp90 = (unsigned char *)__cil_tmp89;
  __cil_tmp91 = (u8 const *)__cil_tmp90;
  __cil_tmp92 = (unsigned long )state;
  __cil_tmp93 = __cil_tmp92 + 56;
  __cil_tmp94 = *((unsigned int *)__cil_tmp93);
  crypto_blkcipher_setkey(__cil_tmp85, __cil_tmp91, __cil_tmp94);
  }
  return;
}
}
static void *mppe_alloc(unsigned char *options , int optlen )
{ struct ppp_mppe_state *state ;
  unsigned int digestsize ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned char *__cil_tmp15 ;
  unsigned char __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  unsigned char __cil_tmp19 ;
  int __cil_tmp20 ;
  void *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  u32 __cil_tmp24 ;
  u32 __cil_tmp25 ;
  struct crypto_blkcipher *__cil_tmp26 ;
  void const *__cil_tmp27 ;
  void *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  u32 __cil_tmp31 ;
  u32 __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct crypto_hash *__cil_tmp35 ;
  void const *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  void *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  struct crypto_hash *__cil_tmp42 ;
  size_t __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned char *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned char *__cil_tmp53 ;
  void *__cil_tmp54 ;
  unsigned char *__cil_tmp55 ;
  void const *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned char *__cil_tmp61 ;
  void *__cil_tmp62 ;
  unsigned char *__cil_tmp63 ;
  void const *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned char *__cil_tmp69 ;
  void *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned char *__cil_tmp75 ;
  void const *__cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned char *__cil_tmp81 ;
  void *__cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned char *__cil_tmp87 ;
  void const *__cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned char *__cil_tmp93 ;
  void const *__cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  struct crypto_hash *__cil_tmp99 ;
  struct crypto_blkcipher *__cil_tmp100 ;
  void const *__cil_tmp101 ;
  {
  {
  __cil_tmp13 = 6UL + 16UL;
  __cil_tmp14 = (unsigned long )optlen;
  if (__cil_tmp14 != __cil_tmp13) {
    goto out;
  } else {
    {
    __cil_tmp15 = options + 0;
    __cil_tmp16 = *__cil_tmp15;
    __cil_tmp17 = (int )__cil_tmp16;
    if (__cil_tmp17 != 18) {
      goto out;
    } else {
      {
      __cil_tmp18 = options + 1;
      __cil_tmp19 = *__cil_tmp18;
      __cil_tmp20 = (int )__cil_tmp19;
      if (__cil_tmp20 != 6) {
        goto out;
      } else {
      }
      }
    }
    }
  }
  }
  {
  tmp = kzalloc(128UL, 208U);
  state = (struct ppp_mppe_state *)tmp;
  }
  {
  __cil_tmp21 = (void *)0;
  __cil_tmp22 = (unsigned long )__cil_tmp21;
  __cil_tmp23 = (unsigned long )state;
  if (__cil_tmp23 == __cil_tmp22) {
    goto out;
  } else {
  }
  }
  {
  __cil_tmp24 = (u32 )0;
  __cil_tmp25 = (u32 )128;
  *((struct crypto_blkcipher **)state) = crypto_alloc_blkcipher("ecb(arc4)", __cil_tmp24,
                                                                __cil_tmp25);
  __cil_tmp26 = *((struct crypto_blkcipher **)state);
  __cil_tmp27 = (void const *)__cil_tmp26;
  tmp___0 = (long )IS_ERR(__cil_tmp27);
  }
  if (tmp___0) {
    __cil_tmp28 = (void *)0;
    *((struct crypto_blkcipher **)state) = (struct crypto_blkcipher *)__cil_tmp28;
    goto out_free;
  } else {
  }
  {
  __cil_tmp29 = (unsigned long )state;
  __cil_tmp30 = __cil_tmp29 + 8;
  __cil_tmp31 = (u32 )0;
  __cil_tmp32 = (u32 )128;
  *((struct crypto_hash **)__cil_tmp30) = crypto_alloc_hash("sha1", __cil_tmp31, __cil_tmp32);
  __cil_tmp33 = (unsigned long )state;
  __cil_tmp34 = __cil_tmp33 + 8;
  __cil_tmp35 = *((struct crypto_hash **)__cil_tmp34);
  __cil_tmp36 = (void const *)__cil_tmp35;
  tmp___1 = (long )IS_ERR(__cil_tmp36);
  }
  if (tmp___1) {
    __cil_tmp37 = (unsigned long )state;
    __cil_tmp38 = __cil_tmp37 + 8;
    __cil_tmp39 = (void *)0;
    *((struct crypto_hash **)__cil_tmp38) = (struct crypto_hash *)__cil_tmp39;
    goto out_free;
  } else {
  }
  {
  __cil_tmp40 = (unsigned long )state;
  __cil_tmp41 = __cil_tmp40 + 8;
  __cil_tmp42 = *((struct crypto_hash **)__cil_tmp41);
  digestsize = crypto_hash_digestsize(__cil_tmp42);
  }
  if (digestsize < 16U) {
    goto out_free;
  } else {
  }
  {
  __cil_tmp43 = (size_t )digestsize;
  tmp___2 = kmalloc(__cil_tmp43, 208U);
  __cil_tmp44 = (unsigned long )state;
  __cil_tmp45 = __cil_tmp44 + 16;
  *((unsigned char **)__cil_tmp45) = (unsigned char *)tmp___2;
  }
  {
  __cil_tmp46 = (unsigned long )state;
  __cil_tmp47 = __cil_tmp46 + 16;
  __cil_tmp48 = *((unsigned char **)__cil_tmp47);
  if (! __cil_tmp48) {
    goto out_free;
  } else {
  }
  }
  __len = 16UL;
  if (__len >= 64UL) {
    {
    __cil_tmp49 = 0 * 1UL;
    __cil_tmp50 = 24 + __cil_tmp49;
    __cil_tmp51 = (unsigned long )state;
    __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
    __cil_tmp53 = (unsigned char *)__cil_tmp52;
    __cil_tmp54 = (void *)__cil_tmp53;
    __cil_tmp55 = options + 6;
    __cil_tmp56 = (void const *)__cil_tmp55;
    __ret = memcpy(__cil_tmp54, __cil_tmp56, __len);
    }
  } else {
    {
    __cil_tmp57 = 0 * 1UL;
    __cil_tmp58 = 24 + __cil_tmp57;
    __cil_tmp59 = (unsigned long )state;
    __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
    __cil_tmp61 = (unsigned char *)__cil_tmp60;
    __cil_tmp62 = (void *)__cil_tmp61;
    __cil_tmp63 = options + 6;
    __cil_tmp64 = (void const *)__cil_tmp63;
    __ret = memcpy(__cil_tmp62, __cil_tmp64, __len);
    }
  }
  __len___0 = 16UL;
  if (__len___0 >= 64UL) {
    {
    __cil_tmp65 = 0 * 1UL;
    __cil_tmp66 = 40 + __cil_tmp65;
    __cil_tmp67 = (unsigned long )state;
    __cil_tmp68 = __cil_tmp67 + __cil_tmp66;
    __cil_tmp69 = (unsigned char *)__cil_tmp68;
    __cil_tmp70 = (void *)__cil_tmp69;
    __cil_tmp71 = 0 * 1UL;
    __cil_tmp72 = 24 + __cil_tmp71;
    __cil_tmp73 = (unsigned long )state;
    __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
    __cil_tmp75 = (unsigned char *)__cil_tmp74;
    __cil_tmp76 = (void const *)__cil_tmp75;
    __ret___0 = memcpy(__cil_tmp70, __cil_tmp76, __len___0);
    }
  } else {
    {
    __cil_tmp77 = 0 * 1UL;
    __cil_tmp78 = 40 + __cil_tmp77;
    __cil_tmp79 = (unsigned long )state;
    __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
    __cil_tmp81 = (unsigned char *)__cil_tmp80;
    __cil_tmp82 = (void *)__cil_tmp81;
    __cil_tmp83 = 0 * 1UL;
    __cil_tmp84 = 24 + __cil_tmp83;
    __cil_tmp85 = (unsigned long )state;
    __cil_tmp86 = __cil_tmp85 + __cil_tmp84;
    __cil_tmp87 = (unsigned char *)__cil_tmp86;
    __cil_tmp88 = (void const *)__cil_tmp87;
    __ret___0 = memcpy(__cil_tmp82, __cil_tmp88, __len___0);
    }
  }
  return ((void *)state);
  out_free:
  {
  __cil_tmp89 = (unsigned long )state;
  __cil_tmp90 = __cil_tmp89 + 16;
  if (*((unsigned char **)__cil_tmp90)) {
    {
    __cil_tmp91 = (unsigned long )state;
    __cil_tmp92 = __cil_tmp91 + 16;
    __cil_tmp93 = *((unsigned char **)__cil_tmp92);
    __cil_tmp94 = (void const *)__cil_tmp93;
    kfree(__cil_tmp94);
    }
  } else {
  }
  }
  {
  __cil_tmp95 = (unsigned long )state;
  __cil_tmp96 = __cil_tmp95 + 8;
  if (*((struct crypto_hash **)__cil_tmp96)) {
    {
    __cil_tmp97 = (unsigned long )state;
    __cil_tmp98 = __cil_tmp97 + 8;
    __cil_tmp99 = *((struct crypto_hash **)__cil_tmp98);
    crypto_free_hash(__cil_tmp99);
    }
  } else {
  }
  }
  if (*((struct crypto_blkcipher **)state)) {
    {
    __cil_tmp100 = *((struct crypto_blkcipher **)state);
    crypto_free_blkcipher(__cil_tmp100);
    }
  } else {
  }
  {
  __cil_tmp101 = (void const *)state;
  kfree(__cil_tmp101);
  }
  out:
  return ((void *)0);
}
}
static void mppe_free(void *arg )
{ struct ppp_mppe_state *state ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned char *__cil_tmp7 ;
  void const *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct crypto_hash *__cil_tmp13 ;
  struct crypto_blkcipher *__cil_tmp14 ;
  void const *__cil_tmp15 ;
  {
  state = (struct ppp_mppe_state *)arg;
  if (state) {
    {
    __cil_tmp3 = (unsigned long )state;
    __cil_tmp4 = __cil_tmp3 + 16;
    if (*((unsigned char **)__cil_tmp4)) {
      {
      __cil_tmp5 = (unsigned long )state;
      __cil_tmp6 = __cil_tmp5 + 16;
      __cil_tmp7 = *((unsigned char **)__cil_tmp6);
      __cil_tmp8 = (void const *)__cil_tmp7;
      kfree(__cil_tmp8);
      }
    } else {
    }
    }
    {
    __cil_tmp9 = (unsigned long )state;
    __cil_tmp10 = __cil_tmp9 + 8;
    if (*((struct crypto_hash **)__cil_tmp10)) {
      {
      __cil_tmp11 = (unsigned long )state;
      __cil_tmp12 = __cil_tmp11 + 8;
      __cil_tmp13 = *((struct crypto_hash **)__cil_tmp12);
      crypto_free_hash(__cil_tmp13);
      }
    } else {
    }
    }
    if (*((struct crypto_blkcipher **)state)) {
      {
      __cil_tmp14 = *((struct crypto_blkcipher **)state);
      crypto_free_blkcipher(__cil_tmp14);
      }
    } else {
    }
    {
    __cil_tmp15 = (void const *)state;
    kfree(__cil_tmp15);
    }
  } else {
  }
  return;
}
}
static int mppe_init(void *arg , unsigned char *options , int optlen , int unit ,
                     int debug , char const *debugstr )
{ struct ppp_mppe_state *state ;
  unsigned char mppe_opts ;
  u_char *ptr ;
  int i ;
  char mkey[sizeof(state->master_key) * 2UL + 1UL] ;
  char skey[sizeof(state->session_key) * 2UL + 1UL] ;
  char const *tmp ;
  int tmp___0 ;
  unsigned char *__cil_tmp15 ;
  unsigned char __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  unsigned char __cil_tmp19 ;
  int __cil_tmp20 ;
  u_char *__cil_tmp21 ;
  u_char __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  u_char *__cil_tmp27 ;
  u_char __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  u_char *__cil_tmp32 ;
  u_char __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  u_char *__cil_tmp37 ;
  u_char __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  u_char *__cil_tmp42 ;
  u_char __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  u_char *__cil_tmp47 ;
  u_char __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  u_char *__cil_tmp52 ;
  u_char __cil_tmp53 ;
  int __cil_tmp54 ;
  int __cil_tmp55 ;
  int __cil_tmp56 ;
  u_char *__cil_tmp57 ;
  int __cil_tmp58 ;
  int __cil_tmp59 ;
  u_char *__cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  u_char *__cil_tmp63 ;
  u_char __cil_tmp64 ;
  int __cil_tmp65 ;
  int __cil_tmp66 ;
  int __cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  int __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned int __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  int __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  char *__cil_tmp86 ;
  char *__cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned char __cil_tmp92 ;
  int __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  int __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  char *__cil_tmp98 ;
  char *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned char __cil_tmp104 ;
  int __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  char *__cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  char *__cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  {
  state = (struct ppp_mppe_state *)arg;
  if (optlen != 6) {
    return (0);
  } else {
    {
    __cil_tmp15 = options + 0;
    __cil_tmp16 = *__cil_tmp15;
    __cil_tmp17 = (int )__cil_tmp16;
    if (__cil_tmp17 != 18) {
      return (0);
    } else {
      {
      __cil_tmp18 = options + 1;
      __cil_tmp19 = *__cil_tmp18;
      __cil_tmp20 = (int )__cil_tmp19;
      if (__cil_tmp20 != 6) {
        return (0);
      } else {
      }
      }
    }
    }
  }
  {
  while (1) {
    while_continue: ;
    ptr = options + 2;
    mppe_opts = (unsigned char)0;
    {
    __cil_tmp21 = ptr + 0;
    __cil_tmp22 = *__cil_tmp21;
    __cil_tmp23 = (int )__cil_tmp22;
    __cil_tmp24 = __cil_tmp23 & 1;
    if (! __cil_tmp24) {
      __cil_tmp25 = (int )mppe_opts;
      __cil_tmp26 = __cil_tmp25 | 4;
      mppe_opts = (unsigned char )__cil_tmp26;
    } else {
    }
    }
    {
    __cil_tmp27 = ptr + 3;
    __cil_tmp28 = *__cil_tmp27;
    __cil_tmp29 = (int )__cil_tmp28;
    if (__cil_tmp29 & 64) {
      __cil_tmp30 = (int )mppe_opts;
      __cil_tmp31 = __cil_tmp30 | 2;
      mppe_opts = (unsigned char )__cil_tmp31;
    } else {
    }
    }
    {
    __cil_tmp32 = ptr + 3;
    __cil_tmp33 = *__cil_tmp32;
    __cil_tmp34 = (int )__cil_tmp33;
    if (__cil_tmp34 & 32) {
      __cil_tmp35 = (int )mppe_opts;
      __cil_tmp36 = __cil_tmp35 | 1;
      mppe_opts = (unsigned char )__cil_tmp36;
    } else {
    }
    }
    {
    __cil_tmp37 = ptr + 3;
    __cil_tmp38 = *__cil_tmp37;
    __cil_tmp39 = (int )__cil_tmp38;
    if (__cil_tmp39 & 128) {
      __cil_tmp40 = (int )mppe_opts;
      __cil_tmp41 = __cil_tmp40 | 8;
      mppe_opts = (unsigned char )__cil_tmp41;
    } else {
    }
    }
    {
    __cil_tmp42 = ptr + 3;
    __cil_tmp43 = *__cil_tmp42;
    __cil_tmp44 = (int )__cil_tmp43;
    if (__cil_tmp44 & 16) {
      __cil_tmp45 = (int )mppe_opts;
      __cil_tmp46 = __cil_tmp45 | 32;
      mppe_opts = (unsigned char )__cil_tmp46;
    } else {
    }
    }
    {
    __cil_tmp47 = ptr + 3;
    __cil_tmp48 = *__cil_tmp47;
    __cil_tmp49 = (int )__cil_tmp48;
    if (__cil_tmp49 & 1) {
      __cil_tmp50 = (int )mppe_opts;
      __cil_tmp51 = __cil_tmp50 | 16;
      mppe_opts = (unsigned char )__cil_tmp51;
    } else {
    }
    }
    {
    __cil_tmp52 = ptr + 0;
    __cil_tmp53 = *__cil_tmp52;
    __cil_tmp54 = (int )__cil_tmp53;
    if (__cil_tmp54 & -2) {
      __cil_tmp55 = (int )mppe_opts;
      __cil_tmp56 = __cil_tmp55 | 64;
      mppe_opts = (unsigned char )__cil_tmp56;
    } else {
    }
    }
    {
    __cil_tmp57 = ptr + 1;
    if (*__cil_tmp57) {
      __cil_tmp58 = (int )mppe_opts;
      __cil_tmp59 = __cil_tmp58 | 64;
      mppe_opts = (unsigned char )__cil_tmp59;
    } else {
      {
      __cil_tmp60 = ptr + 2;
      if (*__cil_tmp60) {
        __cil_tmp61 = (int )mppe_opts;
        __cil_tmp62 = __cil_tmp61 | 64;
        mppe_opts = (unsigned char )__cil_tmp62;
      } else {
      }
      }
    }
    }
    {
    __cil_tmp63 = ptr + 3;
    __cil_tmp64 = *__cil_tmp63;
    __cil_tmp65 = (int )__cil_tmp64;
    if (__cil_tmp65 & -242) {
      __cil_tmp66 = (int )mppe_opts;
      __cil_tmp67 = __cil_tmp66 | 64;
      mppe_opts = (unsigned char )__cil_tmp67;
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp68 = (int )mppe_opts;
  if (__cil_tmp68 & 2) {
    __cil_tmp69 = (unsigned long )state;
    __cil_tmp70 = __cil_tmp69 + 56;
    *((unsigned int *)__cil_tmp70) = 16U;
  } else {
    {
    __cil_tmp71 = (int )mppe_opts;
    if (__cil_tmp71 & 1) {
      __cil_tmp72 = (unsigned long )state;
      __cil_tmp73 = __cil_tmp72 + 56;
      *((unsigned int *)__cil_tmp73) = 8U;
    } else {
      {
      printk("<4>%s[%d]: unknown key length\n", debugstr, unit);
      }
      return (0);
    }
    }
  }
  }
  {
  __cil_tmp74 = (int )mppe_opts;
  if (__cil_tmp74 & 4) {
    __cil_tmp75 = (unsigned long )state;
    __cil_tmp76 = __cil_tmp75 + 68;
    *((unsigned int *)__cil_tmp76) = 1U;
  } else {
  }
  }
  {
  mppe_rekey(state, 1);
  }
  if (debug) {
    {
    __cil_tmp77 = (unsigned long )state;
    __cil_tmp78 = __cil_tmp77 + 68;
    if (*((unsigned int *)__cil_tmp78)) {
      tmp = "stateful";
    } else {
      tmp = "stateless";
    }
    }
    {
    __cil_tmp79 = (unsigned long )state;
    __cil_tmp80 = __cil_tmp79 + 56;
    __cil_tmp81 = *((unsigned int *)__cil_tmp80);
    if (__cil_tmp81 == 16U) {
      tmp___0 = 128;
    } else {
      tmp___0 = 40;
    }
    }
    {
    printk("<7>%s[%d]: initialized with %d-bit %s mode\n", debugstr, unit, tmp___0,
           tmp);
    i = 0;
    }
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp82 = (unsigned long )i;
      if (__cil_tmp82 < 16UL) {
      } else {
        goto while_break___0;
      }
      }
      {
      __cil_tmp83 = i * 2;
      __cil_tmp84 = 0 * 1UL;
      __cil_tmp85 = (unsigned long )(mkey) + __cil_tmp84;
      __cil_tmp86 = (char *)__cil_tmp85;
      __cil_tmp87 = __cil_tmp86 + __cil_tmp83;
      __cil_tmp88 = i * 1UL;
      __cil_tmp89 = 24 + __cil_tmp88;
      __cil_tmp90 = (unsigned long )state;
      __cil_tmp91 = __cil_tmp90 + __cil_tmp89;
      __cil_tmp92 = *((unsigned char *)__cil_tmp91);
      __cil_tmp93 = (int )__cil_tmp92;
      sprintf(__cil_tmp87, "%02x", __cil_tmp93);
      i = i + 1;
      }
    }
    while_break___0: ;
    }
    i = 0;
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp94 = (unsigned long )i;
      if (__cil_tmp94 < 16UL) {
      } else {
        goto while_break___1;
      }
      }
      {
      __cil_tmp95 = i * 2;
      __cil_tmp96 = 0 * 1UL;
      __cil_tmp97 = (unsigned long )(skey) + __cil_tmp96;
      __cil_tmp98 = (char *)__cil_tmp97;
      __cil_tmp99 = __cil_tmp98 + __cil_tmp95;
      __cil_tmp100 = i * 1UL;
      __cil_tmp101 = 40 + __cil_tmp100;
      __cil_tmp102 = (unsigned long )state;
      __cil_tmp103 = __cil_tmp102 + __cil_tmp101;
      __cil_tmp104 = *((unsigned char *)__cil_tmp103);
      __cil_tmp105 = (int )__cil_tmp104;
      sprintf(__cil_tmp99, "%02x", __cil_tmp105);
      i = i + 1;
      }
    }
    while_break___1: ;
    }
    {
    __cil_tmp106 = 0 * 1UL;
    __cil_tmp107 = (unsigned long )(mkey) + __cil_tmp106;
    __cil_tmp108 = (char *)__cil_tmp107;
    __cil_tmp109 = 0 * 1UL;
    __cil_tmp110 = (unsigned long )(skey) + __cil_tmp109;
    __cil_tmp111 = (char *)__cil_tmp110;
    printk("<7>%s[%d]: keys: master: %s initial session: %s\n", debugstr, unit, __cil_tmp108,
           __cil_tmp111);
    }
  } else {
  }
  __cil_tmp112 = (unsigned long )state;
  __cil_tmp113 = __cil_tmp112 + 64;
  *((unsigned int *)__cil_tmp113) = 4095U;
  __cil_tmp114 = (unsigned long )state;
  __cil_tmp115 = __cil_tmp114 + 60;
  *((unsigned char *)__cil_tmp115) = (unsigned char)16;
  __cil_tmp116 = (unsigned long )state;
  __cil_tmp117 = __cil_tmp116 + 80;
  *((int *)__cil_tmp117) = unit;
  __cil_tmp118 = (unsigned long )state;
  __cil_tmp119 = __cil_tmp118 + 84;
  *((int *)__cil_tmp119) = debug;
  return (1);
}
}
static int mppe_comp_init(void *arg , unsigned char *options , int optlen , int unit ,
                          int hdrlen , int debug )
{ int tmp ;
  {
  {
  tmp = mppe_init(arg, options, optlen, unit, debug, "mppe_comp_init");
  }
  return (tmp);
}
}
static void mppe_comp_reset(void *arg )
{ struct ppp_mppe_state *state ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned char __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  {
  state = (struct ppp_mppe_state *)arg;
  __cil_tmp3 = (unsigned long )state;
  __cil_tmp4 = __cil_tmp3 + 60;
  __cil_tmp5 = (unsigned long )state;
  __cil_tmp6 = __cil_tmp5 + 60;
  __cil_tmp7 = *((unsigned char *)__cil_tmp6);
  __cil_tmp8 = (int )__cil_tmp7;
  __cil_tmp9 = __cil_tmp8 | 128;
  *((unsigned char *)__cil_tmp4) = (unsigned char )__cil_tmp9;
  return;
}
}
static int mppe_compress(void *arg , unsigned char *ibuf , unsigned char *obuf , int isize ,
                         int osize )
{ struct ppp_mppe_state *state ;
  struct blkcipher_desc desc ;
  int proto ;
  struct scatterlist sg_in[1] ;
  struct scatterlist sg_out[1] ;
  int tmp ;
  struct blkcipher_desc *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  __u8 *__cil_tmp15 ;
  __u8 __cil_tmp16 ;
  int __cil_tmp17 ;
  __u8 *__cil_tmp18 ;
  __u8 __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned char *__cil_tmp30 ;
  __u8 *__cil_tmp31 ;
  unsigned char *__cil_tmp32 ;
  __u8 *__cil_tmp33 ;
  u16 __cil_tmp34 ;
  unsigned char *__cil_tmp35 ;
  void *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  u16 __cil_tmp55 ;
  void *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned char __cil_tmp66 ;
  int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned char __cil_tmp79 ;
  int __cil_tmp80 ;
  int __cil_tmp81 ;
  unsigned char *__cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned char __cil_tmp85 ;
  int __cil_tmp86 ;
  unsigned char *__cil_tmp87 ;
  unsigned char __cil_tmp88 ;
  int __cil_tmp89 ;
  int __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned char __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  struct scatterlist *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  struct scatterlist *__cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  struct scatterlist *__cil_tmp106 ;
  void const *__cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  struct scatterlist *__cil_tmp111 ;
  void const *__cil_tmp112 ;
  unsigned int __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  struct scatterlist *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  struct scatterlist *__cil_tmp119 ;
  unsigned int __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  __u32 __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  __u32 __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  __u32 __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  __u32 __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  __u32 __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  __u32 __cil_tmp148 ;
  {
  state = (struct ppp_mppe_state *)arg;
  __cil_tmp12 = & desc;
  *((struct crypto_blkcipher **)__cil_tmp12) = *((struct crypto_blkcipher **)state);
  __cil_tmp13 = (unsigned long )(& desc) + 8;
  *((void **)__cil_tmp13) = (void *)0;
  __cil_tmp14 = (unsigned long )(& desc) + 16;
  *((u32 *)__cil_tmp14) = 0U;
  __cil_tmp15 = ibuf + 3;
  __cil_tmp16 = *__cil_tmp15;
  __cil_tmp17 = (int )__cil_tmp16;
  __cil_tmp18 = ibuf + 2;
  __cil_tmp19 = *__cil_tmp18;
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 << 8;
  proto = __cil_tmp21 + __cil_tmp17;
  if (proto < 33) {
    return (0);
  } else
  if (proto > 250) {
    return (0);
  } else {
  }
  {
  __cil_tmp22 = isize + 2;
  __cil_tmp23 = __cil_tmp22 + 2;
  if (osize < __cil_tmp23) {
    {
    __cil_tmp24 = (unsigned long )state;
    __cil_tmp25 = __cil_tmp24 + 80;
    __cil_tmp26 = *((int *)__cil_tmp25);
    __cil_tmp27 = osize + 2;
    __cil_tmp28 = __cil_tmp27 + 2;
    printk("<7>mppe_compress[%d]: osize too small! (have: %d need: %d)\n", __cil_tmp26,
           osize, __cil_tmp28);
    }
    return (-1);
  } else {
  }
  }
  {
  __cil_tmp29 = isize + 2;
  osize = __cil_tmp29 + 2;
  __cil_tmp30 = obuf + 0;
  __cil_tmp31 = ibuf + 0;
  *__cil_tmp30 = *__cil_tmp31;
  __cil_tmp32 = obuf + 1;
  __cil_tmp33 = ibuf + 1;
  *__cil_tmp32 = *__cil_tmp33;
  __cil_tmp34 = (u16 )253;
  __cil_tmp35 = obuf + 2;
  __cil_tmp36 = (void *)__cil_tmp35;
  put_unaligned_be16(__cil_tmp34, __cil_tmp36);
  obuf = obuf + 4;
  __cil_tmp37 = (unsigned long )state;
  __cil_tmp38 = __cil_tmp37 + 64;
  __cil_tmp39 = (unsigned long )state;
  __cil_tmp40 = __cil_tmp39 + 64;
  __cil_tmp41 = *((unsigned int *)__cil_tmp40);
  __cil_tmp42 = __cil_tmp41 + 1U;
  *((unsigned int *)__cil_tmp38) = __cil_tmp42 % 4096U;
  }
  {
  __cil_tmp43 = (unsigned long )state;
  __cil_tmp44 = __cil_tmp43 + 84;
  __cil_tmp45 = *((int *)__cil_tmp44);
  if (__cil_tmp45 >= 7) {
    {
    __cil_tmp46 = (unsigned long )state;
    __cil_tmp47 = __cil_tmp46 + 80;
    __cil_tmp48 = *((int *)__cil_tmp47);
    __cil_tmp49 = (unsigned long )state;
    __cil_tmp50 = __cil_tmp49 + 64;
    __cil_tmp51 = *((unsigned int *)__cil_tmp50);
    printk("<7>mppe_compress[%d]: ccount %d\n", __cil_tmp48, __cil_tmp51);
    }
  } else {
  }
  }
  {
  __cil_tmp52 = (unsigned long )state;
  __cil_tmp53 = __cil_tmp52 + 64;
  __cil_tmp54 = *((unsigned int *)__cil_tmp53);
  __cil_tmp55 = (u16 )__cil_tmp54;
  __cil_tmp56 = (void *)obuf;
  put_unaligned_be16(__cil_tmp55, __cil_tmp56);
  }
  {
  __cil_tmp57 = (unsigned long )state;
  __cil_tmp58 = __cil_tmp57 + 68;
  __cil_tmp59 = *((unsigned int *)__cil_tmp58);
  if (! __cil_tmp59) {
    goto _L;
  } else {
    {
    __cil_tmp60 = (unsigned long )state;
    __cil_tmp61 = __cil_tmp60 + 64;
    __cil_tmp62 = *((unsigned int *)__cil_tmp61);
    __cil_tmp63 = __cil_tmp62 & 255U;
    if (__cil_tmp63 == 255U) {
      goto _L;
    } else {
      {
      __cil_tmp64 = (unsigned long )state;
      __cil_tmp65 = __cil_tmp64 + 60;
      __cil_tmp66 = *((unsigned char *)__cil_tmp65);
      __cil_tmp67 = (int )__cil_tmp66;
      if (__cil_tmp67 & 128) {
        _L:
        {
        __cil_tmp68 = (unsigned long )state;
        __cil_tmp69 = __cil_tmp68 + 84;
        if (*((int *)__cil_tmp69)) {
          {
          __cil_tmp70 = (unsigned long )state;
          __cil_tmp71 = __cil_tmp70 + 68;
          if (*((unsigned int *)__cil_tmp71)) {
            {
            __cil_tmp72 = (unsigned long )state;
            __cil_tmp73 = __cil_tmp72 + 80;
            __cil_tmp74 = *((int *)__cil_tmp73);
            printk("<7>mppe_compress[%d]: rekeying\n", __cil_tmp74);
            }
          } else {
          }
          }
        } else {
        }
        }
        {
        mppe_rekey(state, 0);
        __cil_tmp75 = (unsigned long )state;
        __cil_tmp76 = __cil_tmp75 + 60;
        __cil_tmp77 = (unsigned long )state;
        __cil_tmp78 = __cil_tmp77 + 60;
        __cil_tmp79 = *((unsigned char *)__cil_tmp78);
        __cil_tmp80 = (int )__cil_tmp79;
        __cil_tmp81 = __cil_tmp80 | 128;
        *((unsigned char *)__cil_tmp76) = (unsigned char )__cil_tmp81;
        }
      } else {
      }
      }
    }
    }
  }
  }
  {
  __cil_tmp82 = obuf + 0;
  __cil_tmp83 = (unsigned long )state;
  __cil_tmp84 = __cil_tmp83 + 60;
  __cil_tmp85 = *((unsigned char *)__cil_tmp84);
  __cil_tmp86 = (int )__cil_tmp85;
  __cil_tmp87 = obuf + 0;
  __cil_tmp88 = *__cil_tmp87;
  __cil_tmp89 = (int )__cil_tmp88;
  __cil_tmp90 = __cil_tmp89 | __cil_tmp86;
  *__cil_tmp82 = (unsigned char )__cil_tmp90;
  __cil_tmp91 = (unsigned long )state;
  __cil_tmp92 = __cil_tmp91 + 60;
  __cil_tmp93 = (unsigned long )state;
  __cil_tmp94 = __cil_tmp93 + 60;
  __cil_tmp95 = *((unsigned char *)__cil_tmp94);
  __cil_tmp96 = (int )__cil_tmp95;
  __cil_tmp97 = __cil_tmp96 & -129;
  *((unsigned char *)__cil_tmp92) = (unsigned char )__cil_tmp97;
  obuf = obuf + 2;
  ibuf = ibuf + 2;
  isize = isize - 2;
  __cil_tmp98 = 0 * 40UL;
  __cil_tmp99 = (unsigned long )(sg_in) + __cil_tmp98;
  __cil_tmp100 = (struct scatterlist *)__cil_tmp99;
  sg_init_table(__cil_tmp100, 1U);
  __cil_tmp101 = 0 * 40UL;
  __cil_tmp102 = (unsigned long )(sg_out) + __cil_tmp101;
  __cil_tmp103 = (struct scatterlist *)__cil_tmp102;
  sg_init_table(__cil_tmp103, 1U);
  __cil_tmp104 = 0 * 40UL;
  __cil_tmp105 = (unsigned long )(sg_in) + __cil_tmp104;
  __cil_tmp106 = (struct scatterlist *)__cil_tmp105;
  __cil_tmp107 = (void const *)ibuf;
  __cil_tmp108 = (unsigned int )isize;
  setup_sg(__cil_tmp106, __cil_tmp107, __cil_tmp108);
  __cil_tmp109 = 0 * 40UL;
  __cil_tmp110 = (unsigned long )(sg_out) + __cil_tmp109;
  __cil_tmp111 = (struct scatterlist *)__cil_tmp110;
  __cil_tmp112 = (void const *)obuf;
  __cil_tmp113 = (unsigned int )osize;
  setup_sg(__cil_tmp111, __cil_tmp112, __cil_tmp113);
  __cil_tmp114 = 0 * 40UL;
  __cil_tmp115 = (unsigned long )(sg_out) + __cil_tmp114;
  __cil_tmp116 = (struct scatterlist *)__cil_tmp115;
  __cil_tmp117 = 0 * 40UL;
  __cil_tmp118 = (unsigned long )(sg_in) + __cil_tmp117;
  __cil_tmp119 = (struct scatterlist *)__cil_tmp118;
  __cil_tmp120 = (unsigned int )isize;
  tmp = crypto_blkcipher_encrypt(& desc, __cil_tmp116, __cil_tmp119, __cil_tmp120);
  }
  if (tmp != 0) {
    {
    printk("<7>crypto_cypher_encrypt failed\n");
    }
    return (-1);
  } else {
  }
  __cil_tmp121 = (unsigned long )state;
  __cil_tmp122 = __cil_tmp121 + 88;
  __cil_tmp123 = (__u32 )isize;
  __cil_tmp124 = (unsigned long )state;
  __cil_tmp125 = __cil_tmp124 + 88;
  __cil_tmp126 = *((__u32 *)__cil_tmp125);
  *((__u32 *)__cil_tmp122) = __cil_tmp126 + __cil_tmp123;
  __cil_tmp127 = 88 + 4;
  __cil_tmp128 = (unsigned long )state;
  __cil_tmp129 = __cil_tmp128 + __cil_tmp127;
  __cil_tmp130 = 88 + 4;
  __cil_tmp131 = (unsigned long )state;
  __cil_tmp132 = __cil_tmp131 + __cil_tmp130;
  __cil_tmp133 = *((__u32 *)__cil_tmp132);
  *((__u32 *)__cil_tmp129) = __cil_tmp133 + 1U;
  __cil_tmp134 = 88 + 8;
  __cil_tmp135 = (unsigned long )state;
  __cil_tmp136 = __cil_tmp135 + __cil_tmp134;
  __cil_tmp137 = (__u32 )osize;
  __cil_tmp138 = 88 + 8;
  __cil_tmp139 = (unsigned long )state;
  __cil_tmp140 = __cil_tmp139 + __cil_tmp138;
  __cil_tmp141 = *((__u32 *)__cil_tmp140);
  *((__u32 *)__cil_tmp136) = __cil_tmp141 + __cil_tmp137;
  __cil_tmp142 = 88 + 12;
  __cil_tmp143 = (unsigned long )state;
  __cil_tmp144 = __cil_tmp143 + __cil_tmp142;
  __cil_tmp145 = 88 + 12;
  __cil_tmp146 = (unsigned long )state;
  __cil_tmp147 = __cil_tmp146 + __cil_tmp145;
  __cil_tmp148 = *((__u32 *)__cil_tmp147);
  *((__u32 *)__cil_tmp144) = __cil_tmp148 + 1U;
  return (osize);
}
}
static void mppe_comp_stats(void *arg , struct compstat *stats )
{ struct ppp_mppe_state *state ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  {
  state = (struct ppp_mppe_state *)arg;
  __cil_tmp4 = (unsigned long )state;
  __cil_tmp5 = __cil_tmp4 + 88;
  *stats = *((struct compstat *)__cil_tmp5);
  return;
}
}
static int mppe_decomp_init(void *arg , unsigned char *options , int optlen , int unit ,
                            int hdrlen , int mru , int debug )
{ int tmp ;
  {
  {
  tmp = mppe_init(arg, options, optlen, unit, debug, "mppe_decomp_init");
  }
  return (tmp);
}
}
static void mppe_decomp_reset(void *arg )
{
  {
  return;
}
}
static int mppe_decompress(void *arg , unsigned char *ibuf , int isize , unsigned char *obuf ,
                           int osize )
{ struct ppp_mppe_state *state ;
  struct blkcipher_desc desc ;
  unsigned int ccount ;
  int flushed ;
  int sanity ;
  struct scatterlist sg_in[1] ;
  struct scatterlist sg_out[1] ;
  int tmp ;
  int tmp___0 ;
  struct blkcipher_desc *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  unsigned char __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned char *__cil_tmp35 ;
  unsigned char __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  unsigned char __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned char *__cil_tmp50 ;
  unsigned char __cil_tmp51 ;
  int __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  int __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned int __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned int __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned int __cil_tmp98 ;
  unsigned int __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  int __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned int __cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned int __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned int __cil_tmp116 ;
  unsigned int __cil_tmp117 ;
  unsigned int __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned int __cil_tmp123 ;
  unsigned int __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned char *__cil_tmp129 ;
  __u8 *__cil_tmp130 ;
  unsigned char *__cil_tmp131 ;
  __u8 *__cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  struct scatterlist *__cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  struct scatterlist *__cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  struct scatterlist *__cil_tmp141 ;
  void const *__cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  struct scatterlist *__cil_tmp145 ;
  void const *__cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  struct scatterlist *__cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  struct scatterlist *__cil_tmp152 ;
  unsigned char *__cil_tmp153 ;
  unsigned char __cil_tmp154 ;
  int __cil_tmp155 ;
  int __cil_tmp156 ;
  unsigned char *__cil_tmp157 ;
  unsigned char *__cil_tmp158 ;
  unsigned char *__cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  struct scatterlist *__cil_tmp162 ;
  unsigned char *__cil_tmp163 ;
  void const *__cil_tmp164 ;
  int __cil_tmp165 ;
  unsigned int __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  struct scatterlist *__cil_tmp169 ;
  unsigned char *__cil_tmp170 ;
  void const *__cil_tmp171 ;
  int __cil_tmp172 ;
  unsigned int __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  struct scatterlist *__cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  struct scatterlist *__cil_tmp179 ;
  int __cil_tmp180 ;
  unsigned int __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  __u32 __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  __u32 __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  unsigned long __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  __u32 __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  __u32 __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  __u32 __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  __u32 __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  unsigned long __cil_tmp213 ;
  int __cil_tmp214 ;
  {
  state = (struct ppp_mppe_state *)arg;
  __cil_tmp15 = & desc;
  *((struct crypto_blkcipher **)__cil_tmp15) = *((struct crypto_blkcipher **)state);
  __cil_tmp16 = (unsigned long )(& desc) + 8;
  *((void **)__cil_tmp16) = (void *)0;
  __cil_tmp17 = (unsigned long )(& desc) + 16;
  *((u32 *)__cil_tmp17) = 0U;
  __cil_tmp18 = ibuf + 4;
  __cil_tmp19 = *__cil_tmp18;
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = __cil_tmp20 & 240;
  flushed = __cil_tmp21 & 128;
  sanity = 0;
  if (isize <= 6) {
    {
    __cil_tmp22 = (unsigned long )state;
    __cil_tmp23 = __cil_tmp22 + 84;
    if (*((int *)__cil_tmp23)) {
      {
      __cil_tmp24 = (unsigned long )state;
      __cil_tmp25 = __cil_tmp24 + 80;
      __cil_tmp26 = *((int *)__cil_tmp25);
      printk("<7>mppe_decompress[%d]: short pkt (%d)\n", __cil_tmp26, isize);
      }
    } else {
    }
    }
    return (-1);
  } else {
  }
  {
  __cil_tmp27 = isize - 2;
  __cil_tmp28 = __cil_tmp27 - 1;
  if (osize < __cil_tmp28) {
    {
    __cil_tmp29 = (unsigned long )state;
    __cil_tmp30 = __cil_tmp29 + 80;
    __cil_tmp31 = *((int *)__cil_tmp30);
    __cil_tmp32 = isize - 2;
    __cil_tmp33 = __cil_tmp32 - 1;
    printk("<7>mppe_decompress[%d]: osize too small! (have: %d need: %d)\n", __cil_tmp31,
           osize, __cil_tmp33);
    }
    return (-1);
  } else {
  }
  }
  __cil_tmp34 = isize - 2;
  osize = __cil_tmp34 - 2;
  __cil_tmp35 = ibuf + 5;
  __cil_tmp36 = *__cil_tmp35;
  __cil_tmp37 = (int )__cil_tmp36;
  __cil_tmp38 = ibuf + 4;
  __cil_tmp39 = *__cil_tmp38;
  __cil_tmp40 = (int )__cil_tmp39;
  __cil_tmp41 = __cil_tmp40 & 15;
  __cil_tmp42 = __cil_tmp41 << 8;
  __cil_tmp43 = __cil_tmp42 + __cil_tmp37;
  ccount = (unsigned int )__cil_tmp43;
  {
  __cil_tmp44 = (unsigned long )state;
  __cil_tmp45 = __cil_tmp44 + 84;
  __cil_tmp46 = *((int *)__cil_tmp45);
  if (__cil_tmp46 >= 7) {
    {
    __cil_tmp47 = (unsigned long )state;
    __cil_tmp48 = __cil_tmp47 + 80;
    __cil_tmp49 = *((int *)__cil_tmp48);
    printk("<7>mppe_decompress[%d]: ccount %d\n", __cil_tmp49, ccount);
    }
  } else {
  }
  }
  {
  __cil_tmp50 = ibuf + 4;
  __cil_tmp51 = *__cil_tmp50;
  __cil_tmp52 = (int )__cil_tmp51;
  __cil_tmp53 = __cil_tmp52 & 240;
  __cil_tmp54 = __cil_tmp53 & 16;
  if (! __cil_tmp54) {
    {
    __cil_tmp55 = (unsigned long )state;
    __cil_tmp56 = __cil_tmp55 + 80;
    __cil_tmp57 = *((int *)__cil_tmp56);
    printk("<7>mppe_decompress[%d]: ENCRYPTED bit not set!\n", __cil_tmp57);
    __cil_tmp58 = (unsigned long )state;
    __cil_tmp59 = __cil_tmp58 + 76;
    __cil_tmp60 = (unsigned long )state;
    __cil_tmp61 = __cil_tmp60 + 76;
    __cil_tmp62 = *((int *)__cil_tmp61);
    *((int *)__cil_tmp59) = __cil_tmp62 + 100;
    sanity = 1;
    }
  } else {
  }
  }
  {
  __cil_tmp63 = (unsigned long )state;
  __cil_tmp64 = __cil_tmp63 + 68;
  __cil_tmp65 = *((unsigned int *)__cil_tmp64);
  if (! __cil_tmp65) {
    if (! flushed) {
      {
      __cil_tmp66 = (unsigned long )state;
      __cil_tmp67 = __cil_tmp66 + 80;
      __cil_tmp68 = *((int *)__cil_tmp67);
      printk("<7>mppe_decompress[%d]: FLUSHED bit not set in stateless mode!\n", __cil_tmp68);
      __cil_tmp69 = (unsigned long )state;
      __cil_tmp70 = __cil_tmp69 + 76;
      __cil_tmp71 = (unsigned long )state;
      __cil_tmp72 = __cil_tmp71 + 76;
      __cil_tmp73 = *((int *)__cil_tmp72);
      *((int *)__cil_tmp70) = __cil_tmp73 + 100;
      sanity = 1;
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp74 = (unsigned long )state;
  __cil_tmp75 = __cil_tmp74 + 68;
  if (*((unsigned int *)__cil_tmp75)) {
    {
    __cil_tmp76 = ccount & 255U;
    if (__cil_tmp76 == 255U) {
      if (! flushed) {
        {
        __cil_tmp77 = (unsigned long )state;
        __cil_tmp78 = __cil_tmp77 + 80;
        __cil_tmp79 = *((int *)__cil_tmp78);
        printk("<7>mppe_decompress[%d]: FLUSHED bit not set on flag packet!\n", __cil_tmp79);
        __cil_tmp80 = (unsigned long )state;
        __cil_tmp81 = __cil_tmp80 + 76;
        __cil_tmp82 = (unsigned long )state;
        __cil_tmp83 = __cil_tmp82 + 76;
        __cil_tmp84 = *((int *)__cil_tmp83);
        *((int *)__cil_tmp81) = __cil_tmp84 + 100;
        sanity = 1;
        }
      } else {
      }
    } else {
    }
    }
  } else {
  }
  }
  if (sanity) {
    {
    __cil_tmp85 = (unsigned long )state;
    __cil_tmp86 = __cil_tmp85 + 76;
    __cil_tmp87 = *((int *)__cil_tmp86);
    if (__cil_tmp87 < 1600) {
      return (-1);
    } else {
      return (-2);
    }
    }
  } else {
  }
  {
  __cil_tmp88 = (unsigned long )state;
  __cil_tmp89 = __cil_tmp88 + 68;
  __cil_tmp90 = *((unsigned int *)__cil_tmp89);
  if (! __cil_tmp90) {
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp91 = (unsigned long )state;
      __cil_tmp92 = __cil_tmp91 + 64;
      __cil_tmp93 = *((unsigned int *)__cil_tmp92);
      if (__cil_tmp93 != ccount) {
      } else {
        goto while_break;
      }
      }
      {
      mppe_rekey(state, 0);
      __cil_tmp94 = (unsigned long )state;
      __cil_tmp95 = __cil_tmp94 + 64;
      __cil_tmp96 = (unsigned long )state;
      __cil_tmp97 = __cil_tmp96 + 64;
      __cil_tmp98 = *((unsigned int *)__cil_tmp97);
      __cil_tmp99 = __cil_tmp98 + 1U;
      *((unsigned int *)__cil_tmp95) = __cil_tmp99 % 4096U;
      }
    }
    while_break: ;
    }
  } else {
    {
    __cil_tmp100 = (unsigned long )state;
    __cil_tmp101 = __cil_tmp100 + 72;
    __cil_tmp102 = *((int *)__cil_tmp101);
    if (! __cil_tmp102) {
      __cil_tmp103 = (unsigned long )state;
      __cil_tmp104 = __cil_tmp103 + 64;
      __cil_tmp105 = (unsigned long )state;
      __cil_tmp106 = __cil_tmp105 + 64;
      __cil_tmp107 = *((unsigned int *)__cil_tmp106);
      __cil_tmp108 = __cil_tmp107 + 1U;
      *((unsigned int *)__cil_tmp104) = __cil_tmp108 % 4096U;
      {
      __cil_tmp109 = (unsigned long )state;
      __cil_tmp110 = __cil_tmp109 + 64;
      __cil_tmp111 = *((unsigned int *)__cil_tmp110);
      if (ccount != __cil_tmp111) {
        __cil_tmp112 = (unsigned long )state;
        __cil_tmp113 = __cil_tmp112 + 72;
        *((int *)__cil_tmp113) = 1;
        return (-1);
      } else {
      }
      }
    } else
    if (! flushed) {
      return (-1);
    } else {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp114 = (unsigned long )state;
        __cil_tmp115 = __cil_tmp114 + 64;
        __cil_tmp116 = *((unsigned int *)__cil_tmp115);
        __cil_tmp117 = __cil_tmp116 & 4294967040U;
        __cil_tmp118 = ccount & 4294967040U;
        if (__cil_tmp118 != __cil_tmp117) {
        } else {
          goto while_break___0;
        }
        }
        {
        mppe_rekey(state, 0);
        __cil_tmp119 = (unsigned long )state;
        __cil_tmp120 = __cil_tmp119 + 64;
        __cil_tmp121 = (unsigned long )state;
        __cil_tmp122 = __cil_tmp121 + 64;
        __cil_tmp123 = *((unsigned int *)__cil_tmp122);
        __cil_tmp124 = __cil_tmp123 + 256U;
        *((unsigned int *)__cil_tmp120) = __cil_tmp124 % 4096U;
        }
      }
      while_break___0: ;
      }
      __cil_tmp125 = (unsigned long )state;
      __cil_tmp126 = __cil_tmp125 + 72;
      *((int *)__cil_tmp126) = 0;
      __cil_tmp127 = (unsigned long )state;
      __cil_tmp128 = __cil_tmp127 + 64;
      *((unsigned int *)__cil_tmp128) = ccount;
    }
    }
    if (flushed) {
      {
      mppe_rekey(state, 0);
      }
    } else {
    }
  }
  }
  {
  __cil_tmp129 = obuf + 0;
  __cil_tmp130 = ibuf + 0;
  *__cil_tmp129 = *__cil_tmp130;
  __cil_tmp131 = obuf + 1;
  __cil_tmp132 = ibuf + 1;
  *__cil_tmp131 = *__cil_tmp132;
  obuf = obuf + 2;
  ibuf = ibuf + 6;
  isize = isize - 6;
  __cil_tmp133 = 0 * 40UL;
  __cil_tmp134 = (unsigned long )(sg_in) + __cil_tmp133;
  __cil_tmp135 = (struct scatterlist *)__cil_tmp134;
  sg_init_table(__cil_tmp135, 1U);
  __cil_tmp136 = 0 * 40UL;
  __cil_tmp137 = (unsigned long )(sg_out) + __cil_tmp136;
  __cil_tmp138 = (struct scatterlist *)__cil_tmp137;
  sg_init_table(__cil_tmp138, 1U);
  __cil_tmp139 = 0 * 40UL;
  __cil_tmp140 = (unsigned long )(sg_in) + __cil_tmp139;
  __cil_tmp141 = (struct scatterlist *)__cil_tmp140;
  __cil_tmp142 = (void const *)ibuf;
  setup_sg(__cil_tmp141, __cil_tmp142, 1U);
  __cil_tmp143 = 0 * 40UL;
  __cil_tmp144 = (unsigned long )(sg_out) + __cil_tmp143;
  __cil_tmp145 = (struct scatterlist *)__cil_tmp144;
  __cil_tmp146 = (void const *)obuf;
  setup_sg(__cil_tmp145, __cil_tmp146, 1U);
  __cil_tmp147 = 0 * 40UL;
  __cil_tmp148 = (unsigned long )(sg_out) + __cil_tmp147;
  __cil_tmp149 = (struct scatterlist *)__cil_tmp148;
  __cil_tmp150 = 0 * 40UL;
  __cil_tmp151 = (unsigned long )(sg_in) + __cil_tmp150;
  __cil_tmp152 = (struct scatterlist *)__cil_tmp151;
  tmp = crypto_blkcipher_decrypt(& desc, __cil_tmp149, __cil_tmp152, 1U);
  }
  if (tmp != 0) {
    {
    printk("<7>crypto_cypher_decrypt failed\n");
    }
    return (-1);
  } else {
  }
  {
  __cil_tmp153 = obuf + 0;
  __cil_tmp154 = *__cil_tmp153;
  __cil_tmp155 = (int )__cil_tmp154;
  __cil_tmp156 = __cil_tmp155 & 1;
  if (__cil_tmp156 != 0) {
    __cil_tmp157 = obuf + 1;
    __cil_tmp158 = obuf + 0;
    *__cil_tmp157 = *__cil_tmp158;
    __cil_tmp159 = obuf + 0;
    *__cil_tmp159 = (unsigned char)0;
    obuf = obuf + 1;
    osize = osize + 1;
  } else {
  }
  }
  {
  __cil_tmp160 = 0 * 40UL;
  __cil_tmp161 = (unsigned long )(sg_in) + __cil_tmp160;
  __cil_tmp162 = (struct scatterlist *)__cil_tmp161;
  __cil_tmp163 = ibuf + 1;
  __cil_tmp164 = (void const *)__cil_tmp163;
  __cil_tmp165 = isize - 1;
  __cil_tmp166 = (unsigned int )__cil_tmp165;
  setup_sg(__cil_tmp162, __cil_tmp164, __cil_tmp166);
  __cil_tmp167 = 0 * 40UL;
  __cil_tmp168 = (unsigned long )(sg_out) + __cil_tmp167;
  __cil_tmp169 = (struct scatterlist *)__cil_tmp168;
  __cil_tmp170 = obuf + 1;
  __cil_tmp171 = (void const *)__cil_tmp170;
  __cil_tmp172 = osize - 1;
  __cil_tmp173 = (unsigned int )__cil_tmp172;
  setup_sg(__cil_tmp169, __cil_tmp171, __cil_tmp173);
  __cil_tmp174 = 0 * 40UL;
  __cil_tmp175 = (unsigned long )(sg_out) + __cil_tmp174;
  __cil_tmp176 = (struct scatterlist *)__cil_tmp175;
  __cil_tmp177 = 0 * 40UL;
  __cil_tmp178 = (unsigned long )(sg_in) + __cil_tmp177;
  __cil_tmp179 = (struct scatterlist *)__cil_tmp178;
  __cil_tmp180 = isize - 1;
  __cil_tmp181 = (unsigned int )__cil_tmp180;
  tmp___0 = crypto_blkcipher_decrypt(& desc, __cil_tmp176, __cil_tmp179, __cil_tmp181);
  }
  if (tmp___0) {
    {
    printk("<7>crypto_cypher_decrypt failed\n");
    }
    return (-1);
  } else {
  }
  __cil_tmp182 = (unsigned long )state;
  __cil_tmp183 = __cil_tmp182 + 88;
  __cil_tmp184 = (__u32 )osize;
  __cil_tmp185 = (unsigned long )state;
  __cil_tmp186 = __cil_tmp185 + 88;
  __cil_tmp187 = *((__u32 *)__cil_tmp186);
  *((__u32 *)__cil_tmp183) = __cil_tmp187 + __cil_tmp184;
  __cil_tmp188 = 88 + 4;
  __cil_tmp189 = (unsigned long )state;
  __cil_tmp190 = __cil_tmp189 + __cil_tmp188;
  __cil_tmp191 = 88 + 4;
  __cil_tmp192 = (unsigned long )state;
  __cil_tmp193 = __cil_tmp192 + __cil_tmp191;
  __cil_tmp194 = *((__u32 *)__cil_tmp193);
  *((__u32 *)__cil_tmp190) = __cil_tmp194 + 1U;
  __cil_tmp195 = 88 + 8;
  __cil_tmp196 = (unsigned long )state;
  __cil_tmp197 = __cil_tmp196 + __cil_tmp195;
  __cil_tmp198 = (__u32 )isize;
  __cil_tmp199 = 88 + 8;
  __cil_tmp200 = (unsigned long )state;
  __cil_tmp201 = __cil_tmp200 + __cil_tmp199;
  __cil_tmp202 = *((__u32 *)__cil_tmp201);
  *((__u32 *)__cil_tmp197) = __cil_tmp202 + __cil_tmp198;
  __cil_tmp203 = 88 + 12;
  __cil_tmp204 = (unsigned long )state;
  __cil_tmp205 = __cil_tmp204 + __cil_tmp203;
  __cil_tmp206 = 88 + 12;
  __cil_tmp207 = (unsigned long )state;
  __cil_tmp208 = __cil_tmp207 + __cil_tmp206;
  __cil_tmp209 = *((__u32 *)__cil_tmp208);
  *((__u32 *)__cil_tmp205) = __cil_tmp209 + 1U;
  __cil_tmp210 = (unsigned long )state;
  __cil_tmp211 = __cil_tmp210 + 76;
  __cil_tmp212 = (unsigned long )state;
  __cil_tmp213 = __cil_tmp212 + 76;
  __cil_tmp214 = *((int *)__cil_tmp213);
  *((int *)__cil_tmp211) = __cil_tmp214 >> 1;
  return (osize);
}
}
static void mppe_incomp(void *arg , unsigned char *ibuf , int icnt )
{ struct ppp_mppe_state *state ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  __u8 *__cil_tmp7 ;
  __u8 __cil_tmp8 ;
  int __cil_tmp9 ;
  __u8 *__cil_tmp10 ;
  __u8 __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  __u8 *__cil_tmp15 ;
  __u8 __cil_tmp16 ;
  int __cil_tmp17 ;
  __u8 *__cil_tmp18 ;
  __u8 __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  int __cil_tmp25 ;
  __u8 *__cil_tmp26 ;
  __u8 __cil_tmp27 ;
  int __cil_tmp28 ;
  __u8 *__cil_tmp29 ;
  __u8 __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  __u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  __u32 __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  __u32 __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  __u32 __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  __u32 __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  __u32 __cil_tmp61 ;
  {
  state = (struct ppp_mppe_state *)arg;
  {
  __cil_tmp5 = (unsigned long )state;
  __cil_tmp6 = __cil_tmp5 + 84;
  if (*((int *)__cil_tmp6)) {
    {
    __cil_tmp7 = ibuf + 3;
    __cil_tmp8 = *__cil_tmp7;
    __cil_tmp9 = (int )__cil_tmp8;
    __cil_tmp10 = ibuf + 2;
    __cil_tmp11 = *__cil_tmp10;
    __cil_tmp12 = (int )__cil_tmp11;
    __cil_tmp13 = __cil_tmp12 << 8;
    __cil_tmp14 = __cil_tmp13 + __cil_tmp9;
    if (__cil_tmp14 >= 33) {
      {
      __cil_tmp15 = ibuf + 3;
      __cil_tmp16 = *__cil_tmp15;
      __cil_tmp17 = (int )__cil_tmp16;
      __cil_tmp18 = ibuf + 2;
      __cil_tmp19 = *__cil_tmp18;
      __cil_tmp20 = (int )__cil_tmp19;
      __cil_tmp21 = __cil_tmp20 << 8;
      __cil_tmp22 = __cil_tmp21 + __cil_tmp17;
      if (__cil_tmp22 <= 250) {
        {
        __cil_tmp23 = (unsigned long )state;
        __cil_tmp24 = __cil_tmp23 + 80;
        __cil_tmp25 = *((int *)__cil_tmp24);
        __cil_tmp26 = ibuf + 3;
        __cil_tmp27 = *__cil_tmp26;
        __cil_tmp28 = (int )__cil_tmp27;
        __cil_tmp29 = ibuf + 2;
        __cil_tmp30 = *__cil_tmp29;
        __cil_tmp31 = (int )__cil_tmp30;
        __cil_tmp32 = __cil_tmp31 << 8;
        __cil_tmp33 = __cil_tmp32 + __cil_tmp28;
        printk("<7>mppe_incomp[%d]: incompressible (unencrypted) data! (proto %04x)\n",
               __cil_tmp25, __cil_tmp33);
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
  __cil_tmp34 = 88 + 16;
  __cil_tmp35 = (unsigned long )state;
  __cil_tmp36 = __cil_tmp35 + __cil_tmp34;
  __cil_tmp37 = (__u32 )icnt;
  __cil_tmp38 = 88 + 16;
  __cil_tmp39 = (unsigned long )state;
  __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
  __cil_tmp41 = *((__u32 *)__cil_tmp40);
  *((__u32 *)__cil_tmp36) = __cil_tmp41 + __cil_tmp37;
  __cil_tmp42 = 88 + 20;
  __cil_tmp43 = (unsigned long )state;
  __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
  __cil_tmp45 = 88 + 20;
  __cil_tmp46 = (unsigned long )state;
  __cil_tmp47 = __cil_tmp46 + __cil_tmp45;
  __cil_tmp48 = *((__u32 *)__cil_tmp47);
  *((__u32 *)__cil_tmp44) = __cil_tmp48 + 1U;
  __cil_tmp49 = (unsigned long )state;
  __cil_tmp50 = __cil_tmp49 + 88;
  __cil_tmp51 = (__u32 )icnt;
  __cil_tmp52 = (unsigned long )state;
  __cil_tmp53 = __cil_tmp52 + 88;
  __cil_tmp54 = *((__u32 *)__cil_tmp53);
  *((__u32 *)__cil_tmp50) = __cil_tmp54 + __cil_tmp51;
  __cil_tmp55 = 88 + 4;
  __cil_tmp56 = (unsigned long )state;
  __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
  __cil_tmp58 = 88 + 4;
  __cil_tmp59 = (unsigned long )state;
  __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
  __cil_tmp61 = *((__u32 *)__cil_tmp60);
  *((__u32 *)__cil_tmp57) = __cil_tmp61 + 1U;
  return;
}
}
static struct compressor ppp_mppe =
     {18, & mppe_alloc, & mppe_free, & mppe_comp_init, & mppe_comp_reset, & mppe_compress,
    & mppe_comp_stats, & mppe_alloc, & mppe_free, & mppe_decomp_init, & mppe_decomp_reset,
    & mppe_decompress, & mppe_incomp, & mppe_comp_stats, & __this_module, 4U};
static int ppp_mppe_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int ppp_mppe_init(void)
{ int answer ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  u32 __cil_tmp5 ;
  u32 __cil_tmp6 ;
  u32 __cil_tmp7 ;
  u32 __cil_tmp8 ;
  void const *__cil_tmp9 ;
  {
  {
  __cil_tmp5 = (u32 )0;
  __cil_tmp6 = (u32 )128;
  tmp = crypto_has_blkcipher("ecb(arc4)", __cil_tmp5, __cil_tmp6);
  }
  if (tmp) {
    {
    __cil_tmp7 = (u32 )0;
    __cil_tmp8 = (u32 )128;
    tmp___0 = crypto_has_hash("sha1", __cil_tmp7, __cil_tmp8);
    }
    if (tmp___0) {
    } else {
      return (-19);
    }
  } else {
    return (-19);
  }
  {
  tmp___1 = kmalloc(80UL, 208U);
  sha_pad = (struct sha_pad *)tmp___1;
  }
  if (! sha_pad) {
    return (-12);
  } else {
  }
  {
  sha_pad_init(sha_pad);
  answer = ppp_register_compressor(& ppp_mppe);
  }
  if (answer == 0) {
    {
    printk("<6>PPP MPPE Compression module registered\n");
    }
  } else {
    {
    __cil_tmp9 = (void const *)sha_pad;
    kfree(__cil_tmp9);
    }
  }
  return (answer);
}
}
static void ppp_mppe_cleanup(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void ppp_mppe_cleanup(void)
{ void const *__cil_tmp1 ;
  {
  {
  ppp_unregister_compressor(& ppp_mppe);
  __cil_tmp1 = (void const *)sha_pad;
  kfree(__cil_tmp1);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = ppp_mppe_init();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  ppp_mppe_cleanup();
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ unsigned char *var_mppe_alloc_4_p0 ;
  int var_mppe_alloc_4_p1 ;
  void *var_mppe_free_5_p0 ;
  void *var_mppe_comp_init_7_p0 ;
  unsigned char *var_mppe_comp_init_7_p1 ;
  int var_mppe_comp_init_7_p2 ;
  int var_mppe_comp_init_7_p3 ;
  int var_mppe_comp_init_7_p4 ;
  int var_mppe_comp_init_7_p5 ;
  void *var_mppe_comp_reset_8_p0 ;
  void *var_mppe_compress_9_p0 ;
  unsigned char *var_mppe_compress_9_p1 ;
  unsigned char *var_mppe_compress_9_p2 ;
  int var_mppe_compress_9_p3 ;
  int var_mppe_compress_9_p4 ;
  void *var_mppe_comp_stats_10_p0 ;
  struct compstat *var_group1 ;
  void *var_mppe_decomp_init_11_p0 ;
  unsigned char *var_mppe_decomp_init_11_p1 ;
  int var_mppe_decomp_init_11_p2 ;
  int var_mppe_decomp_init_11_p3 ;
  int var_mppe_decomp_init_11_p4 ;
  int var_mppe_decomp_init_11_p5 ;
  int var_mppe_decomp_init_11_p6 ;
  void *var_mppe_decomp_reset_12_p0 ;
  void *var_mppe_decompress_13_p0 ;
  unsigned char *var_mppe_decompress_13_p1 ;
  int var_mppe_decompress_13_p2 ;
  unsigned char *var_mppe_decompress_13_p3 ;
  int var_mppe_decompress_13_p4 ;
  void *var_mppe_incomp_14_p0 ;
  unsigned char *var_mppe_incomp_14_p1 ;
  int var_mppe_incomp_14_p2 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = ppp_mppe_init();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      goto while_break;
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    if (tmp___0 == 0) {
      goto case_0;
    } else
    if (tmp___0 == 1) {
      goto case_1;
    } else
    if (tmp___0 == 2) {
      goto case_2;
    } else
    if (tmp___0 == 3) {
      goto case_3;
    } else
    if (tmp___0 == 4) {
      goto case_4;
    } else
    if (tmp___0 == 5) {
      goto case_5;
    } else
    if (tmp___0 == 6) {
      goto case_6;
    } else
    if (tmp___0 == 7) {
      goto case_7;
    } else
    if (tmp___0 == 8) {
      goto case_8;
    } else
    if (tmp___0 == 9) {
      goto case_9;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        mppe_alloc(var_mppe_alloc_4_p0, var_mppe_alloc_4_p1);
        }
        goto switch_break;
        case_1:
        {
        mppe_free(var_mppe_free_5_p0);
        }
        goto switch_break;
        case_2:
        {
        mppe_comp_init(var_mppe_comp_init_7_p0, var_mppe_comp_init_7_p1, var_mppe_comp_init_7_p2,
                       var_mppe_comp_init_7_p3, var_mppe_comp_init_7_p4, var_mppe_comp_init_7_p5);
        }
        goto switch_break;
        case_3:
        {
        mppe_comp_reset(var_mppe_comp_reset_8_p0);
        }
        goto switch_break;
        case_4:
        {
        mppe_compress(var_mppe_compress_9_p0, var_mppe_compress_9_p1, var_mppe_compress_9_p2,
                      var_mppe_compress_9_p3, var_mppe_compress_9_p4);
        }
        goto switch_break;
        case_5:
        {
        mppe_comp_stats(var_mppe_comp_stats_10_p0, var_group1);
        }
        goto switch_break;
        case_6:
        {
        mppe_decomp_init(var_mppe_decomp_init_11_p0, var_mppe_decomp_init_11_p1, var_mppe_decomp_init_11_p2,
                         var_mppe_decomp_init_11_p3, var_mppe_decomp_init_11_p4, var_mppe_decomp_init_11_p5,
                         var_mppe_decomp_init_11_p6);
        }
        goto switch_break;
        case_7:
        {
        mppe_decomp_reset(var_mppe_decomp_reset_12_p0);
        }
        goto switch_break;
        case_8:
        {
        mppe_decompress(var_mppe_decompress_13_p0, var_mppe_decompress_13_p1, var_mppe_decompress_13_p2,
                        var_mppe_decompress_13_p3, var_mppe_decompress_13_p4);
        }
        goto switch_break;
        case_9:
        {
        mppe_incomp(var_mppe_incomp_14_p0, var_mppe_incomp_14_p1, var_mppe_incomp_14_p2);
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
  {
  ppp_mppe_cleanup();
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
struct crypto_tfm *crypto_alloc_base(const char *arg0, u32 arg1, u32 arg2) {
  return (struct crypto_tfm *)external_alloc();
}
void crypto_destroy_tfm(void *arg0, struct crypto_tfm *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int crypto_has_alg(const char *arg0, u32 arg1, u32 arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ppp_register_compressor(struct compressor *arg0) {
  return __VERIFIER_nondet_int();
}
void ppp_unregister_compressor(struct compressor *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
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
