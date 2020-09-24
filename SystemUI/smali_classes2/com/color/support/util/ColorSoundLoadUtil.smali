.class public Lcom/color/support/util/ColorSoundLoadUtil;
.super Ljava/lang/Object;
.source "ColorSoundLoadUtil.java"


# static fields
.field private static sInstance:Lcom/color/support/util/ColorSoundLoadUtil;


# instance fields
.field private mSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    .line 39
    invoke-direct {p0}, Lcom/color/support/util/ColorSoundLoadUtil;->initSoundPool()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/color/support/util/ColorSoundLoadUtil;
    .locals 2

    const-class v0, Lcom/color/support/util/ColorSoundLoadUtil;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/color/support/util/ColorSoundLoadUtil;->sInstance:Lcom/color/support/util/ColorSoundLoadUtil;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/color/support/util/ColorSoundLoadUtil;

    invoke-direct {v1}, Lcom/color/support/util/ColorSoundLoadUtil;-><init>()V

    sput-object v1, Lcom/color/support/util/ColorSoundLoadUtil;->sInstance:Lcom/color/support/util/ColorSoundLoadUtil;

    .line 51
    :cond_0
    sget-object v1, Lcom/color/support/util/ColorSoundLoadUtil;->sInstance:Lcom/color/support/util/ColorSoundLoadUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initSoundPool()V
    .locals 3

    .line 55
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 56
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 59
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 60
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method

.method private querySoundEffectsEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "sound_effects_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public loadFile(Ljava/lang/String;I)I
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, p1, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public loadSoundFile(Landroid/content/Context;I)I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    .line 76
    iget-object p0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p0, p1

    :goto_0
    return p0
.end method

.method public play(Landroid/content/Context;IFFIIF)V
    .locals 7

    .line 118
    invoke-direct {p0, p1}, Lcom/color/support/util/ColorSoundLoadUtil;->querySoundEffectsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method public setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/color/support/util/ColorSoundLoadUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method
