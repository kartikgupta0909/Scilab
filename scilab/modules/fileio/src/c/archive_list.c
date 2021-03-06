#include<archive.h>
#include<stdio.h>
#include<stdlib.h>
#include<archive_entry.h>
#include<string.h>
#include "MALLOC.h"

char** archive_list(char *filename, int *size)
{
struct archive *a;
struct archive_entry *entry;
int r;
a = archive_read_new();
archive_read_support_filter_all(a);
archive_read_support_format_all(a);
r = archive_read_open_filename(a, filename, 10240);    //Opening the archive to read the headers
char **file_list;
if (r != ARCHIVE_OK)
{
    file_list = (char**)MALLOC(sizeof(char*));
    file_list = (char*)MALLOC(sizeof(char)*100);
    strcpy(file_list[0], "ERROR;1");
    return file_list;
}
*size = 0;
while (archive_read_next_header(a, &entry) == ARCHIVE_OK) {
  *size = *size + 1;
  if((*size) == 1)
  {
	  file_list = (char**)MALLOC(sizeof(char*)*(*size));
  }
  else
  {
	  file_list = (char**)REALLOC(file_list,sizeof(char*)*(*size));
  }
  file_list[(*size)-1] = (char*)MALLOC(sizeof(char)*1024);
  file_list[(*size)-1] = NULL;
  file_list[(*size)-1] = strdup(archive_entry_pathname(entry));
  archive_read_data_skip(a);
}
r = archive_read_free(a); 
if (r != ARCHIVE_OK)
{
  file_list = (char**)MALLOC(sizeof(char*));
  file_list = (char*)MALLOC(sizeof(char)*100);
  strcpy(file_list[0], "ERROR;2");
  return file_list;
}
return file_list;
}
