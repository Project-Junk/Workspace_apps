.class public Lcom/platform/usercenter/app/UCOSVersionUtil;
.super Ljava/lang/Object;
.source "UCOSVersionUtil.java"


# static fields
.field public static final COLOR_OS_1_0:I = 0x1

.field public static final COLOR_OS_1_2:I = 0x2

.field public static final COLOR_OS_1_4:I = 0x3

.field public static final COLOR_OS_2_0:I = 0x4

.field public static final COLOR_OS_2_1:I = 0x5

.field public static final COLOR_OS_3_0:I = 0x6

.field public static final COLOR_OS_3_1:I = 0x7

.field public static final COLOR_OS_3_2:I = 0x8

.field public static final COLOR_OS_5_0:I = 0x9

.field public static final COLOR_OS_5_1:I = 0xa

.field public static final COLOR_OS_5_2:I = 0xb

.field public static final COLOR_OS_6_0:I = 0xc

.field public static final DEFAULT_NULL:Ljava/lang/String; = ""

.field public static final DEFAULT_REGION:Ljava/lang/String; = "CN"

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurRegion()Ljava/lang/String;
    .locals 3

    .line 79
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->regionPropertySystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "OC"

    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static getDeviceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string p0, ""

    .line 63
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->clazzColor_OSBuild()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const-string v1, "getDeviceName"

    const/4 v2, 0x0

    .line 68
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 69
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :catch_0
    return-object p0
.end method

.method public static getOSVersionCode()I
    .locals 4

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->clazzColor_OSBuild()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 51
    :cond_0
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->methodColor_OS_Version()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 2

    .line 94
    invoke-static {}, Lcom/platform/usercenter/heytap/UCHeyTapCOLORProvider;->romVersionPropertySystemName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomBuildDisplay()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "ro.build.time.fix"

    .line 106
    invoke-static {v1, v0}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "sys.build.display.full_id"

    .line 108
    invoke-static {v1, v0}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "ro.build.display.id"

    if-eqz v2, :cond_1

    .line 111
    invoke-static {v3, v0}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-static {v3, v0}, Lcom/platform/usercenter/common/lib/utils/SystemPropertyUtils;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    :cond_3
    return-object v1
.end method
