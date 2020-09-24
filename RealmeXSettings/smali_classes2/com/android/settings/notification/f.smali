.class public final Lcom/android/settings/notification/f;
.super Lcom/android/settings/notification/l;
.source "BubbleSummaryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    return-void
.end method

.method private f()Z
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/f;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "notification_bubbles"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bubble_link_pref"

    return-object v0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/f;->a:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/f;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    or-int/2addr v1, v2

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/f;->g:Landroid/content/Context;

    if-eqz v1, :cond_3

    const v1, 0x7f12163e

    goto :goto_1

    :cond_3
    const v1, 0x7f12163c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 3

    .line 52
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/f;->a:Landroid/app/NotificationChannel;

    if-nez v0, :cond_1

    return v1

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/f;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_5

    .line 59
    invoke-direct {p0}, Lcom/android/settings/notification/f;->f()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/f;->e()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    return v2

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->j:Z

    if-eqz v0, :cond_4

    return v2

    :cond_4
    return v1

    .line 68
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/notification/f;->f()Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/notification/l;->updateState(Landroidx/preference/Preference;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    iget-object v1, v1, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/android/settings/notification/f;->d:Lcom/android/settings/notification/k$a;

    iget v1, v1, Lcom/android/settings/notification/k$a;->b:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/android/settings/notification/f;->g:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/AppBubbleNotificationSettings;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    .line 82
    invoke-virtual {v1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/16 v1, 0x48

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
