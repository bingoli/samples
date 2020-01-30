//
//  RegularExpressionTestViewController.swift
//  performace
//
//  Created by libin on 2020/1/29.
//  Copyright © 2020 cn.bingoli. All rights reserved.
//

import UIKit

class RegularExpressionTestViewController: UIViewController {
    
    var testText = """
    github 编辑
    这里加了一个电话：15001234567
    GitHub是一个面向开源及私有软件项目的托管平台，因为只支持git 作为唯一的版本库格式进行托管，故名GitHub。
    GitHub于2008年4月10日正式上线，除了Git代码仓库托管及基本的 Web管理界面以外，还提供了订阅、讨论组、文本渲染、在线文件编辑器、协作图谱（报表）、代码片段分享（Gist）等功能。目前，其注册用户已经超过350万，托管版本数量也是非常之多，其中不乏知名开源项目 Ruby on Rails、jQuery、python 等。
    2018年6月4日，微软宣布，通过75亿美元的股票交易收购代码托管平台GitHub。
    2019年05月，《个人电脑杂志》网站报道，GitHub正遭到一名黑客的入侵。据称，这名黑客先擦除代码资源库，然后向用户索要赎金，作为恢复数据的交换。 [1]
    外文名GitHub开发者数量超过900万 (2015年统计数据) [2] 类    别开源代码库官    网http://github.com/ 上线时间2008年4月10日归属公司微软公司
    目录
    1 基本功能
    2 版本历史
    3 内幕信息
    4 Windows应用
    5 配置管理
    6 融资
    7 有关报道
    基本功能编辑

    github
    github
    作为开源代码库以及版本控制系统，Github拥有超过900万开发者用户。随着越来越多的应用程序转移到了云上，Github已经成为了管理软件开发以及发现已有代码的首选方法。
    如前所述，作为一个分布式的版本控制系统，在Git中并不存在主库这样的概念，每一份复制出的库都可以独立使用，任何两个库之间的不一致之处都可以进行合并。
    GitHub可以托管各种git库，并提供一个web界面，但它与外国的SourceForge、Google Code或中国的coding的服务不同，GitHub的独特卖点在于从另外一个项目进行分支的简易性。为一个项目贡献代码非常简单：首先点击项目站点的“fork”的按钮，然后将代码检出并将修改加入到刚才分出的代码库中，最后通过内建的“pull request”机制向项目负责人申请代码合并。已经有人将GitHub称为代码玩家的MySpace。
    在GitHub进行分支就像在Myspace（或Facebook…）进行交友一样，在社会关系图的节点中不断的连线。
    GitHub项目本身自然而然的也在GitHub上进行托管，只不过在一个私
    有的，公共视图不可见的库中。开源项目可以免费托管，但私有库则并不如此。Chris Wanstrath，GitHub的开发者之一，肯定了通过付费的私有库来在财务上支持免费库的托管这一计划。
    是的，我们正是这么计划的。通过与客户的接洽，开发FamSpam，甚至是开发GitHub本身，GitHub的私有库已经被证明了物有所值。任何希望节省时间并希望和团队其它成员一样远离页面频繁转换之苦的人士都会从GitHub中获得他们真正想要的价值。
    在GitHub，用户可以十分轻易地找到海量的开源代码。
    版本历史编辑
    2012年12月24日，GitLab 4.0 RC2 发布，开源的 Github克隆。
    内幕信息编辑
    Chris Wanstrath还向记者分享了关于GitHub的一些内幕信息︰
    GitHub主要用Rails实现。我们在进行的post-commit集成小应用完全使用Merb编写。我们使用了Python的Pygments来做格式高亮显示，另外，还用了Ara T. Howard's Bj加上一些Ruby脚本来做我们的排队系统。当然，我们用了Ruby Grit库来和Git进行交互。
    GitHub已经有了一组引人注目的特性，除了命令式的库浏览器和一个项目Wiki，GitHub甚至还包括了一个GitHub gem，以使通过shell方式使用GitHub更为方便。更多的未来特性已经在计划中︰
    许多人都希望能有一个条目系统，因此一个简单的条目系统已经在开发中。此外，正如我前面所言，我们尚在进行RubyGems服务器和一些之前留出的post-commit钩子方面的工作。如果你不能或就是不想托管一个你自己的守护进程，你可以使用我们所提供的。
    我们还在开发一些特性来帮助公司在使用Github时可以停留在sync之上。
    最后，我们也在进行API发布方面的工作。我们很快就会发布一些只读性的API，随后是一些很强大的“写”集成。你可以使用API将新的事件发布到新闻feed中，发消息和做其他许多很酷的事情。
    GitHub尚未设定官方版本的发布日期，不过估计在三月底（GitHub已经上线，但只能通过邀请注册）。更多关于GitHub的信息可以参见GitHub官方网站或GitHub博客。通过GitHub进行代码管理的开源项目列表也已经可以查阅。
    Windows应用编辑
    GitHub 使用 git 分布式版本控制系统，而 git 最初是 LinusTorvalds 为帮助Linux开发而创造的，它针对的是 Linux 平台，因此 git 和 Windows 从来不是最好的朋友，因为它一点也不像 Windows。GitHub 发布了GitHub for Windows，为 Windows 平台开发者提供了一个易于使用的 Git 图形客户端。
    GitHubA主界面
    GitHubA主界面
    GitHub for Windows 是一个 Metro 风格应用程序，集成了自包含版本的 Git，bash 命令行 shell，PowerShell 的 posh-git 扩展。GitHub 为 Windows 用户提供了一个基本的图形前端去处理大部分常用版本控制任务，可以创建版本库，向本地版本库递交补丁，在本地和远程版本库之间同步。微软也通过CodePlex向开发者提供 git 版本控制系统，而 GitHub 创造了一个更具有吸引力的 Windows 版本。
    配置管理编辑
    GitHub上已自动配置的Mac笔记本电脑，一个工具，可以转换设置Linux或Windows机器。
    　　BOXEN是GitHub的自动化工具，设置和配置的Mac笔记本电脑软件开发或其他类型的工作，正在使用他们的开发人员，律师，设计师，付货人，等。我们的想法是准备系统以自动方式和作为无差错尽可能用最少的干预工作。根据GitHub上，与一个新的开发机器上，他的Mac系统成立，并准备在30分钟内提交代码。
    　　BOXEN的基础上收集了大量的几十个木偶模块，使设置的各种软件，如卡桑德拉，MongoDB中，Java软件中，Python和Ruby开发中，节点，JS，nginx的，Skype公司，甚至MINECRAFT。虽然机器上配备了一个预配置，每个用户都可以调整它的配置应有的作用。
    融资编辑
    全球最大的社交编程及代码托管网站GitHub以其开创性的新型软件开发方式并且能高效利用有限的资源通过自力更生实现公司盈利和300%的年收入增长成功的吸引知名风投机构Andreessen Horowitz一亿美金的投资。新的资金注入将帮助GitHub平台得到进一步的改进和扩展。
    事实上，这不仅对首次接受外部投资的GitHub意义重大，同样对于投资方Andreessen Horowitz而言，这也是其迄今为止进行过的最大一次单笔投资案。作为投资案的一部分，Andreessen Horowitz的合伙人Peter Levine将入主GitHub董事会。
    根据GitHub官方解释，这笔资金除了用于扩充员工队伍，改进现有服务并移植到移
    Github吉祥物Octocat
    Github吉祥物Octocat
    动平台之外，还将服务对象从原来的编程爱好者和专业软件开发人员拓展至企业、设计师、文字工作者等更广泛的客户群体。
    GitHub有170万名软件开发人员的忠实用户，他们平均每天更新8万个并新建7千个软件库。对GitHub网站上托管的总计超过300万个软件库，其联合创始人Chris Wanstrath曾经形象地称其为“程序员的维基百科全书”。
    有关报道编辑
    2013年1月15日晚间，全球最大的社交编程及代码托管网站GitHub突然疑似遭遇DDOS攻击，访问大幅放缓，该网站管理员经过日志查询，发现是来自12306的抢票插件用户洪水般的访问导致GitHub出现问题。
    2013年1月20日左右，GitHub在中国大陆被官方的防火长城封锁（封锁手段为域名污染和关键词过滤），李开复等一些微博大号呼吁解禁GitHub，微博转发近10万条。2013年1月23日github网站恢复正常访问。
    2014年1月23日联合创始人汤姆·普雷斯顿-维尔纳（Tom Preston-Werner）从另一位联合创始人克里斯·万斯特拉斯（Chris Wanstrath）手中接过总裁职位，后者也将接过普雷斯顿-维尔纳留下的CEO位置。
    2018年6月4日晚，微软宣布，通过75亿美元的股票交易收购代码托管平台GitHub。 [3]
    2018年10月26日，微软以75亿美元收购GitHub交易已完成。同年10月29日微软开发者服务副总裁奈特·弗里德曼(Nat Friedman)将成为GitHub的新一任CEO。
    """
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var sendTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textView.text = testText
        /*
        let attributedString = NSMutableAttributedString(string: "Want to learn iOS? You should visit the best source of free iOS tutorials!")
        attributedString.addAttribute(.link, value: "tel://15330055931", range: NSRange(location:30, length: 20))
        */

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onUpdateTextView(_ sender: UIButton) {
        var newString = sendTextView.text ?? ""
        newString += "\n\n"
        newString += textView.text ?? ""
        let attributedString = NSMutableAttributedString(string: newString);
        
        let detector = try? NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue | NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
        
        let matches = detector?.matches(in: newString, options: NSRegularExpression.MatchingOptions.reportProgress, range: NSMakeRange(0, newString.count))
        
        for match in matches ?? [] {
            switch match.resultType {
            case NSTextCheckingResult.CheckingType.link:
                let url = match.url!
                NSLog(url.absoluteString)
                NSLog("%d %d", match.range.lowerBound, match.range.length)
                attributedString.addAttribute(.link, value: url, range: match.range)
            case NSTextCheckingResult.CheckingType.phoneNumber:
                let phoneNumber = match.phoneNumber ?? ""
                NSLog(phoneNumber)
                NSLog("%d %d", match.range.lowerBound, match.range.length)
                attributedString.addAttribute(.link, value: "tel://" + phoneNumber, range: match.range)
            default:
                break;
            }

        }

        sendTextView.attributedText = attributedString;
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(false)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
