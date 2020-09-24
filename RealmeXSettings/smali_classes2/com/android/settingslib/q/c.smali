.class public final Lcom/android/settingslib/q/c;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final a:[I

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x9

    .line 35
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settingslib/q/c;->a:[I

    const-string v1, "SHOW_UI"

    const-string v2, "VIBRATE"

    const-string v3, "PLAY_SOUND"

    const-string v4, "ALLOW_RINGER_MODES"

    const-string v5, "REMOVE_SOUND_AND_VIBRATE"

    const-string v6, "SHOW_VIBRATE_HINT"

    const-string v7, "SHOW_SILENT_HINT"

    const-string v8, "FROM_KEY"

    const-string v9, "SHOW_UI_WARNINGS"

    .line 47
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/q/c;->b:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x1
        0x10
        0x4
        0x2
        0x8
        0x800
        0x80
        0x1000
        0x400
    .end array-data
.end method

.method public static a(I)Ljava/lang/String;
    .locals 6

    .line 146
    sget-object v0, Lcom/android/settingslib/q/c;->a:[I

    sget-object v1, Lcom/android/settingslib/q/c;->b:[Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2151
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 2152
    :goto_0
    array-length v4, v0

    const/16 v5, 0x2c

    if-ge v3, v4, :cond_3

    .line 2153
    aget v4, v0, v3

    and-int/2addr v4, p0

    if-eqz v4, :cond_2

    .line 2154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2155
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2157
    :cond_2
    aget v4, v0, v3

    not-int v4, v4

    and-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_5

    .line 2160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "UNKNOWN_"

    .line 2161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2163
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/media/session/MediaController$PlaybackInfo;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 1096
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "UNKNOWN_"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "REMOTE"

    goto :goto_0

    :cond_2
    const-string v0, "LOCAL"

    .line 81
    :goto_0
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_3

    .line 1130
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VOLUME_CONTROL_UNKNOWN_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, "VOLUME_CONTROL_ABSOLUTE"

    goto :goto_1

    :cond_4
    const-string v3, "VOLUME_CONTROL_RELATIVE"

    goto :goto_1

    :cond_5
    const-string v3, "VOLUME_CONTROL_FIXED"

    :goto_1
    const/4 v4, 0x5

    .line 82
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    aput-object p0, v4, v0

    const-string p0, "PlaybackInfo[vol=%s,max=%s,type=%s,vc=%s],atts=%s"

    .line 82
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/media/session/PlaybackState;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 2114
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UNKNOWN_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "STATE_PLAYING"

    goto :goto_0

    :cond_2
    const-string v1, "STATE_PAUSED"

    goto :goto_0

    :cond_3
    const-string v1, "STATE_STOPPED"

    goto :goto_0

    :cond_4
    const-string v1, "STATE_NONE"

    .line 139
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "vol."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
