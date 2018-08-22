# LocalizableDemo


#### Localizable.Stirng

使用xliff 本地化



#### 使用注意

1 、项目中需要使用以下语句进行本地化 。NSLocalizedString  ,NSLocalizedStringFromTableInBundle。

2、新建Localizable.stirngs 文件（注意同名），并选中Localizabel.string文件，点击右边的Localiztion按钮。完成该步骤使NSLocalizedString 即使没有定义值时，返回该值id。

3、并在 PROJECT -> Info 中添加多种语言。

4、选中项目target -> Editor -> Export 得到xliff文件。 Xliff 文件的内容是跟据项目中NSLocalizedString语句自动生成的。

5、修改翻译选择后，target -> Editor -> Import 得到新的  Localizable.stirngs （注意NSLocalizedString 语句与xliff文件选择对应）



可以使用 xliff 工具查看，暂时没有找到免费的。 

无法导出 英文的xliff文件(未知)，可以不选择语言导出xliff文件。但导出内容缺少内容，需要手动补充。



#### 测试代码

```
 [SoLangugeUnit saveCurrentLanguge:@"zh-Hans"];

 NSString *ss=  NSLocalizedStringFromTableInBundle(@"Apple", @"",[SoLangugeUnit localiableBundleFormCurrentLanguge],@"第一个参数为id 第二个参数为文件名(可以为空或Localizable) 第三个参数为语言 第四个参数备注");
    
 NSLog(@"result %@",ss);

```



#### xliff文件

```
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xliff xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.2" xmlns="urn:oasis:names:tc:xliff:document:1.2" xsi:schemaLocation="urn:oasis:names:tc:xliff:document:1.2 http://docs.oasis-open.org/xliff/v1.2/os/xliff-core-1.2-strict.xsd">
  <file source-language="en" original="LocalztionDemo/en.lproj/InfoPlist.strings" datatype="plaintext" target-language="en">
        <header>
      <tool tool-version="9.4.1" build-num="9F2000" tool-name="Xcode" tool-id="com.apple.dt.xcode"/>
    </header>
    <body>
      <trans-unit id="CFBundleName">
        <source>$(PRODUCT_NAME)</source>
        <note>Bundle name</note>
      </trans-unit>
    </body>
  </file>
  <file source-language="en" original="LocalztionDemo/en.lproj/Localizable.strings" datatype="plaintext" target-language="en">
        <header>
      <tool tool-version="9.4.1" build-num="9F2000" tool-name="Xcode" tool-id="com.apple.dt.xcode"/>
    </header>
    <body>
      <trans-unit id="APPLE">
        <source>APPLE</source>
        <target>APPLE</target>
        <note>No comment provided by engineer.</note>
      </trans-unit>
      <trans-unit id="APPLE1">
        <source>APPLE1</source>
        <target>APPLE1</target>
        <note>No comment provided by engineer.</note>
      </trans-unit>
      <trans-unit id="APPLE2">
        <source>APPLE2</source>
        <target>APPLE2</target>
        <note>No comment provided by engineer.</note>
      </trans-unit>
      <trans-unit id="APPLE3">
        <source>APPLE3</source>
        <target>APPLE3</target>
        <note>No comment provided by engineer.</note>
      </trans-unit>
      <trans-unit id="APPLE4">
        <source>APPLE4</source>
        <target>APPLE4</target>
        <note>No comment provided by engineer.</note>
      </trans-unit>
      <trans-unit id="APPLE5">
        <source>APPLE5</source>
        <target>APPLE5</target>
        <note>No comment provided by engineer.</note>
      </trans-unit>
      <trans-unit id="APPLE6">
        <source>APPLE6</source>
        <target>APPLE6</target>
        <note>No comment provided by engineer.</note>
      </trans-unit>
    </body>
  </file>
</xliff>
```

