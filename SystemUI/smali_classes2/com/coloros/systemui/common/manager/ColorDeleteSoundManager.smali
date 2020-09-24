.class public Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;
.super Ljava/lang/Object;
.source "ColorDeleteSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$ColorDeleteSoundManagerHolder;
    }
.end annotation


# static fields
.field public static final SOUND_NAME:Ljava/lang/String; = "global_delete_sound"

.field public static final SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/global_delete.ogg"

.field private static final TAG:Ljava/lang/String; = "ColorDeleteSoundManager"

.field private static final THREAD_COUNT:I = 0x1


# instance fields
.field private mColorSoundUtil:Lcom/coloros/systemui/common/util/ColorSoundUtil;

.field private mDeleteSoundId:I

.field private mDeleteSoundSwitch:Z

.field private mPrepared:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private final mSoundEexecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mSoundEexecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->updateDeleteSoundSwitch()V

    return-void
.end method

.method static synthetic access$102(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mPrepared:Z

    return p1
.end method

.method public static getInstance()Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$ColorDeleteSoundManagerHolder;->INSTANCE:Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;

    return-object v0
.end method

.method private initData()V
    .locals 6

    .line 58
    iget-boolean v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mPrepared:Z

    if-eqz v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "global_delete_sound"

    .line 62
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$1;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$1;-><init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;Landroid/os/Handler;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundSwitch:Z

    .line 70
    new-instance v0, Lcom/coloros/systemui/common/util/ColorSoundUtil;

    invoke-direct {v0}, Lcom/coloros/systemui/common/util/ColorSoundUtil;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mColorSoundUtil:Lcom/coloros/systemui/common/util/ColorSoundUtil;

    .line 71
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mColorSoundUtil:Lcom/coloros/systemui/common/util/ColorSoundUtil;

    const-string v1, "/system/media/audio/ui/global_delete.ogg"

    invoke-virtual {v0, v1, v4}, Lcom/coloros/systemui/common/util/ColorSoundUtil;->loadFile(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundId:I

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mColorSoundUtil:Lcom/coloros/systemui/common/util/ColorSoundUtil;

    new-instance v1, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager$2;-><init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;)V

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/util/ColorSoundUtil;->setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private play()V
    .locals 8

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: mDeleteSoundSwitch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDeleteSoundId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPrepared\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDeleteSoundManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundSwitch:Z

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundId:I

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mPrepared:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mColorSoundUtil:Lcom/coloros/systemui/common/util/ColorSoundUtil;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Lcom/coloros/systemui/common/util/ColorSoundUtil;->play(IFFIIF)I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->release()V

    :cond_0
    return-void
.end method

.method private updateDeleteSoundSwitch()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mSoundEexecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorDeleteSoundManager$tCJ8KXZxV181BRbrtNl5EayQuAw;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorDeleteSoundManager$tCJ8KXZxV181BRbrtNl5EayQuAw;-><init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mSoundEexecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorDeleteSoundManager$4QbUzqpCObRBAzY0WqeBONjsiGo;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorDeleteSoundManager$4QbUzqpCObRBAzY0WqeBONjsiGo;-><init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$init$0$ColorDeleteSoundManager()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->initData()V

    return-void
.end method

.method public synthetic lambda$playBackground$2$ColorDeleteSoundManager()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->play()V

    return-void
.end method

.method public synthetic lambda$updateDeleteSoundSwitch$1$ColorDeleteSoundManager()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "global_delete_sound"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundSwitch:Z

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: mDeleteSoundSwitchObserver mDeleteSoundSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundSwitch:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ColorDeleteSoundManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public playBackground()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mSoundEexecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorDeleteSoundManager$wSKpoDt3hcsXAT7MFxC3l8d_I5M;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/manager/-$$Lambda$ColorDeleteSoundManager$wSKpoDt3hcsXAT7MFxC3l8d_I5M;-><init>(Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "ColorDeleteSoundManager"

    const-string v1, "release"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mPrepared:Z

    .line 105
    iput v0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mDeleteSoundId:I

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/common/manager/ColorDeleteSoundManager;->mColorSoundUtil:Lcom/coloros/systemui/common/util/ColorSoundUtil;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/util/ColorSoundUtil;->release()V

    return-void
.end method
