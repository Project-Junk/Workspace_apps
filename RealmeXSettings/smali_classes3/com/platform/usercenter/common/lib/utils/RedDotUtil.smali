.class public Lcom/platform/usercenter/common/lib/utils/RedDotUtil;
.super Ljava/lang/Object;
.source "RedDotUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCount(Landroid/content/Context;)I
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->getRedDotCount(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static setAppBadgeCount(Landroid/content/Context;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 30
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_badge_count"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.android.badge/badge"

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "setAppBadgeCount"

    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 36
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Write unread number FAILED!!! e = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/UCLogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static setCount(Landroid/content/Context;I)V
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/platform/usercenter/common/lib/sp/SPreferenceCommonHelper;->setRedDotCount(Landroid/content/Context;I)V

    return-void
.end method

.method public static update(Landroid/content/Context;I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 44
    :cond_0
    invoke-static {p0, p1}, Lcom/platform/usercenter/common/lib/utils/RedDotUtil;->setCount(Landroid/content/Context;I)V

    .line 45
    invoke-static {p0, p1}, Lcom/platform/usercenter/common/lib/utils/RedDotUtil;->setAppBadgeCount(Landroid/content/Context;I)V

    return-void
.end method
