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
	{ 0x41344088, "param_get_charp" },
	{ 0x6ad065f4, "param_set_charp" },
	{ 0x788fe103, "iomem_resource" },
	{ 0xa3413eb6, "misc_register" },
	{ 0x9ad0d04a, "davinci_ioremap" },
	{ 0xadf42bd5, "__request_region" },
	{ 0x71c90087, "memcmp" },
	{ 0xc741a87f, "da8xx_syscfg0_base" },
	{ 0xea147363, "printk" },
	{ 0x701d0ebd, "snprintf" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x17a142df, "__copy_from_user" },
	{ 0xa24d2473, "davinci_iounmap" },
	{ 0xaece669e, "misc_deregister" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

