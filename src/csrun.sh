CallCsc() { csc -nologo -recurse:*.cs $@; }
CallChmod() { chmod ${2:-755} ${1:-Program.exe}; }
RunExe() { ./${1:-Program.exe}; }
BuildAndRun() {
	CallCsc $@
	CallChmod
	RunExe
}
