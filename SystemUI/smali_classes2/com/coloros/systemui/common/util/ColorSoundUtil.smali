.class public Lcom/coloros/systemui/common/util/ColorSoundUtil;
.super Ljava/lang/Object;
.source "ColorSoundUtil.java"


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
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundMap:Ljava/util/HashMap;

    .line 26
    invoke-direct {p0}, Lcom/coloros/systemui/common/util/ColorSoundUtil;->initSoundPool()V

    return-void
.end method

.method private initSoundPool()V
    .locals 3

    .line 31
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 32
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    .line 34
    invoke-virtual {v0, v1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    .line 35
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method


# virtual methods
.method public loadFile(Ljava/lang/String;I)I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, p1, p2}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public loadSoundFile(Landroid/content/Context;I)I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    .line 45
    iget-object p0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p0, p1

    :goto_0
    return p0
.end method

.method public play(IFFIIF)I
    .locals 7

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 67
    iget-object p0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public setCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/common/util/ColorSoundUtil;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, p1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method
