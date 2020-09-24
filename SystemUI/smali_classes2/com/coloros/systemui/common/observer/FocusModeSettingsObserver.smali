.class public Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "FocusModeSettingsObserver.java"


# static fields
.field private static volatile sInstance:Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;


# instance fields
.field private volatile mIsFocusMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->mIsFocusMode:Z

    return-void
.end method

.method public static getsInstance()Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;
    .locals 2

    .line 35
    sget-object v0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->sInstance:Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->sInstance:Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->sInstance:Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->sInstance:Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;

    return-object v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "focusmode_switch"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isFocusMode()Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->mIsFocusMode:Z

    return p0
.end method

.method protected onChange(Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getFocusModeState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/common/observer/FocusModeSettingsObserver;->mIsFocusMode:Z

    .line 60
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    :cond_2
    :goto_1
    return-void
.end method
