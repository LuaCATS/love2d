---@meta

-- version: 11.5
---
---[Open in Browser](https://love2d.org/wiki/love)
---
---@class love
love = {}

---
---Gets the current running version of LÖVE.
---
---
---[Open in Browser](https://love2d.org/wiki/love.getVersion)
---
---@return number major # The major version of LÖVE, i.e. 0 for version 0.9.1.
---@return number minor # The minor version of LÖVE, i.e. 9 for version 0.9.1.
---@return number revision # The revision version of LÖVE, i.e. 1 for version 0.9.1.
---@return string codename # The codename of the current version, i.e. 'Baby Inspector' for version 0.9.1.
function love.getVersion() end

---
---Gets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.
---
---When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
---
---
---[Open in Browser](https://love2d.org/wiki/love.hasDeprecationOutput)
---
---@return boolean enabled # Whether deprecation output is enabled.
function love.hasDeprecationOutput() end

---
---Gets whether the given version is compatible with the current running version of LÖVE.
---
---
---[Open in Browser](https://love2d.org/wiki/love.isVersionCompatible)
---
---@overload fun(major: number, minor: number, revision: number):boolean
---@param version string # The version to check (for example '11.3' or '0.10.2').
---@return boolean compatible # Whether the given version is compatible with the current running version of LÖVE.
function love.isVersionCompatible(version) end

---
---Sets whether LÖVE displays warnings when using deprecated functionality. It is disabled by default in fused mode, and enabled by default otherwise.
---
---When deprecation output is enabled, the first use of a formally deprecated LÖVE API will show a message at the bottom of the screen for a short time, and print the message to the console.
---
---
---[Open in Browser](https://love2d.org/wiki/love.setDeprecationOutput)
---
---@param enable boolean # Whether to enable or disable deprecation output.
function love.setDeprecationOutput(enable) end

---
---If a file called conf.lua is present in your game folder (or .love file), it is run before the LÖVE modules are loaded. You can use this file to overwrite the love.conf function, which is later called by the LÖVE 'boot' script. Using the love.conf function, you can set some configuration options, and change things like the default size of the window, which modules are loaded, and other stuff.
---
---
---[Open in Browser](https://love2d.org/wiki/love.conf)
---
---@param t {identity:string, appendidentity:boolean, version:string, console:boolean, accelerometerjoystick:boolean, externalstorage:boolean, gammacorrect:boolean, audio:{mic:boolean, mixwithsystem:boolean}, window:{title:string, icon:string, width:number, height:number, borderless:boolean, resizable:boolean, minwidth:number, minheight:number, fullscreen:boolean, fullscreentype:"desktop"|"exclusive", vsync:number, msaa:number, depth:number, stencil:number, display:number, highdpi:boolean, usedpiscale:boolean, x:number, y:number}, modules:{audio:boolean, data:boolean, event:boolean, font:boolean, graphics:boolean, image:boolean, joystick:boolean, keyboard:boolean, math:boolean, mouse:boolean, physics:boolean, sound:boolean, system:boolean, thread:boolean, timer:boolean, touch:boolean, video:boolean, window:boolean}}
function love.conf(t) end

---
---Callback function triggered when a directory is dragged and dropped onto the window.
---
---
---[Open in Browser](https://love2d.org/wiki/love.directorydropped)
---
---@param path string The full platform-dependent path to the directory. It can be used as an argument to love.filesystem.mount, in order to gain read access to the directory with love.filesystem.
function love.directorydropped(path) end

---
---Called when the device display orientation changed, for example, user rotated their phone 180 degrees.
---
---
---[Open in Browser](https://love2d.org/wiki/love.displayrotated)
---
---@param index number The index of the display that changed orientation.
---@param orientation love.DisplayOrientation The new orientation.
function love.displayrotated(index, orientation) end
    
---
---Callback function used to draw on the screen every frame.
---
---
---[Open in Browser](https://love2d.org/wiki/love.draw)
---
function love.draw() end

---
---The error handler, used to display error messages.
---
---
---[Open in Browser](https://love2d.org/wiki/love.errorhandler)
---
---@param msg string The error message.
---@return function mainLoop Function which handles one frame, including events and rendering, when called. If this is nil then LÖVE exits immediately.
function love.errorhandler(msg) end

---
---Callback function triggered when a file is dragged and dropped onto the window.
---
---
---[Open in Browser](https://love2d.org/wiki/love.filedropped)
---
---@param file love.DroppedFile The unopened File object representing the file that was dropped.
function love.filedropped(file) end
    
---
---Callback function triggered when window receives or loses focus.
---
---
---[Open in Browser](https://love2d.org/wiki/love.focus)
---
---@param focus boolean True if the window gains focus, false if it loses focus.
function love.focus(focus) end

---
---Called when a Joystick's virtual gamepad axis is moved.
---
---
---[Open in Browser](https://love2d.org/wiki/love.gamepadaxis)
---
---@param joystick love.Joystick The joystick object.
---@param axis love.GamepadAxis The virtual gamepad axis.
---@param value number The new axis value.
function love.gamepadaxis(joystick, axis, value) end

---
---Called when a Joystick's virtual gamepad button is pressed.
---
---
---[Open in Browser](https://love2d.org/wiki/love.gamepadpressed)
---
---@param joystick love.Joystick The joystick object.
---@param button love.GamepadButton The virtual gamepad button.
function love.gamepadpressed(joystick, button) end

---
---Called when a Joystick's virtual gamepad button is released.
---
---
---[Open in Browser](https://love2d.org/wiki/love.gamepadreleased)
---
---@param joystick love.Joystick The joystick object.
---@param button love.GamepadButton The virtual gamepad button.
function love.gamepadreleased(joystick, button) end

---
---Called when a Joystick is connected.
---
---
---[Open in Browser](https://love2d.org/wiki/love.joystickadded)
---
---@param joystick love.Joystick The joystick object.
function love.joystickadded(joystick) end

---
---Called when a joystick axis moves.
---
---
---[Open in Browser](https://love2d.org/wiki/love.joystickaxis)
---
---@param joystick love.Joystick The joystick object.
---@param axis number The axis number.
---@param value number The new axis value.
function love.joystickaxis(joystick, axis, value) end

---
---Called when a joystick hat direction changes.
---
---
---[Open in Browser](https://love2d.org/wiki/love.joystickhat)
---
---@param joystick love.Joystick The joystick object.
---@param hat number The hat number.
---@param direction love.JoystickHat The new hat direction.
function love.joystickhat(joystick, hat, direction) end

---
---Called when a joystick button is pressed.
---
---
---[Open in Browser](https://love2d.org/wiki/love.joystickpressed)
---
---@param joystick love.Joystick The joystick object.
---@param button number The button number.
function love.joystickpressed(joystick, button) end

---
---Called when a joystick button is released.
---
---
---[Open in Browser](https://love2d.org/wiki/love.joystickreleased)
---
---@param joystick love.Joystick The joystick object.
---@param button number The button number.
function love.joystickreleased(joystick, button) end

---
---Called when a Joystick is disconnected.
---
---
---[Open in Browser](https://love2d.org/wiki/love.joystickremoved)
---
---@param joystick love.Joystick The joystick object.
function love.joystickremoved(joystick) end

---
---Callback function triggered when a key is pressed.
---
---
---[Open in Browser](https://love2d.org/wiki/love.keypressed)
---
---@param key love.KeyConstant Character of the pressed key.
---@param scancode love.Scancode The scancode representing the pressed key.
---@param isrepeat boolean Whether this keypress event is a repeat. The delay between key repeats depends on the user's system settings.
function love.keypressed(key, scancode, isrepeat) end

---
---Callback function triggered when a keyboard key is released.
---
---
---[Open in Browser](https://love2d.org/wiki/love.keyreleased)
---
---@param key love.KeyConstant Character of the pressed key.
---@param scancode love.Scancode The scancode representing the pressed key.
function love.keyreleased(key, scancode) end

---
---This function is called exactly once at the beginning of the game.
---
---
---[Open in Browser](https://love2d.org/wiki/love.load)
---
---@param arg table Command-line arguments given to the game.
---@param unfilteredArg table Unfiltered command-line arguments given to the executable. (In LÖVE 11.0, the passed arguments excludes the game name and the fused command-line flag (if exist) when runs from non-fused LÖVE executable. Previous version pass the argument as-is without any filtering.)
function love.load(arg, unfilteredArg) end

---
---Callback function triggered when the system is running out of memory on mobile devices.
---
---Mobile operating systems may forcefully kill the game if it uses too much memory, so any non-critical resource should be removed if possible (by setting all variables referencing the resources to '''nil'''), when this event is triggered. Sounds and images in particular tend to use the most memory.
---
---
---[Open in Browser](https://love2d.org/wiki/love.lowmemory)
---
function love.lowmemory() end

---
---Callback function triggered when window receives or loses mouse focus.
---
---
---[Open in Browser](https://love2d.org/wiki/love.mousefocus)
---
---@param focus boolean Whether the window has mouse focus or not.
function love.mousefocus(focus) end

---
---Callback function triggered when the mouse is moved.
---
---
---[Open in Browser](https://love2d.org/wiki/love.mousemoved)
---
---@param x number The mouse position on the x-axis.
---@param y number The mouse position on the y-axis.
---@param dx number The amount moved along the x-axis since the last time love.mousemoved was called.
---@param dy number The amount moved along the y-axis since the last time love.mousemoved was called.
---@param istouch boolean True if the mouse button press originated from a touchscreen touch-press.
function love.mousemoved(x, y, dx, dy, istouch) end

---
---Callback function triggered when a mouse button is pressed.
---
---
---[Open in Browser](https://love2d.org/wiki/love.mousepressed)
---
---@param x number Mouse x position, in pixels.
---@param y number Mouse y position, in pixels.
---@param button number The button index that was pressed. 1 is the primary mouse button, 2 is the secondary mouse button, and 3 is the middle button. Further buttons are mouse dependent.
---@param istouch boolean True if the mouse button press originated from a touchscreen touch-press.
---@param presses number The number of presses in a short time frame and small area, used to simulate double, triple clicks.
function love.mousepressed(x, y, button, istouch, presses) end

---
---Callback function triggered when a mouse button is released.
---
---
---[Open in Browser](https://love2d.org/wiki/love.mousereleased)
---
---@param x number Mouse x position, in pixels.
---@param y number Mouse y position, in pixels.
---@param button number The button index that was pressed. 1 is the primary mouse button, 2 is the secondary mouse button, and 3 is the middle button. Further buttons are mouse dependent.
---@param istouch boolean True if the mouse button press originated from a touchscreen touch-press.
---@param presses number The number of presses in a short time frame and small area, used to simulate double, triple clicks.
function love.mousereleased(x, y, button, istouch, presses) end

---
---Callback function triggered when the game is closed.
---
---
---[Open in Browser](https://love2d.org/wiki/love.quit)
---
---@return boolean abort Abort quitting. If true, do not close the game.
function love.quit() end

---
---Called when the window is resized, for example if the user resizes the window, or if love.window.setMode is called with an unsupported width or height in fullscreen and the window chooses the closest appropriate size.
---
---
---[Open in Browser](https://love2d.org/wiki/love.resize)
---
---@param w number The new width.
---@param h number The new height.
function love.resize(w, h) end

---
---The main function, containing the main loop. A sensible default is used when left out.
---
---
---[Open in Browser](https://love2d.org/wiki/love.run)
---
---@return fun() mainLoop Function which handles one frame, including events and rendering, when called.
function love.run() end

---
---Called when the candidate text for an IME (Input Method Editor) has changed.
---
---The candidate text is not the final text that the user will eventually choose. Use love.textinput for that.
---
---
---[Open in Browser](https://love2d.org/wiki/love.textedited)
---
---@param text string The UTF-8 encoded unicode candidate text.
---@param start number The start cursor of the selected candidate text.
---@param length number The length of the selected candidate text. May be 0.
function love.textedited(text, start, length) end

---
---Called when text has been entered by the user. For example if shift-2 is pressed on an American keyboard layout, the text '@' will be generated.
---
---
---[Open in Browser](https://love2d.org/wiki/love.textinput)
---
---@param text string The UTF-8 encoded unicode text.
function love.textinput(text) end

---
---Callback function triggered when a Thread encounters an error.
---
---
---[Open in Browser](https://love2d.org/wiki/love.threaderror)
---
---@param thread love.Thread The thread which produced the error.
---@param errorstr string The error message.
function love.threaderror(thread, errorstr) end

---
---Callback function triggered when a touch press moves inside the touch screen.
---
---
---[Open in Browser](https://love2d.org/wiki/love.touchmoved)
---
---@param id lightuserdata The identifier for the touch press.
---@param x number The x-axis position of the touch inside the window, in pixels.
---@param y number The y-axis position of the touch inside the window, in pixels.
---@param dx number The x-axis movement of the touch inside the window, in pixels.
---@param dy number The y-axis movement of the touch inside the window, in pixels.
---@param pressure number The amount of pressure being applied. Most touch screens aren't pressure sensitive, in which case the pressure will be 1.
function love.touchmoved(id, x, y, dx, dy, pressure) end

---
---Callback function triggered when the touch screen is touched.
---
---
---[Open in Browser](https://love2d.org/wiki/love.touchpressed)
---
---@param id lightuserdata The identifier for the touch press.
---@param x number The x-axis position of the touch inside the window, in pixels.
---@param y number The y-axis position of the touch inside the window, in pixels.
---@param dx number The x-axis movement of the touch inside the window, in pixels.
---@param dy number The y-axis movement of the touch inside the window, in pixels.
---@param pressure number The amount of pressure being applied. Most touch screens aren't pressure sensitive, in which case the pressure will be 1.
function love.touchpressed(id, x, y, dx, dy, pressure) end

---
---Callback function triggered when the touch screen stops being touched.
---
---
---[Open in Browser](https://love2d.org/wiki/love.touchreleased)
---
---@param id lightuserdata The identifier for the touch press.
---@param x number The x-axis position of the touch inside the window, in pixels.
---@param y number The y-axis position of the touch inside the window, in pixels.
---@param dx number The x-axis movement of the touch inside the window, in pixels.
---@param dy number The y-axis movement of the touch inside the window, in pixels.
---@param pressure number The amount of pressure being applied. Most touch screens aren't pressure sensitive, in which case the pressure will be 1.
function love.touchreleased(id, x, y, dx, dy, pressure) end

---
---Callback function used to update the state of the game every frame.
---
---
---[Open in Browser](https://love2d.org/wiki/love.update)
---
---@param dt number Time since the last update in seconds.
function love.update(dt) end

---
---Callback function triggered when window is minimized/hidden or unminimized by the user.
---
---
---[Open in Browser](https://love2d.org/wiki/love.visible)
---
---@param visible boolean True if the window is visible, false if it isn't.
function love.visible(visible) end

---
---Callback function triggered when the mouse wheel is moved.
---
---
---[Open in Browser](https://love2d.org/wiki/love.wheelmoved)
---
---@param x number Amount of horizontal mouse wheel movement. Positive values indicate movement to the right.
---@param y number Amount of vertical mouse wheel movement. Positive values indicate upward movement.
function love.wheelmoved(x, y) end

---
---The superclass of all data.
---
---
---[Open in Browser](https://love2d.org/wiki/love)
---
---@class love.Data: love.Object
local Data = {}

---
---Creates a new copy of the Data object.
---
---
---[Open in Browser](https://love2d.org/wiki/Data:clone)
---
---@return love.Data clone # The new copy.
function Data:clone() end

---
---Gets an FFI pointer to the Data.
---
---This function should be preferred instead of Data:getPointer because the latter uses light userdata which can't store more all possible memory addresses on some new ARM64 architectures, when LuaJIT is used.
---
---
---[Open in Browser](https://love2d.org/wiki/Data:getFFIPointer)
---
---@return ffi.cdata* pointer # A raw void* pointer to the Data, or nil if FFI is unavailable.
function Data:getFFIPointer() end

---
---Gets a pointer to the Data. Can be used with libraries such as LuaJIT's FFI.
---
---
---[Open in Browser](https://love2d.org/wiki/Data:getPointer)
---
---@return lightuserdata pointer # A raw pointer to the Data.
function Data:getPointer() end

---
---Gets the Data's size in bytes.
---
---
---[Open in Browser](https://love2d.org/wiki/Data:getSize)
---
---@return number size # The size of the Data in bytes.
function Data:getSize() end

---
---Gets the full Data as a string.
---
---
---[Open in Browser](https://love2d.org/wiki/Data:getString)
---
---@return string data # The raw data.
function Data:getString() end

---
---The superclass of all LÖVE types.
---
---
---[Open in Browser](https://love2d.org/wiki/love)
---
---@class love.Object
local Object = {}

---
---Destroys the object's Lua reference. The object will be completely deleted if it's not referenced by any other LÖVE object or thread.
---
---This method can be used to immediately clean up resources without waiting for Lua's garbage collector.
---
---
---[Open in Browser](https://love2d.org/wiki/Object:release)
---
---@return boolean success # True if the object was released by this call, false if it had been previously released.
function Object:release() end

---
---Gets the type of the object as a string.
---
---
---[Open in Browser](https://love2d.org/wiki/Object:type)
---
---@return string type # The type as a string.
function Object:type() end

---
---Checks whether an object is of a certain type. If the object has the type with the specified name in its hierarchy, this function will return true.
---
---
---[Open in Browser](https://love2d.org/wiki/Object:typeOf)
---
---@param name string # The name of the type to check for.
---@return boolean b # True if the object is of the specified type, false otherwise.
function Object:typeOf(name) end

return love
