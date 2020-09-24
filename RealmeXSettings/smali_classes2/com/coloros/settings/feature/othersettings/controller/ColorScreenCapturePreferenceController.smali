.class public Lcom/coloros/settings/feature/othersettings/controller/ColorScreenCapturePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorScreenCapturePreferenceController.java"


# static fields
.field private static final KEY_SCREEN_CAPTURE:Ljava/lang/String; = "key_oppo_screen_capture"

.field private static final SCREENSHOT_ACTION:Ljava/lang/String; = "oppo.intent.action.SCREENSHOT_SETTINGS"

.field private static final SCREENSHOT_PACKAGE:Ljava/lang/String; = "com.coloros.screenshot"

.field private static final TAG:Ljava/lang/String; = "ColorScreenCapturePreferenceController"


# instance fields
.field private final mIsIntentSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_oppo_screen_capture"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance p1, Landroid/content/Intent;

    const-string v0, "oppo.intent.action.SCREENSHOT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.coloros.screenshot"

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenCapturePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenCapturePreferenceController;->mIsIntentSupported:Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isIntentSupport: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenCapturePreferenceController;->mIsIntentSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorScreenCapturePreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorScreenCapturePreferenceController;->mIsIntentSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 45
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
