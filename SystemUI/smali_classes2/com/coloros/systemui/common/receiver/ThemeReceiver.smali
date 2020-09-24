.class public Lcom/coloros/systemui/common/receiver/ThemeReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "ThemeReceiver.java"


# static fields
.field private static final ENABLE_LAUNCHER_APPLY_EFFECT_MASK:I = 0x100

.field private static final THEME_APPLIED_FLAG:Ljava/lang/String; = "theme_applied_flag"

.field private static volatile sInstance:Lcom/coloros/systemui/common/receiver/ThemeReceiver;


# instance fields
.field private volatile mCurrentThemeBuildInColorOS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    .line 35
    new-instance v0, Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$lsVG6RtFsqx7fbxwTcYbjwk97qM;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$lsVG6RtFsqx7fbxwTcYbjwk97qM;-><init>(Lcom/coloros/systemui/common/receiver/ThemeReceiver;)V

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 36
    sget-object v0, Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;->INSTANCE:Lcom/coloros/systemui/common/receiver/-$$Lambda$ThemeReceiver$pYkNwf478WoDfoidtY-FRA44G44;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method

.method private getCurrentThemeBuildInColorOS(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "theme_applied_flag"

    .line 67
    invoke-static {p1, v1, v0}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getGlobalIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    .line 68
    invoke-static {}, Lcom/oppo/theme/OppoThirdPartUtil;->getDefaultTheme()Z

    move-result v1

    and-int/lit16 v2, p1, 0x100

    const/4 v3, 0x1

    const/16 v4, 0x100

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v4, "Common"

    .line 70
    iget-object v5, p0, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentThemeBuildInColorOS isDefaultTheme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isBuildInTheme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " themeAppliedFlag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v5, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    return v0

    :catch_0
    move-exception p1

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentThemeBuildInColorOS Throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getInstance()Lcom/coloros/systemui/common/receiver/ThemeReceiver;
    .locals 2

    .line 40
    sget-object v0, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    invoke-direct {v1}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;-><init>()V

    sput-object v1, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->sInstance:Lcom/coloros/systemui/common/receiver/ThemeReceiver;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->getCurrentThemeBuildInColorOS(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->mCurrentThemeBuildInColorOS:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected afterRegister(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;->afterRegister(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected getActions()[Ljava/lang/String;
    .locals 0

    const-string p0, "oppo.intent.action.SKIN_CHANGED"

    .line 58
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCurrentThemeBuildInColorOS()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->mCurrentThemeBuildInColorOS:Z

    return p0
.end method

.method public synthetic lambda$new$0$ThemeReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/receiver/ThemeReceiver;->init(Landroid/content/Context;)V

    return-void
.end method
