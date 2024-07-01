import std.stdio;
import gtk.MainWindow;
import gtk.Main;
import gtk.Box;
import gtk.Widget;
import gtk.Scale;
import gtk.Range;
import gtk.Label;
import gtk.Frame;
import gtk.Adjustment;
import gtk.Grid;
import gtk.Button;
import std.process;
import std.conv;
import gtk.c.types;
import std.path;
import gtk.FileChooserButton;
import gtk.FileChooserDialog;
import gtk.Window;
import gio.FileIF;
public double Xresources = 100;
public double Openbox = 1;
public double GTK = 100;
public double JGMenu = 1;
void main(string[] args)
{
	TestRigWindow testRigWindow;
	Main.init(args);
	testRigWindow = new TestRigWindow();
	Main.run();
}

class TestRigWindow : MainWindow
{
	string title = "Fluorine settings";
	int borderWidth = 10;
	int width = 800;
	int height = 500;
	AppBox appBox;
	string exitMessage = "Bye.";

	this()
	{
		super(title);
		addOnDestroy(&quitApp);
		setBorderWidth(borderWidth);
		setSizeRequest(width, height);

		appBox = new AppBox();
		add(appBox);

		showAll();

	}


	void quitApp(Widget widget)
	{
		writeln(exitMessage);
		Main.quit();

	}

}

class HPadBox : Box
{
	private:
	Widget _widget;
	int _globalPadding = 0;
	int _padding = 0;
	bool fill = false;
	bool expand = false;
	int _borderWidth = 5;

	BoxJustify _pJustify;

	public:
	this(Widget widget, BoxJustify pJustify)
	{
		_widget = widget;
		_pJustify = pJustify;

		super(Orientation.HORIZONTAL, _globalPadding);

		if(_pJustify == BoxJustify.LEFT)
		{
			packStart(_widget, expand, fill, _padding);
		}
		else if(_pJustify == BoxJustify.RIGHT)
		{
			packEnd(_widget, expand, fill, _padding);
		}
		else
		{
			add(_widget);
		}

		setBorderWidth(_borderWidth);

	}

}

enum BoxJustify
{
	LEFT = 0,
	RIGHT = 1,
	CENTER = 2,
	TOP = 3,
	BOTTOM = 4,
}

class HPadLabel : HPadBox
{
	Label label;

	this(string text, BoxJustify pJustify)
	{
		label = new Label(text);

		super(label, pJustify);

	}

}

class LeftLabel : HPadLabel
{
	BoxJustify pJustify = BoxJustify.LEFT;

	this(string labelText)
	{
		super(labelText, pJustify);

	}

}

class AppBox : Box
{
	MyScale myScale;
	int localPadding = 0, globalPadding = 10;
	bool expand = false, fill = false;

	this()
	{
		super(Orientation.VERTICAL, globalPadding);
		auto label1 = new LeftLabel("Xresources DPI");
		packStart(label1, expand, fill, localPadding);
		auto XRScale = new XresourcesScale();
		packStart(XRScale, expand, fill, localPadding);
		auto label2 = new LeftLabel("Openbox Scale");
		packStart(label2, expand, fill, localPadding);
		auto OBScale = new OpenboxScale();
		packStart(OBScale, expand, fill, localPadding);
		auto label3 = new LeftLabel("GTK DPI");
		packStart(label3, expand, fill, localPadding);
		auto GScale = new GTKScale();
		packStart(GScale, expand, fill, localPadding);
		auto label4 = new LeftLabel("JGMenu Scale");
		packStart(label4, expand, fill, localPadding);
		auto jgscale = new JGMenuScale();
		packStart(jgscale, expand, fill, localPadding);
		string[] a = [];
		auto abutton = new ApplyButton(a);
		packStart(abutton, expand, fill, localPadding);
		auto label5 = new LeftLabel("Choose a new wallpaper!");
		packStart(label5, expand, fill, localPadding);
		auto chooser = new FileChooser();
		packStart(chooser, expand, fill, localPadding);
	}

}

class FileChooser : FileChooserButton {
	this() {
		super("Open file", GtkFileChooserAction.OPEN);
		addOnFileSet(delegate void(_) { OnFile(); });
	}

	void OnFile() {
		auto result = execute([expandTilde("~/.fluorine/setwallpaper.sh"), getFile().getPath()]);
		writeln(result.output);
	}
}

class ApplyButton : Button
{
	string label = "Apply DPI Settings";

	this(string[] args)
	{
		super(label);
		addOnClicked(delegate void(_) { buttonAction(args); });
	}


	void buttonAction(string[] args)
	{
		auto result = execute([expandTilde("~/.fluorine/setdpi.sh"), to!string(Xresources), to!string(GTK), to!string(Openbox), to!string(JGMenu)]);
		writeln(result.output);
	}

}

class MyScale : Scale
{
	double minimum = 100;
	double maximum = 500;
	double step = 1;

	this()
	{
		super(Orientation.HORIZONTAL, minimum, maximum, step);
		addOnValueChanged(&valueChanged);
		auto pos = PositionType.TOP;
		this.addMark(125, pos, "125%");
		this.addMark(150, pos, "150%");
		this.addMark(175, pos, "175%");
		this.addMark(200, pos, "200%");
		this.addMark(225, pos, "225%");
		this.addMark(250, pos, "250%");
		this.addMark(275, pos, "275%");
		this.addMark(300, pos, "300%");
		this.addMark(325, pos, "325%");
		this.addMark(350, pos, "350%");
		this.addMark(375, pos, "375%");
		this.addMark(400, pos, "400%");
		this.addMark(425, pos, "425%");
		this.addMark(450, pos, "450%");
		this.addMark(475, pos, "475%");

	}


	void valueChanged(Range range)
	{
		writeln(getValue());
	}

}

class XresourcesScale : MyScale {
	this() {
		super();
	}

	override void valueChanged(Range range) {
		Xresources = getValue();
	}
}

class OpenboxScale : Scale {
	double minimum = 1;
	double maximum = 6;
	double step = 1;
	this() {
		super(Orientation.HORIZONTAL, minimum, maximum, step);
		addOnValueChanged(&valueChanged);
	}

	void valueChanged(Range range) {
		Openbox = getValue();
	}
}

class GTKScale : MyScale {
	this() {
		super();
	}

	override void valueChanged(Range range) {
		GTK = getValue();
	}
}

class JGMenuScale : Scale {
	double minimum = 1;
	double maximum = 6;
	double step = 1;
	this() {
		super(Orientation.HORIZONTAL, minimum, maximum, step);
		addOnValueChanged(&valueChanged);
	}

	void valueChanged(Range range) {
		JGMenu = getValue();
	}
}
