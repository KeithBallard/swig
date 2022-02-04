%module template_array_numeric

#ifdef SWIGFORTRAN
/* Make unit testing easier for Fortran */
%include <typemaps.i>
%apply SWIGTYPE ARRAY[ANY] {const float [ANY] };
#endif

%inline %{

template <int Len>
class Arrayf
{
  float a[Len];
 public:
  Arrayf() {}
  Arrayf(const float l[Len]) { };
};

template <int Len>
Arrayf<Len> make_arrayf(const float l[Len])
{
  Arrayf<Len> a(l);
  return a;
}

typedef Arrayf<4> Array4f;

%}

%template(Array4f) Arrayf<4>;
%template(make_array4f) make_arrayf<4>;
