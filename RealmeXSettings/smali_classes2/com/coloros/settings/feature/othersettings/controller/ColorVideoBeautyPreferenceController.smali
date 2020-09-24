.class public Lcom/coloros/settings/feature/othersettings/controller/ColorVideoBeautyPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorVideoBeautyPreferenceController.java"


# static fields
.field public static final KEY_VIDEO_BEAUTY:Ljava/lang/String; = "video_beauty_settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "video_beauty_settings"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 30
    invoke-static {}, Lcom/coloros/settings/romupdate/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
