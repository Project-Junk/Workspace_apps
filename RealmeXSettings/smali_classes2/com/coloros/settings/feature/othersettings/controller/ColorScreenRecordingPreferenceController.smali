.class public Lcom/coloros/settings/feature/othersettings/controller/ColorScreenRecordingPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorScreenRecordingPreferenceController.java"


# static fields
.field private static final KEY_SCREEN_RECORDING:Ljava/lang/String; = "key_oppo_screen_recording"

.field private static final SCREEN_RECORDER_ACTION:Ljava/lang/String; = "oppo.intent.action.SCREENRECORDER_SETTINGS"

.field private static final SCREEN_RECORDER_PACKAGE:Ljava/lang/String; = "com.coloros.screenrecorder"

.field private static final TAG:Ljava/lang/String; = "ColorScreenRecordingPreferenceController"


# instance fields
.field private final mIsIntentSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_oppo_screen_recording"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oppo.intent.action.SCREENRECORDER_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.screenrecorder"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenRecordingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenRecordingPreferenceController;->mIsIntentSupported:Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isIntentSupport:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenRecordingPreferenceController;->mIsIntentSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorScreenRecordingPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenRecordingPreferenceController;->mIsIntentSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 47
    :cond_0
    invoke-static {}, Lcom/coloros/settings/custom/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
