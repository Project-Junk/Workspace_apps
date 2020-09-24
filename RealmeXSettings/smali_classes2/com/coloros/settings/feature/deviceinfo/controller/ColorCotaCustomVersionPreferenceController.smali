.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorCotaCustomVersionPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorCotaCustomVersionPreferenceController.java"


# static fields
.field private static final KEY_COTA_CUSTOM_VERSION:Ljava/lang/String; = "cota_custom_version"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "cota_custom_version"

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 19
    sget-boolean v0, Lcom/coloros/settings/a;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCotaCustomVersionPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12077e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.oppo.version.cota"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
