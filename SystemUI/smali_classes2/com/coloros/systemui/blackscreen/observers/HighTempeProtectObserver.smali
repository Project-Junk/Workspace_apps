.class public Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "HighTempeProtectObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "oppo_high_temperature_protection_status"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public onChange(Z)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/observers/HighTempeProtectObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    .line 43
    invoke-static {p0}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenSettingsValueProxy;->getHighTempProtectState(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 44
    invoke-static {}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->getInstance()Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/blackscreen/controller/BlackScreenController;->stopBlackScreenMode(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
