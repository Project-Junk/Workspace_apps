.class public final Lcom/coloros/settings/feature/deviceinfo/controller/h;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorOsVersionInfoController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "color_os_version"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1085
    invoke-static {}, Lcom/coloros/settings/utils/ad;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1087
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x0

    .line 1088
    aget-object v0, v1, v0

    :cond_0
    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 34
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
