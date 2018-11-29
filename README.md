# erl_nif
Erlang 调用C程序(动态库)的原生接口，由C实现的函数 
编译环境：gcc
编译指令：gcc -fPIC -shared -o libnif.so example_nif.c nif_util.c -I /opt/erlang/lib/erlang/usr/include/
注：gcc -fPIC -shared -o 动态库输出名 example_nif.c nif_util.c(.c文件) -I erlang安装路径
