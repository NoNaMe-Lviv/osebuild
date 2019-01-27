include config.mk

LOCAL_PATH := $(DIR)/$(OPENSSL)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/crypto/modes \
	$(LOCAL_PATH)/crypto/include

LOCAL_SRC_FILES := \
	crypto/aes/aes_cbc.c \
	crypto/aes/aes_cfb.c \
	crypto/aes/aes_core.c \
	crypto/aes/aes_ecb.c \
	crypto/aes/aes_ige.c \
	crypto/aes/aes_misc.c \
	crypto/aes/aes_ofb.c \
	crypto/aes/aes_wrap.c \
	crypto/asn1/a_bitstr.c \
	crypto/asn1/a_d2i_fp.c \
	crypto/asn1/a_digest.c \
	crypto/asn1/a_dup.c \
	crypto/asn1/a_gentm.c \
	crypto/asn1/a_i2d_fp.c \
	crypto/asn1/a_int.c \
	crypto/asn1/a_mbstr.c \
	crypto/asn1/a_object.c \
	crypto/asn1/a_octet.c \
	crypto/asn1/a_print.c \
	crypto/asn1/a_sign.c \
	crypto/asn1/a_strex.c \
	crypto/asn1/a_strnid.c \
	crypto/asn1/a_time.c \
	crypto/asn1/a_type.c \
	crypto/asn1/a_utctm.c \
	crypto/asn1/a_utf8.c \
	crypto/asn1/a_verify.c \
	crypto/asn1/ameth_lib.c \
	crypto/asn1/asn1_err.c \
	crypto/asn1/asn1_gen.c \
	crypto/asn1/asn1_item_list.c \
	crypto/asn1/asn1_lib.c \
	crypto/asn1/asn1_par.c \
	crypto/asn1/asn_mime.c \
	crypto/asn1/asn_moid.c \
	crypto/asn1/asn_mstbl.c \
	crypto/asn1/asn_pack.c \
	crypto/asn1/bio_asn1.c \
	crypto/asn1/bio_ndef.c \
	crypto/asn1/d2i_pr.c \
	crypto/asn1/d2i_pu.c \
	crypto/asn1/evp_asn1.c \
	crypto/asn1/f_int.c \
	crypto/asn1/f_string.c \
	crypto/asn1/i2d_pr.c \
	crypto/asn1/i2d_pu.c \
	crypto/asn1/n_pkey.c \
	crypto/asn1/nsseq.c \
	crypto/asn1/p5_pbe.c \
	crypto/asn1/p5_pbev2.c \
	crypto/asn1/p5_scrypt.c \
	crypto/asn1/p8_pkey.c \
	crypto/asn1/t_bitst.c \
	crypto/asn1/t_pkey.c \
	crypto/asn1/t_spki.c \
	crypto/asn1/tasn_dec.c \
	crypto/asn1/tasn_enc.c \
	crypto/asn1/tasn_fre.c \
	crypto/asn1/tasn_new.c \
	crypto/asn1/tasn_prn.c \
	crypto/asn1/tasn_scn.c \
	crypto/asn1/tasn_typ.c \
	crypto/asn1/tasn_utl.c \
	crypto/asn1/x_algor.c \
	crypto/asn1/x_bignum.c \
	crypto/asn1/x_info.c \
	crypto/asn1/x_int64.c \
	crypto/asn1/x_long.c \
	crypto/asn1/x_pkey.c \
	crypto/asn1/x_sig.c \
	crypto/asn1/x_spki.c \
	crypto/asn1/x_val.c \
	crypto/async/arch/async_null.c \
	crypto/async/arch/async_posix.c \
	crypto/async/arch/async_win.c \
	crypto/async/async.c \
	crypto/async/async_err.c \
	crypto/async/async_wait.c \
	crypto/bio/b_addr.c \
	crypto/bio/b_dump.c \
	crypto/bio/b_print.c \
	crypto/bio/b_sock.c \
	crypto/bio/b_sock2.c \
	crypto/bio/bf_buff.c \
	crypto/bio/bf_lbuf.c \
	crypto/bio/bf_nbio.c \
	crypto/bio/bf_null.c \
	crypto/bio/bio_cb.c \
	crypto/bio/bio_err.c \
	crypto/bio/bio_lib.c \
	crypto/bio/bio_meth.c \
	crypto/bio/bss_acpt.c \
	crypto/bio/bss_bio.c \
	crypto/bio/bss_conn.c \
	crypto/bio/bss_dgram.c \
	crypto/bio/bss_fd.c \
	crypto/bio/bss_file.c \
	crypto/bio/bss_log.c \
	crypto/bio/bss_mem.c \
	crypto/bio/bss_null.c \
	crypto/bio/bss_sock.c \
	crypto/bn/bn_add.c \
	crypto/bn/bn_asm.c \
	crypto/bn/bn_blind.c \
	crypto/bn/bn_const.c \
	crypto/bn/bn_ctx.c \
	crypto/bn/bn_depr.c \
	crypto/bn/bn_dh.c \
	crypto/bn/bn_div.c \
	crypto/bn/bn_err.c \
	crypto/bn/bn_exp.c \
	crypto/bn/bn_exp2.c \
	crypto/bn/bn_gcd.c \
	crypto/bn/bn_gf2m.c \
	crypto/bn/bn_intern.c \
	crypto/bn/bn_kron.c \
	crypto/bn/bn_lib.c \
	crypto/bn/bn_mod.c \
	crypto/bn/bn_mont.c \
	crypto/bn/bn_mpi.c \
	crypto/bn/bn_mul.c \
	crypto/bn/bn_nist.c \
	crypto/bn/bn_prime.c \
	crypto/bn/bn_print.c \
	crypto/bn/bn_rand.c \
	crypto/bn/bn_recp.c \
	crypto/bn/bn_shift.c \
	crypto/bn/bn_sqr.c \
	crypto/bn/bn_sqrt.c \
	crypto/bn/bn_srp.c \
	crypto/bn/bn_word.c \
	crypto/bn/bn_x931p.c \
	crypto/buffer/buf_err.c \
	crypto/buffer/buffer.c \
	crypto/conf/conf_api.c \
	crypto/conf/conf_def.c \
	crypto/conf/conf_err.c \
	crypto/conf/conf_lib.c \
	crypto/conf/conf_mall.c \
	crypto/conf/conf_mod.c \
	crypto/conf/conf_sap.c \
	crypto/conf/conf_ssl.c \
	crypto/cpt_err.c \
	crypto/cryptlib.c \
	crypto/ctype.c \
	crypto/cversion.c \
	crypto/des/cbc_cksm.c \
	crypto/des/cbc_enc.c \
	crypto/des/cfb64ede.c \
	crypto/des/cfb64enc.c \
	crypto/des/cfb_enc.c \
	crypto/des/des_enc.c \
	crypto/des/ecb3_enc.c \
	crypto/des/ecb_enc.c \
	crypto/des/fcrypt.c \
	crypto/des/fcrypt_b.c \
	crypto/des/ofb64ede.c \
	crypto/des/ofb64enc.c \
	crypto/des/ofb_enc.c \
	crypto/des/pcbc_enc.c \
	crypto/des/qud_cksm.c \
	crypto/des/rand_key.c \
	crypto/des/set_key.c \
	crypto/des/str2key.c \
	crypto/des/xcbc_enc.c \
	crypto/dso/dso_dl.c \
	crypto/dso/dso_dlfcn.c \
	crypto/dso/dso_err.c \
	crypto/dso/dso_lib.c \
	crypto/dso/dso_openssl.c \
	crypto/dso/dso_vms.c \
	crypto/dso/dso_win32.c \
	crypto/ebcdic.c \
	crypto/err/err.c \
	crypto/err/err_all.c \
	crypto/err/err_prn.c \
	crypto/evp/bio_b64.c \
	crypto/evp/bio_enc.c \
	crypto/evp/bio_md.c \
	crypto/evp/bio_ok.c \
	crypto/evp/c_allc.c \
	crypto/evp/c_alld.c \
	crypto/evp/cmeth_lib.c \
	crypto/evp/digest.c \
	crypto/evp/e_aes.c \
	crypto/evp/e_aes_cbc_hmac_sha1.c \
	crypto/evp/e_aes_cbc_hmac_sha256.c \
	crypto/evp/e_aria.c \
	crypto/evp/e_bf.c \
	crypto/evp/e_camellia.c \
	crypto/evp/e_cast.c \
	crypto/evp/e_chacha20_poly1305.c \
	crypto/evp/e_des.c \
	crypto/evp/e_des3.c \
	crypto/evp/e_idea.c \
	crypto/evp/e_null.c \
	crypto/evp/e_old.c \
	crypto/evp/e_rc2.c \
	crypto/evp/e_rc4.c \
	crypto/evp/e_rc4_hmac_md5.c \
	crypto/evp/e_rc5.c \
	crypto/evp/e_seed.c \
	crypto/evp/e_sm4.c \
	crypto/evp/e_xcbc_d.c \
	crypto/evp/encode.c \
	crypto/evp/evp_cnf.c \
	crypto/evp/evp_enc.c \
	crypto/evp/evp_err.c \
	crypto/evp/evp_key.c \
	crypto/evp/evp_lib.c \
	crypto/evp/evp_pbe.c \
	crypto/evp/evp_pkey.c \
	crypto/evp/m_md2.c \
	crypto/evp/m_md4.c \
	crypto/evp/m_md5.c \
	crypto/evp/m_md5_sha1.c \
	crypto/evp/m_mdc2.c \
	crypto/evp/m_null.c \
	crypto/evp/m_ripemd.c \
	crypto/evp/m_sha1.c \
	crypto/evp/m_sha3.c \
	crypto/evp/m_sigver.c \
	crypto/evp/m_wp.c \
	crypto/evp/names.c \
	crypto/evp/p5_crpt.c \
	crypto/evp/p5_crpt2.c \
	crypto/evp/p_dec.c \
	crypto/evp/p_enc.c \
	crypto/evp/p_lib.c \
	crypto/evp/p_open.c \
	crypto/evp/p_seal.c \
	crypto/evp/p_sign.c \
	crypto/evp/p_verify.c \
	crypto/evp/pbe_scrypt.c \
	crypto/evp/pmeth_fn.c \
	crypto/evp/pmeth_gn.c \
	crypto/evp/pmeth_lib.c \
	crypto/ex_data.c \
	crypto/getenv.c \
	crypto/hmac/hm_ameth.c \
	crypto/hmac/hm_pmeth.c \
	crypto/hmac/hmac.c \
	crypto/init.c \
	crypto/kdf/hkdf.c \
	crypto/kdf/kdf_err.c \
	crypto/kdf/scrypt.c \
	crypto/kdf/tls1_prf.c \
	crypto/lhash/lh_stats.c \
	crypto/lhash/lhash.c \
	crypto/md5/md5_dgst.c \
	crypto/md5/md5_one.c \
	crypto/mdc2/mdc2_one.c \
	crypto/mdc2/mdc2dgst.c \
	crypto/mem.c \
	crypto/mem_clr.c \
	crypto/mem_dbg.c \
	crypto/mem_sec.c \
	crypto/modes/cbc128.c \
	crypto/modes/ccm128.c \
	crypto/modes/cfb128.c \
	crypto/modes/ctr128.c \
	crypto/modes/cts128.c \
	crypto/modes/gcm128.c \
	crypto/modes/ocb128.c \
	crypto/modes/ofb128.c \
	crypto/modes/wrap128.c \
	crypto/modes/xts128.c \
	crypto/o_dir.c \
	crypto/o_fips.c \
	crypto/o_fopen.c \
	crypto/o_init.c \
	crypto/o_str.c \
	crypto/o_time.c \
	crypto/objects/o_names.c \
	crypto/objects/obj_dat.c \
	crypto/objects/obj_err.c \
	crypto/objects/obj_lib.c \
	crypto/objects/obj_xref.c \
	crypto/pem/pem_all.c \
	crypto/pem/pem_err.c \
	crypto/pem/pem_info.c \
	crypto/pem/pem_lib.c \
	crypto/pem/pem_oth.c \
	crypto/pem/pem_pk8.c \
	crypto/pem/pem_pkey.c \
	crypto/pem/pem_sign.c \
	crypto/pem/pem_x509.c \
	crypto/pem/pem_xaux.c \
	crypto/pem/pvkfmt.c \
	crypto/pkcs12/p12_add.c \
	crypto/pkcs12/p12_asn.c \
	crypto/pkcs12/p12_attr.c \
	crypto/pkcs12/p12_crpt.c \
	crypto/pkcs12/p12_crt.c \
	crypto/pkcs12/p12_decr.c \
	crypto/pkcs12/p12_init.c \
	crypto/pkcs12/p12_key.c \
	crypto/pkcs12/p12_kiss.c \
	crypto/pkcs12/p12_mutl.c \
	crypto/pkcs12/p12_npas.c \
	crypto/pkcs12/p12_p8d.c \
	crypto/pkcs12/p12_p8e.c \
	crypto/pkcs12/p12_sbag.c \
	crypto/pkcs12/p12_utl.c \
	crypto/pkcs12/pk12err.c \
	crypto/pkcs7/bio_pk7.c \
	crypto/pkcs7/pk7_asn1.c \
	crypto/pkcs7/pk7_attr.c \
	crypto/pkcs7/pk7_doit.c \
	crypto/pkcs7/pk7_lib.c \
	crypto/pkcs7/pk7_mime.c \
	crypto/pkcs7/pk7_smime.c \
	crypto/pkcs7/pkcs7err.c \
	crypto/rand/drbg_ctr.c \
	crypto/rand/drbg_lib.c \
	crypto/rand/rand_egd.c \
	crypto/rand/rand_err.c \
	crypto/rand/rand_lib.c \
	crypto/rand/rand_unix.c \
	crypto/rand/rand_vms.c \
	crypto/rand/rand_win.c \
	crypto/rand/randfile.c \
	crypto/rsa/rsa_ameth.c \
	crypto/rsa/rsa_asn1.c \
	crypto/rsa/rsa_chk.c \
	crypto/rsa/rsa_crpt.c \
	crypto/rsa/rsa_depr.c \
	crypto/rsa/rsa_err.c \
	crypto/rsa/rsa_gen.c \
	crypto/rsa/rsa_lib.c \
	crypto/rsa/rsa_meth.c \
	crypto/rsa/rsa_mp.c \
	crypto/rsa/rsa_none.c \
	crypto/rsa/rsa_oaep.c \
	crypto/rsa/rsa_ossl.c \
	crypto/rsa/rsa_pk1.c \
	crypto/rsa/rsa_pmeth.c \
	crypto/rsa/rsa_prn.c \
	crypto/rsa/rsa_pss.c \
	crypto/rsa/rsa_saos.c \
	crypto/rsa/rsa_sign.c \
	crypto/rsa/rsa_ssl.c \
	crypto/rsa/rsa_x931.c \
	crypto/rsa/rsa_x931g.c \
	crypto/sha/keccak1600.c \
	crypto/sha/sha1_one.c \
	crypto/sha/sha1dgst.c \
	crypto/sha/sha256.c \
	crypto/sha/sha512.c \
	crypto/stack/stack.c \
	crypto/store/loader_file.c \
	crypto/store/store_err.c \
	crypto/store/store_init.c \
	crypto/store/store_lib.c \
	crypto/store/store_register.c \
	crypto/store/store_strings.c \
	crypto/threads_none.c \
	crypto/threads_pthread.c \
	crypto/threads_win.c \
	crypto/txt_db/txt_db.c \
	crypto/ui/ui_err.c \
	crypto/ui/ui_lib.c \
	crypto/ui/ui_null.c \
	crypto/ui/ui_openssl.c \
	crypto/ui/ui_util.c \
	crypto/uid.c \
	crypto/x509/by_dir.c \
	crypto/x509/by_file.c \
	crypto/x509/t_crl.c \
	crypto/x509/t_req.c \
	crypto/x509/t_x509.c \
	crypto/x509/x509_att.c \
	crypto/x509/x509_cmp.c \
	crypto/x509/x509_d2.c \
	crypto/x509/x509_def.c \
	crypto/x509/x509_err.c \
	crypto/x509/x509_ext.c \
	crypto/x509/x509_lu.c \
	crypto/x509/x509_meth.c \
	crypto/x509/x509_obj.c \
	crypto/x509/x509_r2x.c \
	crypto/x509/x509_req.c \
	crypto/x509/x509_set.c \
	crypto/x509/x509_trs.c \
	crypto/x509/x509_txt.c \
	crypto/x509/x509_v3.c \
	crypto/x509/x509_vfy.c \
	crypto/x509/x509_vpm.c \
	crypto/x509/x509cset.c \
	crypto/x509/x509name.c \
	crypto/x509/x509rset.c \
	crypto/x509/x509spki.c \
	crypto/x509/x509type.c \
	crypto/x509/x_all.c \
	crypto/x509/x_attrib.c \
	crypto/x509/x_crl.c \
	crypto/x509/x_exten.c \
	crypto/x509/x_name.c \
	crypto/x509/x_pubkey.c \
	crypto/x509/x_req.c \
	crypto/x509/x_x509.c \
	crypto/x509/x_x509a.c \
	crypto/x509v3/pcy_cache.c \
	crypto/x509v3/pcy_data.c \
	crypto/x509v3/pcy_lib.c \
	crypto/x509v3/pcy_map.c \
	crypto/x509v3/pcy_node.c \
	crypto/x509v3/pcy_tree.c \
	crypto/x509v3/v3_addr.c \
	crypto/x509v3/v3_admis.c \
	crypto/x509v3/v3_akey.c \
	crypto/x509v3/v3_akeya.c \
	crypto/x509v3/v3_alt.c \
	crypto/x509v3/v3_asid.c \
	crypto/x509v3/v3_bcons.c \
	crypto/x509v3/v3_bitst.c \
	crypto/x509v3/v3_conf.c \
	crypto/x509v3/v3_cpols.c \
	crypto/x509v3/v3_crld.c \
	crypto/x509v3/v3_enum.c \
	crypto/x509v3/v3_extku.c \
	crypto/x509v3/v3_genn.c \
	crypto/x509v3/v3_ia5.c \
	crypto/x509v3/v3_info.c \
	crypto/x509v3/v3_int.c \
	crypto/x509v3/v3_lib.c \
	crypto/x509v3/v3_ncons.c \
	crypto/x509v3/v3_pci.c \
	crypto/x509v3/v3_pcia.c \
	crypto/x509v3/v3_pcons.c \
	crypto/x509v3/v3_pku.c \
	crypto/x509v3/v3_pmaps.c \
	crypto/x509v3/v3_prn.c \
	crypto/x509v3/v3_purp.c \
	crypto/x509v3/v3_skey.c \
	crypto/x509v3/v3_sxnet.c \
	crypto/x509v3/v3_tlsf.c \
	crypto/x509v3/v3_utl.c \
	crypto/x509v3/v3err.c

LOCAL_CFLAGS := -Wall -O3 -DOPENSSL_USE_NODELETE -DOPENSSL_API_COMPAT=0x10100000L -DOPENSSLDIR="\"sysroot/usr/ssl\""
LOCAL_CPPFLAGS := -stc=c++11 $(LOCAL_CFLAGS)

LOCAL_MODULE := libcrypto_static

include $(BUILD_STATIC_LIBRARY)
