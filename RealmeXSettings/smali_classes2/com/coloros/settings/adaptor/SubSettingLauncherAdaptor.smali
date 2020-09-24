.class public Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "SubSettingLauncherAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/core/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetClazz(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/f;

    .line 1240
    iget-object v0, v0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v0, v0, Lcom/android/settings/core/f$a;->a:Ljava/lang/String;

    .line 29
    invoke-static {v0}, Lcom/coloros/settings/SubSettingsNoActionBar;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-class p1, Lcom/coloros/settings/SubSettingsNoActionBar;

    return-object p1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SubSettingLauncherAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/f;

    .line 1244
    iget-object v0, v0, Lcom/android/settings/core/f;->a:Lcom/android/settings/core/f$a;

    iget-object v0, v0, Lcom/android/settings/core/f$a;->l:Ljava/lang/String;

    .line 32
    invoke-static {p1, v0, p2}, Lcom/coloros/settings/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
