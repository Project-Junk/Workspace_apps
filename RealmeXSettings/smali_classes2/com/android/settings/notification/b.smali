.class public final Lcom/android/settings/notification/b;
.super Lcom/android/settings/notification/l;
.source "AppLinkPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "app_link"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 45
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/b;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->e:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/notification/b;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/b;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->e:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
