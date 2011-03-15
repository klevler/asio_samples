# 
# Copyright (c) 2010-2011 Marat Abrarov (abrarov@mail.ru)
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
#

TEMPLATE =  app
QT       -= core gui
TARGET   =  async_basics
CONFIG   += console thread
CONFIG   -= app_bundle

HEADERS  += ../../../include/ma/handler_storage_service.hpp \
            ../../../include/ma/handler_storage.hpp \
            ../../../include/ma/handler_invoke_helpers.hpp \
            ../../../include/ma/bind_asio_handler.hpp \
            ../../../include/ma/context_alloc_handler.hpp \
            ../../../include/ma/context_wrapped_handler.hpp \
            ../../../include/ma/custom_alloc_handler.hpp \
            ../../../include/ma/strand_wrapped_handler.hpp \
            ../../../include/ma/handler_allocator.hpp \
            ../../../include/ma/handler_alloc_helpers.hpp \
            ../../../include/ma/console_controller.hpp \
            ../../../include/ma/config.hpp \
            ../../../include/ma/type_traits.hpp \            
            ../../../include/ma/tutorial/async_base.hpp \
            ../../../include/ma/tutorial/async_derived.hpp

SOURCES  += ../../../src/ma/console_controller.cpp \
            ../../../src/async_basics/main.cpp \
            ../../../src/ma/tutorial/async_derived.cpp            

win32:INCLUDEPATH += ../../../../boost_1_46_0
unix:INCLUDEPATH  += /usr/local/include
INCLUDEPATH       += ../../../include
		
win32:LIBS += -L../../../../boost_1_46_0/lib/x86
unix:LIBS  += /usr/local/lib/libboost_thread.a \
              /usr/local/lib/libboost_system.a \
              /usr/local/lib/libboost_date_time.a

win32:DEFINES += WIN32_LEAN_AND_MEAN _UNICODE UNICODE

linux-g++ {
  QMAKE_CXXFLAGS += -std=c++0x
}