# OpenCC 简繁转换之通用规范汉字标准

> [!NOTE]
> - 由于转换词典的底稿是 OpenCC 的简繁转换词典，少许异体字的使用并不符合中国大陆标准，仍需进一步校对。
> - 由于排除了异体字，本表不包含由繁至简的转换，可使用 OpenCC 现有繁简转换。

## 介绍

本仓库提供以中国大陆标准为基础的 [OpenCC](https://github.com/BYVoid/OpenCC) 转换词典，基于《[通用规范汉字表](https://zh.wikipedia.org/zh-cn/%E9%80%9A%E7%94%A8%E8%A7%84%E8%8C%83%E6%B1%89%E5%AD%97%E8%A1%A8)》（以下简称《通规》）、《[简化字总表](https://zh.wikipedia.org/zh-cn/%E7%AE%80%E5%8C%96%E5%AD%97%E6%80%BB%E8%A1%A8)》（以下简称《总表》）、OpenCC 数据等资料制作。

## 原则

1. 简繁关系、异体字关系、适用意项、字形以《通规》为基础，辅以《[新华字典](https://zh.wikipedia.org/zh-cn/%E6%96%B0%E5%8D%8E%E5%AD%97%E5%85%B8)》、《[现代汉语词典](https://zh.wikipedia.org/zh-cn/%E7%8E%B0%E4%BB%A3%E6%B1%89%E8%AF%AD%E8%AF%8D%E5%85%B8)》（以下简称《现汉》）、《[汉语大字典](https://zh.wikipedia.org/zh-cn/%E6%B1%89%E8%AF%AD%E5%A4%A7%E5%AD%97%E5%85%B8)》（以下简称《大字典》）参考修正。
1. 只考虑由简到繁的转换，不进行异体字、异写字的转换。
1. 对于表外汉字（包括表内含可类推简化部件的异体字），可依照《总表》第二表进行类推简化；不符合《总表》规则的类推不予收录。以下提及“类推简化”时，如无特别说明，均需符合《总表》类推规则。

## 关于《通规》

本表以《通规》为基础，但依然会酌情考虑字词之非通用意项，如姓氏、地名、旧意（参考前述辞书），因此个别字的繁体略有不同。

|规范字|《通规》繁体字|修正|备注|
|---|---|---|---|
|荐|薦|+荐|《大字典》荐：➌副词。表示频度，相当于“一再”、“屡次”。……|
|价|價|+价|《新华字典》价 jiè：旧时称被派遣传送东西或传达事情的人。|
|柜|櫃|+柜|《新华字典》柜 jǔ：柜柳，落叶乔木，即枫杨，羽状复叶，性耐湿、耐碱，可固沙。枝韧，可以编筐。|
|适|適|+适|《现汉》适 kuò：➊同“𨓈”。➋（Kuò）姓。|
|篱|篱 籬|-篱|《大字典》篱：同“籬”。……按：今为“籬”的简化字。《新华字典》、《现汉》之繁体“籬”亦可用于所有意项。|
|确|確|+确|《新华字典》确 què：➍同“埆”。|
|胜|勝|+胜|《新华字典》胜 shēng：“肽”（tài）的旧称。|
|腊|臘|+腊|《新华字典》腊 xī：干肉。|
|佣|傭|+佣|《新华字典》佣 yòng：佣金，佣钱，买卖东西时给介绍人的钱。|
|愿|願|+愿|《新华字典》愿 yuàn：➍恭谨。|
|蜡|蠟|+蜡|《新华字典》蜡 zhà：古代年终的一种祭祀名。|
|只|隻 衹|+只|《现汉》只² Zhǐ：姓。|

## 关于《总表》

制定《总表》时，一些简化方式可能会导致不合理的情况。这在《通规》发布后，通过不类推表外字而暂时绕开了。由于本仓库会收录类推简化字，所以不得不做一点小的修正。

1. “㝉〔宁〕”应添加到第二表。
1. “乌〔烏〕”、“鸟〔鳥〕” 上部（即除“一〔灬〕”以外的部分）添加到第二表，而非整体添加到第二表，以兼容“凫〔鳬〕”、“岛〔島〕”等字。
1. 由于大量含“㒼”偏旁的字被类推简化为含“𬜯”的字，应添加“𬜯〔㒼〕”到第二表的**简化偏旁**部分。与“只〔戠〕”类似，此简繁对应关系仅在作为偏旁时成立。
1. 规定“與”作上偏旁时不类推简化，如“𱊭->鸒”，而将“𱉰”视为异体字（除非“𱉰”加入《通规》，否则不视为简繁关系）。
1. 区分“㚒”与“夾”，“夾”简化为“夹”，并适用类推，而“㚒”不类推简化，因此“陕〔陝〕”应放入第一表，而非第三表。
1. “龻”只在作上偏旁时类推简化，如“䜌”、“羉”不作简化；此时组成它的“糹”、“言”**不**当作左偏旁，即**不**类推简化。
1. 如同“酆”字若类推简化为“⿰丰阝”，会与“邦”字混同，“奱”字若类推简化“⿱𰁜大”，亦会与“奕”字混同；应效仿《通规》中的做法，规定“奱”字不类推简化。
1. 若造成《通规》未提及的合并简化，且简化后为《通规》规范汉字，则放弃类推简化；若合并简化后不为《通规》规范汉字，则可添加为一对多转换。如“戠”单用时不合并简化到“只”、“橒”和“枟”可合并简化到“枟”。

## 关于类推简化

按照现行标准，《通规》以外的汉字不进行类推简化，但实际使用时会遇到类推简化字，因此本表收录了符合《总表》类推简化规则的字。具体收录原则如下：

1. 《通规》中的异体字类推简化后，不是规范字的，可额外收录。如“𬣣->註”。
1. 《通规》中的繁体字类推简化后，不是规范字的，可额外收录。如“𪠽->噹”。
1. 《通规》外的繁体字若可无争议地类推简化，且符合前述关于《总表》之修正时，可额外收录。如大部分鸟类用字、鱼类用字。
1. 若同时存在只能属于简体的部件和只能属于繁体的部件，视为异体字，不收录。如“𧹔”包含“贝”只能属于简体部件、“長”只能属于繁体部件，则“𧹔->賬”（“㝉->宁->寧”及其类推简化、以及规定不类推简化的情况除外）。
1. 不规范的类推简化不收录。如“𪹀->𤑹”。
1. 简体或繁体未分配统一码的，暂不收录。
