#include <cstdio>

class Interval
{
public:
	Interval(int rup, int pai)
	{
		rupees = rup + pai / 100;
		paisa = pai % 100;
		#ifdef TESTING
		puts("Interval instance initialized");
		#endif
	}
	
	//copy constructor
	Interval(const Interval& money)
	{
		rupees = money.rupees;
		paisa = money.paisa;
		#ifdef TESTING
		puts("Interval instance copy initialized");
		#endif
	}

	int cash() const
	{
		return 100 * rupees + paisa;
	}

	void Print() const
	{
		printf("%d:%02d\n", rupees, paisa);
	}

	//overloading addition(+) operator
	Interval operator+(const Interval& rhs) const
	{
		return Interval(rupees + rhs.rupees, paisa + rhs.paisa);
	}

	//overloading subtraction(-) operator
	Interval operator-(const Interval& rhs) const
	{
		return Interval(rupees - rhs.rupees, paisa - rhs.paisa);
	}

	~Interval()
	{
		#ifdef TESTING
		puts("Interval instance finalized");
		#endif
	}
private:
	int rupees;
	int paisa;
};

