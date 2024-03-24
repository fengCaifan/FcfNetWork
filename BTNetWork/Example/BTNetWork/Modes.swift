//
//  Modes.swift
//  BTNetWork_Example
//
//  Created by 冯才凡 on 2020/11/26.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import HandyJSON

struct User: HandyJSON {
    //
    var userId : Int?
    var id: Int?{
        didSet{
            self.userId = id
        }
    }
    
    var studentid : Int?
    var nickname: String?
    var wxname: String?
    var truename: String?
    var roles: String?
    var smallAvatar: String?
    var mediumAvatar: String?
    var largeAvatar: String?
    var approvalStatus: String?
    var leftBookNum: Int?
    var cash: Float?
    var isInvited: Bool = false
    var isLocked : Int? // 用于用户登录
    
    var verifiedMobile: String?
    var hasSetPwd: Int = 0 //是否设置密码 1是已设置 0是未设置
}



struct RootMyCourseModel : HandyJSON {
    var rows : [BTCourseModel] = []
    var count : Int = 0
}

// 课程详情Model
class BTCourseModel: NSObject,HandyJSON {
    
    required override init() { super.init() }

    //  学习中心首页课程列表数据
    var id : Int = 0   //    课程ID
    var smallPicture : String?//小图
    var middlePicture : String?//中图
    var largePicture : String?//大图
    var childType : String?//子课程类型
    var studentInfo : BTCourseStudentInfo?
    var pid : Int?//改版后父课程Id
    var title : String?
    var type : String?//课程类型  课程分为 公开课程，普通课程 。 open , normal
    var courseType : String?//open
    var publishedTime:Int = 0
    var startTime : Int = 0
    
}


// MARK:- BTCourseStudentInfo
class BTCourseStudentInfo : NSObject, HandyJSON {
    required override init() { super.init() }
    var buyType : String? //购买类型
    var classSeq : Int? //班序
    var combineCourseNum : Int? //组合课数
    var confirmCombine : Int? //确认组合
    var courseGroupId : Int? //班组ID
    var courseId : Int? //课程ID
    var deadline : Int? //截止日期
    var groupSeq : Int? //组序
    var hasProtocol : Int? //是否有购课协议
    var isOwner : Int? //是否是拥有者
    var isStudent : Int? //是否购买 1已经购买过，不允许再次购买
    var needSignedInsuranceProtocol : Int? //是否需要签保过协议
    var role : String? //角色
}
