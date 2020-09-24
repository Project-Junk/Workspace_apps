.class public Lcom/android/settings/users/MultiUserSwitchBarController;
.super Ljava/lang/Object;
.source "MultiUserSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/g$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/MultiUserSwitchBarController$a;
    }
.end annotation


# instance fields
.field final a:Lcom/android/settings/widget/g;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/android/settings/users/f;

.field private final d:Lcom/android/settings/users/MultiUserSwitchBarController$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settings/users/MultiUserSwitchBarController$a;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->b:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    .line 52
    iput-object p3, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->d:Lcom/android/settings/users/MultiUserSwitchBarController$a;

    .line 53
    invoke-static {p1}, Lcom/android/settings/users/f;->a(Landroid/content/Context;)Lcom/android/settings/users/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->c:Lcom/android/settings/users/f;

    .line 54
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->c:Lcom/android/settings/users/f;

    iget-boolean p2, p2, Lcom/android/settings/users/f;->f:Z

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/g;->a(Z)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    .line 56
    invoke-virtual {p2}, Lcom/android/settings/widget/g;->d()Z

    move-result p2

    const-string p3, "user_switcher_enabled"

    .line 55
    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 58
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->c:Lcom/android/settings/users/f;

    iget-boolean p1, p1, Lcom/android/settings/users/f;->j:Z

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->b:Landroid/content/Context;

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p3

    const-string v0, "no_user_switch"

    .line 60
    invoke-static {p2, v0, p3}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/g;->a(Lcom/android/settingslib/g$a;)V

    goto :goto_1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->c:Lcom/android/settings/users/f;

    iget-boolean p2, p2, Lcom/android/settings/users/f;->j:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->c:Lcom/android/settings/users/f;

    iget-boolean p2, p2, Lcom/android/settings/users/f;->e:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->c:Lcom/android/settings/users/f;

    .line 1097
    iget-boolean p2, p2, Lcom/android/settings/users/f;->d:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 63
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/g;->b(Z)V

    .line 66
    :goto_1
    iget-object p1, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/g;->a(Lcom/android/settings/widget/g$a;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->b()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->c()V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 2

    .line 81
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Toggling multi-user feature enabled state to: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiUserSwitchBarCtrl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_switcher_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/users/MultiUserSwitchBarController;->d:Lcom/android/settings/users/MultiUserSwitchBarController$a;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lcom/android/settings/users/MultiUserSwitchBarController$a;->a()V

    :cond_0
    return p1
.end method
