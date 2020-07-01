# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from probot_vision/VisionMatrix.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class VisionMatrix(genpy.Message):
  _md5sum = "c2e4f9b4abcd2e9270ca5b9713f7ed35"
  _type = "probot_vision/VisionMatrix"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64[] cameraMatrix
float64[] distCoeffs
float64[] ExternalMatrix
float64[] hmatrix
float64[] xmatrix
"""
  __slots__ = ['cameraMatrix','distCoeffs','ExternalMatrix','hmatrix','xmatrix']
  _slot_types = ['float64[]','float64[]','float64[]','float64[]','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cameraMatrix,distCoeffs,ExternalMatrix,hmatrix,xmatrix

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VisionMatrix, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.cameraMatrix is None:
        self.cameraMatrix = []
      if self.distCoeffs is None:
        self.distCoeffs = []
      if self.ExternalMatrix is None:
        self.ExternalMatrix = []
      if self.hmatrix is None:
        self.hmatrix = []
      if self.xmatrix is None:
        self.xmatrix = []
    else:
      self.cameraMatrix = []
      self.distCoeffs = []
      self.ExternalMatrix = []
      self.hmatrix = []
      self.xmatrix = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.cameraMatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.cameraMatrix))
      length = len(self.distCoeffs)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.distCoeffs))
      length = len(self.ExternalMatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.ExternalMatrix))
      length = len(self.hmatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.hmatrix))
      length = len(self.xmatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.xmatrix))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.cameraMatrix = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.distCoeffs = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.ExternalMatrix = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.hmatrix = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.xmatrix = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.cameraMatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.cameraMatrix.tostring())
      length = len(self.distCoeffs)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.distCoeffs.tostring())
      length = len(self.ExternalMatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.ExternalMatrix.tostring())
      length = len(self.hmatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.hmatrix.tostring())
      length = len(self.xmatrix)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.xmatrix.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.cameraMatrix = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.distCoeffs = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.ExternalMatrix = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.hmatrix = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.xmatrix = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I