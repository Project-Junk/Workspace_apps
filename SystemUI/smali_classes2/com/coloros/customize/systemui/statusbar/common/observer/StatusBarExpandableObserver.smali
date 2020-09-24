.class public Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;
.super Lcom/coloros/systemui/common/observer/AbstractObserver;
.source "StatusBarExpandableObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarExpandableObserver"

.field private static volatile sInstance:Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;


# instance fields
.field private mIsStatusBarExpandDisableMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mIsStatusBarExpandDisableMode:Z

    return-void
.end method

.method public static getInstance()Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;
    .locals 2

    .line 44
    sget-object v0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->sInstance:Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->sInstance:Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    invoke-direct {v1}, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;-><init>()V

    sput-object v1, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->sInstance:Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->sInstance:Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;

    return-object v0
.end method


# virtual methods
.method protected getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "statusbar_expand_disable"

    return-object p0
.end method

.method protected getUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public isStatusBarExpandDisableMode()Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mIsStatusBarExpandDisableMode:Z

    return p0
.end method

.method public onChange(Z)V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mWeakCtx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 66
    invoke-static {v0}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getStatusbarExpandDisable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mIsStatusBarExpandDisableMode:Z

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStatusBarExpandDisableObserver onChange mIsStatusBarExpandDisableMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mIsStatusBarExpandDisableMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Statusbar"

    const-string v2, "StatusBarExpandableObserver"

    invoke-static {v1, v2, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onChange(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onRegister(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->onRegister(Landroid/content/Context;)V

    .line 57
    invoke-static {p1}, Lcom/coloros/systemui/common/settingsvalue/CommonSettingsValueProxy;->getStatusbarExpandDisable(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/customize/systemui/statusbar/common/observer/StatusBarExpandableObserver;->mIsStatusBarExpandDisableMode:Z

    return-void
.end method
