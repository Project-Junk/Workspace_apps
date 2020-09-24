.class public final Lcom/android/settings/notification/d;
.super Lcom/android/settings/notification/l;
.source "BlockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/widget/SwitchBar$a;


# instance fields
.field private j:Lcom/android/settings/notification/NotificationSettingsBase$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationSettingsBase$a;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/notification/d;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "block"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    const/4 p1, 0x1

    xor-int/2addr p2, p1

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/d;->a:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/d;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez p2, :cond_0

    if-nez v0, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x3e8

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/d;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/notification/d;->a()V

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget v2, v2, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {v0, v2}, Lcom/android/settings/notification/k;->e(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->f:Z

    if-eq v0, p2, :cond_8

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iput-boolean p2, v0, Lcom/android/settings/notification/k$a;->f:Z

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget v2, v2, Lcom/android/settings/notification/k$a;->b:I

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    invoke-static {v0, v2, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;IZ)Z

    goto :goto_3

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/d;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_6

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/d;->b:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannelGroup;->setBlocked(Z)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-object p1, p1, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget p2, p2, Lcom/android/settings/notification/k$a;->b:I

    iget-object v0, p0, Lcom/android/settings/notification/d;->b:Landroid/app/NotificationChannelGroup;

    invoke-static {p1, p2, v0}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V

    goto :goto_3

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_8

    .line 123
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iput-boolean p2, v0, Lcom/android/settings/notification/k$a;->f:Z

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-object v0, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget v2, v2, Lcom/android/settings/notification/k$a;->b:I

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    move p1, v1

    :goto_2
    invoke-static {v0, v2, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;IZ)Z

    .line 126
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/settings/notification/d;->j:Lcom/android/settings/notification/NotificationSettingsBase$a;

    invoke-virtual {p1}, Lcom/android/settings/notification/NotificationSettingsBase$a;->a()V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 61
    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->setSelectable(Z)V

    const v1, 0x7f0a06b7

    .line 63
    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_8

    const v1, 0x7f120efb

    .line 65
    invoke-virtual {p1, v1, v1}, Lcom/android/settings/widget/SwitchBar;->a(II)V

    .line 67
    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->a()V

    .line 69
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    iget-object v1, p0, Lcom/android/settings/notification/d;->c:Lcom/android/settingslib/g$a;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/g$a;)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/notification/d;->a:Landroid/app/NotificationChannel;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/d;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/d;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/d;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/d;->a:Landroid/app/NotificationChannel;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v1, v1, Lcom/android/settings/notification/k$a;->g:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v1, v1, Lcom/android/settings/notification/k$a;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v1, v1, Lcom/android/settings/notification/k$a;->h:Z

    if-eqz v1, :cond_3

    .line 85
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/d;->a:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 89
    iget-object v1, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v1, v1, Lcom/android/settings/notification/k$a;->f:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/notification/d;->a:Landroid/app/NotificationChannel;

    .line 90
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    .line 89
    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    .line 91
    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/d;->b:Landroid/app/NotificationChannelGroup;

    if-eqz v1, :cond_7

    .line 92
    iget-object v1, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v1, v1, Lcom/android/settings/notification/k$a;->f:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/notification/d;->b:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v1}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v2

    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    .line 94
    :cond_7
    iget-object v0, p0, Lcom/android/settings/notification/d;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->f:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_8
    return-void
.end method
