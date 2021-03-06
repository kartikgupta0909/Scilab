// ----------------------------------------------------------------------------
//  This file was automatically generated by SWIG (http://www.swig.org).
//  Version 3.0.5
// 
//  Do not make changes to this file unless you know what you are doing--modify
//  the SWIG interface file instead.
// ----------------------------------------------------------------------------- */

libsci_archive_list_path = get_absolute_file_path('loader.sce');
[bOK, ilib] = c_link('libsci_archive_list');
if bOK then
  ulink(ilib);
end
list_functions = [..
  'sci_archive_list_Init'; ..
  'SWIG_this'; ..
  'SWIG_ptr'; ..
  'archive_list'; ..
  'verbose_get'; ..
  'verbose_set'; ..
  'archive_extract'; ..
  'archive_compress'; ..
];
addinter(fullfile(libsci_archive_list_path, 'libsci_archive_list' + getdynlibext()), 'libsci_archive_list', list_functions);
clear libsci_archive_list_path;
clear bOK;
clear ilib;
clear list_functions;
