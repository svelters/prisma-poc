# Prisma 2 docker fail

Installing @prisma/cli package inside docker hangs for no apparent reason.

This POC includes a minimal docker-compose installation containing:
* a node:15-alpine docker api with: 
  * typescript
  * apollo-server
  * prisma client
  * nexus
* a postgres:13-alpine docker database 

## Steps to reproduce:

* make dev

## Try again:

* make clean


## The culprit:

So far we are not able to determine the origin of the problem.
It may be related to @prisma/engines download script though.

## Workaround:
Using `npx @prisma/cli generate` when needed does work but is not optimal as @prisma/cli will be downloaded every time.
