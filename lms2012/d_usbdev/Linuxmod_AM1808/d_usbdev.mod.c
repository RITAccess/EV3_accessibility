#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
 .name = KBUILD_MODNAME,
 .init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
 .exit = cleanup_module,
#endif
 .arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x708ffad, "module_layout" },
	{ 0x52ebb126, "param_get_ushort" },
	{ 0xe0bc24a1, "param_set_ushort" },
	{ 0x9214ed8a, "param_get_bool" },
	{ 0x9f2d613e, "param_set_bool" },
	{ 0x108e8985, "param_get_uint" },
	{ 0x3285cc48, "param_set_uint" },
	{ 0x41344088, "param_get_charp" },
	{ 0x6ad065f4, "param_set_charp" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0xa3413eb6, "misc_register" },
	{ 0xe914e41e, "strcpy" },
	{ 0x74d9ccc4, "usb_gadget_register_driver" },
	{ 0x9c621eea, "dev_set_drvdata" },
	{ 0x16305289, "warn_slowpath_null" },
	{ 0x313341a3, "_set_bit_le" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x7e075a6f, "dev_get_drvdata" },
	{ 0x2df234a3, "mem_map" },
	{ 0xaece669e, "misc_deregister" },
	{ 0x3380aabb, "usb_gadget_unregister_driver" },
	{ 0x11089ac7, "_ctype" },
	{ 0x20000329, "simple_strtoul" },
	{ 0x9f984513, "strrchr" },
	{ 0x97255bdf, "strlen" },
	{ 0x9d669763, "memcpy" },
	{ 0x4fa869bc, "kmalloc_caches" },
	{ 0x91c1b2a3, "kmem_cache_alloc" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0xe9c2f672, "dev_driver_string" },
	{ 0xea147363, "printk" },
	{ 0xe2d5255a, "strcmp" },
	{ 0x6f439375, "init_timer_key" },
	{ 0x7d11c268, "jiffies" },
	{ 0xf4d06ed6, "mod_timer" },
	{ 0xf1ac0ceb, "del_timer" },
	{ 0x98082893, "__copy_to_user" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x17a142df, "__copy_from_user" },
	{ 0x765f75fb, "pgprot_user" },
	{ 0x3145351, "remap_pfn_range" },
	{ 0x37a0cba, "kfree" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

