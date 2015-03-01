
require './test/sets/audit_contexts.rb'
require './test/sets/customer_contexts.rb'
require './test/sets/note_contexts.rb'
require './test/sets/request_contexts.rb'
require './test/sets/user_contexts.rb'
require './test/sets/walkthrough_contexts.rb'
require './test/sets/waste_contexts.rb'

module Contexts
	# include Contexts::AuditContexts
	include Contexts::CustomerContexts
	# include Contexts::RequestContexts
	include Contexts::NoteContexts
	# include Contexts::UserContexts
	# include Contexts::WalthroughContexts
	# include Contexts::WasteContexts
end