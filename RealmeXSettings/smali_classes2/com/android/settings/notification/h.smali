.class public final Lcom/android/settings/notification/h;
.super Lcom/android/settings/notification/l;
.source "DescriptionPreferenceController.java"

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

    const-string v0, "desc"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 3

    .line 42
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/h;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/h;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/h;->a:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/h;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/h;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/h;->b:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/h;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/h;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/h;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/settings/notification/h;->b:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method
