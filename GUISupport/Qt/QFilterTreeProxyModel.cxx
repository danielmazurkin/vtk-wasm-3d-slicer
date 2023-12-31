/*=========================================================================

  Program:   Visualization Toolkit
  Module:    QFilterTreeProxyModel.cxx

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/*-------------------------------------------------------------------------
  Copyright 2008 Sandia Corporation.
  Under the terms of Contract DE-AC04-94AL85000 with Sandia Corporation,
  the U.S. Government retains certain rights in this software.
-------------------------------------------------------------------------*/

#include "QFilterTreeProxyModel.h"

VTK_ABI_NAMESPACE_BEGIN
QFilterTreeProxyModel::QFilterTreeProxyModel(QObject* p)
  : QSortFilterProxyModel(p)
{
  this->TreeLevel = 0;
}

QFilterTreeProxyModel::~QFilterTreeProxyModel() = default;

void QFilterTreeProxyModel::setFilterTreeLevel(int level)
{
  this->TreeLevel = level;
}

bool QFilterTreeProxyModel::filterAcceptsRow(int sourceRow, const QModelIndex& sourceParent) const
{
  int level = 0;
  QModelIndex pidx = sourceParent;
  while (pidx != QModelIndex())
  {
    pidx = pidx.parent();
    level++;
  }

  if (level < this->TreeLevel)
  {
    return true;
  }

  if (level > this->TreeLevel)
  {
    return filterAcceptsRow(sourceRow, sourceParent.parent());
  }

  QModelIndex idx = sourceModel()->index(sourceRow, filterKeyColumn(), sourceParent);

#if (QT_VERSION >= QT_VERSION_CHECK(5, 12, 0))
  return (sourceModel()->data(idx).toString().contains(filterRegularExpression()));
#else
  return (sourceModel()->data(idx).toString().contains(filterRegExp()));
#endif
}

bool QFilterTreeProxyModel::lessThan(const QModelIndex& left, const QModelIndex& right) const
{
  QVariant leftData = this->sourceModel()->data(left);
  QVariant rightData = this->sourceModel()->data(right);

  QString leftString = leftData.toString();
  QString rightString = rightData.toString();

  return QString::localeAwareCompare(leftString, rightString) < 0;
}
VTK_ABI_NAMESPACE_END
