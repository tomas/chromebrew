require 'package'

class Recordproto < Package
  description 'The protocols for the X window system provide extended functionality for communication between a X client and the server.'
  homepage ''
  version '1.14'
  source_url 'https://www.x.org/archive/individual/proto/recordproto-1.14.tar.gz'
  source_sha256 '74fc0e8919f3c234848794f1ee266ba6d090f9b99fd65ab913c54ee3ad3ff377'

  def self.build
    system "./configure"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
