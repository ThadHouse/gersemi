target_sources(TGT PUBLIC)

target_sources(TGT PRIVATE BAR)

target_sources(TGT INTERFACE BAR BAZ QUX)

target_sources(TGT PUBLIC BAR PRIVATE BAZ INTERFACE QUX)

target_sources(TGT PUBLIC BAR BAZ PRIVATE BAZ QUX INTERFACE QUX FOO)

target_sources(TGT PUBLIC)

target_sources(TGT PRIVATE long_arg____________________________________________________________)

target_sources(TGT INTERFACE long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________)

target_sources(TGT PUBLIC long_arg____________________________________________________________ PRIVATE long_arg____________________________________________________________ INTERFACE long_arg____________________________________________________________)

target_sources(TGT PUBLIC long_arg____________________________________________________________ long_arg____________________________________________________________ PRIVATE long_arg____________________________________________________________ long_arg____________________________________________________________ INTERFACE long_arg____________________________________________________________ long_arg____________________________________________________________)

target_sources(long_arg____________________________________________________________ PUBLIC)

target_sources(long_arg____________________________________________________________ PRIVATE BAR)

target_sources(long_arg____________________________________________________________ INTERFACE BAR BAZ QUX)

target_sources(long_arg____________________________________________________________ PUBLIC BAR PRIVATE BAZ INTERFACE QUX)

target_sources(long_arg____________________________________________________________ PUBLIC BAR BAZ PRIVATE BAZ QUX INTERFACE QUX FOO)

target_sources(long_arg____________________________________________________________ PUBLIC)

target_sources(long_arg____________________________________________________________ PRIVATE long_arg____________________________________________________________)

target_sources(long_arg____________________________________________________________ INTERFACE long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________)

target_sources(long_arg____________________________________________________________ PUBLIC long_arg____________________________________________________________ PRIVATE long_arg____________________________________________________________ INTERFACE long_arg____________________________________________________________)

target_sources(long_arg____________________________________________________________ PUBLIC long_arg____________________________________________________________ long_arg____________________________________________________________ PRIVATE long_arg____________________________________________________________ long_arg____________________________________________________________ INTERFACE long_arg____________________________________________________________ long_arg____________________________________________________________)

target_sources(TGT PUBLIC FILE_SET FOO TYPE BAR)

target_sources(long_arg____________________________________________________________ PUBLIC FILE_SET FOO TYPE BAR)

target_sources(TGT PUBLIC FILE_SET FOO TYPE BAR BASE_DIRS BAZ QUX FILES FOO BAR BAZ QUX FOO BAR BAZ PRIVATE FILE_SET long_arg____________________________________________________________ TYPE long_arg____________________________________________________________ BASE_DIRS long_arg____________________________________________________________ long_arg____________________________________________________________ FILES long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________ INTERFACE FILE_SET FOO PUBLIC FILE_SET FOO FILES long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________)

target_sources(# comment
    TGT # comment
    PUBLIC FILE_SET # comment
    FOO TYPE BAR  BASE_DIRS BAZ # comment
    QUX FILES FOO BAR BAZ QUX FOO BAR BAZ PRIVATE FILE_SET long_arg____________________________________________________________ # comment
    TYPE long_arg____________________________________________________________ BASE_DIRS long_arg____________________________________________________________ long_arg____________________________________________________________ FILES long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________ INTERFACE # comment
    FILE_SET FOO PUBLIC FILE_SET FOO FILES long_arg____________________________________________________________ long_arg____________________________________________________________ long_arg____________________________________________________________)
