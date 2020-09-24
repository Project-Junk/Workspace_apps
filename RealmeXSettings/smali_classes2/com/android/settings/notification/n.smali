.class public final Lcom/android/settings/notification/n;
.super Lcom/android/settings/notification/l;
.source "NotificationsOffPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "block_desc"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/settings/notification/n;->d:Lcom/android/settings/notification/k$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/n;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/settings/notification/n;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    const v0, 0x7f1204d9

    .line 53
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/n;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_1

    const v0, 0x7f1204d8

    .line 55
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f1201e4

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
