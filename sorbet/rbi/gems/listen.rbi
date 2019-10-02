# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strong
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/listen/all/listen.rbi
#
# listen-3.2.0
module Listen
  def self.logger; end
  def self.logger=(logger); end
  def self.setup_default_logger_if_unset; end
  def self.stop; end
  def self.to(*args, &block); end
end
class Listen::Logger
  def self.debug(*args, &block); end
  def self.error(*args, &block); end
  def self.fatal(*args, &block); end
  def self.info(*args, &block); end
  def self.warn(*args, &block); end
end
class Listen::Options
  def initialize(opts, defaults); end
  def method_missing(name, *_); end
end
class Listen::Record
  def _auto_hash; end
  def _fast_build_dir(remaining, symlink_detector); end
  def _fast_try_file(entry); end
  def _fast_unset_path(dirname, basename); end
  def _fast_update_file(dirname, basename, data); end
  def add_dir(rel_path); end
  def build; end
  def dir_entries(rel_path); end
  def file_data(rel_path); end
  def initialize(directory); end
  def root; end
  def tree; end
  def unset_path(rel_path); end
  def update_file(rel_path, data); end
end
class Listen::Record::Entry
  def _entries(dir); end
  def _join; end
  def children; end
  def initialize(root, relative, name = nil); end
  def meta; end
  def name; end
  def real_path; end
  def record_dir_key; end
  def relative; end
  def root; end
  def sys_path; end
end
class Listen::Record::SymlinkDetector
  def _fail(symlinked, real_path); end
  def initialize; end
  def verify_unwatched!(entry); end
end
class Listen::Record::SymlinkDetector::Error < RuntimeError
end
class Listen::File
  def self.change(record, rel_path); end
  def self.inaccurate_mac_time?(stat); end
end
class Listen::Directory
  def self._async_changes(snapshot, path, previous, options); end
  def self._change(snapshot, type, path, options); end
  def self._children(path); end
  def self.scan(snapshot, rel_path, options); end
end
class Listen::Change
  def config; end
  def initialize(config, record); end
  def invalidate(type, rel_path, options); end
  def record; end
end
class Listen::Change::Config
  def initialize(queue, silencer); end
  def queue(*args); end
  def silenced?(path, type); end
end
module Listen::Adapter
  def self._log(type, message); end
  def self._usable_adapter_class; end
  def self._warn_polling_fallback(options); end
  def self.select(options = nil); end
end
class Listen::Adapter::Base
  def _log(*args, &block); end
  def _log_exception(msg, caller_stack); end
  def _queue_change(type, dir, rel_path, options); end
  def _stop; end
  def _timed(title); end
  def config; end
  def configure; end
  def initialize(config); end
  def options; end
  def self._log(*args, &block); end
  def self.usable?; end
  def start; end
  def started?; end
  def stop; end
end
class Listen::Adapter::BSD < Listen::Adapter::Base
  def _change(event_flags); end
  def _configure(directory, &callback); end
  def _event_path(event); end
  def _find(*paths, &block); end
  def _process_event(dir, event); end
  def _run; end
  def _watch_file(path, queue); end
  def _watch_for_new_file(event); end
  def self.usable?; end
end
module Listen::Internals
end
module Listen::Internals::ThreadPool
  def self.add(&block); end
  def self.stop; end
end
class Listen::Adapter::Darwin < Listen::Adapter::Base
  def _configure(dir, &callback); end
  def _process_event(dir, event); end
  def _run; end
  def _run_worker(worker); end
  def _run_workers_in_background(workers); end
  def _to_array(queue); end
  def self.usable?; end
end
class Listen::Adapter::Linux < Listen::Adapter::Base
  def _change(event_flags); end
  def _configure(directory, &callback); end
  def _dir_event?(event); end
  def _process_event(dir, event); end
  def _run; end
  def _skip_event?(event); end
  def _stop; end
end
class Listen::Adapter::Polling < Listen::Adapter::Base
  def _configure(_, &callback); end
  def _process_event(dir, _); end
  def _run; end
end
class Listen::Adapter::Windows < Listen::Adapter::Base
  def _change(type); end
  def _configure(dir); end
  def _process_event(dir, event); end
  def _run; end
  def self.usable?; end
end
class Listen::Adapter::Config
  def adapter_options; end
  def directories; end
  def initialize(directories, queue, silencer, adapter_options); end
  def queue; end
  def silencer; end
end
class Listen::Backend
  def adapter; end
  def initialize(directories, queue, silencer, config); end
  def min_delay_between_events; end
  def start(*args, &block); end
  def stop(*args, &block); end
  extend Forwardable
end
class Listen::Silencer
  def _init_ignores(ignores, overrides); end
  def configure(options); end
  def ignore_patterns; end
  def ignore_patterns=(arg0); end
  def initialize; end
  def only_patterns; end
  def only_patterns=(arg0); end
  def options; end
  def silenced?(relative_path, type); end
end
class Listen::Silencer::Controller
  def _reconfigure_silencer(extra_options); end
  def append_ignores(*regexps); end
  def initialize(silencer, default_options); end
  def replace_with_bang_ignores(regexps); end
  def replace_with_only(regexps); end
end
class Listen::QueueOptimizer
  def _calculate_add_remove_difference(actions, path, default_if_exists); end
  def _detect_possible_editor_save(changes); end
  def _logical_action_for(path, actions); end
  def _reinterpret_related_changes(cookies); end
  def _squash_changes(changes); end
  def config; end
  def initialize(config); end
  def smoosh_changes(changes); end
end
class Listen::QueueOptimizer::Config
  def debug(*args, &block); end
  def exist?(path); end
  def initialize(adapter_class, silencer); end
  def silenced?(path, type); end
end
module Listen::FSM
  def current_state; end
  def current_state_name; end
  def default_state; end
  def initialize; end
  def self.included(klass); end
  def state; end
  def states; end
  def transition!(state_name); end
  def transition(state_name); end
  def transition_with_callbacks!(state_name); end
  def validate_and_sanitize_new_state(state_name); end
end
module Listen::FSM::ClassMethods
  def default_state(new_default = nil); end
  def state(*args, &block); end
  def states; end
end
class Listen::FSM::State
  def call(obj); end
  def initialize(name, transitions = nil, &block); end
  def name; end
  def transitions; end
  def valid_transition?(new_state); end
end
module Listen::Event
end
class Listen::Event::Processor
  def _check_stopped; end
  def _deadline; end
  def _flush_wakeup_reasons; end
  def _process_changes; end
  def _remember_time_of_first_unprocessed_event; end
  def _reset_no_unprocessed_events; end
  def _sleep(_local_reason, *args); end
  def _timestamp; end
  def _wait_until_events; end
  def _wait_until_events_calm_down; end
  def _wait_until_no_longer_paused; end
  def config; end
  def initialize(config, reasons); end
  def loop_for(latency); end
end
class Listen::Event::Processor::Stopped < RuntimeError
end
class Listen::Event::Loop
  def _nice_error(ex); end
  def _sleep(*args); end
  def _wait_for_changes(ready_queue, config); end
  def _wait_until_resumed(ready_queue); end
  def _wakeup(reason); end
  def config; end
  def initialize(config); end
  def pause; end
  def paused?; end
  def processing?; end
  def resume; end
  def setup; end
  def state; end
  def state=(arg0); end
  def stopped?; end
  def teardown; end
  def wait_thread; end
  def wakeup_on_event; end
end
class Listen::Event::Loop::Error < RuntimeError
end
class Listen::Event::Loop::Error::NotStarted < Listen::Event::Loop::Error
end
class Listen::Event::Queue
  def <<(args); end
  def _safe_relative_from_cwd(dir); end
  def block; end
  def config; end
  def empty?(*args, &block); end
  def event_queue; end
  def initialize(config, &block); end
  def pop(*args, &block); end
  extend Forwardable
end
class Listen::Event::Queue::Config
  def initialize(relative); end
  def relative?; end
end
class Listen::Event::Config
  def call(*args); end
  def callable?; end
  def event_queue; end
  def initialize(listener, event_queue, queue_optimizer, wait_for_delay, &block); end
  def listener; end
  def min_delay_between_events; end
  def optimize_changes(changes); end
  def paused?; end
  def sleep(*args); end
  def stopped?; end
  def timestamp; end
end
class Listen::Listener
  def backend; end
  def ignore!(regexps); end
  def ignore(regexps); end
  def initialize(*dirs, &block); end
  def only(regexps); end
  def pause; end
  def paused?; end
  def processing?; end
  def processor; end
  def start; end
  def stop; end
  extend Listen::FSM::ClassMethods
  include Listen::FSM
end
class Listen::Listener::Config
  def adapter_instance_options(klass); end
  def adapter_select_options; end
  def initialize(opts); end
  def min_delay_between_events; end
  def relative?; end
  def silencer_rules; end
end
