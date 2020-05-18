#ifndef VERSE1_HPP_INCLUDED
#define VERSE1_HPP_INCLUDED

// define VERSE1_DLL when building libverse1.dll
# if defined(_WIN32) && !defined(__GNUC__)
# ifdef VERSE1_DLL
  # define VERSE1_DECL _ _declspec(dllexport)
# else
  # define VERSE1_DECL _ _declspec(dllimport)
# endif
# endif // WIN32

#ifndef VERSE1_DECL
# define VERSE1_DECL
#endif


#ifdef __MWERKS__
# pragma export on
#endif

VERSE1_DECL void verse1( );

#ifdef __MWERKS__
# pragma export off
#endif

#endif // VERSE1_HPP_INCLUDED
