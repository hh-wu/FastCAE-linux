#ifndef GRAPHICSANALYSE_GLOBAL_H
#define GRAPHICSANALYSE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(GRAPHICSANALYSE_LIBRARY)
#  define GRAPHICSANALYSESHARED_EXPORT Q_DECL_EXPORT
#else
#  define GRAPHICSANALYSESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // GRAPHICSANALYSE_GLOBAL_H
