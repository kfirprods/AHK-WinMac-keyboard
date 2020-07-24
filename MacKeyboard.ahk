;-----------------------------------------
; Make your windows feel like a mac
;=========================================

; --------------------------------------------------------------
; NOTES
; --------------------------------------------------------------
; ! = ALT
; ^ = CTRL
; + = SHIFT
; # = WIN
;


#InstallKeybdHook
#SingleInstance force
SetTitleMatchMode 2
SendMode Input

; --------------------------------------------------------------
; Mac-like screenshots in Windows (requires Windows 10 Snip & Sketch)
; --------------------------------------------------------------

; Capture entire screen with CMD/WIN + SHIFT + 3
!+3::send #{PrintScreen}

; Capture portion of the screen with CMD/WIN + SHIFT + 4
!+4::#+s

; F13-15, standard windows mapping
F13::SendInput {PrintScreen}
F14::SendInput {ScrollLock}
F15::SendInput {Pause}

; --------------------------------------------------------------
; OS X system shortcuts
; --------------------------------------------------------------

; Make Ctrl + S work with cmd (windows) key
!s::Send, ^s

; Selecting
!a::Send, ^a

; Copying
!c::Send, ^c

; Pasting
!v::Send, ^v

; Cutting
!x::Send, ^x

; Opening
!o::Send ^o

; Finding
!f::Send ^f

; "Find All" in some code editors
!+f::Send ^+f

; Undo
!z::Send ^z

; Redo
!y::Send ^y

; New tab
!t::Send ^t

; Re-open closed tab
!+t::Send ^+t

; close tab
!w::Send ^w

; minimize windows
!m::WinMinimize,a

; Zoom in (cmd =)
;!VKBB::Send {Lctrl down}{=}{Lctrl up}
; Zoom out (cmd -)
;!VKBD::Send {Lctrl down}{-}{Lctrl up}

; cmd+arrow navigation
!Up::Send {Lctrl down}{Home}{Lctrl up}
!Down::Send {Lctrl down}{End}{Lctrl up}
!Left::Send {Home}
!Right::Send {End}
!+Left::Send {LShift down}{Home}{LShift up}
!+Right::Send {LShift down}{End}{LShift up}

; option+arrow navigation
#Left::Send {Lctrl down}{Left}{Lctrl up}
#Right::Send {Lctrl down}{Right}{Lctrl up}
#+Left::Send {LShift down}{Lctrl down}{Left}{Lctrl up}{LShift up}
#+Right::Send {LShift down}{Lctrl down}{Right}{Lctrl up}{LShift up}

; delete whole line backwards
!BS::Send {LShift down}{Home}{LShift Up}{Del}

; delete whole word backwards
#BS::Send {LShift down}{Lctrl down}{Left}{Lctrl up}{LShift Up}{Del}

; cmd+number to go to a specific tab 
!1::Send ^1
!2::Send ^2
!3::Send ^3
!4::Send ^4
!5::Send ^5
!6::Send ^6
!7::Send ^7
!8::Send ^8
!9::Send ^9
!0::Send ^0


; cmd+/ to comment a line of code
!/::Send ^/

; --------------------------------------------------------------
; Application specific
; --------------------------------------------------------------

; Google Chrome
#IfWinActive, ahk_class Chrome_WidgetWin_1

  ; Show Web Developer Tools with cmd + alt + i
  #!i::Send {F12}

  ; Show source code with cmd + alt + u
  #!u::Send ^u

  ; Incognito
  !+n::Send ^+n

  ; Go to address bar
  !l::Send !d

  ; TODO: go to history, go to downloads, etc...

#IfWinActive

; Windows Explorer
#IfWinActive ahk_class CabinetWClass
  ; cmd+up to go back one folder
  !Up::Send {LAlt down}{Left}{LAlt up}
  ; cmd+down to go into selected folder
  !Down::Send {Enter}

  ; Edit file/folder name by hitting Enter
  Enter::
    ; If not already editing, hit F2 to go into edit mode
    if (!A_CaretX)
    {
      Send {F2} 
    }
    ; Otherwise, send enter to finish editing
    else {
      Send {Enter}
    }
    return
  
#IfWinActive
