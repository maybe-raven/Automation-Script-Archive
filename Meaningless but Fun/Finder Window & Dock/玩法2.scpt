JsOsaDAS1.001.00bplist00�Vscript_5var app = Application.currentApplication();
app.includeStandardAdditions = true;

var answer = app.displayDialog('How many windows do you want to open?', {
	defaultAnswer: '35'
});

var windowCount = Number(answer.textReturned);

var Finder = Application('Finder');
Finder.activate();

for (var i = 0; i < windowCount; i++) {
	var newWindow = Finder.FinderWindow();
	Finder.windows.push(newWindow);
	newWindow.collapsed = true;
}

delay(1);

var SystemEvents = Application('System Events');

SystemEvents.keystroke('w', {
	using: ['command down', 'option down']
});                              K jscr  ��ޭ