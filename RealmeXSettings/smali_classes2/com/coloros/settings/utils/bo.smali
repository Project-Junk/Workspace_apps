.class public final Lcom/coloros/settings/utils/bo;
.super Ljava/lang/Object;
.source "VibrateUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;


# direct methods
.method public static a()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/coloros/settings/utils/bh;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/coloros/settings/utils/bo;->b()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 25
    sget-object v0, Lcom/coloros/settings/utils/bo;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "vibrator"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/utils/bo;->a:Ljava/lang/Boolean;

    .line 29
    :cond_1
    sget-object p0, Lcom/coloros/settings/utils/bo;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static b()V
    .locals 3

    .line 1030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x50

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method
