/**
 * @license Copyright (c) 2003-2013, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	config.removeDialogTabs = 'image:advanced;link:advanced';
	config.filebrowserUploadUrl = '/shop/goods/uploadfile.do';//上传文件的保存路径
	config.filebrowserImageUploadUrl = '/shop/goods/uploadfile.do';//上传图片的保存路径
	config.filebrowserFlashUploadUrl = '/shop/goods/uploadfile.do';//上传flash的保存路径
};
