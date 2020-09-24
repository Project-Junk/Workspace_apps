.class Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "PanelPullHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/notification/helper/PanelPullHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelPullEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;->this$0:Lcom/coloros/systemui/notification/helper/PanelPullHelper;

    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;Lcom/coloros/systemui/notification/helper/PanelPullHelper$1;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;-><init>(Lcom/coloros/systemui/notification/helper/PanelPullHelper;)V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "oppo_status_bar_enable_when_lock"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/PanelPullHelper$PanelPullEnableObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
