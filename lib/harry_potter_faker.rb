class HarryPotterFaker
	$files = [:first_names, :last_names, :prefixes, :suffixes, :email_hosts, :domain_names]

	def initialize
		require_files
		create_arrays
	end 

	def name
		name = ""
		name += (prefix + " ") if add_extra
		name += first_and_last
		name += (" " + suffix) if add_extra
		return name
	end

	def first_name
		return $first_names.sample
	end 

	def last_name
		return $last_names.sample
	end 

	def first_and_last
		return first_name + " " + last_name
	end

	def prefix
		return $prefixes.sample
	end 

	def suffix
		return $suffixes.sample
	end 

	def email
		return (first_name + "." + last_name + "@" + email_host + domain_name)
	end

	private

	def email_host
		return $email_hosts.sample
	end

	def domain_name
		return $domain_names.sample
	end

	def add_extra
		rand() < 0.2
	end 

	def create_arrays
		unless previously_initialized
			$files.each do |file|
				eval("$#{file} = $#{file}.split('\n')")
			end
		end
	end 

	def require_files
		$files.each do |file|
			require_relative file.to_s
		end 
	end 

	def previously_initialized
		$first_names.is_a? Array
	end 

end


h = HarryPotterFaker.new()
10.times {puts h.email}





