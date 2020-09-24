.class public Lcom/coloros/settings/feature/sound/controller/ColorKtvLoopbackSupportPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorKtvLoopbackSupportPreferenceController.java"


# static fields
.field public static final KEY_KTV_LOOPBACK_SUPPORT:Ljava/lang/String; = "ktv_loopback_support"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ktv_loopback_support"

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 19
    invoke-static {}, Lcom/coloros/settings/utils/bh;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/h;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
