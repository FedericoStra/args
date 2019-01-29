/*
 * args: a simple program to list the arguments passed on the command line.
 *
 * Copyright (c) 2019 Federico Stra <stra.federico@gmail.com>
 * All rights reserved. Use of this source code is governed by a
 * BSD-style license that can be found in the LICENSE file.
 *
 * Compile with `gcc -std=c17 -Wall -O2 args.c -o args`.
*/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *const argv[]) {
	int i, width;

	if (argc <= 10)
		width = 1;
	else if (argc <= 100)
		width = 2;
	else if (argc <= 1000)
		width = 3;
	else if (argc <= 10000)
		width = 4;
	else if (argc <= 100000)
		width = 5;
	else if (argc <= 1000000)
		width = 6;
	else
		width = 0;

	for (i = 0; i < argc; i++)
		printf("%*d: `%s`\n", width, i, argv[i]);

	exit(EXIT_SUCCESS);
}
