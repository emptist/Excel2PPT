xlsx = require('json-as-xlsx')

data = [
  {
    sheet: '院级',
    columns: [
      { label: '用户', value: 'user' }, 
      { label: '年资', value: (contentRow) => "#{contentRow.age} years" }, 
      { label: '数据', value: (contentRow) => if contentRow.more then (contentRow.more.phone ? '') else '' }
    ],
    content: [
      { user: 'Andrea', age: 20, more: { phone: '11111111' } },
      { user: 'Luis', age: 21, more: { phone: '12345678' } }
    ]
  }, 
  
  {
    sheet: '专科',
    columns: [
      { label: '用户', value: 'user' }, 
      # // Top level data
      { 
        label: '年龄', value: 'age' #(contentRow) => contentRow.age + ' years' 
      }, 
      # // Run functions
      { label: '数据', value: (contentRow) => if contentRow.more then (contentRow.more.phone ? '') else '' }
    ],
    content: [
      { user: 'Manuel', age: 16, more: { phone: '99999999' } }
      { user: 'Ana', age: 17, more: { phone: '三期二十一' } }
      { user: 'Anny', age: 19, more: { phone: '38765321' } }
    ]
  }
]

settings = {
  fileName: 'MySpreadsheet', # // Name of the spreadsheet
  extraLength: 3, 
  # // A bigger number means that columns will be wider
  writeOptions: {} 
  # // Style options from https:# //github.com/SheetJS/sheetjs#writing-options
}

xlsx(data, settings) # // Will download the excel file
