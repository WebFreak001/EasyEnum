module easyenum;
T w(T, string s)() if (is(T == enum))
{
	T _ret;
	with (T)
		mixin("_ret = " ~ s ~ ";");
	return _ret;
}

unittest
{
	enum WindowCreationButtonFlags
	{
		Minimize = 1,
		Maximize = 2,
		Close = 4
	}
	auto flags = w!(WindowCreationButtonFlags, q{Minimize | Close});
	assert(flags == (WindowCreationButtonFlags.Minimize | WindowCreationButtonFlags.Close));
}
