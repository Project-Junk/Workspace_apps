.class public Lcom/coloros/settings/feature/sound/controller/MaxxAudioPreferenceController;
.super Lcom/android/settings/core/a;
.source "MaxxAudioPreferenceController.java"


# static fields
.field private static final KEY_WAVES:Ljava/lang/String; = "key_waves"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_waves"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/MaxxAudioPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->v(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/MaxxAudioPreferenceController;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    return v0
.end method
