java_import 'jcifs.smb.SmbFile'
java_import 'jcifs.smb.SmbFileInputStream'
java_import 'jcifs.smb.NtlmPasswordAuthentication'

module JCIFS

  class RemoteFile
    def initialize(path, user, password)
      auth = NtlmPasswordAuthentication.new(nil, user, password)
      @smb_file = SmbFile.new("smb:/#{path.gsub('\\','/')}", auth)
    end

    def read
      SmbFileInputStream.new(@smb_file).to_io.read
    end
  end
end