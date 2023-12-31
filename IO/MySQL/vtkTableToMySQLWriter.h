/*=========================================================================

  Program:   Visualization Toolkit
  Module:    vtkTableToMySQLWriter.h

  Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
  All rights reserved.
  See Copyright.txt or http://www.kitware.com/Copyright.htm for details.

     This software is distributed WITHOUT ANY WARRANTY; without even
     the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
     PURPOSE.  See the above copyright notice for more information.

=========================================================================*/
/**
 * @class   vtkTableToMySQLWriter
 * @brief   store a vtkTable in a MySQL database
 *
 * vtkTableToMySQLWriter reads a vtkTable and inserts it into a MySQL
 * database.
 */

#ifndef vtkTableToMySQLWriter_h
#define vtkTableToMySQLWriter_h

#include "vtkIOMySQLModule.h" // For export macro
#include "vtkTableToDatabaseWriter.h"

VTK_ABI_NAMESPACE_BEGIN
class vtkMySQLDatabase;

class VTKIOMYSQL_EXPORT vtkTableToMySQLWriter : public vtkTableToDatabaseWriter
{
public:
  static vtkTableToMySQLWriter* New();
  vtkTypeMacro(vtkTableToMySQLWriter, vtkTableToDatabaseWriter);
  void PrintSelf(ostream& os, vtkIndent indent) override;

  ///@{
  /**
   * Get the input to this writer.
   */
  vtkTable* GetInput();
  vtkTable* GetInput(int port);
  ///@}

protected:
  vtkTableToMySQLWriter();
  ~vtkTableToMySQLWriter() override;
  void WriteData() override;

  int FillInputPortInformation(int port, vtkInformation* info) override;

private:
  vtkTableToMySQLWriter(const vtkTableToMySQLWriter&) = delete;
  void operator=(const vtkTableToMySQLWriter&) = delete;
};

VTK_ABI_NAMESPACE_END
#endif
