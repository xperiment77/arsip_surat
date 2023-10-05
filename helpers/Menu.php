<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbarsideleft = array(
		array(
			'path' => 'home', 
			'label' => 'Home', 
			'icon' => ''
		),
		
		array(
			'path' => '/', 
			'label' => 'Arisp surat', 
			'icon' => '','submenu' => array(
		array(
			'path' => 'upload_dokumen', 
			'label' => 'Dokumen', 
			'icon' => ''
		),
		
		array(
			'path' => 'nota_dinas', 
			'label' => 'Nota Dinas', 
			'icon' => ''
		),
		
		array(
			'path' => 'surat_tugas', 
			'label' => 'Surat Tugas', 
			'icon' => ''
		),
		
		array(
			'path' => 'dp4', 
			'label' => 'Dp4', 
			'icon' => ''
		),
		
		array(
			'path' => 'kpi', 
			'label' => 'Kpi', 
			'icon' => ''
		),
		
		array(
			'path' => 'arsip', 
			'label' => 'Arsip', 
			'icon' => ''
		)
	)
		),
		
		array(
			'path' => '/', 
			'label' => 'Tentang kami', 
			'icon' => '','submenu' => array(
		array(
			'path' => 'profil', 
			'label' => 'Profil', 
			'icon' => ''
		),
		
		array(
			'path' => 'struktur_organisasi', 
			'label' => 'Struktur Organisasi', 
			'icon' => ''
		),
		
		array(
			'path' => 'list', 
			'label' => 'List', 
			'icon' => ''
		),
		
		array(
			'path' => 'banner', 
			'label' => 'Banner', 
			'icon' => ''
		)
	)
		),
		
		array(
			'path' => 'login', 
			'label' => 'Login', 
			'icon' => ''
		)
	);
		
	
	
			public static $role = array(
		array(
			"value" => "Admin", 
			"label" => "Admin", 
		),
		array(
			"value" => "User", 
			"label" => "User", 
		),);
		
}