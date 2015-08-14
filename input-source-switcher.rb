class InputSourceSwitcher < Formula
	homepage "https://github.com/vovkasm/input-source-switcher"
	url "https://github.com/vovkasm/input-source-switcher/archive/v0.3.tar.gz"
	sha256 "c4bb51aae132e672c886ed8add7e31300be21569ec3e2867639e6ee23b38d049"

	depends_on "cmake" => :build

	def install
		system "cmake", ".", *std_cmake_args
		system "make", "install"
	end

	test do 
		system "#{bin}/issw", "-l"
	end
end