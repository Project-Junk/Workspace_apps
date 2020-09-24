.class public final Lcom/coloros/settings/feature/deviceinfo/controller/j;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorRamInfoPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ram_info"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/j;->mContext:Landroid/content/Context;

    .line 1163
    invoke-static {v0}, Lcom/coloros/settings/utils/ad;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.version.confidential"

    const/4 v2, 0x0

    .line 2395
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.product.ramsize"

    .line 1411
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
