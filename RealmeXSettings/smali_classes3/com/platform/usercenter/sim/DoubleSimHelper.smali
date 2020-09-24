.class public Lcom/platform/usercenter/sim/DoubleSimHelper;
.super Ljava/lang/Object;
.source "DoubleSimHelper.java"


# static fields
.field public static final IS_SINGLE_SIM:I = 0x5

.field public static final ONLY_SIM_0_OK:I = 0x2

.field public static final ONLY_SIM_1_OK:I = 0x3

.field public static final TWO_SIM_NOT_OK:I = 0x4

.field public static final TWO_SIM_OK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMobileNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6

    .line 222
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->getPropertyOsTelephonyManagerXor8()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    aget-object v0, v0, v1

    const/4 v2, 0x1

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 227
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getLine1NumberGemini"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 229
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "test"

    const-string v0, "phoneNo ="

    .line 230
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 235
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPlatForm(Landroid/content/Context;)I
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getPlatForm(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getSubId(Landroid/content/Context;I)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.telephony.SubscriptionManager"

    .line 151
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 153
    aget-object v1, v1, v0

    const/4 v2, 0x1

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 155
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getSubId"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 157
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 158
    array-length p1, p0

    if-lez p1, :cond_0

    const-string p1, "test"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "subId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    aget p0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .line 120
    invoke-static {}, Lcom/platform/usercenter/common/lib/utils/Version;->hasQ()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 122
    :try_start_0
    invoke-static {p0, p1}, Lcom/platform/usercenter/sim/DoubleSimHelper;->getSubId(Landroid/content/Context;I)I

    move-result p1

    if-lez p1, :cond_0

    const-string v0, "phone"

    .line 124
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 125
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    const-string p0, "test"

    const-string p1, "imsi:"

    .line 126
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1

    .line 133
    :cond_1
    invoke-static {p0}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getPlatForm(Landroid/content/Context;)I

    move-result v0

    .line 134
    sget v2, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_MTK:I

    if-ne v0, v2, :cond_2

    .line 135
    invoke-static {p0, p1}, Lcom/platform/usercenter/sim/MTKUtils;->getSubscriberIdBySDK(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 136
    :cond_2
    sget v2, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_QUALCOMM:I

    if-ne v0, v2, :cond_3

    .line 137
    invoke-static {p0, p1}, Lcom/platform/usercenter/sim/QualcommUtils;->getSubscriberIdBySDK(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    move-object p0, v1

    .line 139
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    return-object p0
.end method

.method public static initIsDoubleTelephone(Landroid/content/Context;)I
    .locals 2

    .line 99
    invoke-static {p0}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getPlatForm(Landroid/content/Context;)I

    move-result v0

    .line 100
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_MTK:I

    if-ne v0, v1, :cond_0

    .line 101
    invoke-static {p0}, Lcom/platform/usercenter/sim/MTKUtils;->initIsDoubleTelephoneBySDK(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 102
    :cond_0
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_QUALCOMM:I

    if-ne v0, v1, :cond_1

    .line 103
    invoke-static {p0}, Lcom/platform/usercenter/sim/QualcommUtils;->isDoubleSim(Landroid/content/Context;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method public static isDoubleSimAvalable(Landroid/content/Context;)Z
    .locals 4

    .line 79
    invoke-static {p0}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getPlatForm(Landroid/content/Context;)I

    move-result v0

    .line 80
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_MTK:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    invoke-static {p0}, Lcom/platform/usercenter/sim/MTKUtils;->initIsDoubleTelephoneBySDK(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v3, :cond_0

    return v3

    :cond_0
    return v2

    .line 82
    :cond_1
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_QUALCOMM:I

    if-ne v0, v1, :cond_2

    .line 83
    invoke-static {p0}, Lcom/platform/usercenter/sim/QualcommUtils;->isDoubleSim(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v3, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public static isQualCommDoubleSimMobile(Landroid/content/Context;)Z
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/platform/usercenter/sim/QualcommUtils;->isQcomGeminiSupport(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static sendMessage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7

    .line 201
    invoke-static {}, Lcom/platform/usercenter/common/lib/utils/Version;->hasL_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    invoke-static {p0, p1}, Lcom/platform/usercenter/sim/DoubleSimHelper;->getSubId(Landroid/content/Context;I)I

    move-result p0

    .line 203
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 205
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :cond_0
    return-void

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/platform/usercenter/sim/SystemInfoHelper;->getPlatForm(Landroid/content/Context;)I

    move-result v0

    .line 209
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_MTK:I

    if-ne v0, v1, :cond_2

    .line 210
    invoke-static/range {p0 .. p6}, Lcom/platform/usercenter/sim/MTKUtils;->sendTextMessageBySDK(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    return-void

    .line 211
    :cond_2
    sget v1, Lcom/platform/usercenter/sim/SimManagerPreferenceUtils;->STATISTICS_PLATFORM_QUALCOMM:I

    if-ne v0, v1, :cond_3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p1

    .line 213
    invoke-static/range {v0 .. v6}, Lcom/platform/usercenter/sim/QualcommUtils;->sendTextMessageBySDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)Z

    :cond_3
    return-void
.end method
