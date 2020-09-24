.class public Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;
.super Ljava/lang/Object;
.source "GameDriverGlobalSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/development/gamedriver/a$a;
.implements Lcom/android/settings/widget/g$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field a:Lcom/android/settings/widget/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Lcom/android/settings/development/gamedriver/a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/g;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->c:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->d:Landroid/content/ContentResolver;

    .line 57
    new-instance v0, Lcom/android/settings/development/gamedriver/a;

    new-instance v1, Landroid/os/Handler;

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/android/settings/development/gamedriver/a;-><init>(Landroid/os/Handler;Lcom/android/settings/development/gamedriver/a$a;)V

    iput-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->b:Lcom/android/settings/development/gamedriver/a;

    .line 59
    iput-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->a:Lcom/android/settings/widget/g;

    .line 60
    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->a:Lcom/android/settings/widget/g;

    .line 61
    invoke-static {p1}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result p1

    .line 60
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->a:Lcom/android/settings/widget/g;

    iget-object p2, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->d:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "game_driver_all_apps"

    .line 63
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    const/4 v0, 0x1

    .line 62
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/g;->a(Lcom/android/settings/widget/g$a;)V

    return-void
.end method


# virtual methods
.method public onGameDriverContentChanged()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->a:Lcom/android/settings/widget/g;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->d:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "game_driver_all_apps"

    .line 105
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    .line 104
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/g;->a(Z)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->b()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->b:Lcom/android/settings/development/gamedriver/a;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->d:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/development/gamedriver/a;->a(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->c()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->b:Lcom/android/settings/development/gamedriver/a;

    iget-object v1, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->d:Landroid/content/ContentResolver;

    .line 1055
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->d:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "game_driver_all_apps"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v4, 0x3

    if-nez p1, :cond_2

    if-ne v0, v4, :cond_2

    return v3

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/settings/development/gamedriver/GameDriverGlobalSwitchBarController;->d:Landroid/content/ContentResolver;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3
.end method
