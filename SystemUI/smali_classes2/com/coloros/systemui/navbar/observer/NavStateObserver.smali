.class public Lcom/coloros/systemui/navbar/observer/NavStateObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "NavStateObserver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/navbar/observer/NavStateObserver;


# instance fields
.field private mNavState:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/coloros/systemui/navbar/observer/NavStateObserver;
    .locals 2

    .line 31
    sget-object v0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    invoke-direct {v1}, Lcom/coloros/systemui/navbar/observer/NavStateObserver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 38
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->sInstance:Lcom/coloros/systemui/navbar/observer/NavStateObserver;

    return-object v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hide_navigationbar_enable"

    return-object p0
.end method

.method public getNavState()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->mNavState:I

    return p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method protected onChange(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->mNavState:I

    .line 61
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRegister(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onRegister(Landroid/content/Context;)V

    .line 54
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/NavBarSettingsValueProxy;->getNavState(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/navbar/observer/NavStateObserver;->mNavState:I

    return-void
.end method