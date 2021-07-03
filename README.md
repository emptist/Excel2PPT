# Excel2PPT
Excel data driven PPT generator
# Excel 数据处理及制作PPT

## 目标

1. 读取数据源，数据源包括 Excel 表格，JSON等，根据用户需要优先完成Excel读取
2. 数据分析
   1. 这部分拟在系统内完成，不依赖office，以便使用node的强大功能
   2. 由于实现输出Excel功能，亦可支持在Excel中计算分析，则可混合使用，兼容旧工作流程
3. 数据展示，
   1. 制作传统的Excel图表，优点方便嵌入PPT
   2. 或采用node所支持的制图库，优点支持slidejs，但要能输出到PPT、Word文档
4. 制作文档
   1. 图表嵌入PPT
   2. 根据数据分析结果自动制作Word文档


## 选择npm 包
   

### 用途
   1. Excel处理： 主要的需求是读取数据，加分项是可转化为JSON
   2. PPT处理：主要的需求是生成PPT，加分项是
      1. 可以复制Excel图表链接PPT文档，
      2. 可以生成charts

### 选择
  1. 读写 exceljs 不合适，too low leveled
  2. 写出 json-as-xlsx 可以对空缺及错误数据进行检验处理，适用于目前工作需要 an array of objects are filled into rows with each column defined by columns, see testJson_as_xlsx.coffee
  3. 写出 https://github.com/rikkertkoppes/json2xls not fit
  4. 读入 https://www.npmjs.com/package/node-excel-stream 待测试
  5. 读入 https://www.npmjs.com/package/simple-excel-to-json
  6. 读入 https://github.com/adil-ahorger/excel-as-json seems not working anymore