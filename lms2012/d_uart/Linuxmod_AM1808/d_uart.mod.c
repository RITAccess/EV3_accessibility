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
	{ 0xadf42bd5, "__request_region" },
	{ 0x4fa869bc, "kmalloc_caches" },
	{ 0x12da5bb2, "__kmalloc" },
	{ 0x17a142df, "__copy_from_user" },
	{ 0xc3df5502, "clk_enable" },
	{ 0x2df234a3, "mem_map" },
	{ 0x6980fe91, "param_get_int" },
	{ 0x98082893, "__copy_to_user" },
	{ 0x788fe103, "iomem_resource" },
	{ 0x97255bdf, "strlen" },
	{ 0x9c621eea, "dev_set_drvdata" },
	{ 0xbbd45ed4, "hrtimer_forward" },
	{ 0x4a5361cf, "hrtimer_cancel" },
	{ 0x586958de, "clk_disable" },
	{ 0x2e1ca751, "clk_put" },
	{ 0xff964b25, "param_set_int" },
	{ 0xc3d93499, "uart_update_timeout" },
	{ 0x56921c52, "clk_get_rate" },
	{ 0x41344088, "param_get_charp" },
	{ 0xa24d2473, "davinci_iounmap" },
	{ 0xe707d823, "__aeabi_uidiv" },
	{ 0xa3413eb6, "misc_register" },
	{ 0xfa2a45e, "__memzero" },
	{ 0x5f754e5a, "memset" },
	{ 0x9ad0d04a, "davinci_ioremap" },
	{ 0x448212fa, "down_trylock" },
	{ 0xea147363, "printk" },
	{ 0x71c90087, "memcmp" },
	{ 0x765f75fb, "pgprot_user" },
	{ 0xf6524ce2, "platform_get_resource" },
	{ 0xfda85a7d, "request_threaded_irq" },
	{ 0x2a3491c4, "platform_driver_register" },
	{ 0x43b0c9c3, "preempt_schedule" },
	{ 0x2196324, "__aeabi_idiv" },
	{ 0x91c1b2a3, "kmem_cache_alloc" },
	{ 0x93fca811, "__get_free_pages" },
	{ 0x72becf51, "hrtimer_start" },
	{ 0xe9c2f672, "dev_driver_string" },
	{ 0x9bce482f, "__release_region" },
	{ 0xc741a87f, "da8xx_syscfg0_base" },
	{ 0x2315b128, "clk_get" },
	{ 0x6ad065f4, "param_set_charp" },
	{ 0x37a0cba, "kfree" },
	{ 0x3145351, "remap_pfn_range" },
	{ 0x9d669763, "memcpy" },
	{ 0xc9cbfbd7, "hrtimer_init" },
	{ 0x8cf51d15, "up" },
	{ 0x17c8ad8e, "request_firmware" },
	{ 0x701d0ebd, "snprintf" },
	{ 0xe2704751, "platform_get_irq" },
	{ 0x24555aa7, "platform_driver_unregister" },
	{ 0x7e075a6f, "dev_get_drvdata" },
	{ 0xaece669e, "misc_deregister" },
	{ 0xb703911e, "release_firmware" },
	{ 0xf20dabd8, "free_irq" },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=";

