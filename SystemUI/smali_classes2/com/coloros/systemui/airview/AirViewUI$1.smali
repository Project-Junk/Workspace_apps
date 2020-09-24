.class Lcom/coloros/systemui/airview/AirViewUI$1;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "AirViewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/airview/AirViewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/airview/AirViewUI;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/airview/AirViewUI;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/coloros/systemui/airview/AirViewUI$1;->this$0:Lcom/coloros/systemui/airview/AirViewUI;

    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "air_view_toggle"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewUI$1;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Z)V
    .locals 4

    .line 32
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    .line 33
    iget-object p1, p0, Lcom/coloros/systemui/airview/AirViewUI$1;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange userId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirView"

    invoke-static {v1, p1, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/coloros/systemui/airview/AirViewUI$1;->this$0:Lcom/coloros/systemui/airview/AirViewUI;

    iget-object p1, p1, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    const-string v0, "air_view_toggle"

    invoke-static {p1, v0}, Lcom/coloros/systemui/airview/AirViewSettingsValueProxy;->getToggleState(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/coloros/systemui/airview/AirViewUI$1;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 40
    sget-object p0, Lcom/coloros/systemui/airview/AirViewHelper;->sInstance:Landroid/util/Singleton;

    invoke-virtual {p0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/airview/AirViewHelper;

    invoke-virtual {p0}, Lcom/coloros/systemui/airview/AirViewHelper;->unregister()V

    goto :goto_1

    .line 42
    :cond_1
    sget-object p1, Lcom/coloros/systemui/airview/AirViewHelper;->sInstance:Landroid/util/Singleton;

    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/airview/AirViewHelper;

    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewUI$1;->this$0:Lcom/coloros/systemui/airview/AirViewUI;

    iget-object p0, p0, Lcom/coloros/systemui/airview/AirViewUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/airview/AirViewHelper;->register(Landroid/content/Context;)V

    :goto_1
    return-void
.end method
