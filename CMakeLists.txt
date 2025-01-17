cmake_minimum_required(VERSION 3.10)

# set the project name
project(seastar)

set(CMAKE_C_COMPILER "gcc10-gcc")
set(CMAKE_CXX_COMPILER "gcc10-g++")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set (Seastar_SCHEDULING_GROUPS_COUNT
  "16"
  CACHE
  STRING
  "A positive number to set Seastar's reactor number of allowed different scheduling groups.")

# find_package(Boost REQUIRED)

find_package(Boost REQUIRED COMPONENTS thread context filesystem)

# add the executable
# add_executable(Tutorial tutorial.cxx)
add_library (seastar STATIC
#   ${http_chunk_parsers_file}
#   ${http_request_parser_file}
#   ${seastar_dpdk_obj}
  include/seastar/core/abort_source.hh
  include/seastar/core/alien.hh
  include/seastar/core/align.hh
  include/seastar/core/aligned_buffer.hh
  include/seastar/core/app-template.hh
  include/seastar/core/array_map.hh
  include/seastar/core/bitops.hh
  include/seastar/core/bitset-iter.hh
  include/seastar/core/byteorder.hh
  include/seastar/core/cacheline.hh
  include/seastar/core/checked_ptr.hh
  include/seastar/core/chunked_fifo.hh
  include/seastar/core/circular_buffer.hh
  include/seastar/core/circular_buffer_fixed_capacity.hh
  include/seastar/core/condition-variable.hh
  include/seastar/core/deleter.hh
  include/seastar/core/distributed.hh
  include/seastar/core/do_with.hh
  include/seastar/core/dpdk_rte.hh
  include/seastar/core/enum.hh
  include/seastar/core/exception_hacks.hh
  include/seastar/core/execution_stage.hh
  include/seastar/core/expiring_fifo.hh
  include/seastar/core/fair_queue.hh
  include/seastar/core/file.hh
  include/seastar/core/file-types.hh
  include/seastar/core/fsqual.hh
  include/seastar/core/fstream.hh
  include/seastar/core/function_traits.hh
  include/seastar/core/future-util.hh
  include/seastar/core/future.hh
  include/seastar/core/gate.hh
  include/seastar/core/iostream-impl.hh
  include/seastar/core/iostream.hh
  include/seastar/util/later.hh
  include/seastar/core/layered_file.hh
  include/seastar/core/linux-aio.hh
  include/seastar/core/loop.hh
  include/seastar/core/lowres_clock.hh
  include/seastar/core/manual_clock.hh
  include/seastar/core/map_reduce.hh
  include/seastar/core/memory.hh
  include/seastar/core/metrics.hh
  include/seastar/core/metrics_api.hh
  include/seastar/core/metrics_registration.hh
  include/seastar/core/metrics_types.hh
  include/seastar/core/pipe.hh
  include/seastar/core/posix.hh
  include/seastar/core/preempt.hh
  include/seastar/core/prefetch.hh
  include/seastar/core/print.hh
  include/seastar/core/prometheus.hh
  include/seastar/core/queue.hh
  include/seastar/core/ragel.hh
  include/seastar/core/reactor.hh
  include/seastar/core/report_exception.hh
  include/seastar/core/resource.hh
  include/seastar/core/rwlock.hh
  include/seastar/core/scattered_message.hh
  include/seastar/core/scheduling.hh
  include/seastar/core/scollectd.hh
  include/seastar/core/scollectd_api.hh
  include/seastar/core/seastar.hh
  include/seastar/core/semaphore.hh
  include/seastar/core/sharded.hh
  include/seastar/core/shared_future.hh
  include/seastar/core/shared_mutex.hh
  include/seastar/core/shared_ptr.hh
  include/seastar/core/shared_ptr_debug_helper.hh
  include/seastar/core/shared_ptr_incomplete.hh
  include/seastar/core/simple-stream.hh
  include/seastar/core/slab.hh
  include/seastar/core/sleep.hh
  include/seastar/core/sstring.hh
  include/seastar/core/stall_sampler.hh
  include/seastar/core/stream.hh
  include/seastar/core/systemwide_memory_barrier.hh
  include/seastar/core/task.hh
  include/seastar/core/temporary_buffer.hh
  include/seastar/core/thread.hh
  include/seastar/core/thread_cputime_clock.hh
  include/seastar/core/thread_impl.hh
  include/seastar/core/timed_out_error.hh
  include/seastar/core/timer-set.hh
  include/seastar/core/timer.hh
  include/seastar/core/transfer.hh
  include/seastar/core/unaligned.hh
  include/seastar/core/units.hh
  include/seastar/core/vector-data-sink.hh
  include/seastar/core/weak_ptr.hh
  include/seastar/core/when_all.hh
  include/seastar/core/with_scheduling_group.hh
  include/seastar/core/with_timeout.hh
  include/seastar/http/api_docs.hh
  include/seastar/http/common.hh
  include/seastar/http/exception.hh
  include/seastar/http/file_handler.hh
  include/seastar/http/function_handlers.hh
  include/seastar/http/handlers.hh
  include/seastar/http/httpd.hh
  include/seastar/http/json_path.hh
  include/seastar/http/matcher.hh
  include/seastar/http/matchrules.hh
  include/seastar/http/mime_types.hh
  include/seastar/http/reply.hh
  include/seastar/http/request.hh
  include/seastar/http/routes.hh
  include/seastar/http/short_streams.hh
  include/seastar/http/transformers.hh
  include/seastar/json/formatter.hh
  include/seastar/json/json_elements.hh
  include/seastar/net/api.hh
  include/seastar/net/arp.hh
  include/seastar/net/byteorder.hh
  include/seastar/net/config.hh
  include/seastar/net/const.hh
  include/seastar/net/dhcp.hh
  include/seastar/net/dns.hh
  include/seastar/net/dpdk.hh
  include/seastar/net/ethernet.hh
  include/seastar/net/inet_address.hh
  include/seastar/net/ip.hh
  include/seastar/net/ip_checksum.hh
  include/seastar/net/native-stack.hh
  include/seastar/net/net.hh
  include/seastar/net/packet-data-source.hh
  include/seastar/net/packet-util.hh
  include/seastar/net/packet.hh
  include/seastar/net/posix-stack.hh
  include/seastar/net/proxy.hh
  include/seastar/net/socket_defs.hh
  include/seastar/net/stack.hh
  include/seastar/net/tcp-stack.hh
  include/seastar/net/tcp.hh
  include/seastar/net/tls.hh
  include/seastar/net/toeplitz.hh
  include/seastar/net/udp.hh
  include/seastar/net/unix_address.hh
  include/seastar/net/virtio-interface.hh
  include/seastar/net/virtio.hh
  include/seastar/rpc/lz4_compressor.hh
  include/seastar/rpc/lz4_fragmented_compressor.hh
  include/seastar/rpc/multi_algo_compressor_factory.hh
  include/seastar/rpc/rpc.hh
  include/seastar/rpc/rpc_impl.hh
  include/seastar/rpc/rpc_types.hh
  include/seastar/util/alloc_failure_injector.hh
  include/seastar/util/backtrace.hh
  include/seastar/util/concepts.hh
  include/seastar/util/bool_class.hh
  include/seastar/util/conversions.hh
  include/seastar/util/defer.hh
  include/seastar/util/eclipse.hh
  include/seastar/util/function_input_iterator.hh
  include/seastar/util/gcc6-concepts.hh
  include/seastar/util/indirect.hh
  include/seastar/util/is_smart_ptr.hh
  include/seastar/util/lazy.hh
  include/seastar/util/log-cli.hh
  include/seastar/util/log-impl.hh
  include/seastar/util/log.hh
  include/seastar/util/noncopyable_function.hh
  include/seastar/util/optimized_optional.hh
  include/seastar/util/print_safe.hh
  include/seastar/util/program-options.hh
  include/seastar/util/read_first_line.hh
  include/seastar/util/reference_wrapper.hh
  include/seastar/util/spinlock.hh
  include/seastar/util/std-compat.hh
  include/seastar/util/transform_iterator.hh
  include/seastar/util/tuple_utils.hh
  include/seastar/util/variant_utils.hh
  include/seastar/util/closeable.hh
  include/seastar/util/source_location-compat.hh
  include/seastar/util/short_streams.hh
  include/seastar/websocket/server.hh
  src/core/alien.cc
  src/core/file.cc
  src/core/fair_queue.cc
  src/core/reactor_backend.cc
  src/core/thread_pool.cc
  src/core/app-template.cc
  src/core/dpdk_rte.cc
  src/core/exception_hacks.cc
  src/core/execution_stage.cc
  src/core/file-impl.hh
  src/core/fsnotify.cc
  src/core/fsqual.cc
  src/core/fstream.cc
  src/core/future.cc
  src/core/future-util.cc
  src/core/linux-aio.cc
  src/core/memory.cc
  src/core/metrics.cc
  src/core/on_internal_error.cc
  src/core/posix.cc
  src/core/prometheus.cc
  src/core/program_options.cc
  src/core/reactor.cc
  src/core/resource.cc
  src/core/sharded.cc
  src/core/scollectd.cc
  src/core/scollectd-impl.hh
  src/core/systemwide_memory_barrier.cc
  src/core/smp.cc
  src/core/sstring.cc
  src/core/thread.cc
  src/core/uname.cc
  src/core/vla.hh
  src/core/io_queue.cc
  src/core/semaphore.cc
  src/core/condition-variable.cc
  src/http/api_docs.cc
  src/http/common.cc
  src/http/file_handler.cc
  src/http/httpd.cc
  src/http/json_path.cc
  src/http/matcher.cc
  src/http/mime_types.cc
  src/http/reply.cc
  src/http/routes.cc
  src/http/transformers.cc
  src/json/formatter.cc
  src/json/json_elements.cc
  src/net/arp.cc
  src/net/config.cc
  src/net/dhcp.cc
  src/net/dns.cc
  src/net/dpdk.cc
  src/net/ethernet.cc
  src/net/inet_address.cc
  src/net/ip.cc
  src/net/ip_checksum.cc
  src/net/native-stack-impl.hh
  src/net/native-stack.cc
  src/net/net.cc
  src/net/packet.cc
  src/net/posix-stack.cc
  src/net/proxy.cc
  src/net/socket_address.cc
  src/net/stack.cc
  src/net/tcp.cc
  src/net/tls.cc
  src/net/udp.cc
  src/net/unix_address.cc
  src/net/virtio.cc
  src/rpc/lz4_compressor.cc
  src/rpc/lz4_fragmented_compressor.cc
  src/rpc/rpc.cc
  src/util/alloc_failure_injector.cc
  src/util/backtrace.cc
  src/util/conversions.cc
  src/util/exceptions.cc
  src/util/file.cc
  src/util/log.cc
  src/util/program-options.cc
  src/util/read_first_line.cc
  src/util/tmp_file.cc
  src/util/short_streams.cc
  src/websocket/server.cc
)

target_include_directories (seastar
  PUBLIC
    $<INSTALL_INTERFACE:include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<BUILD_INTERFACE:${Seastar_GEN_BINARY_DIR}/include>
  PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${Seastar_GEN_BINARY_DIR}/src
    ${Boost_INCLUDE_DIRS})

target_compile_definitions (seastar
  PUBLIC SEASTAR_SCHEDULING_GROUPS_COUNT=${Seastar_SCHEDULING_GROUPS_COUNT})
target_link_libraries(seastar PRIVATE ${Boost_LIBRARIES})
# target_include_directories(seastar PRIVATE ${Boost_INCLUDE_DIRS})