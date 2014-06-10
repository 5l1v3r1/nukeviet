<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 12/31/2009 5:50
 */

if( ! defined( 'NV_ADMIN' ) or ! defined( 'NV_MAINFILE' ) or ! defined( 'NV_IS_MODADMIN' ) ) die( 'Stop!!!' );

define( 'NV_IS_FILE_EXTENSIONS', true );
define( 'NUKEVIET_STORE_APIURL', 'http://api.nukeviet.vn/store/' );

$menu_top = array(
	'title' => $module_name,
	'module_file' => '',
	'custom_title' => $lang_global['mod_extensions']
);

$allow_func = array( 'main', 'newest', 'popular', 'featured', 'downloaded', 'favorites', 'detail' );

$submenu['newest'] = $lang_module['newest'];
$submenu['popular'] = $lang_module['popular'];
$submenu['featured'] = $lang_module['featured'];
$submenu['downloaded'] = $lang_module['downloaded'];
$submenu['favorites'] = $lang_module['favorites'];


/**
 * nv_extensions_get_lang()
 * 
 * @param mixed $input
 * @return
 */
function nv_extensions_get_lang( $input )
{
	global $lang_module;
	
	if( ! isset( $input['code'] ) or ! isset( $input['message'] ) )
	{
		return '';
	}
	
	if( ! empty( $lang_module['error_code_' . $input['code']] ) )
	{
		return $lang_module['error_code_' . $input['code']];
	}
	
	if( ! empty( $input['message'] ) )
	{
		return $input['message'];
	}
	
	return 'Error' . ( $input['code'] ? ': ' . $input['code'] . '.' : '.' );
}