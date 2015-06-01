#include<archive.h>
#include<stdio.h>
#include<stdlib.h>
#include<archive_entry.h>
char* archive_list(char *filename)
{
struct archive *a;
struct archive_entry *entry;
int r;
a = archive_read_new();
archive_read_support_filter_all(a);
archive_read_support_format_all(a);
r = archive_read_open_filename(a, filename, 10240); // Note 1
if (r != ARCHIVE_OK)
  printf("everything is cool\n");
char *temp;
//temp = (char *)malloc(1024);
while (archive_read_next_header(a, &entry) == ARCHIVE_OK) {
  char *temp2;
  temp2 = temp;
  temp = (char*)malloc(sizeof(temp)+100);
  sprintf(temp, "%s;%s", temp2, archive_entry_pathname(entry));
//  free(temp2);
//  printf("%s \n",archive_entry_pathname(entry));
  archive_read_data_skip(a);  // Note 2
}
r = archive_read_free(a);  // Note 3
if (r != ARCHIVE_OK)
  printf("Everything is cool \n");
return temp;
}
