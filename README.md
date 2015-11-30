# easyenum

Easily handle long enum names for operations. Written in 20 lines (including unittests)

## Usage

```d
import easyenum;
enum WindowCreationButtonFlags
{
	Minimize = 1,
	Maximize = 2,
	Close = 4
}
auto flags = w!(WindowCreationButtonFlags, q{Minimize | Close});
assert(flags == (WindowCreationButtonFlags.Minimize | WindowCreationButtonFlags.Close));
```
