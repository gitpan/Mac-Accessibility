use strict;
use Module::Build;
Module::Build->new(
	module_name => 'Mac::Accessibility',
	license	=> 'perl',
	dist_author => 'Miklos Fazekas <boga@mac.com>',
	abstract    => 'Mac::Accessibility, and Mac::ScreenCapture for functional testing on MacOS',
	dist_version => '1.0',
	c_source => 'lib/Mac/c_sources',
#	extra_compiler_flags => ['-x', 'c++'],
	extra_linker_flags =>  ["-bundle","-flat_namespace",
		"-framework","CoreFoundation","-framework","ApplicationServices","-framework","QuickTime"],
	requires    => {
        	'perl' => 5.006,
	},
	build_requires => {
		'ExtUtils::CBuilder' =>  0.15,
		'Module::Build'	=> 0.15
	},
	create_makefile_pl => 'passthrough' 
)->create_build_script;
# ;

