extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct task_struct;
struct task_struct;
struct task_struct;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
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
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct task_struct;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   u64 rc_type ;
   char const *name ;
   spinlock_t lock ;
};
struct rc_map_list {
   struct list_head list ;
   struct rc_map map ;
};
struct task_struct;
struct __anonstruct_220 {
   int : 0 ;
};
long ldv__builtin_expect(long val , long res ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern int rc_map_register(struct rc_map_list *map ) ;
extern void rc_map_unregister(struct rc_map_list *map ) ;
int init_module(void) ;
void cleanup_module(void) ;
static struct rc_map_table rc5_hauppauge_new[172] =
  { {(u32 )7739, (u32 )353},
        {(u32 )7741, (u32 )356},
        {(u32 )7708, (u32 )377},
        {(u32 )7704, (u32 )393},
        {(u32 )7705, (u32 )392},
        {(u32 )7706, (u32 )212},
        {(u32 )7707, (u32 )365},
        {(u32 )7692, (u32 )385},
        {(u32 )7700, (u32 )103},
        {(u32 )7701, (u32 )108},
        {(u32 )7702, (u32 )105},
        {(u32 )7703, (u32 )106},
        {(u32 )7717, (u32 )352},
        {(u32 )7711, (u32 )174},
        {(u32 )7693, (u32 )139},
        {(u32 )7696, (u32 )115},
        {(u32 )7697, (u32 )114},
        {(u32 )7698, (u32 )412},
        {(u32 )7695, (u32 )113},
        {(u32 )7712, (u32 )402},
        {(u32 )7713, (u32 )403},
        {(u32 )7735, (u32 )167},
        {(u32 )7734, (u32 )128},
        {(u32 )7730, (u32 )168},
        {(u32 )7733, (u32 )207},
        {(u32 )7732, (u32 )208},
        {(u32 )7716, (u32 )165},
        {(u32 )7728, (u32 )119},
        {(u32 )7710, (u32 )163},
        {(u32 )7681, (u32 )2},
        {(u32 )7682, (u32 )3},
        {(u32 )7683, (u32 )4},
        {(u32 )7684, (u32 )5},
        {(u32 )7685, (u32 )6},
        {(u32 )7686, (u32 )7},
        {(u32 )7687, (u32 )8},
        {(u32 )7688, (u32 )9},
        {(u32 )7689, (u32 )10},
        {(u32 )7690, (u32 )388},
        {(u32 )7680, (u32 )11},
        {(u32 )7694, (u32 )370},
        {(u32 )7691, (u32 )398},
        {(u32 )7726, (u32 )399},
        {(u32 )7736, (u32 )400},
        {(u32 )7721, (u32 )401},
        {(u32 )7997, (u32 )356},
        {(u32 )7995, (u32 )353},
        {(u32 )7936, (u32 )11},
        {(u32 )7937, (u32 )2},
        {(u32 )7938, (u32 )3},
        {(u32 )7939, (u32 )4},
        {(u32 )7940, (u32 )5},
        {(u32 )7941, (u32 )6},
        {(u32 )7942, (u32 )7},
        {(u32 )7943, (u32 )8},
        {(u32 )7944, (u32 )9},
        {(u32 )7945, (u32 )10},
        {(u32 )7967, (u32 )174},
        {(u32 )7949, (u32 )139},
        {(u32 )7952, (u32 )115},
        {(u32 )7953, (u32 )114},
        {(u32 )7968, (u32 )402},
        {(u32 )7969, (u32 )403},
        {(u32 )7973, (u32 )28},
        {(u32 )7947, (u32 )398},
        {(u32 )7982, (u32 )399},
        {(u32 )7992, (u32 )400},
        {(u32 )7977, (u32 )401},
        {(u32 )7951, (u32 )113},
        {(u32 )7948, (u32 )385},
        {(u32 )7996, (u32 )372},
        {(u32 )7986, (u32 )168},
        {(u32 )7989, (u32 )207},
        {(u32 )7988, (u32 )208},
        {(u32 )7991, (u32 )167},
        {(u32 )7990, (u32 )128},
        {(u32 )7984, (u32 )119},
        {(u32 )7972, (u32 )165},
        {(u32 )7966, (u32 )163},
        {(u32 )7424, (u32 )11},
        {(u32 )7425, (u32 )2},
        {(u32 )7426, (u32 )3},
        {(u32 )7427, (u32 )4},
        {(u32 )7428, (u32 )5},
        {(u32 )7429, (u32 )6},
        {(u32 )7430, (u32 )7},
        {(u32 )7431, (u32 )8},
        {(u32 )7432, (u32 )9},
        {(u32 )7433, (u32 )10},
        {(u32 )7434, (u32 )388},
        {(u32 )7437, (u32 )139},
        {(u32 )7439, (u32 )113},
        {(u32 )7440, (u32 )115},
        {(u32 )7441, (u32 )114},
        {(u32 )7442, (u32 )412},
        {(u32 )7444, (u32 )103},
        {(u32 )7445, (u32 )108},
        {(u32 )7446, (u32 )105},
        {(u32 )7447, (u32 )106},
        {(u32 )7452, (u32 )377},
        {(u32 )7454, (u32 )407},
        {(u32 )7455, (u32 )174},
        {(u32 )7456, (u32 )402},
        {(u32 )7457, (u32 )403},
        {(u32 )7460, (u32 )405},
        {(u32 )7461, (u32 )352},
        {(u32 )7472, (u32 )119},
        {(u32 )7474, (u32 )168},
        {(u32 )7476, (u32 )208},
        {(u32 )7477, (u32 )207},
        {(u32 )7478, (u32 )128},
        {(u32 )7479, (u32 )167},
        {(u32 )7483, (u32 )354},
        {(u32 )7485, (u32 )116},
        {(u32 )7487, (u32 )102},
        {(u32 )7227, (u32 )354},
        {(u32 )7229, (u32 )116},
        {(u32 )7188, (u32 )103},
        {(u32 )7189, (u32 )108},
        {(u32 )7190, (u32 )105},
        {(u32 )7191, (u32 )106},
        {(u32 )7205, (u32 )352},
        {(u32 )7168, (u32 )11},
        {(u32 )7169, (u32 )2},
        {(u32 )7170, (u32 )3},
        {(u32 )7171, (u32 )4},
        {(u32 )7172, (u32 )5},
        {(u32 )7173, (u32 )6},
        {(u32 )7174, (u32 )7},
        {(u32 )7175, (u32 )8},
        {(u32 )7176, (u32 )9},
        {(u32 )7177, (u32 )10},
        {(u32 )7199, (u32 )174},
        {(u32 )7181, (u32 )139},
        {(u32 )7196, (u32 )377},
        {(u32 )7184, (u32 )115},
        {(u32 )7185, (u32 )114},
        {(u32 )7200, (u32 )402},
        {(u32 )7201, (u32 )403},
        {(u32 )7183, (u32 )113},
        {(u32 )7186, (u32 )412},
        {(u32 )7222, (u32 )128},
        {(u32 )7223, (u32 )167},
        {(u32 )7204, (u32 )405},
        {(u32 )7198, (u32 )407},
        {(u32 )7178, (u32 )388},
        {(u32 )7182, (u32 )370},
        {(u32 )7218, (u32 )168},
        {(u32 )7216, (u32 )119},
        {(u32 )7221, (u32 )207},
        {(u32 )7220, (u32 )208},
        {(u32 )31, (u32 )377},
        {(u32 )32, (u32 )402},
        {(u32 )12, (u32 )385},
        {(u32 )17, (u32 )114},
        {(u32 )46, (u32 )372},
        {(u32 )16, (u32 )115},
        {(u32 )13, (u32 )113},
        {(u32 )33, (u32 )403},
        {(u32 )34, (u32 )393},
        {(u32 )1, (u32 )2},
        {(u32 )2, (u32 )3},
        {(u32 )3, (u32 )4},
        {(u32 )4, (u32 )5},
        {(u32 )5, (u32 )6},
        {(u32 )6, (u32 )7},
        {(u32 )7, (u32 )8},
        {(u32 )8, (u32 )9},
        {(u32 )9, (u32 )10},
        {(u32 )30, (u32 )398},
        {(u32 )0, (u32 )11},
        {(u32 )38, (u32 )142}};
static struct rc_map_list rc5_hauppauge_new_map = {{(struct list_head *)0, (struct list_head *)0}, {rc5_hauppauge_new, (unsigned int )(sizeof(rc5_hauppauge_new) / sizeof(rc5_hauppauge_new[0]) + sizeof(struct __anonstruct_220 )),
                                                     0U, 0U, (u64 )1, "rc-hauppauge",
                                                     {{{{{0U}}, 0U, 0U, (void *)0}}}}};
static int init_rc_map_rc5_hauppauge_new(void) __attribute__((__section__(".init.text"),
__no_instrument_function__)) ;
static int init_rc_map_rc5_hauppauge_new(void)
{ int tmp ;
  {
  {
  tmp = rc_map_register(& rc5_hauppauge_new_map);
  }
  return (tmp);
}
}
static void exit_rc_map_rc5_hauppauge_new(void) __attribute__((__section__(".exit.text"),
__no_instrument_function__)) ;
static void exit_rc_map_rc5_hauppauge_new(void)
{
  {
  {
  rc_map_unregister(& rc5_hauppauge_new_map);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = init_rc_map_rc5_hauppauge_new();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  exit_rc_map_rc5_hauppauge_new();
  }
  return;
}
}
static char const __mod_license293[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author294[50] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'M',
        (char const )'a', (char const )'u', (char const )'r', (char const )'o',
        (char const )' ', (char const )'C', (char const )'a', (char const )'r',
        (char const )'v', (char const )'a', (char const )'l', (char const )'h',
        (char const )'o', (char const )' ', (char const )'C', (char const )'h',
        (char const )'e', (char const )'h', (char const )'a', (char const )'b',
        (char const )' ', (char const )'<', (char const )'m', (char const )'c',
        (char const )'h', (char const )'e', (char const )'h', (char const )'a',
        (char const )'b', (char const )'@', (char const )'r', (char const )'e',
        (char const )'d', (char const )'h', (char const )'a', (char const )'t',
        (char const )'.', (char const )'c', (char const )'o', (char const )'m',
        (char const )'>', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = init_rc_map_rc5_hauppauge_new();
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
    {
    goto switch_default;
    if (0) {
      switch_default:
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  while_break: ;
  }
  {
  exit_rc_map_rc5_hauppauge_new();
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
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int rc_map_register(struct rc_map_list *arg0) {
  return __VERIFIER_nondet_int();
}
void rc_map_unregister(struct rc_map_list *arg0) {
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
