.PHONY: all install clean

all:
	cd /root/ngx_openresty-1.5.8.1/build/LuaJIT-2.1-20140109 && $(MAKE) TARGET_STRIP=@: CCDEBUG=-g PREFIX=/etc/luajit
	cd /root/ngx_openresty-1.5.8.1/build/lua-cjson-1.0.3 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/root/ngx_openresty-1.5.8.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=gcc
	cd /root/ngx_openresty-1.5.8.1/build/lua-redis-parser-0.10 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/root/ngx_openresty-1.5.8.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=gcc
	cd /root/ngx_openresty-1.5.8.1/build/lua-rds-parser-0.05 && $(MAKE) DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/root/ngx_openresty-1.5.8.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=gcc
	cd /root/ngx_openresty-1.5.8.1/build/nginx-1.5.8 && $(MAKE)

install: all
	cd /root/ngx_openresty-1.5.8.1/build/LuaJIT-2.1-20140109 && $(MAKE) install TARGET_STRIP=@: CCDEBUG=-g PREFIX=/etc/luajit DESTDIR=$(DESTDIR)
	cd /root/ngx_openresty-1.5.8.1/build/lua-cjson-1.0.3 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/root/ngx_openresty-1.5.8.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=gcc
	cd /root/ngx_openresty-1.5.8.1/build/lua-redis-parser-0.10 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/root/ngx_openresty-1.5.8.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=gcc
	cd /root/ngx_openresty-1.5.8.1/build/lua-rds-parser-0.05 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_INCLUDE_DIR=/root/ngx_openresty-1.5.8.1/build/luajit-root/etc/luajit/include/luajit-2.1 LUA_LIB_DIR=/etc/lualib CC=gcc
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-dns-0.11 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-memcached-0.13 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-redis-0.18 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-mysql-0.14 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-string-0.08 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-upload-0.09 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-websocket-0.02 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-lock-0.02 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/lua-resty-core-0.0.3 && $(MAKE) install DESTDIR=$(DESTDIR) LUA_LIB_DIR=/etc/lualib INSTALL=/root/ngx_openresty-1.5.8.1/build/install
	cd /root/ngx_openresty-1.5.8.1/build/nginx-1.5.8 && $(MAKE) install DESTDIR=$(DESTDIR)

clean:
	rm -rf build
