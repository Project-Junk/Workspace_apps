.class public Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;
.super Lcom/android/settings/core/a;
.source "BasebandVersionPreferenceController.java"


# static fields
.field static final BASEBAND_PROPERTY:Ljava/lang/String; = "gsm.version.baseband"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12077e

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm.version.baseband"

    .line 44
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
