.class Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$1;
.super Landroid/database/ContentObserver;
.source "FullScreenBannerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/os/Handler;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 129
    iget-object p1, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object v0, p1, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "simple_banner_switch_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$002(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Z)Z

    .line 130
    sget-boolean p1, Lcom/coloros/common/util/LogUtil;->NORMAL:Z

    if-eqz p1, :cond_1

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSimpleBannerObserver onChange mIsSimpleBannerEnable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->access$000(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FullScreenHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
