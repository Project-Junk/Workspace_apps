.class public Lcom/coloros/systemui/volume/ColorVolumeDialogReceiver;
.super Lcom/coloros/systemui/common/receiver/AbstractReceiver;
.source "ColorVolumeDialogReceiver.java"


# static fields
.field private static final ACTION_VOLUME_BOOST:Ljava/lang/String; = "oppo.media.volume_boost"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/coloros/systemui/common/receiver/AbstractReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActions()[Ljava/lang/String;
    .locals 11

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    const-string v3, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    const-string v4, "android.media.STREAM_MUTE_CHANGED_ACTION"

    const-string v5, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    const-string v7, "android.intent.action.SCREEN_OFF"

    const-string v8, "oppo.media.volume_boost"

    const-string v9, "android.intent.action.HEADSET_PLUG"

    const-string v10, "oppo.intent.action.SKIN_CHANGED"

    .line 31
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
