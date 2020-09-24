.class Lcom/coloros/common/util/LogUtil$LogObserver;
.super Landroid/database/ContentObserver;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/common/util/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 279
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public observer(Landroid/content/Context;)V
    .locals 2

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 284
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$000()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 285
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$100()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 290
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 291
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$000()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$000()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 292
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$200()V

    goto :goto_0

    .line 293
    :cond_0
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$100()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$100()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 294
    invoke-static {}, Lcom/coloros/common/util/LogUtil;->access$300()V

    :cond_1
    :goto_0
    return-void
.end method
