/* -*- Mode: C++; -*- */
/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkODBCQuery.h

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

/**
 * @class   vtkODBCQuery
 * @brief   vtkSQLQuery implementation for ODBC connections to databases
 *
 *
 *
 * This is an implementation of vtkSQLQuery for ODBC databases.  See
 * the documentation for vtkSQLQuery and vtkRowQuery for information
 * about what the methods do.
 *
 * @sa
 * vtkSQLDatabase vtkSQLQuery vtkODBCDatabase
 */

#ifndef vtkODBCQuery_h
#define vtkODBCQuery_h

#include "vtkIOODBCModule.h" // For export macro
#include "vtkSQLQuery.h"

VTK_ABI_NAMESPACE_BEGIN
class vtkODBCDatabase;
class vtkVariant;
class vtkVariantArray;
class vtkODBCInternals;
class vtkODBCQueryInternals;

class VTKIOODBC_EXPORT vtkODBCQuery : public vtkSQLQuery
{

  friend class vtkODBCDatabase;

public:
  vtkTypeMacro(vtkODBCQuery, vtkSQLQuery);
  void PrintSelf(ostream& os, vtkIndent indent) override;
  static vtkODBCQuery* New();

  /**
   * Execute the query.  This must be performed
   * before any field name or data access functions
   * are used.
   */
  bool Execute() override;

  /**
   * The number of fields in the query result.
   */
  int GetNumberOfFields() override;

  /**
   * Return the name of the specified query field.
   */
  const char* GetFieldName(int i) override;

  /**
   * Return the type of the field, using the constants defined in vtkType.h.
   */
  int GetFieldType(int i) override;

  /**
   * Advance row, return false if past end.
   */
  bool NextRow() override;

  /**
   * Return true if there is an error on the current query.
   */
  bool HasError() override;

  /**
   * Return data in current row, field c
   */
  vtkVariant DataValue(vtkIdType c) override;

  /**
   * Get the last error text from the query
   */
  const char* GetLastErrorText() override;

  ///@{
  /**
   * Begin, commit, or roll back a transaction.
   */
  bool BeginTransaction() override;
  bool CommitTransaction() override;
  bool RollbackTransaction() override;
  ///@}

  ///@{
  /**
   * Set the query string to be used.  Returns true if the query is
   * OK; false if there's some problem with it that can be detected
   * before execution.
   */
  bool SetQuery(const char* queryString) override;
  const char* GetQuery() override;
  ///@}

  /**
   * The following methods bind a parameter value to a placeholder in
   * the SQL string.  See the documentation for vtkSQLQuery for
   * further explanation.  The driver makes internal copies of string
   * and BLOB parameters so you don't need to worry about keeping them
   * in scope until the query finishes executing.
   */

  using vtkSQLQuery::BindParameter;
  bool BindParameter(int index, unsigned char value) override;
  bool BindParameter(int index, signed char value) override;
  bool BindParameter(int index, unsigned short value) override;
  bool BindParameter(int index, signed short value) override;
  bool BindParameter(int index, unsigned int value) override;

  bool BindParameter(int index, int value) override;

  bool BindParameter(int index, unsigned long value) override;
  bool BindParameter(int index, signed long value) override;
  bool BindParameter(int index, unsigned long long value) override;
  bool BindParameter(int index, long long value) override;

  bool BindParameter(int index, float value) override;
  bool BindParameter(int index, double value) override;
  /**
   * Bind a string value -- string must be null-terminated
   */
  bool BindParameter(int index, const char* stringValue) override;
  ///@{
  /**
   * Bind a string value by specifying an array and a size
   */
  bool BindParameter(int index, const char* stringValue, size_t length) override;
  bool BindParameter(int index, const vtkStdString& string) override;
  ///@}
  ///@{
  /**
   * Bind a blob value.  Not all databases support blobs as a data
   * type.  Check vtkSQLDatabase::IsSupported(VTK_SQL_FEATURE_BLOB) to
   * make sure.
   */
  bool BindParameter(int index, const void* data, size_t length) override;
  bool ClearParameterBindings() override;
  ///@}

protected:
  vtkODBCQuery();
  ~vtkODBCQuery() override;

  vtkSetStringMacro(LastErrorText);
  vtkSetStringMacro(QueryText);
  vtkGetStringMacro(QueryText);

  char* QueryText;

private:
  vtkODBCQuery(const vtkODBCQuery&) = delete;
  void operator=(const vtkODBCQuery&) = delete;

  void ClearCurrentRow();
  bool CacheCurrentRow();

  bool CacheTimeColumn(int column);
  bool CacheIntervalColumn(int column);
  bool CacheCharColumn(int column);
  bool CacheLongLongColumn(int column);
  bool CacheBinaryColumn(int column);
  bool CacheBooleanColumn(int column);
  bool CacheStringColumn(int column);
  bool CacheWideStringColumn(int column);
  bool CacheDecimalColumn(int column);
  bool CacheNumericColumn(int column);
  bool CacheIntColumn(int column);
  bool CacheFloatColumn(int column);
  bool CacheDoubleColumn(int column);

  vtkODBCQueryInternals* Internals;
  bool InitialFetch;
  char* LastErrorText;
};

VTK_ABI_NAMESPACE_END
#endif // vtkODBCQuery_h
