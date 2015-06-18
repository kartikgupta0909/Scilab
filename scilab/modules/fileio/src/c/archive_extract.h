#ifndef __ARCHIVE_EXTRACT_H__
#define __ARCHIVE_EXTRACT_H__

#include<sys/types.h>
#include<sys/stat.h>
#include<archive.h>
#include<archive_entry.h>
#include<fcntl.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>

int archive_extract(char *filename, int perm_flag);

#endif