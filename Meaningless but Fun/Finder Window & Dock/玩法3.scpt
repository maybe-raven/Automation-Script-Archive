JsOsaDAS1.001.00bplist00�Vscript_3var app = Application.currentApplication();
app.includeStandardAdditions = true;

var answer = app.displayDialog('How many windows do you want to open?', {
	defaultAnswer: '35'
});

var windowCount = Number(answer.textReturned);

var Finder = Application('Finder');
Finder.activate();

delay(1);

for (var i = 0; i < windowCount; i++) {
	var newWindow = Finder.FinderWindow();
	Finder.windows.push(newWindow);
}

delay(1);

var SystemEvents = Application('System Events');
SystemEvents.keystroke('m', {
	using: ['command down', 'option down']
});

delay(0.8 + 0.058 * windowCount);

FinderProc = SystemEvents.processes['Finder'];
FinderProc.menuBars[0].menuBarItems['Window'].menus[0].menuItems['Merge All Windows'].click();

delay(0.2 * windowCount)

Finder.windows[0].collapsed = false;

Finder.activate();

delay(0.01 * windowCount);

var item = FinderProc.menuBars[0].menuBarItems['File'].menus[0].menuItems['Close Tab'];
for (var i = 0; i < windowCount - 1; i++) {
	item.click();
}
FinderProc.menuBars[0].menuBarItems['File'].menus[0].menuItems['Close Window'].click();
                              I jscr  ��ޭ