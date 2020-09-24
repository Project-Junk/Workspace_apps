.class public Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "EdgePanelToggleObserver.java"


# instance fields
.field private mIsToggleOn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->mIsToggleOn:Z

    return-void
.end method

.method private update(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-static {p1}, Lcom/coloros/systemui/edgepanel/EdgePanelSettingsValueProxy;->getEdgePanelToggleState(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->mIsToggleOn:Z

    return-void
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "edge_panel_toggle"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isToggleOn()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->mIsToggleOn:Z

    return p0
.end method

.method protected onChange(Z)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->update(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRegister(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onRegister(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/coloros/systemui/edgepanel/EdgePanelToggleObserver;->update(Landroid/content/Context;)V

    return-void
.end method
