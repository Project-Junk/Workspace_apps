.class public final Lcom/coloros/settings/feature/deviceinfo/controller/a;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorBasebandVersionPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "baseband_version"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/a;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12077e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gsm.version.baseband"

    .line 40
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/m;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
