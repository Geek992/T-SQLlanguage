CREATE DATABASE XS
ON(
NAME=xs_dat,
FILENAME='G:\SQL\xs_dat.mdf',
SIZE=10,
MAXSIZE=50,
FILEGROWTH=1
)
LOG ON(
NAME=xs_log,
FILENAME='G:\SQL\xs_log.ldf',
SIZE=1,
MAXSIZE=UNLIMITED,
FILEGROWTH=10%
)
GO