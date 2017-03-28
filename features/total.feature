# language: zh-CN
# encoding: UTF-8

@login
功能: Total
#: 查询输入日期和终止日期的全部预算

  场景: 1. 输入三个月的总预算
    假如存在如下预算
      |month  ｜amount|
      |2017-02｜2800|
      |2017-03｜3100|
      |2017-04｜3000|
    当查询开始日期"2017-02-15"，结束时间"2017-04-16"的预算
    那么预算为6100

  场景: 2. 输入二个月的总预算
    假如存在如下预算
      |month  |amount|
      |2017-02|2800|
      |2017-03|3100|
    当查询开始日期"2017-02-15"，结束时间"2017-03-13"的预算
    那么预算为2700

  场景: 3. 输入1个月的总预算
    假如存在如下预算
      |month  |amount|
      |2017-02|2800|
    当查询开始日期"2017-02-15"，结束时间"2017-02-28"的预算
    那么预算为1400

  场景: 4. 输入2个月(跨年)的总预算
    假如存在如下预算
      |month  |amount|
      |2016-12|3100|
      |2017-01|3100|
    当查询开始日期"2017-12-15"，结束时间"2017-01-13"的预算
    那么预算为3000

  场景: 5. 输入2个月的总预算（不存在预算）
    假如不存在预算
    当查询开始日期"2017-12-15"，结束时间"2017-01-13"的预算
    那么预算为0

  场景: 6. 输入2个月的总预算(只有一个月存在预算)
    假如存在以下预算
      |month  |amount|
      |2016-12|3100|
    当查询开始日期"2017-12-15"，结束时间"2017-01-13"的预算
    那么预算为1700