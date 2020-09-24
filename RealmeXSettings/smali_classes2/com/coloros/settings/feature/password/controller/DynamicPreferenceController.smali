.class public abstract Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "DynamicPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field protected a:Landroidx/preference/PreferenceScreen;

.field private b:Lcom/coloros/settings/feature/password/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->b()V

    return-void
.end method

.method public static synthetic lambda$D_AbgfuvAfhz0wrxBXggVXBJ2BE(Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->b:Lcom/coloros/settings/feature/password/b;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/coloros/settings/feature/password/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/password/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->b:Lcom/coloros/settings/feature/password/b;

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->b:Lcom/coloros/settings/feature/password/b;

    new-instance v1, Lcom/coloros/settings/feature/password/controller/-$$Lambda$DynamicPreferenceController$D_AbgfuvAfhz0wrxBXggVXBJ2BE;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/password/controller/-$$Lambda$DynamicPreferenceController$D_AbgfuvAfhz0wrxBXggVXBJ2BE;-><init>(Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;)V

    .line 1030
    iput-object v1, v0, Lcom/coloros/settings/feature/password/b;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->b:Lcom/coloros/settings/feature/password/b;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/b;->a()V

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected abstract c()V
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 28
    iput-object p1, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->a:Landroidx/preference/PreferenceScreen;

    .line 29
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->c()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->b:Lcom/coloros/settings/feature/password/b;

    if-eqz v0, :cond_0

    .line 1087
    iget-object v1, v0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    iget-object v0, v0, Lcom/coloros/settings/feature/password/b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/controller/DynamicPreferenceController;->c()V

    return-void
.end method
