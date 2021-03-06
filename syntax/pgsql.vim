" Vim syntax file
" Language:     SQL, PL/pgSQL, PL/… (PostgreSQL 9.5)
" Author:       space::tekk
" Maintainer:   Lifepillar
" Version:      1.2.0
" License:      This file is placed in the public domain.

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore
syn sync ccomment sqlComment
syn sync minlines=10 maxlines=100

syn keyword sqlSpecial contained false null true

" Constants
syn keyword sqlConstant contained debug5 debug4 debug3 debug2 debug1 log notice warning
syn keyword sqlConstant contained error fatal panic
" These are not really constants, but it's nice to see them highlighted
syn keyword sqlConstant contained adminpack auth_delay auto_explain btree_gin btree_gist
syn keyword sqlConstant contained dict_int dict_xsyn dummy_seclabel earthdistance file_fdw fuzzystrmatch
syn keyword sqlConstant contained intagg intarray isn lo pageinspect passwordcheck pg_freespacemap
syn keyword sqlConstant contained pldbgapi plperl plperlu plpgsql plpgsqlu plpython plpythonu
syn keyword sqlConstant contained pltcl pltclu postgis postgis_topology postgres_fdw sepgsql spi sslinfo
syn keyword sqlConstant contained tablefunc tcn test_decoding test_parser test_shm_mq uuid-ossp xml2

syn match   sqlIsKeyword /\<\h\w*\>/ contains=sqlStatement,sqlKeyword,sqlConstant,sqlSpecial,sqlType,sqlOperator,sqlOption,sqlErrorCode,sqlPsqlKeyword
syn match   sqlIsFunction /\<\h\w*\ze(/ contains=sqlFunction

" SQL keywords (see Table C-1 in App. C of PostgreSQL manual)
syn keyword sqlKeyword contained abs absent absolute access according action ada add admin after array
syn keyword sqlKeyword contained aggregate allocate also always analyse are array_agg array_max_cardinality as
syn keyword sqlKeyword contained asc asensitive assertion assignment asymmetric at atomic attribute attributes
syn keyword sqlKeyword contained authorization avg backward base64 before begin_frame begin_partition
syn keyword sqlKeyword contained bernoulli binary blob blocked bom both breadth by cache call called
syn keyword sqlKeyword contained cardinality cascade cascaded case cast catalog catalog_name ceil ceiling chain
syn keyword sqlKeyword contained characteristics characters character_length character_set_catalog
syn keyword sqlKeyword contained character_set_name character_set_schema char_length check class
syn keyword sqlKeyword contained class_origin clob coalesce cobol collate collation
syn keyword sqlKeyword contained collation_catalog collation_name collation_schema collect column columns
syn keyword sqlKeyword contained column_name command_function command_function_code comments committed
syn keyword sqlKeyword contained concurrently condition condition_number configuration conflict connect
syn keyword sqlKeyword contained connection connection_name constraint constraint_catalog
syn keyword sqlKeyword contained constraint_name constraint_schema constructor content continue contains
syn keyword sqlKeyword contained control conversion convert corr corresponding cost count covar_pop covar_samp
syn keyword sqlKeyword contained cross csv cume_dist current current_catalog current_date
syn keyword sqlKeyword contained current_default_transform_group current_path current_role current_row
syn keyword sqlKeyword contained current_schema current_time current_timestamp current_transform_group_for_type
syn keyword sqlKeyword contained current_user cursor cursor_name cycle data database datalink
syn keyword sqlKeyword contained datetime_interval_code datetime_interval_precision day db dec
syn keyword sqlKeyword contained default defaults deferrable deferred defined definer degree delimiter
syn keyword sqlKeyword contained delimiters dense_rank depth deref derived desc describe descriptor
syn keyword sqlKeyword contained deterministic diagnostics dictionary disable disconnect dispatch
syn keyword sqlKeyword contained dlnewcopy dlpreviouscopy dlurlcomplete dlurlcompleteonly dlurlcompletewrite
syn keyword sqlKeyword contained dlurlpath dlurlpathonly dlurlpathwrite dlurlscheme dlurlserver dlvalue
syn keyword sqlKeyword contained document domain dynamic dynamic_function dynamic_function_code each element
syn keyword sqlKeyword contained else empty enable encoding encrypted end-exec end_frame end_partition
syn keyword sqlKeyword contained enforced equals event every exception exclude excluding exclusive exec exp
syn keyword sqlKeyword contained expression extension external extract family file filter final first
syn keyword sqlKeyword contained first_value flag floor following for force foreign fortran forward found
syn keyword sqlKeyword contained frame_row free freeze from fs full function functions fusion general generated
syn keyword sqlKeyword contained get global go goto granted greatest group grouping groups handler having
syn keyword sqlKeyword contained header hex hierarchy hold hour id identity if ignore immediate immediately
syn keyword sqlKeyword contained immutable implementation implicit including increment indent index
syn keyword sqlKeyword contained indexes indicator inherit inherits initially inline inner inout input
syn keyword sqlKeyword contained insensitive instance instantiable instead integrity intersection into invoker
syn keyword sqlKeyword contained is isnull isolation join key key_member key_type lag language large last
syn keyword sqlKeyword contained last_value lateral lead leading leakproof least left length level library
syn keyword sqlKeyword contained like_regex limit link ln local localtime localtimestamp location
syn keyword sqlKeyword contained locator locked logged lower map mapping match matched materialized max
syn keyword sqlKeyword contained maxvalue max_cardinality member merge message_length message_octet_length
syn keyword sqlKeyword contained message_text method min minute minvalue mod mode modifies module month more
syn keyword sqlKeyword contained multiset mumps name names namespace national natural nchar nclob nesting
syn keyword sqlKeyword contained new next nfc nfd nfkc nfkd nil no none normalize normalized not nothing
syn keyword sqlKeyword contained notnull nowait nth_value ntile nullable nullif nulls number object
syn keyword sqlKeyword contained occurrences_regex octets octet_length of off offset oids old on only open
syn keyword sqlKeyword contained operator option options or order ordering ordinality others out outer output
syn keyword sqlKeyword contained over overlaps overlay overriding owned owner pad parameter parameter_mode
syn keyword sqlKeyword contained parameter_name parameter_ordinal_position parameter_specific_catalog
syn keyword sqlKeyword contained parameter_specific_name parameter_specific_schema parser partial partition
syn keyword sqlKeyword contained pascal passing passthrough password percent percentile_cont percentile_disc
syn keyword sqlKeyword contained percent_rank period permission placing plans pli policy portion position
syn keyword sqlKeyword contained position_regex power precedes preceding precision preserve
syn keyword sqlKeyword contained primary prior privileges procedural procedure program public quote range
syn keyword sqlKeyword contained read reads real recheck recovery recursive ref references referencing
syn keyword sqlKeyword contained regr_avgx regr_avgy regr_count regr_intercept regr_r2 regr_slope
syn keyword sqlKeyword contained regr_sxx regr_sxy regr_syy relative rename repeatable
syn keyword sqlKeyword contained replica requiring respect restart restore restrict result return
syn keyword sqlKeyword contained returned_cardinality returned_length returned_octet_length returned_sqlstate
syn keyword sqlKeyword contained returning returns right role rollup routine routine_catalog routine_name
syn keyword sqlKeyword contained routine_schema row rows row_count row_number rule scale schema schema_name
syn keyword sqlKeyword contained scope scope_catalog scope_name scope_schema scroll search second section
syn keyword sqlKeyword contained selective self sensitive sequence sequences serializable server
syn keyword sqlKeyword contained server_name session session_user setof sets share simple size
syn keyword sqlKeyword contained skip snapshot some source space specific specifictype specific_name sql
syn keyword sqlKeyword contained sqlcode sqlerror sqlexception sqlstate sqlwarning sqrt stable standalone
syn keyword sqlKeyword contained state statement static statistics stddev_pop stddev_samp stdin stdout storage
syn keyword sqlKeyword contained strict strip structure style subclass_origin submultiset substring
syn keyword sqlKeyword contained substring_regex succeeds sum symmetric sysid system system_user
syn keyword sqlKeyword contained table tables tablesample tablespace table_name temp template temporary then
syn keyword sqlKeyword contained ties timezone_hour timezone_minute to token top_level_count trailing
syn keyword sqlKeyword contained transactions_committed transactions_rolled_back transaction_active
syn keyword sqlKeyword contained transform transforms translate translate_regex translation treat trigger
syn keyword sqlKeyword contained trigger_catalog trigger_name trigger_schema trim trim_array trusted type types
syn keyword sqlKeyword contained uescape unbounded uncommitted under unencrypted union unique unknown unlink
syn keyword sqlKeyword contained unlogged unnamed unnest until untyped upper uri usage user
syn keyword sqlKeyword contained user_defined_type_catalog user_defined_type_code user_defined_type_name
syn keyword sqlKeyword contained user_defined_type_schema using valid validate validator value
syn keyword sqlKeyword contained value_of varbinary variadic var_pop var_samp verbose version versioning view
syn keyword sqlKeyword contained views volatile when whenever where whitespace width_bucket window with within
syn keyword sqlKeyword contained without wrapper write xmlagg xmlattributes xmlbinary xmlcast xmlcomment
syn keyword sqlKeyword contained xmlconcat xmldeclaration xmldocument xmlelement xmlexists xmlforest xmliterate
syn keyword sqlKeyword contained xmlnamespaces xmlparse xmlpi xmlquery xmlroot xmlschema xmlserialize xmltable
syn keyword sqlKeyword contained xmltext xmlvalidate year yes zone
" Not listed in Table C-1
syn keyword sqlKeyword contained bypassrls createdb createrole createuser login nobypassrls
syn keyword sqlKeyword contained nocreatedb nocreaterole nocreateuser noinherit nologin noreplication
syn keyword sqlKeyword contained nosuperuser replication superuser


syn keyword sqlStatement contained abort alter analyze begin checkpoint close cluster comment commit constraints
syn keyword sqlStatement contained copy create deallocate declare delete discard do drop end execute explain fetch grant import
syn keyword sqlStatement contained insert label listen load lock move notify prepare prepared reassign reindex refresh
syn keyword sqlStatement contained release replace reset revoke rollback savepoint security select set show start
syn keyword sqlStatement contained transaction truncate unlisten update vacuum values work

" PL/pgSQL
syn keyword sqlplpgsqlKeyword contained alias all array as begin by case close collate column constant
syn keyword sqlplpgsqlKeyword contained constraint continue current current cursor datatype declare
syn keyword sqlplpgsqlKeyword contained detail diagnostics else elsif end errcode exception execute
syn keyword sqlplpgsqlKeyword contained exit fetch for foreach forward found from get hint if
syn keyword sqlplpgsqlKeyword contained into last loop message move next no notice open perform prepare
syn keyword sqlplpgsqlKeyword contained query raise relative return reverse rowtype schema
syn keyword sqlplpgsqlKeyword contained scroll slice sqlstate stacked strict table tg_argv tg_event
syn keyword sqlplpgsqlKeyword contained tg_level tg_name tg_nargs tg_op tg_relid tg_relname
syn keyword sqlplpgsqlKeyword contained tg_table_name tg_table_schema tg_tag tg_when then type using
syn keyword sqlplpgsqlKeyword contained while

" Functions
" To get the list of all PostgreSQL functions, give the following commands
" (this assumes that template1 has not been modified from its default):
"
" psql template1
" \t
" \o functions.txt
" select   distinct p.proname
" from     pg_catalog.pg_namespace n
" join     pg_catalog.pg_proc p
" on       p.pronamespace = n.oid
" where    p.proname not like '\_%'
" order by p.proname;
syn keyword sqlFunction contained RI_FKey_cascade_del RI_FKey_cascade_upd RI_FKey_check_ins
syn keyword sqlFunction contained RI_FKey_check_upd RI_FKey_noaction_del RI_FKey_noaction_upd
syn keyword sqlFunction contained RI_FKey_restrict_del RI_FKey_restrict_upd RI_FKey_setdefault_del
syn keyword sqlFunction contained RI_FKey_setdefault_upd RI_FKey_setnull_del RI_FKey_setnull_upd abbrev abs
syn keyword sqlFunction contained abstime abstimeeq abstimege abstimegt abstimein abstimele abstimelt
syn keyword sqlFunction contained abstimene abstimeout abstimerecv abstimesend aclcontains acldefault
syn keyword sqlFunction contained aclexplode aclinsert aclitemeq aclitemin aclitemout aclremove acos age
syn keyword sqlFunction contained any_in any_out anyarray_in anyarray_out anyarray_recv anyarray_send
syn keyword sqlFunction contained anyelement_in anyelement_out anyenum_in anyenum_out anynonarray_in
syn keyword sqlFunction contained anynonarray_out anyrange_in anyrange_out anytextcat area areajoinsel
syn keyword sqlFunction contained areasel array_agg array_agg_array_finalfn array_agg_array_transfn
syn keyword sqlFunction contained array_agg_finalfn array_agg_transfn array_append array_cat array_dims
syn keyword sqlFunction contained array_eq array_fill array_ge array_gt array_in array_larger array_le
syn keyword sqlFunction contained array_length array_lower array_lt array_ndims array_ne array_out
syn keyword sqlFunction contained array_position array_positions array_prepend array_recv array_remove
syn keyword sqlFunction contained array_replace array_send array_smaller array_to_json array_to_string
syn keyword sqlFunction contained array_typanalyze array_upper arraycontained arraycontains
syn keyword sqlFunction contained arraycontjoinsel arraycontsel arrayoverlap ascii ascii_to_mic
syn keyword sqlFunction contained ascii_to_utf8 asin atan atan2 avg bernoulli big5_to_euc_tw big5_to_mic
syn keyword sqlFunction contained big5_to_utf8 binary_upgrade_create_empty_extension
syn keyword sqlFunction contained binary_upgrade_set_next_array_pg_type_oid
syn keyword sqlFunction contained binary_upgrade_set_next_heap_pg_class_oid
syn keyword sqlFunction contained binary_upgrade_set_next_index_pg_class_oid
syn keyword sqlFunction contained binary_upgrade_set_next_pg_authid_oid binary_upgrade_set_next_pg_enum_oid
syn keyword sqlFunction contained binary_upgrade_set_next_pg_type_oid
syn keyword sqlFunction contained binary_upgrade_set_next_toast_pg_class_oid
syn keyword sqlFunction contained binary_upgrade_set_next_toast_pg_type_oid bit bit_and bit_in bit_length
syn keyword sqlFunction contained bit_or bit_out bit_recv bit_send bitand bitcat bitcmp biteq bitge bitgt
syn keyword sqlFunction contained bitle bitlt bitne bitnot bitor bitshiftleft bitshiftright bittypmodin
syn keyword sqlFunction contained bittypmodout bitxor bool bool_accum bool_accum_inv bool_alltrue bool_and
syn keyword sqlFunction contained bool_anytrue bool_or booland_statefunc booleq boolge boolgt boolin boolle
syn keyword sqlFunction contained boollt boolne boolor_statefunc boolout boolrecv boolsend bound_box box
syn keyword sqlFunction contained box_above box_above_eq box_add box_below box_below_eq box_center
syn keyword sqlFunction contained box_contain box_contain_pt box_contained box_distance box_div box_eq
syn keyword sqlFunction contained box_ge box_gt box_in box_intersect box_le box_left box_lt box_mul box_out
syn keyword sqlFunction contained box_overabove box_overbelow box_overlap box_overleft box_overright
syn keyword sqlFunction contained box_recv box_right box_same box_send box_sub bpchar bpchar_larger
syn keyword sqlFunction contained bpchar_pattern_ge bpchar_pattern_gt bpchar_pattern_le bpchar_pattern_lt
syn keyword sqlFunction contained bpchar_smaller bpcharcmp bpchareq bpcharge bpchargt bpchariclike
syn keyword sqlFunction contained bpcharicnlike bpcharicregexeq bpcharicregexne bpcharin bpcharle
syn keyword sqlFunction contained bpcharlike bpcharlt bpcharne bpcharnlike bpcharout bpcharrecv
syn keyword sqlFunction contained bpcharregexeq bpcharregexne bpcharsend bpchartypmodin bpchartypmodout
syn keyword sqlFunction contained brin_inclusion_add_value brin_inclusion_consistent brin_inclusion_opcinfo
syn keyword sqlFunction contained brin_inclusion_union brin_minmax_add_value brin_minmax_consistent
syn keyword sqlFunction contained brin_minmax_opcinfo brin_minmax_union brin_summarize_new_values
syn keyword sqlFunction contained brinbeginscan brinbuild brinbuildempty brinbulkdelete brincostestimate
syn keyword sqlFunction contained brinendscan bringetbitmap brininsert brinmarkpos brinoptions brinrescan
syn keyword sqlFunction contained brinrestrpos brinvacuumcleanup broadcast btabstimecmp btarraycmp
syn keyword sqlFunction contained btbeginscan btboolcmp btbpchar_pattern_cmp btbuild btbuildempty
syn keyword sqlFunction contained btbulkdelete btcanreturn btcharcmp btcostestimate btendscan btfloat48cmp
syn keyword sqlFunction contained btfloat4cmp btfloat4sortsupport btfloat84cmp btfloat8cmp
syn keyword sqlFunction contained btfloat8sortsupport btgetbitmap btgettuple btinsert btint24cmp btint28cmp
syn keyword sqlFunction contained btint2cmp btint2sortsupport btint42cmp btint48cmp btint4cmp
syn keyword sqlFunction contained btint4sortsupport btint82cmp btint84cmp btint8cmp btint8sortsupport
syn keyword sqlFunction contained btmarkpos btnamecmp btnamesortsupport btoidcmp btoidsortsupport
syn keyword sqlFunction contained btoidvectorcmp btoptions btrecordcmp btrecordimagecmp btreltimecmp
syn keyword sqlFunction contained btrescan btrestrpos btrim bttext_pattern_cmp bttextcmp bttextsortsupport
syn keyword sqlFunction contained bttidcmp bttintervalcmp btvacuumcleanup bytea_string_agg_finalfn
syn keyword sqlFunction contained bytea_string_agg_transfn byteacat byteacmp byteaeq byteage byteagt
syn keyword sqlFunction contained byteain byteale bytealike bytealt byteane byteanlike byteaout bytearecv
syn keyword sqlFunction contained byteasend cardinality cash_cmp cash_div_cash cash_div_flt4 cash_div_flt8
syn keyword sqlFunction contained cash_div_int2 cash_div_int4 cash_eq cash_ge cash_gt cash_in cash_le
syn keyword sqlFunction contained cash_lt cash_mi cash_mul_flt4 cash_mul_flt8 cash_mul_int2 cash_mul_int4
syn keyword sqlFunction contained cash_ne cash_out cash_pl cash_recv cash_send cash_words cashlarger
syn keyword sqlFunction contained cashsmaller cbrt ceil ceiling center char char_length character_length
syn keyword sqlFunction contained chareq charge chargt charin charle charlt charne charout charrecv
syn keyword sqlFunction contained charsend chr cideq cidin cidout cidr cidr_in cidr_out cidr_recv cidr_send
syn keyword sqlFunction contained cidrecv cidsend circle circle_above circle_add_pt circle_below
syn keyword sqlFunction contained circle_center circle_contain circle_contain_pt circle_contained
syn keyword sqlFunction contained circle_distance circle_div_pt circle_eq circle_ge circle_gt circle_in
syn keyword sqlFunction contained circle_le circle_left circle_lt circle_mul_pt circle_ne circle_out
syn keyword sqlFunction contained circle_overabove circle_overbelow circle_overlap circle_overleft
syn keyword sqlFunction contained circle_overright circle_recv circle_right circle_same circle_send
syn keyword sqlFunction contained circle_sub_pt clock_timestamp close_lb close_ls close_lseg close_pb
syn keyword sqlFunction contained close_pl close_ps close_sb close_sl col_description concat concat_ws
syn keyword sqlFunction contained contjoinsel contsel convert convert_from convert_to corr cos cot count
syn keyword sqlFunction contained covar_pop covar_samp cstring_in cstring_out cstring_recv cstring_send
syn keyword sqlFunction contained cume_dist cume_dist_final current_database current_query current_schema
syn keyword sqlFunction contained current_schemas current_setting current_user currtid currtid2 currval
syn keyword sqlFunction contained cursor_to_xml cursor_to_xmlschema database_to_xml
syn keyword sqlFunction contained database_to_xml_and_xmlschema database_to_xmlschema date date_cmp
syn keyword sqlFunction contained date_cmp_timestamp date_cmp_timestamptz date_eq date_eq_timestamp
syn keyword sqlFunction contained date_eq_timestamptz date_ge date_ge_timestamp date_ge_timestamptz date_gt
syn keyword sqlFunction contained date_gt_timestamp date_gt_timestamptz date_in date_larger date_le
syn keyword sqlFunction contained date_le_timestamp date_le_timestamptz date_lt date_lt_timestamp
syn keyword sqlFunction contained date_lt_timestamptz date_mi date_mi_interval date_mii date_ne
syn keyword sqlFunction contained date_ne_timestamp date_ne_timestamptz date_out date_part date_pl_interval
syn keyword sqlFunction contained date_pli date_recv date_send date_smaller date_sortsupport date_trunc
syn keyword sqlFunction contained daterange daterange_canonical daterange_subdiff datetime_pl datetimetz_pl
syn keyword sqlFunction contained dcbrt decode degrees dense_rank dense_rank_final dexp diagonal diameter
syn keyword sqlFunction contained dispell_init dispell_lexize dist_cpoint dist_cpoly dist_lb dist_pb
syn keyword sqlFunction contained dist_pc dist_pl dist_polyp dist_ppath dist_ppoly dist_ps dist_sb dist_sl
syn keyword sqlFunction contained div dlog1 dlog10 domain_in domain_recv dpow dround dsimple_init
syn keyword sqlFunction contained dsimple_lexize dsnowball_init dsnowball_lexize dsqrt dsynonym_init
syn keyword sqlFunction contained dsynonym_lexize dtrunc elem_contained_by_range encode enum_cmp enum_eq
syn keyword sqlFunction contained enum_first enum_ge enum_gt enum_in enum_larger enum_last enum_le enum_lt
syn keyword sqlFunction contained enum_ne enum_out enum_range enum_recv enum_send enum_smaller eqjoinsel
syn keyword sqlFunction contained eqsel euc_cn_to_mic euc_cn_to_utf8 euc_jis_2004_to_shift_jis_2004
syn keyword sqlFunction contained euc_jis_2004_to_utf8 euc_jp_to_mic euc_jp_to_sjis euc_jp_to_utf8
syn keyword sqlFunction contained euc_kr_to_mic euc_kr_to_utf8 euc_tw_to_big5 euc_tw_to_mic euc_tw_to_utf8
syn keyword sqlFunction contained event_trigger_in event_trigger_out every exp factorial family
syn keyword sqlFunction contained fdw_handler_in fdw_handler_out first_value float4 float48div float48eq
syn keyword sqlFunction contained float48ge float48gt float48le float48lt float48mi float48mul float48ne
syn keyword sqlFunction contained float48pl float4_accum float4abs float4div float4eq float4ge float4gt
syn keyword sqlFunction contained float4in float4larger float4le float4lt float4mi float4mul float4ne
syn keyword sqlFunction contained float4out float4pl float4recv float4send float4smaller float4um float4up
syn keyword sqlFunction contained float8 float84div float84eq float84ge float84gt float84le float84lt
syn keyword sqlFunction contained float84mi float84mul float84ne float84pl float8_accum float8_avg
syn keyword sqlFunction contained float8_corr float8_covar_pop float8_covar_samp float8_regr_accum
syn keyword sqlFunction contained float8_regr_avgx float8_regr_avgy float8_regr_intercept float8_regr_r2
syn keyword sqlFunction contained float8_regr_slope float8_regr_sxx float8_regr_sxy float8_regr_syy
syn keyword sqlFunction contained float8_stddev_pop float8_stddev_samp float8_var_pop float8_var_samp
syn keyword sqlFunction contained float8abs float8div float8eq float8ge float8gt float8in float8larger
syn keyword sqlFunction contained float8le float8lt float8mi float8mul float8ne float8out float8pl
syn keyword sqlFunction contained float8recv float8send float8smaller float8um float8up floor flt4_mul_cash
syn keyword sqlFunction contained flt8_mul_cash fmgr_c_validator fmgr_internal_validator fmgr_sql_validator
syn keyword sqlFunction contained format format_type gb18030_to_utf8 gbk_to_utf8 generate_series
syn keyword sqlFunction contained generate_subscripts get_bit get_byte get_current_ts_config
syn keyword sqlFunction contained getdatabaseencoding getpgusername gin_cmp_prefix gin_cmp_tslexeme
syn keyword sqlFunction contained gin_compare_jsonb gin_consistent_jsonb gin_consistent_jsonb_path
syn keyword sqlFunction contained gin_extract_jsonb gin_extract_jsonb_path gin_extract_jsonb_query
syn keyword sqlFunction contained gin_extract_jsonb_query_path gin_extract_tsquery gin_extract_tsvector
syn keyword sqlFunction contained gin_triconsistent_jsonb gin_triconsistent_jsonb_path
syn keyword sqlFunction contained gin_tsquery_consistent gin_tsquery_triconsistent ginarrayconsistent
syn keyword sqlFunction contained ginarrayextract ginarraytriconsistent ginbeginscan ginbuild ginbuildempty
syn keyword sqlFunction contained ginbulkdelete gincostestimate ginendscan gingetbitmap gininsert
syn keyword sqlFunction contained ginmarkpos ginoptions ginqueryarrayextract ginrescan ginrestrpos
syn keyword sqlFunction contained ginvacuumcleanup gist_bbox_distance gist_box_compress gist_box_consistent
syn keyword sqlFunction contained gist_box_decompress gist_box_fetch gist_box_penalty gist_box_picksplit
syn keyword sqlFunction contained gist_box_same gist_box_union gist_circle_compress gist_circle_consistent
syn keyword sqlFunction contained gist_point_compress gist_point_consistent gist_point_distance
syn keyword sqlFunction contained gist_point_fetch gist_poly_compress gist_poly_consistent gistbeginscan
syn keyword sqlFunction contained gistbuild gistbuildempty gistbulkdelete gistcanreturn gistcostestimate
syn keyword sqlFunction contained gistendscan gistgetbitmap gistgettuple gistinsert gistmarkpos gistoptions
syn keyword sqlFunction contained gistrescan gistrestrpos gistvacuumcleanup gtsquery_compress
syn keyword sqlFunction contained gtsquery_consistent gtsquery_decompress gtsquery_penalty
syn keyword sqlFunction contained gtsquery_picksplit gtsquery_same gtsquery_union gtsvector_compress
syn keyword sqlFunction contained gtsvector_consistent gtsvector_decompress gtsvector_penalty
syn keyword sqlFunction contained gtsvector_picksplit gtsvector_same gtsvector_union gtsvectorin
syn keyword sqlFunction contained gtsvectorout has_any_column_privilege has_column_privilege
syn keyword sqlFunction contained has_database_privilege has_foreign_data_wrapper_privilege
syn keyword sqlFunction contained has_function_privilege has_language_privilege has_schema_privilege
syn keyword sqlFunction contained has_sequence_privilege has_server_privilege has_table_privilege
syn keyword sqlFunction contained has_tablespace_privilege has_type_privilege hash_aclitem hash_array
syn keyword sqlFunction contained hash_numeric hash_range hashbeginscan hashbpchar hashbuild hashbuildempty
syn keyword sqlFunction contained hashbulkdelete hashchar hashcostestimate hashendscan hashenum hashfloat4
syn keyword sqlFunction contained hashfloat8 hashgetbitmap hashgettuple hashinet hashinsert hashint2
syn keyword sqlFunction contained hashint2vector hashint4 hashint8 hashmacaddr hashmarkpos hashname hashoid
syn keyword sqlFunction contained hashoidvector hashoptions hashrescan hashrestrpos hashtext
syn keyword sqlFunction contained hashvacuumcleanup hashvarlena height host hostmask iclikejoinsel
syn keyword sqlFunction contained iclikesel icnlikejoinsel icnlikesel icregexeqjoinsel icregexeqsel
syn keyword sqlFunction contained icregexnejoinsel icregexnesel inet_client_addr inet_client_port
syn keyword sqlFunction contained inet_gist_compress inet_gist_consistent inet_gist_decompress
syn keyword sqlFunction contained inet_gist_fetch inet_gist_penalty inet_gist_picksplit inet_gist_same
syn keyword sqlFunction contained inet_gist_union inet_in inet_merge inet_out inet_recv inet_same_family
syn keyword sqlFunction contained inet_send inet_server_addr inet_server_port inetand inetmi inetmi_int8
syn keyword sqlFunction contained inetnot inetor inetpl initcap int2 int24div int24eq int24ge int24gt
syn keyword sqlFunction contained int24le int24lt int24mi int24mul int24ne int24pl int28div int28eq int28ge
syn keyword sqlFunction contained int28gt int28le int28lt int28mi int28mul int28ne int28pl int2_accum
syn keyword sqlFunction contained int2_accum_inv int2_avg_accum int2_avg_accum_inv int2_mul_cash int2_sum
syn keyword sqlFunction contained int2abs int2and int2div int2eq int2ge int2gt int2in int2int4_sum
syn keyword sqlFunction contained int2larger int2le int2lt int2mi int2mod int2mul int2ne int2not int2or
syn keyword sqlFunction contained int2out int2pl int2recv int2send int2shl int2shr int2smaller int2um
syn keyword sqlFunction contained int2up int2vectoreq int2vectorin int2vectorout int2vectorrecv
syn keyword sqlFunction contained int2vectorsend int2xor int4 int42div int42eq int42ge int42gt int42le
syn keyword sqlFunction contained int42lt int42mi int42mul int42ne int42pl int48div int48eq int48ge int48gt
syn keyword sqlFunction contained int48le int48lt int48mi int48mul int48ne int48pl int4_accum
syn keyword sqlFunction contained int4_accum_inv int4_avg_accum int4_avg_accum_inv int4_mul_cash int4_sum
syn keyword sqlFunction contained int4abs int4and int4div int4eq int4ge int4gt int4in int4inc int4larger
syn keyword sqlFunction contained int4le int4lt int4mi int4mod int4mul int4ne int4not int4or int4out int4pl
syn keyword sqlFunction contained int4range int4range_canonical int4range_subdiff int4recv int4send int4shl
syn keyword sqlFunction contained int4shr int4smaller int4um int4up int4xor int8 int82div int82eq int82ge
syn keyword sqlFunction contained int82gt int82le int82lt int82mi int82mul int82ne int82pl int84div int84eq
syn keyword sqlFunction contained int84ge int84gt int84le int84lt int84mi int84mul int84ne int84pl
syn keyword sqlFunction contained int8_accum int8_accum_inv int8_avg int8_avg_accum int8_avg_accum_inv
syn keyword sqlFunction contained int8_sum int8abs int8and int8dec int8dec_any int8div int8eq int8ge int8gt
syn keyword sqlFunction contained int8in int8inc int8inc_any int8inc_float8_float8 int8larger int8le int8lt
syn keyword sqlFunction contained int8mi int8mod int8mul int8ne int8not int8or int8out int8pl int8pl_inet
syn keyword sqlFunction contained int8range int8range_canonical int8range_subdiff int8recv int8send int8shl
syn keyword sqlFunction contained int8shr int8smaller int8um int8up int8xor integer_pl_date inter_lb
syn keyword sqlFunction contained inter_sb inter_sl internal_in internal_out interval interval_accum
syn keyword sqlFunction contained interval_accum_inv interval_avg interval_cmp interval_div interval_eq
syn keyword sqlFunction contained interval_ge interval_gt interval_hash interval_in interval_larger
syn keyword sqlFunction contained interval_le interval_lt interval_mi interval_mul interval_ne interval_out
syn keyword sqlFunction contained interval_pl interval_pl_date interval_pl_time interval_pl_timestamp
syn keyword sqlFunction contained interval_pl_timestamptz interval_pl_timetz interval_recv interval_send
syn keyword sqlFunction contained interval_smaller interval_transform interval_um intervaltypmodin
syn keyword sqlFunction contained intervaltypmodout intinterval isclosed isempty isfinite ishorizontal
syn keyword sqlFunction contained iso8859_1_to_utf8 iso8859_to_utf8 iso_to_koi8r iso_to_mic iso_to_win1251
syn keyword sqlFunction contained iso_to_win866 isopen isparallel isperp isvertical johab_to_utf8 json_agg
syn keyword sqlFunction contained json_agg_finalfn json_agg_transfn json_array_element
syn keyword sqlFunction contained json_array_element_text json_array_elements json_array_elements_text
syn keyword sqlFunction contained json_array_length json_build_array json_build_object json_each
syn keyword sqlFunction contained json_each_text json_extract_path json_extract_path_text json_in
syn keyword sqlFunction contained json_object json_object_agg json_object_agg_finalfn
syn keyword sqlFunction contained json_object_agg_transfn json_object_field json_object_field_text
syn keyword sqlFunction contained json_object_keys json_out json_populate_record json_populate_recordset
syn keyword sqlFunction contained json_recv json_send json_strip_nulls json_to_record json_to_recordset
syn keyword sqlFunction contained json_typeof jsonb_agg jsonb_agg_finalfn jsonb_agg_transfn
syn keyword sqlFunction contained jsonb_array_element jsonb_array_element_text jsonb_array_elements
syn keyword sqlFunction contained jsonb_array_elements_text jsonb_array_length jsonb_build_array
syn keyword sqlFunction contained jsonb_build_object jsonb_cmp jsonb_concat jsonb_contained jsonb_contains
syn keyword sqlFunction contained jsonb_delete jsonb_delete_path jsonb_each jsonb_each_text jsonb_eq
syn keyword sqlFunction contained jsonb_exists jsonb_exists_all jsonb_exists_any jsonb_extract_path
syn keyword sqlFunction contained jsonb_extract_path_text jsonb_ge jsonb_gt jsonb_hash jsonb_in jsonb_le
syn keyword sqlFunction contained jsonb_lt jsonb_ne jsonb_object jsonb_object_agg jsonb_object_agg_finalfn
syn keyword sqlFunction contained jsonb_object_agg_transfn jsonb_object_field jsonb_object_field_text
syn keyword sqlFunction contained jsonb_object_keys jsonb_out jsonb_populate_record
syn keyword sqlFunction contained jsonb_populate_recordset jsonb_pretty jsonb_recv jsonb_send jsonb_set
syn keyword sqlFunction contained jsonb_strip_nulls jsonb_to_record jsonb_to_recordset jsonb_typeof
syn keyword sqlFunction contained justify_days justify_hours justify_interval koi8r_to_iso koi8r_to_mic
syn keyword sqlFunction contained koi8r_to_utf8 koi8r_to_win1251 koi8r_to_win866 koi8u_to_utf8 lag
syn keyword sqlFunction contained language_handler_in language_handler_out last_value lastval latin1_to_mic
syn keyword sqlFunction contained latin2_to_mic latin2_to_win1250 latin3_to_mic latin4_to_mic lead left
syn keyword sqlFunction contained length like like_escape likejoinsel likesel line line_distance line_eq
syn keyword sqlFunction contained line_horizontal line_in line_interpt line_intersect line_out
syn keyword sqlFunction contained line_parallel line_perp line_recv line_send line_vertical ln lo_close
syn keyword sqlFunction contained lo_creat lo_create lo_export lo_from_bytea lo_get lo_import lo_lseek
syn keyword sqlFunction contained lo_lseek64 lo_open lo_put lo_tell lo_tell64 lo_truncate lo_truncate64
syn keyword sqlFunction contained lo_unlink log loread lower lower_inc lower_inf lowrite lpad lseg
syn keyword sqlFunction contained lseg_center lseg_distance lseg_eq lseg_ge lseg_gt lseg_horizontal lseg_in
syn keyword sqlFunction contained lseg_interpt lseg_intersect lseg_le lseg_length lseg_lt lseg_ne lseg_out
syn keyword sqlFunction contained lseg_parallel lseg_perp lseg_recv lseg_send lseg_vertical ltrim
syn keyword sqlFunction contained macaddr_and macaddr_cmp macaddr_eq macaddr_ge macaddr_gt macaddr_in
syn keyword sqlFunction contained macaddr_le macaddr_lt macaddr_ne macaddr_not macaddr_or macaddr_out
syn keyword sqlFunction contained macaddr_recv macaddr_send make_date make_interval make_time
syn keyword sqlFunction contained make_timestamp make_timestamptz makeaclitem masklen max md5 mic_to_ascii
syn keyword sqlFunction contained mic_to_big5 mic_to_euc_cn mic_to_euc_jp mic_to_euc_kr mic_to_euc_tw
syn keyword sqlFunction contained mic_to_iso mic_to_koi8r mic_to_latin1 mic_to_latin2 mic_to_latin3
syn keyword sqlFunction contained mic_to_latin4 mic_to_sjis mic_to_win1250 mic_to_win1251 mic_to_win866 min
syn keyword sqlFunction contained mktinterval mod mode mode_final money mul_d_interval mxid_age name nameeq
syn keyword sqlFunction contained namege namegt nameiclike nameicnlike nameicregexeq nameicregexne namein
syn keyword sqlFunction contained namele namelike namelt namene namenlike nameout namerecv nameregexeq
syn keyword sqlFunction contained nameregexne namesend neqjoinsel neqsel netmask network network_cmp
syn keyword sqlFunction contained network_eq network_ge network_gt network_larger network_le network_lt
syn keyword sqlFunction contained network_ne network_overlap network_smaller network_sub network_subeq
syn keyword sqlFunction contained network_sup network_supeq networkjoinsel networksel nextval nlikejoinsel
syn keyword sqlFunction contained nlikesel notlike now npoints nth_value ntile numeric numeric_abs
syn keyword sqlFunction contained numeric_accum numeric_accum_inv numeric_add numeric_avg numeric_avg_accum
syn keyword sqlFunction contained numeric_cmp numeric_div numeric_div_trunc numeric_eq numeric_exp
syn keyword sqlFunction contained numeric_fac numeric_ge numeric_gt numeric_in numeric_inc numeric_larger
syn keyword sqlFunction contained numeric_le numeric_ln numeric_log numeric_lt numeric_mod numeric_mul
syn keyword sqlFunction contained numeric_ne numeric_out numeric_poly_avg numeric_poly_stddev_pop
syn keyword sqlFunction contained numeric_poly_stddev_samp numeric_poly_sum numeric_poly_var_pop
syn keyword sqlFunction contained numeric_poly_var_samp numeric_power numeric_recv numeric_send
syn keyword sqlFunction contained numeric_smaller numeric_sortsupport numeric_sqrt numeric_stddev_pop
syn keyword sqlFunction contained numeric_stddev_samp numeric_sub numeric_sum numeric_transform
syn keyword sqlFunction contained numeric_uminus numeric_uplus numeric_var_pop numeric_var_samp
syn keyword sqlFunction contained numerictypmodin numerictypmodout numnode numrange numrange_subdiff
syn keyword sqlFunction contained obj_description octet_length oid oideq oidge oidgt oidin oidlarger oidle
syn keyword sqlFunction contained oidlt oidne oidout oidrecv oidsend oidsmaller oidvectoreq oidvectorge
syn keyword sqlFunction contained oidvectorgt oidvectorin oidvectorle oidvectorlt oidvectorne oidvectorout
syn keyword sqlFunction contained oidvectorrecv oidvectorsend oidvectortypes on_pb on_pl on_ppath on_ps
syn keyword sqlFunction contained on_sb on_sl opaque_in opaque_out ordered_set_transition
syn keyword sqlFunction contained ordered_set_transition_multi overlaps overlay path path_add path_add_pt
syn keyword sqlFunction contained path_center path_contain_pt path_distance path_div_pt path_in path_inter
syn keyword sqlFunction contained path_length path_mul_pt path_n_eq path_n_ge path_n_gt path_n_le path_n_lt
syn keyword sqlFunction contained path_npoints path_out path_recv path_send path_sub_pt pclose percent_rank
syn keyword sqlFunction contained percent_rank_final percentile_cont percentile_cont_float8_final
syn keyword sqlFunction contained percentile_cont_float8_multi_final percentile_cont_interval_final
syn keyword sqlFunction contained percentile_cont_interval_multi_final percentile_disc
syn keyword sqlFunction contained percentile_disc_final percentile_disc_multi_final pg_advisory_lock
syn keyword sqlFunction contained pg_advisory_lock_shared pg_advisory_unlock pg_advisory_unlock_all
syn keyword sqlFunction contained pg_advisory_unlock_shared pg_advisory_xact_lock
syn keyword sqlFunction contained pg_advisory_xact_lock_shared pg_available_extension_versions
syn keyword sqlFunction contained pg_available_extensions pg_backend_pid pg_backup_start_time
syn keyword sqlFunction contained pg_cancel_backend pg_char_to_encoding pg_client_encoding pg_collation_for
syn keyword sqlFunction contained pg_collation_is_visible pg_column_is_updatable pg_column_size
syn keyword sqlFunction contained pg_conf_load_time pg_conversion_is_visible
syn keyword sqlFunction contained pg_create_logical_replication_slot pg_create_physical_replication_slot
syn keyword sqlFunction contained pg_create_restore_point pg_current_xlog_insert_location
syn keyword sqlFunction contained pg_current_xlog_location pg_cursor pg_database_size pg_ddl_command_in
syn keyword sqlFunction contained pg_ddl_command_out pg_ddl_command_recv pg_ddl_command_send
syn keyword sqlFunction contained pg_describe_object pg_drop_replication_slot pg_encoding_max_length
syn keyword sqlFunction contained pg_encoding_to_char pg_event_trigger_ddl_commands
syn keyword sqlFunction contained pg_event_trigger_dropped_objects pg_event_trigger_table_rewrite_oid
syn keyword sqlFunction contained pg_event_trigger_table_rewrite_reason pg_export_snapshot
syn keyword sqlFunction contained pg_extension_config_dump pg_extension_update_paths pg_filenode_relation
syn keyword sqlFunction contained pg_function_is_visible pg_get_constraintdef pg_get_expr
syn keyword sqlFunction contained pg_get_function_arg_default pg_get_function_arguments
syn keyword sqlFunction contained pg_get_function_identity_arguments pg_get_function_result
syn keyword sqlFunction contained pg_get_functiondef pg_get_indexdef pg_get_keywords
syn keyword sqlFunction contained pg_get_multixact_members pg_get_object_address pg_get_replication_slots
syn keyword sqlFunction contained pg_get_ruledef pg_get_serial_sequence pg_get_triggerdef pg_get_userbyid
syn keyword sqlFunction contained pg_get_viewdef pg_has_role pg_identify_object
syn keyword sqlFunction contained pg_identify_object_as_address pg_indexes_size pg_is_in_backup
syn keyword sqlFunction contained pg_is_in_recovery pg_is_other_temp_schema pg_is_xlog_replay_paused
syn keyword sqlFunction contained pg_last_committed_xact pg_last_xact_replay_timestamp
syn keyword sqlFunction contained pg_last_xlog_receive_location pg_last_xlog_replay_location
syn keyword sqlFunction contained pg_listening_channels pg_lock_status pg_logical_slot_get_binary_changes
syn keyword sqlFunction contained pg_logical_slot_get_changes pg_logical_slot_peek_binary_changes
syn keyword sqlFunction contained pg_logical_slot_peek_changes pg_ls_dir pg_lsn_cmp pg_lsn_eq pg_lsn_ge
syn keyword sqlFunction contained pg_lsn_gt pg_lsn_hash pg_lsn_in pg_lsn_le pg_lsn_lt pg_lsn_mi pg_lsn_ne
syn keyword sqlFunction contained pg_lsn_out pg_lsn_recv pg_lsn_send pg_my_temp_schema pg_node_tree_in
syn keyword sqlFunction contained pg_node_tree_out pg_node_tree_recv pg_node_tree_send pg_notify
syn keyword sqlFunction contained pg_opclass_is_visible pg_operator_is_visible pg_opfamily_is_visible
syn keyword sqlFunction contained pg_options_to_table pg_postmaster_start_time pg_prepared_statement
syn keyword sqlFunction contained pg_prepared_xact pg_read_binary_file pg_read_file pg_relation_filenode
syn keyword sqlFunction contained pg_relation_filepath pg_relation_is_updatable pg_relation_size
syn keyword sqlFunction contained pg_reload_conf pg_replication_origin_advance pg_replication_origin_create
syn keyword sqlFunction contained pg_replication_origin_drop pg_replication_origin_oid
syn keyword sqlFunction contained pg_replication_origin_progress pg_replication_origin_session_is_setup
syn keyword sqlFunction contained pg_replication_origin_session_progress
syn keyword sqlFunction contained pg_replication_origin_session_reset pg_replication_origin_session_setup
syn keyword sqlFunction contained pg_replication_origin_xact_reset pg_replication_origin_xact_setup
syn keyword sqlFunction contained pg_rotate_logfile pg_sequence_parameters pg_show_all_file_settings
syn keyword sqlFunction contained pg_show_all_settings pg_show_replication_origin_status pg_size_pretty
syn keyword sqlFunction contained pg_sleep pg_sleep_for pg_sleep_until pg_start_backup
syn keyword sqlFunction contained pg_stat_clear_snapshot pg_stat_file pg_stat_get_activity
syn keyword sqlFunction contained pg_stat_get_analyze_count pg_stat_get_archiver
syn keyword sqlFunction contained pg_stat_get_autoanalyze_count pg_stat_get_autovacuum_count
syn keyword sqlFunction contained pg_stat_get_backend_activity pg_stat_get_backend_activity_start
syn keyword sqlFunction contained pg_stat_get_backend_client_addr pg_stat_get_backend_client_port
syn keyword sqlFunction contained pg_stat_get_backend_dbid pg_stat_get_backend_idset
syn keyword sqlFunction contained pg_stat_get_backend_pid pg_stat_get_backend_start
syn keyword sqlFunction contained pg_stat_get_backend_userid pg_stat_get_backend_waiting
syn keyword sqlFunction contained pg_stat_get_backend_xact_start
syn keyword sqlFunction contained pg_stat_get_bgwriter_buf_written_checkpoints
syn keyword sqlFunction contained pg_stat_get_bgwriter_buf_written_clean
syn keyword sqlFunction contained pg_stat_get_bgwriter_maxwritten_clean
syn keyword sqlFunction contained pg_stat_get_bgwriter_requested_checkpoints
syn keyword sqlFunction contained pg_stat_get_bgwriter_stat_reset_time
syn keyword sqlFunction contained pg_stat_get_bgwriter_timed_checkpoints pg_stat_get_blocks_fetched
syn keyword sqlFunction contained pg_stat_get_blocks_hit pg_stat_get_buf_alloc
syn keyword sqlFunction contained pg_stat_get_buf_fsync_backend pg_stat_get_buf_written_backend
syn keyword sqlFunction contained pg_stat_get_checkpoint_sync_time pg_stat_get_checkpoint_write_time
syn keyword sqlFunction contained pg_stat_get_db_blk_read_time pg_stat_get_db_blk_write_time
syn keyword sqlFunction contained pg_stat_get_db_blocks_fetched pg_stat_get_db_blocks_hit
syn keyword sqlFunction contained pg_stat_get_db_conflict_all pg_stat_get_db_conflict_bufferpin
syn keyword sqlFunction contained pg_stat_get_db_conflict_lock pg_stat_get_db_conflict_snapshot
syn keyword sqlFunction contained pg_stat_get_db_conflict_startup_deadlock
syn keyword sqlFunction contained pg_stat_get_db_conflict_tablespace pg_stat_get_db_deadlocks
syn keyword sqlFunction contained pg_stat_get_db_numbackends pg_stat_get_db_stat_reset_time
syn keyword sqlFunction contained pg_stat_get_db_temp_bytes pg_stat_get_db_temp_files
syn keyword sqlFunction contained pg_stat_get_db_tuples_deleted pg_stat_get_db_tuples_fetched
syn keyword sqlFunction contained pg_stat_get_db_tuples_inserted pg_stat_get_db_tuples_returned
syn keyword sqlFunction contained pg_stat_get_db_tuples_updated pg_stat_get_db_xact_commit
syn keyword sqlFunction contained pg_stat_get_db_xact_rollback pg_stat_get_dead_tuples
syn keyword sqlFunction contained pg_stat_get_function_calls pg_stat_get_function_self_time
syn keyword sqlFunction contained pg_stat_get_function_total_time pg_stat_get_last_analyze_time
syn keyword sqlFunction contained pg_stat_get_last_autoanalyze_time pg_stat_get_last_autovacuum_time
syn keyword sqlFunction contained pg_stat_get_last_vacuum_time pg_stat_get_live_tuples
syn keyword sqlFunction contained pg_stat_get_mod_since_analyze pg_stat_get_numscans
syn keyword sqlFunction contained pg_stat_get_snapshot_timestamp pg_stat_get_tuples_deleted
syn keyword sqlFunction contained pg_stat_get_tuples_fetched pg_stat_get_tuples_hot_updated
syn keyword sqlFunction contained pg_stat_get_tuples_inserted pg_stat_get_tuples_returned
syn keyword sqlFunction contained pg_stat_get_tuples_updated pg_stat_get_vacuum_count
syn keyword sqlFunction contained pg_stat_get_wal_senders pg_stat_get_xact_blocks_fetched
syn keyword sqlFunction contained pg_stat_get_xact_blocks_hit pg_stat_get_xact_function_calls
syn keyword sqlFunction contained pg_stat_get_xact_function_self_time pg_stat_get_xact_function_total_time
syn keyword sqlFunction contained pg_stat_get_xact_numscans pg_stat_get_xact_tuples_deleted
syn keyword sqlFunction contained pg_stat_get_xact_tuples_fetched pg_stat_get_xact_tuples_hot_updated
syn keyword sqlFunction contained pg_stat_get_xact_tuples_inserted pg_stat_get_xact_tuples_returned
syn keyword sqlFunction contained pg_stat_get_xact_tuples_updated pg_stat_reset pg_stat_reset_shared
syn keyword sqlFunction contained pg_stat_reset_single_function_counters
syn keyword sqlFunction contained pg_stat_reset_single_table_counters pg_stop_backup pg_switch_xlog
syn keyword sqlFunction contained pg_table_is_visible pg_table_size pg_tablespace_databases
syn keyword sqlFunction contained pg_tablespace_location pg_tablespace_size pg_terminate_backend
syn keyword sqlFunction contained pg_timezone_abbrevs pg_timezone_names pg_total_relation_size
syn keyword sqlFunction contained pg_trigger_depth pg_try_advisory_lock pg_try_advisory_lock_shared
syn keyword sqlFunction contained pg_try_advisory_xact_lock pg_try_advisory_xact_lock_shared
syn keyword sqlFunction contained pg_ts_config_is_visible pg_ts_dict_is_visible pg_ts_parser_is_visible
syn keyword sqlFunction contained pg_ts_template_is_visible pg_type_is_visible pg_typeof
syn keyword sqlFunction contained pg_xact_commit_timestamp pg_xlog_location_diff pg_xlog_replay_pause
syn keyword sqlFunction contained pg_xlog_replay_resume pg_xlogfile_name pg_xlogfile_name_offset pi
syn keyword sqlFunction contained plainto_tsquery plpgsql_call_handler plpgsql_inline_handler
syn keyword sqlFunction contained plpgsql_validator point point_above point_add point_below point_distance
syn keyword sqlFunction contained point_div point_eq point_horiz point_in point_left point_mul point_ne
syn keyword sqlFunction contained point_out point_recv point_right point_send point_sub point_vert
syn keyword sqlFunction contained poly_above poly_below poly_center poly_contain poly_contain_pt
syn keyword sqlFunction contained poly_contained poly_distance poly_in poly_left poly_npoints poly_out
syn keyword sqlFunction contained poly_overabove poly_overbelow poly_overlap poly_overleft poly_overright
syn keyword sqlFunction contained poly_recv poly_right poly_same poly_send polygon popen position
syn keyword sqlFunction contained positionjoinsel positionsel pow power prsd_end
syn keyword sqlFunction contained prsd_headline prsd_lextype prsd_nexttoken prsd_start pt_contained_circle
syn keyword sqlFunction contained pt_contained_poly query_to_xml query_to_xml_and_xmlschema
syn keyword sqlFunction contained query_to_xmlschema querytree quote_ident quote_literal quote_nullable
syn keyword sqlFunction contained radians radius random range_adjacent range_after range_before range_cmp
syn keyword sqlFunction contained range_contained_by range_contains range_contains_elem range_eq range_ge
syn keyword sqlFunction contained range_gist_compress range_gist_consistent range_gist_decompress
syn keyword sqlFunction contained range_gist_fetch range_gist_penalty range_gist_picksplit range_gist_same
syn keyword sqlFunction contained range_gist_union range_gt range_in range_intersect range_le range_lt
syn keyword sqlFunction contained range_merge range_minus range_ne range_out range_overlaps range_overleft
syn keyword sqlFunction contained range_overright range_recv range_send range_typanalyze range_union
syn keyword sqlFunction contained rangesel rank rank_final record_eq record_ge record_gt record_image_eq
syn keyword sqlFunction contained record_image_ge record_image_gt record_image_le record_image_lt
syn keyword sqlFunction contained record_image_ne record_in record_le record_lt record_ne record_out
syn keyword sqlFunction contained record_recv record_send regclass regclassin regclassout regclassrecv
syn keyword sqlFunction contained regclasssend regconfigin regconfigout regconfigrecv regconfigsend
syn keyword sqlFunction contained regdictionaryin regdictionaryout regdictionaryrecv regdictionarysend
syn keyword sqlFunction contained regexeqjoinsel regexeqsel regexnejoinsel regexnesel regexp_matches
syn keyword sqlFunction contained regexp_replace regexp_split_to_array regexp_split_to_table regnamespacein
syn keyword sqlFunction contained regnamespaceout regnamespacerecv regnamespacesend regoperatorin
syn keyword sqlFunction contained regoperatorout regoperatorrecv regoperatorsend regoperin regoperout
syn keyword sqlFunction contained regoperrecv regopersend regprocedurein regprocedureout regprocedurerecv
syn keyword sqlFunction contained regproceduresend regprocin regprocout regprocrecv regprocsend regr_avgx
syn keyword sqlFunction contained regr_avgy regr_count regr_intercept regr_r2 regr_slope regr_sxx regr_sxy
syn keyword sqlFunction contained regr_syy regrolein regroleout regrolerecv regrolesend regtypein
syn keyword sqlFunction contained regtypeout regtyperecv regtypesend reltime reltimeeq reltimege reltimegt
syn keyword sqlFunction contained reltimein reltimele reltimelt reltimene reltimeout reltimerecv
syn keyword sqlFunction contained reltimesend repeat replace reverse right round row_number
syn keyword sqlFunction contained row_security_active row_to_json rpad rtrim scalargtjoinsel scalargtsel
syn keyword sqlFunction contained scalarltjoinsel scalarltsel schema_to_xml schema_to_xml_and_xmlschema
syn keyword sqlFunction contained schema_to_xmlschema session_user set_bit set_byte set_config set_masklen
syn keyword sqlFunction contained setseed setval setweight shell_in shell_out
syn keyword sqlFunction contained shift_jis_2004_to_euc_jis_2004 shift_jis_2004_to_utf8 shobj_description
syn keyword sqlFunction contained sign similar_escape sin sjis_to_euc_jp sjis_to_mic sjis_to_utf8 slope
syn keyword sqlFunction contained smgreq smgrin smgrne smgrout spg_kd_choose spg_kd_config
syn keyword sqlFunction contained spg_kd_inner_consistent spg_kd_picksplit spg_quad_choose spg_quad_config
syn keyword sqlFunction contained spg_quad_inner_consistent spg_quad_leaf_consistent spg_quad_picksplit
syn keyword sqlFunction contained spg_range_quad_choose spg_range_quad_config
syn keyword sqlFunction contained spg_range_quad_inner_consistent spg_range_quad_leaf_consistent
syn keyword sqlFunction contained spg_range_quad_picksplit spg_text_choose spg_text_config
syn keyword sqlFunction contained spg_text_inner_consistent spg_text_leaf_consistent spg_text_picksplit
syn keyword sqlFunction contained spgbeginscan spgbuild spgbuildempty spgbulkdelete spgcanreturn
syn keyword sqlFunction contained spgcostestimate spgendscan spggetbitmap spggettuple spginsert spgmarkpos
syn keyword sqlFunction contained spgoptions spgrescan spgrestrpos spgvacuumcleanup split_part sqrt
syn keyword sqlFunction contained statement_timestamp stddev stddev_pop stddev_samp string_agg
syn keyword sqlFunction contained string_agg_finalfn string_agg_transfn string_to_array strip strpos substr
syn keyword sqlFunction contained substring sum suppress_redundant_updates_trigger system table_to_xml
syn keyword sqlFunction contained table_to_xml_and_xmlschema table_to_xmlschema tan text_ge text_gt
syn keyword sqlFunction contained text_larger text_le text_lt text_pattern_ge text_pattern_gt
syn keyword sqlFunction contained text_pattern_le text_pattern_lt text_smaller textanycat textcat texteq
syn keyword sqlFunction contained texticlike texticnlike texticregexeq texticregexne textin textlen
syn keyword sqlFunction contained textlike textne textnlike textout textrecv textregexeq textregexne
syn keyword sqlFunction contained textsend thesaurus_init thesaurus_lexize tideq tidge tidgt tidin
syn keyword sqlFunction contained tidlarger tidle tidlt tidne tidout tidrecv tidsend tidsmaller time
syn keyword sqlFunction contained time_cmp time_eq time_ge time_gt time_hash time_in time_larger time_le
syn keyword sqlFunction contained time_lt time_mi_interval time_mi_time time_ne time_out time_pl_interval
syn keyword sqlFunction contained time_recv time_send time_smaller time_transform timedate_pl timemi
syn keyword sqlFunction contained timenow timeofday timepl timestamp timestamp_cmp timestamp_cmp_date
syn keyword sqlFunction contained timestamp_cmp_timestamptz timestamp_eq timestamp_eq_date
syn keyword sqlFunction contained timestamp_eq_timestamptz timestamp_ge timestamp_ge_date
syn keyword sqlFunction contained timestamp_ge_timestamptz timestamp_gt timestamp_gt_date
syn keyword sqlFunction contained timestamp_gt_timestamptz timestamp_hash timestamp_in
syn keyword sqlFunction contained timestamp_izone_transform timestamp_larger timestamp_le timestamp_le_date
syn keyword sqlFunction contained timestamp_le_timestamptz timestamp_lt timestamp_lt_date
syn keyword sqlFunction contained timestamp_lt_timestamptz timestamp_mi timestamp_mi_interval timestamp_ne
syn keyword sqlFunction contained timestamp_ne_date timestamp_ne_timestamptz timestamp_out
syn keyword sqlFunction contained timestamp_pl_interval timestamp_recv timestamp_send timestamp_smaller
syn keyword sqlFunction contained timestamp_sortsupport timestamp_transform timestamp_zone_transform
syn keyword sqlFunction contained timestamptypmodin timestamptypmodout timestamptz timestamptz_cmp
syn keyword sqlFunction contained timestamptz_cmp_date timestamptz_cmp_timestamp timestamptz_eq
syn keyword sqlFunction contained timestamptz_eq_date timestamptz_eq_timestamp timestamptz_ge
syn keyword sqlFunction contained timestamptz_ge_date timestamptz_ge_timestamp timestamptz_gt
syn keyword sqlFunction contained timestamptz_gt_date timestamptz_gt_timestamp timestamptz_in
syn keyword sqlFunction contained timestamptz_larger timestamptz_le timestamptz_le_date
syn keyword sqlFunction contained timestamptz_le_timestamp timestamptz_lt timestamptz_lt_date
syn keyword sqlFunction contained timestamptz_lt_timestamp timestamptz_mi timestamptz_mi_interval
syn keyword sqlFunction contained timestamptz_ne timestamptz_ne_date timestamptz_ne_timestamp
syn keyword sqlFunction contained timestamptz_out timestamptz_pl_interval timestamptz_recv timestamptz_send
syn keyword sqlFunction contained timestamptz_smaller timestamptztypmodin timestamptztypmodout timetypmodin
syn keyword sqlFunction contained timetypmodout timetz timetz_cmp timetz_eq timetz_ge timetz_gt timetz_hash
syn keyword sqlFunction contained timetz_in timetz_larger timetz_le timetz_lt timetz_mi_interval timetz_ne
syn keyword sqlFunction contained timetz_out timetz_pl_interval timetz_recv timetz_send timetz_smaller
syn keyword sqlFunction contained timetzdate_pl timetztypmodin timetztypmodout timezone tinterval
syn keyword sqlFunction contained tintervalct tintervalend tintervaleq tintervalge tintervalgt tintervalin
syn keyword sqlFunction contained tintervalle tintervalleneq tintervallenge tintervallengt tintervallenle
syn keyword sqlFunction contained tintervallenlt tintervallenne tintervallt tintervalne tintervalout
syn keyword sqlFunction contained tintervalov tintervalrecv tintervalrel tintervalsame tintervalsend
syn keyword sqlFunction contained tintervalstart to_ascii to_char to_date to_hex to_json to_jsonb to_number
syn keyword sqlFunction contained to_regclass to_regnamespace to_regoper to_regoperator to_regproc
syn keyword sqlFunction contained to_regprocedure to_regrole to_regtype to_timestamp to_tsquery to_tsvector
syn keyword sqlFunction contained transaction_timestamp translate trigger_in trigger_out trunc ts_debug
syn keyword sqlFunction contained ts_headline ts_lexize ts_match_qv ts_match_tq ts_match_tt ts_match_vq
syn keyword sqlFunction contained ts_parse ts_rank ts_rank_cd ts_rewrite ts_stat ts_token_type
syn keyword sqlFunction contained ts_typanalyze tsm_handler_in tsm_handler_out tsmatchjoinsel tsmatchsel
syn keyword sqlFunction contained tsq_mcontained tsq_mcontains tsquery_and tsquery_cmp tsquery_eq
syn keyword sqlFunction contained tsquery_ge tsquery_gt tsquery_le tsquery_lt tsquery_ne tsquery_not
syn keyword sqlFunction contained tsquery_or tsqueryin tsqueryout tsqueryrecv tsquerysend tsrange
syn keyword sqlFunction contained tsrange_subdiff tstzrange tstzrange_subdiff tsvector_cmp tsvector_concat
syn keyword sqlFunction contained tsvector_eq tsvector_ge tsvector_gt tsvector_le tsvector_lt tsvector_ne
syn keyword sqlFunction contained tsvector_update_trigger tsvector_update_trigger_column tsvectorin
syn keyword sqlFunction contained tsvectorout tsvectorrecv tsvectorsend txid_current txid_current_snapshot
syn keyword sqlFunction contained txid_snapshot_in txid_snapshot_out txid_snapshot_recv txid_snapshot_send
syn keyword sqlFunction contained txid_snapshot_xip txid_snapshot_xmax txid_snapshot_xmin
syn keyword sqlFunction contained txid_visible_in_snapshot uhc_to_utf8 unique_key_recheck unknownin
syn keyword sqlFunction contained unknownout unknownrecv unknownsend unnest upper upper_inc upper_inf
syn keyword sqlFunction contained utf8_to_ascii utf8_to_big5 utf8_to_euc_cn utf8_to_euc_jis_2004
syn keyword sqlFunction contained utf8_to_euc_jp utf8_to_euc_kr utf8_to_euc_tw utf8_to_gb18030 utf8_to_gbk
syn keyword sqlFunction contained utf8_to_iso8859 utf8_to_iso8859_1 utf8_to_johab utf8_to_koi8r
syn keyword sqlFunction contained utf8_to_koi8u utf8_to_shift_jis_2004 utf8_to_sjis utf8_to_uhc utf8_to_win
syn keyword sqlFunction contained uuid_cmp uuid_eq uuid_ge uuid_gt uuid_hash uuid_in uuid_le uuid_lt
syn keyword sqlFunction contained uuid_ne uuid_out uuid_recv uuid_send var_pop var_samp varbit varbit_in
syn keyword sqlFunction contained varbit_out varbit_recv varbit_send varbit_transform varbitcmp varbiteq
syn keyword sqlFunction contained varbitge varbitgt varbitle varbitlt varbitne varbittypmodin
syn keyword sqlFunction contained varbittypmodout varchar varchar_transform varcharin varcharout
syn keyword sqlFunction contained varcharrecv varcharsend varchartypmodin varchartypmodout variance version
syn keyword sqlFunction contained void_in void_out void_recv void_send width width_bucket win1250_to_latin2
syn keyword sqlFunction contained win1250_to_mic win1251_to_iso win1251_to_koi8r win1251_to_mic
syn keyword sqlFunction contained win1251_to_win866 win866_to_iso win866_to_koi8r win866_to_mic
syn keyword sqlFunction contained win866_to_win1251 win_to_utf8 xideq xideqint4 xidin xidout xidrecv
syn keyword sqlFunction contained xidsend xml xml_in xml_is_well_formed xml_is_well_formed_content
syn keyword sqlFunction contained xml_is_well_formed_document xml_out xml_recv xml_send xmlagg xmlcomment
syn keyword sqlFunction contained xmlconcat2 xmlexists xmlvalidate xpath xpath_exists

" Extensions (Appendix F)
if (!exists("b:pgsql_modules_disabled") || b:pgsql_modules_disabled == 0) &&
      \ (exists("b:pgsql_modules_disabled") || !exists("g:pgsql_modules_disabled") || g:pgsql_modules_disabled == 0)
  " adminpack
  syn keyword sqlFunction contained pg_file_rename pg_file_unlink pg_file_write pg_logdir_ls pg_file_read
  syn keyword sqlFunction contained pg_file_length pg_logfile_rotate
  " btree_gin
  syn keyword sqlFunction contained in_btree_consistent gin_compare_prefix_bit
  syn keyword sqlFunction contained in_compare_prefix_bytea gin_compare_prefix_char
  syn keyword sqlFunction contained in_compare_prefix_cidr gin_compare_prefix_date
  syn keyword sqlFunction contained in_compare_prefix_float4 gin_compare_prefix_float8
  syn keyword sqlFunction contained in_compare_prefix_inet gin_compare_prefix_int2
  syn keyword sqlFunction contained in_compare_prefix_int4 gin_compare_prefix_int8
  syn keyword sqlFunction contained in_compare_prefix_interval gin_compare_prefix_macaddr
  syn keyword sqlFunction contained in_compare_prefix_money gin_compare_prefix_numeric
  syn keyword sqlFunction contained in_compare_prefix_oid gin_compare_prefix_text
  syn keyword sqlFunction contained in_compare_prefix_time gin_compare_prefix_timestamp
  syn keyword sqlFunction contained in_compare_prefix_timestamptz gin_compare_prefix_timetz
  syn keyword sqlFunction contained in_compare_prefix_varbit gin_extract_query_bit
  syn keyword sqlFunction contained in_extract_query_bytea gin_extract_query_char
  syn keyword sqlFunction contained in_extract_query_cidr gin_extract_query_date
  syn keyword sqlFunction contained in_extract_query_float4 gin_extract_query_float8
  syn keyword sqlFunction contained in_extract_query_inet gin_extract_query_int2
  syn keyword sqlFunction contained in_extract_query_int4 gin_extract_query_int8
  syn keyword sqlFunction contained in_extract_query_interval gin_extract_query_macaddr
  syn keyword sqlFunction contained in_extract_query_money gin_extract_query_numeric
  syn keyword sqlFunction contained in_extract_query_oid gin_extract_query_text gin_extract_query_time
  syn keyword sqlFunction contained gin_extract_query_timestamp gin_extract_query_timestamptz
  syn keyword sqlFunction contained gin_extract_query_timetz gin_extract_query_varbit
  syn keyword sqlFunction contained gin_extract_value_bit gin_extract_value_bytea
  syn keyword sqlFunction contained gin_extract_value_char gin_extract_value_cidr
  syn keyword sqlFunction contained gin_extract_value_date gin_extract_value_float4
  syn keyword sqlFunction contained gin_extract_value_float8 gin_extract_value_inet
  syn keyword sqlFunction contained gin_extract_value_int2 gin_extract_value_int4
  syn keyword sqlFunction contained gin_extract_value_int8 gin_extract_value_interval
  syn keyword sqlFunction contained gin_extract_value_macaddr gin_extract_value_money
  syn keyword sqlFunction contained gin_extract_value_numeric gin_extract_value_oid
  syn keyword sqlFunction contained gin_extract_value_text gin_extract_value_time
  syn keyword sqlFunction contained gin_extract_value_timestamp gin_extract_value_timestamptz
  syn keyword sqlFunction contained gin_extract_value_timetz gin_extract_value_varbit gin_numeric_cmp
  " btree_gist
  syn keyword sqlFunction contained cash_dist date_dist float4_dist float8_dist gbt_bit_compress
  syn keyword sqlFunction contained gbt_bit_consistent gbt_bit_penalty gbt_bit_picksplit gbt_bit_same
  syn keyword sqlFunction contained gbt_bit_union gbt_bpchar_compress gbt_bpchar_consistent
  syn keyword sqlFunction contained gbt_bytea_compress gbt_bytea_consistent gbt_bytea_penalty
  syn keyword sqlFunction contained gbt_bytea_picksplit gbt_bytea_same gbt_bytea_union
  syn keyword sqlFunction contained gbt_cash_compress gbt_cash_consistent gbt_cash_distance
  syn keyword sqlFunction contained gbt_cash_fetch gbt_cash_penalty gbt_cash_picksplit gbt_cash_same
  syn keyword sqlFunction contained gbt_cash_union gbt_date_compress gbt_date_consistent
  syn keyword sqlFunction contained gbt_date_distance gbt_date_fetch gbt_date_penalty
  syn keyword sqlFunction contained gbt_date_picksplit gbt_date_same gbt_date_union gbt_decompress
  syn keyword sqlFunction contained gbt_float4_compress gbt_float4_consistent gbt_float4_distance
  syn keyword sqlFunction contained gbt_float4_fetch gbt_float4_penalty gbt_float4_picksplit
  syn keyword sqlFunction contained gbt_float4_same gbt_float4_union gbt_float8_compress
  syn keyword sqlFunction contained gbt_float8_consistent gbt_float8_distance gbt_float8_fetch
  syn keyword sqlFunction contained gbt_float8_penalty gbt_float8_picksplit gbt_float8_same
  syn keyword sqlFunction contained gbt_float8_union gbt_inet_compress gbt_inet_consistent
  syn keyword sqlFunction contained gbt_inet_penalty gbt_inet_picksplit gbt_inet_same gbt_inet_union
  syn keyword sqlFunction contained gbt_int2_compress gbt_int2_consistent gbt_int2_distance
  syn keyword sqlFunction contained gbt_int2_fetch gbt_int2_penalty gbt_int2_picksplit gbt_int2_same
  syn keyword sqlFunction contained gbt_int2_union gbt_int4_compress gbt_int4_consistent
  syn keyword sqlFunction contained gbt_int4_distance gbt_int4_fetch gbt_int4_penalty
  syn keyword sqlFunction contained gbt_int4_picksplit gbt_int4_same gbt_int4_union gbt_int8_compress
  syn keyword sqlFunction contained gbt_int8_consistent gbt_int8_distance gbt_int8_fetch
  syn keyword sqlFunction contained gbt_int8_penalty gbt_int8_picksplit gbt_int8_same gbt_int8_union
  syn keyword sqlFunction contained gbt_intv_compress gbt_intv_consistent gbt_intv_decompress
  syn keyword sqlFunction contained gbt_intv_distance gbt_intv_fetch gbt_intv_penalty
  syn keyword sqlFunction contained gbt_intv_picksplit gbt_intv_same gbt_intv_union gbt_macad_compress
  syn keyword sqlFunction contained gbt_macad_consistent gbt_macad_fetch gbt_macad_penalty
  syn keyword sqlFunction contained gbt_macad_picksplit gbt_macad_same gbt_macad_union
  syn keyword sqlFunction contained gbt_numeric_compress gbt_numeric_consistent gbt_numeric_penalty
  syn keyword sqlFunction contained gbt_numeric_picksplit gbt_numeric_same gbt_numeric_union
  syn keyword sqlFunction contained gbt_oid_compress gbt_oid_consistent gbt_oid_distance gbt_oid_fetch
  syn keyword sqlFunction contained gbt_oid_penalty gbt_oid_picksplit gbt_oid_same gbt_oid_union
  syn keyword sqlFunction contained gbt_text_compress gbt_text_consistent gbt_text_penalty
  syn keyword sqlFunction contained gbt_text_picksplit gbt_text_same gbt_text_union gbt_time_compress
  syn keyword sqlFunction contained gbt_time_consistent gbt_time_distance gbt_time_fetch
  syn keyword sqlFunction contained gbt_time_penalty gbt_time_picksplit gbt_time_same gbt_time_union
  syn keyword sqlFunction contained gbt_timetz_compress gbt_timetz_consistent gbt_ts_compress
  syn keyword sqlFunction contained gbt_ts_consistent gbt_ts_distance gbt_ts_fetch gbt_ts_penalty
  syn keyword sqlFunction contained gbt_ts_picksplit gbt_ts_same gbt_ts_union gbt_tstz_compress
  syn keyword sqlFunction contained gbt_tstz_consistent gbt_tstz_distance gbt_var_decompress
  syn keyword sqlFunction contained gbt_var_fetch gbtreekey16_in gbtreekey16_out gbtreekey32_in
  syn keyword sqlFunction contained gbtreekey32_out gbtreekey4_in gbtreekey4_out gbtreekey8_in
  syn keyword sqlFunction contained gbtreekey8_out gbtreekey_var_in gbtreekey_var_out int2_dist
  syn keyword sqlFunction contained int4_dist int8_dist interval_dist oid_dist time_dist ts_dist
  syn keyword sqlFunction contained tstz_dist
  syn keyword sqlType     contained gbtreekey32 gbtreekey4 gbtreekey8 gbtreekey_var
  " chkpass
  syn keyword sqlFunction contained chkpass_in chkpass_out eq ne raw
  syn keyword sqlType     contained chkpass
  " citext
  syn keyword sqlFunction contained citext citext_cmp citext_eq citext_ge citext_gt citext_hash
  syn keyword sqlFunction contained citext_larger citext_le citext_lt citext_ne citext_smaller citextin
  syn keyword sqlFunction contained citextout citextrecv citextsend max min regexp_matches
  syn keyword sqlType     contained citext
  " cube
  syn keyword sqlFunction contained cube cube_cmp cube_contained cube_contains cube_dim cube_distance
  syn keyword sqlFunction contained cube_enlarge cube_eq cube_ge cube_gt cube_in cube_inter
  syn keyword sqlFunction contained cube_is_point cube_le cube_ll_coord cube_lt cube_ne cube_out
  syn keyword sqlFunction contained cube_overlap cube_size cube_subset cube_union cube_ur_coord
  syn keyword sqlFunction contained g_cube_compress g_cube_consistent g_cube_decompress g_cube_penalty
  syn keyword sqlFunction contained g_cube_picksplit g_cube_same g_cube_union
  syn keyword sqlType     contained cube
  " dblink
  syn keyword sqlFunction contained dblink dblink_build_sql_delete dblink_build_sql_insert
  syn keyword sqlFunction contained dblink_build_sql_update dblink_cancel_query dblink_close
  syn keyword sqlFunction contained dblink_connect dblink_connect_u dblink_current_query
  syn keyword sqlFunction contained dblink_disconnect dblink_error_message dblink_exec
  syn keyword sqlFunction contained dblink_fdw_validator dblink_fetch dblink_get_connections
  syn keyword sqlFunction contained dblink_get_notify dblink_get_pkey dblink_get_result dblink_is_busy
  syn keyword sqlFunction contained dblink_open dblink_send_query
  syn keyword sqlType     contained dblink_pkey_results
  " dict_int and dict_xsyn
  syn keyword sqlFunction contained dintdict_init dintdict_lexize dxsyn_init dxsyn_lexize
  " earthdistance
  syn keyword sqlFunction contained earth earth_box earth_distance gc_to_sec geo_distance latitude
  syn keyword sqlFunction contained ll_to_earth longitude sec_to_gc
  " file_fdw
  syn keyword sqlFunction contained file_fdw_handler file_fdw_validator
  " fuzzystrmatch
  syn keyword sqlFunction contained difference dmetaphone dmetaphone_alt levenshtein
  syn keyword sqlFunction contained levenshtein_less_equal metaphone soundex text_soundex
  " hstore
  syn keyword sqlFunction contained akeys avals exist exists_all exists_any delete each
  syn keyword sqlFunction contained fetchval ghstore_compress ghstore_consistent ghstore_decompress
  syn keyword sqlFunction contained ghstore_in ghstore_out ghstore_penalty ghstore_picksplit
  syn keyword sqlFunction contained ghstore_same ghstore_union gin_consistent_hstore gin_extract_hstore
  syn keyword sqlFunction contained gin_extract_hstore_query hs_concat hs_contained hs_contains hstore
  syn keyword sqlFunction contained hstore_cmp hstore_eq hstore_ge hstore_gt hstore_hash hstore_in
  syn keyword sqlFunction contained hstore_le hstore_lt hstore_ne hstore_out hstore_recv hstore_send
  syn keyword sqlFunction contained hstore_to_array hstore_to_json hstore_to_json_loose hstore_to_jsonb
  syn keyword sqlFunction contained hstore_to_jsonb_loose hstore_to_matrix hstore_version_diag
  syn keyword sqlFunction contained isdefined isexists populate_record skeys slice slice_array svals
  syn keyword sqlFunction contained tconvert
  syn keyword sqlType     contained ghstore hstore
  " intagg
  syn keyword sqlFunction contained int_array_aggregate int_agg_final_array int_agg_state int_array_enum
  " intarray
  syn keyword sqlFunction contained boolop bqarr_in bqarr_out g_int_compress g_int_consistent g_int_decompress
  syn keyword sqlFunction contained g_int_penalty g_int_picksplit g_int_same g_int_union g_intbig_compress
  syn keyword sqlFunction contained g_intbig_consistent g_intbig_decompress g_intbig_penalty g_intbig_picksplit
  syn keyword sqlFunction contained g_intbig_same g_intbig_union ginint4_consistent ginint4_queryextract icount idx
  syn keyword sqlFunction contained intarray_del_elem intarray_push_array intarray_push_elem intset intset_subtract
  syn keyword sqlFunction contained intset_union_elem rboolop sort sort_asc sort_desc subarray uniq
  syn keyword sqlType     contained intbig_gkey query_int
  " isn
  syn keyword sqlFunction contained btean13cmp btisbn13cmp btisbncmp btismn13cmp btismncmp btissn13cmp
  syn keyword sqlFunction contained btissncmp btupccmp ean13_in ean13_out hashean13 hashisbn hashisbn13
  syn keyword sqlFunction contained hashismn hashismn13 hashissn hashissn13 hashupc is_valid isbn isbn13
  syn keyword sqlFunction contained isbn13_in isbn_in ismn ismn13 ismn13_in ismn_in isn_out isn_weak
  syn keyword sqlFunction contained isneq isnge isngt isnle isnlt isnne issn issn13 issn13_in issn_in
  syn keyword sqlFunction contained make_valid upc upc_in
  syn keyword sqlType     contained ean13 isbn isbn13 ismn ismn13 issn issn13 upc
  " lo
  syn keyword sqlFunction contained lo_oid lo_manage
  " ltree
  syn keyword sqlFunction contained lca lquery_in lquery_out lt_q_regex lt_q_rregex ltq_regex
  syn keyword sqlFunction contained ltq_rregex ltree2text ltree_addltree ltree_addtext ltree_cmp
  syn keyword sqlFunction contained ltree_compress ltree_consistent ltree_decompress ltree_eq ltree_ge
  syn keyword sqlFunction contained ltree_gist_in ltree_gist_out ltree_gt ltree_in ltree_isparent
  syn keyword sqlFunction contained ltree_le ltree_lt ltree_ne ltree_out ltree_penalty ltree_picksplit
  syn keyword sqlFunction contained ltree_risparent ltree_same ltree_textadd ltree_union ltreeparentsel
  syn keyword sqlFunction contained ltxtq_exec ltxtq_in ltxtq_out ltxtq_rexec nlevel subltree subpath
  syn keyword sqlFunction contained text2ltree
  syn keyword sqlType     contained lquery ltree ltree_gist ltxtquery
  " pageinspect
  syn keyword sqlFunction contained brin_metapage_info brin_page_items brin_page_type brin_revmap_data bt_metap
  syn keyword sqlFunction contained bt_page_items bt_page_stats fsm_page_contents get_raw_page gin_leafpage_items
  syn keyword sqlFunction contained gin_metapage_info gin_page_opaque_info heap_page_items page_header
  " pg_buffercache
  syn keyword sqlFunction contained pg_buffercache_pages
  syn keyword sqlConstant contained pg_buffercache
  " pgcrypto
  syn keyword sqlFunction contained armor crypt dearmor decrypt decrypt_iv digest encrypt encrypt_iv
  syn keyword sqlFunction contained gen_random_bytes gen_random_uuid gen_salt hmac pgp_armor_headers pgp_key_id
  syn keyword sqlFunction contained pgp_pub_decrypt pgp_pub_decrypt_bytea pgp_pub_encrypt pgp_pub_encrypt_bytea
  syn keyword sqlFunction contained pgp_sym_decrypt pgp_sym_decrypt_bytea pgp_sym_encrypt pgp_sym_encrypt_bytea
  " pg_freespacemap
  syn keyword sqlFunction contained pg_freespace
  " pg_prewarm
  syn keyword sqlFunction contained pg_prewarm
  " pgrowlocks
  syn keyword sqlFunction contained pgrowlocks
  " pg_stat_statements
  syn keyword sqlConstant contained pg_stat_statements
  syn keyword sqlFunction contained pg_stat_statements pg_stat_statements_reset
  " pgstattuple
  syn keyword sqlFunction contained pg_relpages pgstatginindex pgstatindex pgstattuple pgstattuple_approx
  " pg_trgm
  syn keyword sqlFunction contained gin_extract_query_trgm gin_extract_value_trgm gin_trgm_consistent
  syn keyword sqlFunction contained gtrgm_compress gtrgm_consistent gtrgm_decompress gtrgm_distance gtrgm_in
  syn keyword sqlFunction contained gtrgm_out gtrgm_penalty gtrgm_picksplit gtrgm_same gtrgm_union set_limit
  syn keyword sqlFunction contained show_limit show_trgm similarity similarity_dist similarity_op
  syn keyword sqlType     contained gtrgm
  " postgres_fdw
  syn keyword sqlFunction contained postgres_fdw_handler postgresql_fdw_validator
  " seg
  syn keyword sqlFunction contained gseg_compress gseg_consistent gseg_decompress gseg_penalty gseg_picksplit
  syn keyword sqlFunction contained gseg_same gseg_union seg_center seg_cmp seg_contained seg_contains
  syn keyword sqlFunction contained seg_different seg_ge seg_gt seg_in seg_inter seg_le seg_left seg_lower seg_lt
  syn keyword sqlFunction contained seg_out seg_over_left seg_over_right seg_overlap seg_right seg_same seg_size
  syn keyword sqlFunction contained seg_union seg_upper
  syn keyword sqlType     contained seg
  " sslinfo
  syn keyword sqlFunction contained sl_cipher ssl_client_cert_present ssl_client_dn ssl_client_dn_field
  syn keyword sqlFunction contained ssl_client_serial ssl_is_used ssl_issuer_dn ssl_issuer_field ssl_version
  " tablefunc
  syn keyword sqlFunction contained connectby crosstab crosstab2 crosstab3 crosstab4 normal_rand
  syn keyword sqlType     contained tablefunc_crosstab_2 tablefunc_crosstab_3 tablefunc_crosstab_4
  " tcn
  syn keyword sqlFunction contained triggered_change_notification
  " tsearch2
  syn keyword sqlFunction contained dex_init dex_lexize get_covers headline lexize parse prsd_getlexeme rank_cd
  syn keyword sqlFunction contained reset_tsearch rewrite rewrite_accum rewrite_finish set_curcfg set_curdict
  syn keyword sqlFunction contained set_curprs show_curcfg snb_en_init snb_lexize snb_ru_init snb_ru_init_koi8
  syn keyword sqlFunction contained snb_ru_init_utf8 spell_init spell_lexize stat syn_init syn_lexize token_type
  syn keyword sqlFunction contained tsearch2
  syn keyword sqlType     contained statinfo tokenout tokentype tsdebug
  " tsm_system_rows and tsm_system_time
  syn keyword sqlFunction contained system_rows system_time
  " unaccent
  syn keyword sqlFunction contained unaccent unaccent_init unaccent_lexize
  " uuid-ossp
  syn keyword sqlFunction contained uuid_nil uuid_ns_dns uuid_ns_url uuid_ns_oid uuid_ns_x500
  syn keyword sqlFunction contained uuid_generate_v1 uuid_generate_v1mc uuid_generate_v3 uuid_generate_v4
  syn keyword sqlFunction contained uuid_generate_v5
endif " pgsql_modules_disabled

if (!exists("b:pgsql_postgis_disabled") || b:pgsql_postgis_disabled == 0) &&
      \ (exists("b:pgsql_postgis_disabled") || !exists("g:pgsql_postgis_disabled") || g:pgsql_postgis_disabled == 0)
  " PostGIS 2.2 functions
  " To build this list use:
  "
  " psql template1
  " create database tmp;
  " \c tmp
  " create schema postgis;
  " create extension postgis with schema postgis;
  " \t
  " \o postgis_functions.txt
  " select  distinct p.proname
  " from    pg_catalog.pg_namespace n
  " join    pg_catalog.pg_proc p
  " on      p.pronamespace = n.oid
  " where   n.nspname = 'postgis' and p.proname not like '\_%'
  " order   by p.proname;
  syn keyword sqlFunction contained addauth addgeometrycolumn addoverviewconstraints
  syn keyword sqlFunction contained addrasterconstraints box box2d box2d_in box2d_out box2df_in
  syn keyword sqlFunction contained box2df_out box3d box3d_in box3d_out box3dtobox bytea checkauth
  syn keyword sqlFunction contained checkauthtrigger disablelongtransactions dropgeometrycolumn
  syn keyword sqlFunction contained dropgeometrytable dropoverviewconstraints droprasterconstraints
  syn keyword sqlFunction contained enablelongtransactions equals find_srid geography geography_analyze
  syn keyword sqlFunction contained geography_cmp geography_distance_knn geography_eq geography_ge
  syn keyword sqlFunction contained geography_gist_compress geography_gist_consistent
  syn keyword sqlFunction contained geography_gist_decompress geography_gist_distance
  syn keyword sqlFunction contained geography_gist_penalty geography_gist_picksplit geography_gist_same
  syn keyword sqlFunction contained geography_gist_union geography_gt geography_in geography_le
  syn keyword sqlFunction contained geography_lt geography_out geography_overlaps geography_recv
  syn keyword sqlFunction contained geography_send geography_typmod_in geography_typmod_out geometry
  syn keyword sqlFunction contained geometry_above geometry_analyze geometry_below geometry_cmp
  syn keyword sqlFunction contained geometry_contained_by_raster geometry_contains geometry_distance_box
  syn keyword sqlFunction contained geometry_distance_centroid geometry_distance_centroid_nd
  syn keyword sqlFunction contained geometry_distance_cpa geometry_eq geometry_ge
  syn keyword sqlFunction contained geometry_gist_compress_2d geometry_gist_compress_nd
  syn keyword sqlFunction contained geometry_gist_consistent_2d geometry_gist_consistent_nd
  syn keyword sqlFunction contained geometry_gist_decompress_2d geometry_gist_decompress_nd
  syn keyword sqlFunction contained geometry_gist_distance_2d geometry_gist_distance_nd
  syn keyword sqlFunction contained geometry_gist_penalty_2d geometry_gist_penalty_nd
  syn keyword sqlFunction contained geometry_gist_picksplit_2d geometry_gist_picksplit_nd
  syn keyword sqlFunction contained geometry_gist_same_2d geometry_gist_same_nd geometry_gist_union_2d
  syn keyword sqlFunction contained geometry_gist_union_nd geometry_gt geometry_in geometry_le
  syn keyword sqlFunction contained geometry_left geometry_lt geometry_out geometry_overabove
  syn keyword sqlFunction contained geometry_overbelow geometry_overlaps geometry_overlaps_nd
  syn keyword sqlFunction contained geometry_overleft geometry_overright geometry_raster_contain
  syn keyword sqlFunction contained geometry_raster_overlap geometry_recv geometry_right geometry_same
  syn keyword sqlFunction contained geometry_send geometry_typmod_in geometry_typmod_out geometry_within
  syn keyword sqlFunction contained geometrytype geomfromewkb geomfromewkt get_proj4_from_srid
  syn keyword sqlFunction contained gettransactionid gidx_in gidx_out gserialized_gist_joinsel_2d
  syn keyword sqlFunction contained gserialized_gist_joinsel_nd gserialized_gist_sel_2d
  syn keyword sqlFunction contained gserialized_gist_sel_nd lockrow longtransactionsenabled path
  syn keyword sqlFunction contained pgis_abs_in pgis_abs_out pgis_geometry_accum_finalfn
  syn keyword sqlFunction contained pgis_geometry_accum_transfn
  syn keyword sqlFunction contained pgis_geometry_clusterintersecting_finalfn
  syn keyword sqlFunction contained pgis_geometry_clusterwithin_finalfn pgis_geometry_collect_finalfn
  syn keyword sqlFunction contained pgis_geometry_makeline_finalfn pgis_geometry_polygonize_finalfn
  syn keyword sqlFunction contained pgis_geometry_union_finalfn point polygon populate_geometry_columns
  syn keyword sqlFunction contained postgis_addbbox postgis_cache_bbox postgis_constraint_dims
  syn keyword sqlFunction contained postgis_constraint_srid postgis_constraint_type postgis_dropbbox
  syn keyword sqlFunction contained postgis_full_version postgis_gdal_version postgis_geos_version
  syn keyword sqlFunction contained postgis_getbbox postgis_hasbbox postgis_lib_build_date
  syn keyword sqlFunction contained postgis_lib_version postgis_libjson_version
  syn keyword sqlFunction contained postgis_liblwgeom_version postgis_libxml_version postgis_noop
  syn keyword sqlFunction contained postgis_proj_version postgis_raster_lib_build_date
  syn keyword sqlFunction contained postgis_raster_lib_version postgis_raster_scripts_installed
  syn keyword sqlFunction contained postgis_scripts_build_date postgis_scripts_installed
  syn keyword sqlFunction contained postgis_scripts_released postgis_svn_version
  syn keyword sqlFunction contained postgis_transform_geometry postgis_type_name postgis_typmod_dims
  syn keyword sqlFunction contained postgis_typmod_srid postgis_typmod_type postgis_version raster_above
  syn keyword sqlFunction contained raster_below raster_contain raster_contained
  syn keyword sqlFunction contained raster_contained_by_geometry raster_eq raster_geometry_contain
  syn keyword sqlFunction contained raster_geometry_overlap raster_hash raster_in raster_left raster_out
  syn keyword sqlFunction contained raster_overabove raster_overbelow raster_overlap raster_overleft
  syn keyword sqlFunction contained raster_overright raster_right raster_same spheroid_in spheroid_out
  syn keyword sqlFunction contained st_3dclosestpoint st_3ddfullywithin st_3ddistance st_3ddwithin
  syn keyword sqlFunction contained st_3dextent st_3dintersects st_3dlength st_3dlength_spheroid
  syn keyword sqlFunction contained st_3dlongestline st_3dmakebox st_3dmaxdistance st_3dperimeter
  syn keyword sqlFunction contained st_3dshortestline st_accum st_addband st_addmeasure st_addpoint
  syn keyword sqlFunction contained st_affine st_approxcount st_approxhistogram st_approxquantile
  syn keyword sqlFunction contained st_approxsummarystats st_area st_area2d st_asbinary
  syn keyword sqlFunction contained st_asencodedpolyline st_asewkb st_asewkt st_asgdalraster
  syn keyword sqlFunction contained st_asgeojson st_asgml st_ashexewkb st_asjpeg st_askml
  syn keyword sqlFunction contained st_aslatlontext st_aspect st_aspng st_asraster st_assvg st_astext
  syn keyword sqlFunction contained st_astiff st_astwkb st_asx3d st_azimuth st_band st_bandisnodata
  syn keyword sqlFunction contained st_bandmetadata st_bandnodatavalue st_bandpath st_bandpixeltype
  syn keyword sqlFunction contained st_bdmpolyfromtext st_bdpolyfromtext st_boundary st_boundingdiagonal
  syn keyword sqlFunction contained st_box2dfromgeohash st_buffer st_buildarea st_centroid
  syn keyword sqlFunction contained st_cleangeometry st_clip st_clipbybox2d st_closestpoint
  syn keyword sqlFunction contained st_closestpointofapproach st_clusterintersecting st_clusterwithin
  syn keyword sqlFunction contained st_collect st_collectionextract st_collectionhomogenize st_colormap
  syn keyword sqlFunction contained st_combine_bbox st_combinebbox st_concavehull st_contains
  syn keyword sqlFunction contained st_containsproperly st_convexhull st_coorddim st_count st_countagg
  syn keyword sqlFunction contained st_coveredby st_covers st_cpawithin st_createoverview st_crosses
  syn keyword sqlFunction contained st_curvetoline st_delaunaytriangles st_dfullywithin st_difference
  syn keyword sqlFunction contained st_dimension st_disjoint st_distance st_distance_sphere
  syn keyword sqlFunction contained st_distance_spheroid st_distancecpa st_distancesphere
  syn keyword sqlFunction contained st_distancespheroid st_distinct4ma st_dump st_dumpaspolygons
  syn keyword sqlFunction contained st_dumppoints st_dumprings st_dumpvalues st_dwithin st_endpoint
  syn keyword sqlFunction contained st_envelope st_equals st_estimated_extent st_estimatedextent
  syn keyword sqlFunction contained st_expand st_extent st_exteriorring st_find_extent st_findextent
  syn keyword sqlFunction contained st_flipcoordinates st_force2d st_force3d st_force3dm st_force3dz
  syn keyword sqlFunction contained st_force4d st_force_2d st_force_3d st_force_3dm st_force_3dz
  syn keyword sqlFunction contained st_force_4d st_force_collection st_forcecollection st_forcecurve
  syn keyword sqlFunction contained st_forcerhr st_forcesfs st_fromgdalraster st_gdaldrivers
  syn keyword sqlFunction contained st_geogfromtext st_geogfromwkb st_geographyfromtext st_geohash
  syn keyword sqlFunction contained st_geomcollfromtext st_geomcollfromwkb st_geometryfromtext
  syn keyword sqlFunction contained st_geometryn st_geometrytype st_geomfromewkb st_geomfromewkt
  syn keyword sqlFunction contained st_geomfromgeohash st_geomfromgeojson st_geomfromgml st_geomfromkml
  syn keyword sqlFunction contained st_geomfromtext st_geomfromtwkb st_geomfromwkb st_georeference
  syn keyword sqlFunction contained st_geotransform st_gmltosql st_hasarc st_hasnoband
  syn keyword sqlFunction contained st_hausdorffdistance st_height st_hillshade st_histogram
  syn keyword sqlFunction contained st_interiorringn st_interpolatepoint st_intersection st_intersects
  syn keyword sqlFunction contained st_invdistweight4ma st_isclosed st_iscollection st_iscoveragetile
  syn keyword sqlFunction contained st_isempty st_isring st_issimple st_isvalid st_isvaliddetail
  syn keyword sqlFunction contained st_isvalidreason st_isvalidtrajectory st_length st_length2d
  syn keyword sqlFunction contained st_length2d_spheroid st_length2dspheroid st_length_spheroid
  syn keyword sqlFunction contained st_lengthspheroid st_line_interpolate_point st_line_locate_point
  syn keyword sqlFunction contained st_line_substring st_linecrossingdirection
  syn keyword sqlFunction contained st_linefromencodedpolyline st_linefrommultipoint st_linefromtext
  syn keyword sqlFunction contained st_linefromwkb st_lineinterpolatepoint st_linelocatepoint
  syn keyword sqlFunction contained st_linemerge st_linestringfromwkb st_linesubstring st_linetocurve
  syn keyword sqlFunction contained st_locate_along_measure st_locate_between_measures st_locatealong
  syn keyword sqlFunction contained st_locatebetween st_locatebetweenelevations st_longestline st_m
  syn keyword sqlFunction contained st_makebox2d st_makeemptyraster st_makeenvelope st_makeline
  syn keyword sqlFunction contained st_makepoint st_makepointm st_makepolygon st_makevalid st_mapalgebra
  syn keyword sqlFunction contained st_mapalgebraexpr st_mapalgebrafct st_mapalgebrafctngb st_max4ma
  syn keyword sqlFunction contained st_maxdistance st_mean4ma st_mem_size st_memcollect st_memsize
  syn keyword sqlFunction contained st_memunion st_metadata st_min4ma st_minconvexhull st_mindist4ma
  syn keyword sqlFunction contained st_minimumboundingcircle st_minpossiblevalue st_mlinefromtext
  syn keyword sqlFunction contained st_mlinefromwkb st_mpointfromtext st_mpointfromwkb st_mpolyfromtext
  syn keyword sqlFunction contained st_mpolyfromwkb st_multi st_multilinefromwkb
  syn keyword sqlFunction contained st_multilinestringfromtext st_multipointfromtext
  syn keyword sqlFunction contained st_multipointfromwkb st_multipolyfromwkb st_multipolygonfromtext
  syn keyword sqlFunction contained st_ndims st_nearestvalue st_neighborhood st_node
  syn keyword sqlFunction contained st_notsamealignmentreason st_npoints st_nrings st_numbands
  syn keyword sqlFunction contained st_numgeometries st_numinteriorring st_numinteriorrings
  syn keyword sqlFunction contained st_numpatches st_numpoints st_offsetcurve st_orderingequals
  syn keyword sqlFunction contained st_overlaps st_patchn st_perimeter st_perimeter2d st_pixelascentroid
  syn keyword sqlFunction contained st_pixelascentroids st_pixelaspoint st_pixelaspoints
  syn keyword sqlFunction contained st_pixelaspolygon st_pixelaspolygons st_pixelheight st_pixelofvalue
  syn keyword sqlFunction contained st_pixelwidth st_point st_point_inside_circle st_pointfromgeohash
  syn keyword sqlFunction contained st_pointfromtext st_pointfromwkb st_pointinsidecircle st_pointn
  syn keyword sqlFunction contained st_pointonsurface st_polyfromtext st_polyfromwkb st_polygon
  syn keyword sqlFunction contained st_polygonfromtext st_polygonfromwkb st_polygonize st_project
  syn keyword sqlFunction contained st_quantile st_range4ma st_rastertoworldcoord st_rastertoworldcoordx
  syn keyword sqlFunction contained st_rastertoworldcoordy st_reclass st_relate st_relatematch
  syn keyword sqlFunction contained st_removepoint st_removerepeatedpoints st_resample st_rescale
  syn keyword sqlFunction contained st_resize st_reskew st_retile st_reverse st_rotate st_rotatex
  syn keyword sqlFunction contained st_rotatey st_rotatez st_rotation st_roughness st_samealignment
  syn keyword sqlFunction contained st_scale st_scalex st_scaley st_segmentize st_setbandisnodata
  syn keyword sqlFunction contained st_setbandnodatavalue st_seteffectivearea st_setgeoreference
  syn keyword sqlFunction contained st_setgeotransform st_setpoint st_setrotation st_setscale st_setskew
  syn keyword sqlFunction contained st_setsrid st_setupperleft st_setvalue st_setvalues st_sharedpaths
  syn keyword sqlFunction contained st_shift_longitude st_shiftlongitude st_shortestline st_simplify
  syn keyword sqlFunction contained st_simplifypreservetopology st_simplifyvw st_skewx st_skewy st_slope
  syn keyword sqlFunction contained st_snap st_snaptogrid st_split st_srid st_startpoint st_stddev4ma
  syn keyword sqlFunction contained st_subdivide st_sum4ma st_summary st_summarystats st_summarystatsagg
  syn keyword sqlFunction contained st_swapordinates st_symdifference st_symmetricdifference st_tile
  syn keyword sqlFunction contained st_touches st_tpi st_transform st_translate st_transscale st_tri
  syn keyword sqlFunction contained st_unaryunion st_union st_upperleftx st_upperlefty st_value
  syn keyword sqlFunction contained st_valuecount st_valuepercent st_width st_within st_wkbtosql
  syn keyword sqlFunction contained st_wkttosql st_worldtorastercoord st_worldtorastercoordx
  syn keyword sqlFunction contained st_worldtorastercoordy st_x st_xmax st_xmin st_y st_ymax st_ymin
  syn keyword sqlFunction contained st_z st_zmax st_zmflag st_zmin text unlockrows updategeometrysrid
  syn keyword sqlFunction contained updaterastersrid

  " PostGIS 2.2 Topology functions
  " To build this list:
  "
  " create extension postgis_topology;
  " \t
  " \o postgis_topology.txt
  " select  distinct p.proname
  " from    pg_catalog.pg_namespace n
  " join    pg_catalog.pg_proc p
  " on      p.pronamespace = n.oid
  " where   n.nspname = 'topology' and p.proname not like '\_%' order by p.proname;
  syn keyword sqlFunction contained addedge addface addnode addtopogeometrycolumn addtosearchpath asgml
  syn keyword sqlFunction contained astopojson cleartopogeom copytopology createtopogeom createtopology
  syn keyword sqlFunction contained droptopogeometrycolumn droptopology equals geometry geometrytype
  syn keyword sqlFunction contained getedgebypoint getfacebypoint getnodebypoint getnodeedges getringedges
  syn keyword sqlFunction contained gettopogeomelementarray gettopogeomelements gettopologyid gettopologyname
  syn keyword sqlFunction contained gettopologysrid intersects layertrigger polygonize
  syn keyword sqlFunction contained postgis_topology_scripts_installed relationtrigger st_addedgemodface
  syn keyword sqlFunction contained st_addedgenewfaces st_addisoedge st_addisonode st_changeedgegeom
  syn keyword sqlFunction contained st_createtopogeo st_geometrytype st_getfaceedges st_getfacegeometry
  syn keyword sqlFunction contained st_inittopogeo st_modedgeheal st_modedgesplit st_moveisonode
  syn keyword sqlFunction contained st_newedgeheal st_newedgessplit st_remedgemodface st_remedgenewface
  syn keyword sqlFunction contained st_remisonode st_removeisoedge st_removeisonode st_simplify
  syn keyword sqlFunction contained topoelementarray_agg topoelementarray_append topogeo_addgeometry
  syn keyword sqlFunction contained topogeo_addlinestring topogeo_addpoint topogeo_addpolygon topologysummary
  syn keyword sqlFunction contained totopogeom validatetopology

  " PostGIS 2.2 types
  " From pg_type and PostGIS manual
  syn keyword sqlType contained addbandarg agg_count agg_samealignment box2d box2df box3d geography
  syn keyword sqlType contained geometry geometry_dump geomval gidx pgis_abs rastbandarg raster reclassarg
  syn keyword sqlType contained spheroid summarystats unionarg valid_detail
  syn keyword sqlType contained getfaceedges_returntype layer topoelement topoelementarray topogeometry
  syn keyword sqlType contained topology topology_id_seq validatetopology_returntype

  " PostGIS 2.2 Grand Unified Custom Variables (GUCs) (§8.2 from the manual)
  syn keyword sqlConstant contained backend gdal_datapath gdal_enabled_drivers enable_outdb_rasters
endif " pgsql_postgis_disabled

" pgRouting 2.2.1
if (!exists("b:pgsql_pgrouting_disabled") || b:pgsql_pgrouting_disabled == 0) &&
      \ (exists("b:pgsql_pgrouting_disabled") || !exists("g:pgsql_pgrouting_disabled") || g:pgsql_pgrouting_disabled == 0)
  " create extension pgrouting with schema pgrouting;
  " \t
  " \o pgrouting_functions.txt
  " select  distinct p.proname
  " from    pg_catalog.pg_namespace n
  " join    pg_catalog.pg_proc p
  " on      p.pronamespace = n.oid
  " where   n.nspname = 'pgrouting' and p.proname not like '\_%' order by p.proname;
  syn keyword sqlFunction contained pgr_alphashape pgr_analyzegraph pgr_analyzeoneway pgr_apspjohnson
  syn keyword sqlFunction contained pgr_apspwarshall pgr_astar pgr_bdastar pgr_bddijkstra pgr_createtopology
  syn keyword sqlFunction contained pgr_createverticestable pgr_dijkstra pgr_dijkstracost pgr_dijkstravia
  syn keyword sqlFunction contained pgr_drivingdistance pgr_endpoint pgr_flipedges pgr_floydwarshall
  syn keyword sqlFunction contained pgr_getcolumnname pgr_gettablename pgr_gsoc_vrppdtw pgr_iscolumnindexed
  syn keyword sqlFunction contained pgr_iscolumnintable pgr_johnson pgr_kdijkstracost pgr_kdijkstrapath pgr_ksp
  syn keyword sqlFunction contained pgr_labelgraph pgr_nodenetwork pgr_pointsaspolygon pgr_pointstodmatrix
  syn keyword sqlFunction contained pgr_pointstovids pgr_pointtoedgenode pgr_quote_ident pgr_startpoint
  syn keyword sqlFunction contained pgr_texttopoints pgr_trsp pgr_trspviaedges pgr_trspviavertices pgr_tsp
  syn keyword sqlFunction contained pgr_version pgr_versionless pgr_vidstodmatrix pgr_vrponedepot pgr_withpoints
  syn keyword sqlFunction contained pgr_withpointscost pgr_withpointsdd pgr_withpointsksp
  " From pgRouting manual
  syn keyword sqlType contained pgr_costresult pgr_costresult3 pgr_geomresult
endif " pgsql_pgrouting_disabled

if (!exists("b:pgsql_pgtap_disabled") || b:pgsql_pgtap_disabled == 0) &&
      \ (exists("b:pgsql_pgtap_disabled") || !exists("g:pgsql_pgtap_disabled") || g:pgsql_pgtap_disabled == 0)
  " pgTap
  "
  " create extension pgtap with schema pgtap;
  "
  " select  distinct p.proname
  " from    pg_catalog.pg_namespace n
  " join    pg_catalog.pg_proc p
  " on      p.pronamespace = n.oid
  " where   n.nspname = 'pgtap' and p.proname not like '\_%'
  "   and   n.proname <> 'is' -- We want to highlight 'is' as a keyword
  " order   by p.proname;
  syn keyword sqlFunction contained add_result alike any_column_privs_are bag_eq bag_has bag_hasnt bag_ne can
  syn keyword sqlFunction contained cast_context_is casts_are check_test cmp_ok col_default_is col_has_check
  syn keyword sqlFunction contained col_has_default col_hasnt_default col_is_fk col_is_null col_is_pk
  syn keyword sqlFunction contained col_is_unique col_isnt_fk col_isnt_pk col_not_null col_type_is
  syn keyword sqlFunction contained collect_tap column_privs_are columns_are composite_owner_is
  syn keyword sqlFunction contained database_privs_are db_owner_is diag diag_test_name display_oper do_tap
  syn keyword sqlFunction contained doesnt_imatch doesnt_match domain_type_is domain_type_isnt domains_are
  syn keyword sqlFunction contained enum_has_labels enums_are fail fdw_privs_are findfuncs finish fk_ok
  syn keyword sqlFunction contained foreign_table_owner_is foreign_tables_are function_lang_is
  syn keyword sqlFunction contained function_owner_is function_privs_are function_returns functions_are
  syn keyword sqlFunction contained groups_are has_cast has_check has_column has_composite has_domain
  syn keyword sqlFunction contained has_enum has_fk has_foreign_table has_function has_group has_index
  syn keyword sqlFunction contained has_language has_leftop has_materialized_view has_opclass has_operator
  syn keyword sqlFunction contained has_pk has_relation has_rightop has_role has_rule has_schema has_sequence
  syn keyword sqlFunction contained has_table has_tablespace has_trigger has_type has_unique has_user
  syn keyword sqlFunction contained has_view hasnt_cast hasnt_column hasnt_composite hasnt_domain hasnt_enum
  syn keyword sqlFunction contained hasnt_fk hasnt_foreign_table hasnt_function hasnt_group hasnt_index
  syn keyword sqlFunction contained hasnt_language hasnt_materialized_view hasnt_opclass hasnt_pk
  syn keyword sqlFunction contained hasnt_relation hasnt_role hasnt_rule hasnt_schema hasnt_sequence
  syn keyword sqlFunction contained hasnt_table hasnt_tablespace hasnt_trigger hasnt_type hasnt_user
  syn keyword sqlFunction contained hasnt_view ialike imatches in_todo index_is_primary index_is_type
  syn keyword sqlFunction contained index_is_unique index_owner_is indexes_are is_aggregate is_clustered
  syn keyword sqlFunction contained is_definer is_empty is_member_of is_strict is_superuser isa_ok isnt
  syn keyword sqlFunction contained isnt_empty isnt_strict isnt_superuser language_is_trusted
  syn keyword sqlFunction contained language_owner_is language_privs_are languages_are lives_ok matches
  syn keyword sqlFunction contained materialized_view_owner_is materialized_views_are no_plan num_failed ok
  syn keyword sqlFunction contained opclass_owner_is opclasses_are operators_are os_name pass performs_ok
  syn keyword sqlFunction contained performs_within pg_version pg_version_num pgtap_version plan
  syn keyword sqlFunction contained relation_owner_is results_eq results_ne roles_are row_eq rule_is_instead
  syn keyword sqlFunction contained rule_is_on rules_are runtests schema_owner_is schema_privs_are
  syn keyword sqlFunction contained schemas_are sequence_owner_is sequence_privs_are sequences_are
  syn keyword sqlFunction contained server_privs_are set_eq set_has set_hasnt set_ne skip table_owner_is
  syn keyword sqlFunction contained table_privs_are tables_are tablespace_owner_is tablespace_privs_are
  syn keyword sqlFunction contained tablespaces_are throws_ilike throws_imatching throws_like throws_matching
  syn keyword sqlFunction contained throws_ok todo todo_end todo_start trigger_is triggers_are type_owner_is
  syn keyword sqlFunction contained types_are unalike unialike users_are view_owner_is views_are
  syn keyword sqlFunction contained volatility_is
endif " pgsql_pgtap_disabled

syn keyword sqlOperator contained all and any between distinct escape except exists
syn keyword sqlOperator contained ilike in intersect like not or like_regex
syn keyword sqlOperator contained some union
syn match   sqlOperator contained /\<similar\_s\+to\>/

" SQL Types
" To build this list:
"
" psql template1
" \t
" \o types.txt
" select distinct pg_catalog.format_type(t.oid, null) as "name"
"   from pg_catalog.pg_type t
"   left join pg_catalog.pg_namespace n
"     on n.oid = t.typnamespace
"  where (t.typrelid = 0 or (select c.relkind = 'c' from pg_catalog.pg_class c
"                             where c.oid = t.typrelid))
"    and not exists(select 1 from pg_catalog.pg_type el
"                    where el.oid = t.typelem and el.typarray = t.oid)
"    and pg_catalog.pg_type_is_visible(t.oid)
"  order by "name";
"
"  Note that there are data type names composed of more than one word and
"  some other are between quotes. The list must be complemented with the
"  types and aliases listed in Table 8-1 of PostgreSQL manual.
syn keyword sqlType contained abstime aclitem any anyarray anyelement anyenum anynonarray anyrange
syn keyword sqlType contained bigint bigserial bit boolean box bytea char character varying cid cidr
syn keyword sqlType contained circle cstring date daterange decimal double precision event_trigger
syn keyword sqlType contained fdw_handler float4 float8 gtsvector inet int int2 int2vector int4
syn keyword sqlType contained int4range int8 int8range integer internal interval json jsonb
syn keyword sqlType contained language_handler line lseg macaddr money name numeric numrange oid
syn keyword sqlType contained oidvector opaque path pg_ddl_command pg_lsn pg_node_tree point polygon
syn keyword sqlType contained real record refcursor regclass regconfig regdictionary regnamespace
syn keyword sqlType contained regoper regoperator regproc regprocedure regrole regtype reltime serial
syn keyword sqlType contained serial2 serial4 serial8 smallint smallserial smgr text tid time
syn keyword sqlType contained zone time without timestamp timestampz timetz tinterval
syn keyword sqlType contained tsm_handler tsquery tsrange tstzrange tsvector txid_snapshot unknown uuid
syn keyword sqlType contained varbit varchar void xid xml with

" System catalogs:
syn keyword sqlConstant contained pg_aggregate pg_am pg_amop pg_amproc pg_attrdef
syn keyword sqlConstant contained pg_attribute pg_auth_members pg_authid
syn keyword sqlConstant contained pg_available_extension_versions
syn keyword sqlConstant contained pg_available_extensions pg_cast pg_class
syn keyword sqlConstant contained pg_collation pg_constraint pg_conversion pg_cursors
syn keyword sqlConstant contained pg_database pg_db_role_setting pg_default_acl
syn keyword sqlConstant contained pg_depend pg_description pg_enum pg_event_trigger
syn keyword sqlConstant contained pg_extension pg_file_settings
syn keyword sqlConstant contained pg_foreign_data_wrapper pg_foreign_server
syn keyword sqlConstant contained pg_foreign_table pg_group pg_index pg_indexes
syn keyword sqlConstant contained pg_inherits pg_language pg_largeobject
syn keyword sqlConstant contained pg_largeobject_metadata pg_locks pg_matviews
syn keyword sqlConstant contained pg_namespace pg_opclass pg_operator pg_opfamily
syn keyword sqlConstant contained pg_pltemplate pg_policies pg_policy
syn keyword sqlConstant contained pg_prepared_statements pg_prepared_xacts pg_proc
syn keyword sqlConstant contained pg_range pg_replication_origin
syn keyword sqlConstant contained pg_replication_origin_status pg_replication_slots
syn keyword sqlConstant contained pg_rewrite pg_roles pg_rules pg_seclabel
syn keyword sqlConstant contained pg_seclabels pg_settings pg_shadow pg_shdepend
syn keyword sqlConstant contained pg_shdescription pg_shseclabel pg_statistic
syn keyword sqlConstant contained pg_stats pg_tables pg_tablespace
syn keyword sqlConstant contained pg_timezone_abbrevs pg_timezone_names pg_transform
syn keyword sqlConstant contained pg_trigger pg_ts_config pg_ts_config_map pg_ts_dict
syn keyword sqlConstant contained pg_ts_parser pg_ts_template pg_type pg_user
syn keyword sqlConstant contained pg_user_mapping pg_user_mappings pg_views

" Variables
syn match sqlVariable "\<_[A-Za-z0-9][A-Za-z0-9_]*\>"

" Numbers
syn match sqlNumber "-\=\<\d*\.\=[0-9_]\>"

" Strings
syn region sqlIdentifier start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region sqlString     start=+'+  skip=+\\\\\|\\'+  end=+'+ contains=@Spell

" Comments
syn region sqlComment    start="/\*" end="\*/" contains=sqlTodo,@Spell
syn match  sqlComment    "#.*$"                contains=sqlTodo,@Spell
syn match  sqlComment    "--.*$"               contains=sqlTodo,@Spell

" Options
syn keyword sqlOption contained client_min_messages search_path

" Error Codes
syn keyword sqlErrorCode contained active_sql_transaction admin_shutdown ambiguous_alias ambiguous_column
syn keyword sqlErrorCode contained ambiguous_function ambiguous_parameter array_subscript_error
syn keyword sqlErrorCode contained bad_copy_file_format branch_transaction_already_active cannot_coerce
syn keyword sqlErrorCode contained cannot_connect_now cant_change_runtime_param cardinality_violation
syn keyword sqlErrorCode contained case_not_found character_not_in_repertoire check_violation
syn keyword sqlErrorCode contained collation_mismatch config_file_error configuration_limit_exceeded
syn keyword sqlErrorCode contained connection_does_not_exist connection_exception connection_failure
syn keyword sqlErrorCode contained containing_sql_not_permitted crash_shutdown data_corrupted data_exception
syn keyword sqlErrorCode contained database_dropped datatype_mismatch datetime_field_overflow
syn keyword sqlErrorCode contained deadlock_detected dependent_objects_still_exist
syn keyword sqlErrorCode contained dependent_privilege_descriptors_still_exist deprecated_feature
syn keyword sqlErrorCode contained diagnostics_exception disk_full division_by_zero duplicate_alias
syn keyword sqlErrorCode contained duplicate_column duplicate_cursor duplicate_database duplicate_file
syn keyword sqlErrorCode contained duplicate_function duplicate_object duplicate_prepared_statement
syn keyword sqlErrorCode contained duplicate_schema duplicate_table dynamic_result_sets_returned
syn keyword sqlErrorCode contained error_in_assignment escape_character_conflict exclusion_violation
syn keyword sqlErrorCode contained external_routine_exception external_routine_invocation_exception
syn keyword sqlErrorCode contained fdw_column_name_not_found fdw_dynamic_parameter_value_needed fdw_error
syn keyword sqlErrorCode contained fdw_function_sequence_error fdw_inconsistent_descriptor_information
syn keyword sqlErrorCode contained fdw_invalid_attribute_value fdw_invalid_column_name
syn keyword sqlErrorCode contained fdw_invalid_column_number fdw_invalid_data_type
syn keyword sqlErrorCode contained fdw_invalid_data_type_descriptors fdw_invalid_descriptor_field_identifier
syn keyword sqlErrorCode contained fdw_invalid_handle fdw_invalid_option_index fdw_invalid_option_name
syn keyword sqlErrorCode contained fdw_invalid_string_format fdw_invalid_string_length_or_buffer_length
syn keyword sqlErrorCode contained fdw_invalid_use_of_null_pointer fdw_no_schemas fdw_option_name_not_found
syn keyword sqlErrorCode contained fdw_out_of_memory fdw_reply_handle fdw_schema_not_found
syn keyword sqlErrorCode contained fdw_table_not_found fdw_too_many_handles fdw_unable_to_create_execution
syn keyword sqlErrorCode contained fdw_unable_to_create_reply fdw_unable_to_establish_connection
syn keyword sqlErrorCode contained feature_not_supported floating_point_exception foreign_key_violation
syn keyword sqlErrorCode contained function_executed_no_return_statement grouping_error
syn keyword sqlErrorCode contained held_cursor_requires_same_isolation_level implicit_zero_bit_padding
syn keyword sqlErrorCode contained in_failed_sql_transaction inappropriate_access_mode_for_branch_transaction
syn keyword sqlErrorCode contained inappropriate_isolation_level_for_branch_transaction
syn keyword sqlErrorCode contained indeterminate_collation indeterminate_datatype index_corrupted
syn keyword sqlErrorCode contained indicator_overflow insufficient_privilege insufficient_resources
syn keyword sqlErrorCode contained integrity_constraint_violation internal_error interval_field_overflow
syn keyword sqlErrorCode contained invalid_argument_for_logarithm invalid_argument_for_nth_value_function
syn keyword sqlErrorCode contained invalid_argument_for_ntile_function invalid_argument_for_power_function
syn keyword sqlErrorCode contained invalid_argument_for_width_bucket_function
syn keyword sqlErrorCode contained invalid_authorization_specification invalid_binary_representation
syn keyword sqlErrorCode contained invalid_catalog_name invalid_character_value_for_cast
syn keyword sqlErrorCode contained invalid_column_definition invalid_column_reference
syn keyword sqlErrorCode contained invalid_cursor_definition invalid_cursor_name invalid_cursor_state
syn keyword sqlErrorCode contained invalid_database_definition invalid_datetime_format
syn keyword sqlErrorCode contained invalid_escape_character invalid_escape_octet invalid_escape_sequence
syn keyword sqlErrorCode contained invalid_foreign_key invalid_function_definition invalid_grantor
syn keyword sqlErrorCode contained invalid_grant_operation invalid_indicator_parameter_value
syn keyword sqlErrorCode contained invalid_locator_specification invalid_name invalid_object_definition
syn keyword sqlErrorCode contained invalid_parameter_value invalid_password
syn keyword sqlErrorCode contained invalid_prepared_statement_definition invalid_recursion
syn keyword sqlErrorCode contained invalid_regular_expression invalid_role_specification
syn keyword sqlErrorCode contained invalid_row_count_in_limit_clause
syn keyword sqlErrorCode contained invalid_row_count_in_result_offset_clause invalid_savepoint_specification
syn keyword sqlErrorCode contained invalid_schema_definition invalid_schema_name invalid_sql_statement_name
syn keyword sqlErrorCode contained invalid_sqlstate_returned invalid_table_definition
syn keyword sqlErrorCode contained invalid_text_representation invalid_time_zone_displacement_value
syn keyword sqlErrorCode contained invalid_transaction_initiation invalid_transaction_state
syn keyword sqlErrorCode contained invalid_transaction_termination invalid_use_of_escape_character
syn keyword sqlErrorCode contained invalid_xml_comment invalid_xml_content invalid_xml_document
syn keyword sqlErrorCode contained invalid_xml_processing_instruction io_error locator_exception
syn keyword sqlErrorCode contained lock_file_exists lock_not_available modifying_sql_data_not_permitted
syn keyword sqlErrorCode contained most_specific_type_mismatch name_too_long no_active_sql_transaction
syn keyword sqlErrorCode contained no_active_sql_transaction_for_branch_transaction
syn keyword sqlErrorCode contained no_additional_dynamic_result_sets_returned no_data no_data_found
syn keyword sqlErrorCode contained nonstandard_use_of_escape_character not_an_xml_document not_null_violation
syn keyword sqlErrorCode contained null_value_eliminated_in_set_function null_value_no_indicator_parameter
syn keyword sqlErrorCode contained null_value_not_allowed numeric_value_out_of_range object_in_use
syn keyword sqlErrorCode contained object_not_in_prerequisite_state operator_intervention out_of_memory
syn keyword sqlErrorCode contained plpgsql_error privilege_not_granted privilege_not_revoked
syn keyword sqlErrorCode contained program_limit_exceeded prohibited_sql_statement_attempted
syn keyword sqlErrorCode contained protocol_violation query_canceled raise_exception
syn keyword sqlErrorCode contained read_only_sql_transaction reading_sql_data_not_permitted reserved_name
syn keyword sqlErrorCode contained restrict_violation savepoint_exception
syn keyword sqlErrorCode contained schema_and_data_statement_mixing_not_supported serialization_failure
syn keyword sqlErrorCode contained sql_routine_exception sql_statement_not_yet_complete
syn keyword sqlErrorCode contained sqlclient_unable_to_establish_sqlconnection
syn keyword sqlErrorCode contained sqlserver_rejected_establishment_of_sqlconnection srf_protocol_violated
syn keyword sqlErrorCode contained stacked_diagnostics_accessed_without_active_handler
syn keyword sqlErrorCode contained statement_completion_unknown statement_too_complex
syn keyword sqlErrorCode contained string_data_length_mismatch string_data_right_truncation substring_error
syn keyword sqlErrorCode contained successful_completion syntax_error syntax_error_or_access_rule_violation
syn keyword sqlErrorCode contained system_error too_many_arguments too_many_columns too_many_connections
syn keyword sqlErrorCode contained too_many_rows transaction_integrity_constraint_violation
syn keyword sqlErrorCode contained transaction_resolution_unknown transaction_rollback
syn keyword sqlErrorCode contained trigger_protocol_violated triggered_action_exception
syn keyword sqlErrorCode contained triggered_data_change_violation trim_error undefined_column undefined_file
syn keyword sqlErrorCode contained undefined_function undefined_object undefined_parameter undefined_table
syn keyword sqlErrorCode contained unique_violation unterminated_c_string untranslatable_character warning
syn keyword sqlErrorCode contained windowing_error with_check_option_violation wrong_object_type
syn keyword sqlErrorCode contained zero_length_character_string

" Psql Keywords
syn keyword sqlPsqlKeyword contained cd conninfo echo qecho prompt pset setenv timing unset

" Todo
syn keyword sqlTodo contained TODO FIXME XXX DEBUG NOTE

" PL/pgSQL
syn region plpgsql start=+\$pgsql\$+ end=+\$pgsql\$+ keepend contains=ALL
syn region plpgsql start=+\$\$+ end=+\$\$+ keepend contains=ALL

" PL/<any other language>
fun! s:add_syntax(s)
  execute 'syn include @PL' . a:s . ' syntax/' . a:s . '.vim'
  unlet b:current_syntax
  execute 'syn region pgsqlpl' . a:s . ' start=+\$' . a:s . '\$+ end=+\$' . a:s . '\$+ keepend contains=@PL' . a:s
endf

if exists("b:pgsql_pl")
  for pl in b:pgsql_pl
    call s:add_syntax(pl)
  endfor
elseif exists("pgsql_pl")
  for pl in g:pgsql_pl
    call s:add_syntax(pl)
  endfor
endif

" Default highlighting
hi def link sqlComment        Comment
hi def link sqlConstant       Constant
hi def link sqlErrorCode      Special
hi def link sqlFunction       Function
hi def link sqlIdentifier     Identifier
hi def link sqlKeyword        sqlSpecial
hi def link sqlplpgsqlKeyword sqlSpecial
hi def link sqlNumber         Number
hi def link sqlOperator       sqlStatement
hi def link sqlOption         Define
hi def link sqlSpecial        Special
hi def link sqlStatement      Statement
hi def link sqlString         String
hi def link sqlType           Type
hi def link sqlTodo           Todo
hi def link sqlVariable       Identifier
hi def link sqlPsqlKeyword    SpecialKey

let b:current_syntax = "sql"

