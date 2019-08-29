/* evalvars.c */
void evalvars_init(void);
void evalvars_clear(void);
int garbage_collect_vimvars(int copyID);
int garbage_collect_scriptvars(int copyID);
void set_internal_string_var(char_u *name, char_u *value);
void prepare_vimvar(int idx, typval_T *save_tv);
void restore_vimvar(int idx, typval_T *save_tv);
void ex_let(exarg_T *eap);
void ex_const(exarg_T *eap);
int ex_let_vars(char_u *arg_start, typval_T *tv, int copy, int semicolon, int var_count, int is_const, char_u *op);
char_u *skip_var_list(char_u *arg, int *var_count, int *semicolon);
void list_hashtable_vars(hashtab_T *ht, char *prefix, int empty, int *first);
void ex_unlet(exarg_T *eap);
void ex_lockvar(exarg_T *eap);
int do_unlet(char_u *name, int forceit);
char_u *get_user_var_name(expand_T *xp, int idx);
void set_vim_var_nr(int idx, varnumber_T val);
typval_T *get_vim_var_tv(int idx);
varnumber_T get_vim_var_nr(int idx);
char_u *get_vim_var_str(int idx);
list_T *get_vim_var_list(int idx);
dict_T *get_vim_var_dict(int idx);
void set_vim_var_char(int c);
void set_vcount(long count, long count1, int set_prevcount);
void save_vimvars(vimvars_save_T *vvsave);
void restore_vimvars(vimvars_save_T *vvsave);
void set_vim_var_string(int idx, char_u *val, int len);
void set_vim_var_list(int idx, list_T *val);
void set_vim_var_dict(int idx, dict_T *val);
void set_reg_var(int c);
char_u *v_exception(char_u *oldval);
char_u *v_throwpoint(char_u *oldval);
char_u *set_cmdarg(exarg_T *eap, char_u *oldarg);
int get_var_tv(char_u *name, int len, typval_T *rettv, dictitem_T **dip, int verbose, int no_autoload);
void check_vars(char_u *name, int len);
dictitem_T *find_var(char_u *name, hashtab_T **htp, int no_autoload);
dictitem_T *find_var_in_ht(hashtab_T *ht, int htname, char_u *varname, int no_autoload);
hashtab_T *find_var_ht(char_u *name, char_u **varname);
char_u *get_var_value(char_u *name);
void new_script_vars(scid_T id);
void init_var_dict(dict_T *dict, dictitem_T *dict_var, int scope);
void unref_var_dict(dict_T *dict);
void vars_clear(hashtab_T *ht);
void vars_clear_ext(hashtab_T *ht, int free_val);
void delete_var(hashtab_T *ht, hashitem_T *hi);
void set_var(char_u *name, typval_T *tv, int copy);
void set_var_const(char_u *name, typval_T *tv, int copy, int is_const);
int var_check_ro(int flags, char_u *name, int use_gettext);
int var_check_fixed(int flags, char_u *name, int use_gettext);
int var_check_func_name(char_u *name, int new_var);
int var_check_lock(int lock, char_u *name, int use_gettext);
int valid_varname(char_u *varname);
void reset_v_option_vars(void);
void assert_error(garray_T *gap);
int var_exists(char_u *var);
void f_gettabvar(typval_T *argvars, typval_T *rettv);
void f_gettabwinvar(typval_T *argvars, typval_T *rettv);
void f_getwinvar(typval_T *argvars, typval_T *rettv);
void f_settabvar(typval_T *argvars, typval_T *rettv);
void f_settabwinvar(typval_T *argvars, typval_T *rettv);
void f_setwinvar(typval_T *argvars, typval_T *rettv);
/* vim: set ft=c : */