---@class love.data
love.data = {}

---
---Compresses a string or data using a specific compression algorithm.
---
---@param container love.data.ContainerType # What type to return the compressed data as.
---@param format love.data.CompressedDataFormat # The format to use when compressing the string.
---@param rawstring string # The raw (un-compressed) string to compress.
---@param level number # The level of compression to use, between 0 and 9. -1 indicates the default level. The meaning of this argument depends on the compression format being used.
---@return love.data.CompressedData or string compressedData # CompressedData/string which contains the compressed version of rawstring.
function love.data.compress(container, format, rawstring, level) end

---
---Decode Data or a string from any of the EncodeFormats to Data or string.
---
---@param container love.data.ContainerType # What type to return the decoded data as.
---@param format love.data.EncodeFormat # The format of the input data.
---@param sourceString string # The raw (encoded) data to decode.
---@return love.data.ByteData or string decoded # ByteData/string which contains the decoded version of source.
function love.data.decode(container, format, sourceString) end

---
---Decompresses a CompressedData or previously compressed string or Data object.
---
---@param container love.data.ContainerType # What type to return the decompressed data as.
---@param compressedData love.data.CompressedData # The compressed data to decompress.
---@return love.data.Data or string decompressedData # Data/string containing the raw decompressed data.
function love.data.decompress(container, compressedData) end

---
---Encode Data or a string to a Data or string in one of the EncodeFormats.
---
---@param container love.data.ContainerType # What type to return the encoded data as.
---@param format love.data.EncodeFormat # The format of the output data.
---@param sourceString string # The raw data to encode.
---@param linelength number # The maximum line length of the output. Only supported for base64, ignored if 0.
---@return love.data.ByteData or string encoded # ByteData/string which contains the encoded version of source.
function love.data.encode(container, format, sourceString, linelength) end

---
---Gets the size in bytes that a given format used with love.data.pack will use.
---
---This function behaves the same as Lua 5.3's string.packsize.
---
---@param format string # A string determining how the values are packed. Follows the rules of Lua 5.3's string.pack format strings.
---@return number size # The size in bytes that the packed data will use.
function love.data.getPackedSize(format) end

---
---Compute the message digest of a string using a specified hash algorithm.
---
---@param hashFunction love.data.HashFunction # Hash algorithm to use.
---@param string string # String to hash.
---@return string rawdigest # Raw message digest string.
function love.data.hash(hashFunction, string) end

---
---Creates a new Data object containing arbitrary bytes.
---
---Data:getPointer along with LuaJIT's FFI can be used to manipulate the contents of the ByteData object after it has been created.
---
---@param datastring string # The byte string to copy.
---@return love.data.ByteData bytedata # The new Data object.
function love.data.newByteData(datastring) end

---
---Creates a new Data referencing a subsection of an existing Data object.
---
---@param data love.data.Data # The Data object to reference.
---@param offset number # The offset of the subsection to reference, in bytes.
---@param size number # The size in bytes of the subsection to reference.
---@return love.data.Data view # The new Data view.
function love.data.newDataView(data, offset, size) end

---
---Packs (serializes) simple Lua values.
---
---This function behaves the same as Lua 5.3's string.pack.
---
---@param container love.data.ContainerType # What type to return the encoded data as.
---@param format string # A string determining how the values are packed. Follows the rules of Lua 5.3's string.pack format strings.
---@param v1 love.data.number or boolean or string # The first value (number, boolean, or string) to serialize.
---@param ... love.data.number or boolean or string # Additional values to serialize.
---@return love.data.Data or string data # Data/string which contains the serialized data.
function love.data.pack(container, format, v1, ...) end

---
---Unpacks (deserializes) a byte-string or Data into simple Lua values.
---
---This function behaves the same as Lua 5.3's string.unpack.
---
---@param format string # A string determining how the values were packed. Follows the rules of Lua 5.3's string.pack format strings.
---@param datastring string # A string containing the packed (serialized) data.
---@param pos number # Where to start reading in the string. Negative values can be used to read relative from the end of the string.
---@return love.data.number or boolean or string v1 # The first value (number, boolean, or string) that was unpacked.
---@return love.data.number or boolean or string ... # Additional unpacked values.
---@return number index # The index of the first unread byte in the data string.
function love.data.unpack(format, datastring, pos) end

---@class love.data.ByteData: love.data.Object, love.data.Data
local ByteData = {}

---@class love.data.CompressedData: love.data.Data, love.data.Object
local CompressedData = {}

---
---Gets the compression format of the CompressedData.
---
---@return love.data.CompressedDataFormat format # The format of the CompressedData.
function CompressedData:getFormat() end
