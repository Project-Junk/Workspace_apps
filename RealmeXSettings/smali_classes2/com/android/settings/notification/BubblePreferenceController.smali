.class public Lcom/android/settings/notification/BubblePreferenceController;
.super Lcom/android/settings/notification/l;
.source "BubblePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private j:Landroidx/fragment/app/FragmentManager;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/k;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/BubblePreferenceController;->j:Landroidx/fragment/app/FragmentManager;

    .line 50
    iput-boolean p4, p0, Lcom/android/settings/notification/BubblePreferenceController;->k:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 123
    new-instance v0, Lcom/android/settings/notification/k;

    invoke-direct {v0}, Lcom/android/settings/notification/k;-><init>()V

    const/4 v0, 0x0

    .line 124
    invoke-static {p1, p2, v0}, Lcom/android/settings/notification/k;->c(Ljava/lang/String;IZ)Z

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "notification_bubbles"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 133
    new-instance v0, Lcom/android/settings/notification/k;

    invoke-direct {v0}, Lcom/android/settings/notification/k;-><init>()V

    const/4 v0, 0x1

    .line 134
    invoke-static {p1, p2, v0}, Lcom/android/settings/notification/k;->c(Ljava/lang/String;IZ)Z

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "notification_bubbles"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private f()Z
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->g:Landroid/content/Context;

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
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bubble_pref"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->k:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->f()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/BubblePreferenceController;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->j:Z

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v2
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 93
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/BubblePreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_1

    .line 95
    iget-object p1, p0, Lcom/android/settings/notification/BubblePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/notification/BubblePreferenceController;->a()V

    return v1

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/BubblePreferenceController;->j:Landroidx/fragment/app/FragmentManager;

    if-eqz v2, :cond_3

    .line 99
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->f()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    new-instance p1, Lcom/android/settings/notification/BubbleWarningDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/BubbleWarningDialogFragment;-><init>()V

    iget-object p2, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object p2, p2, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget v1, v1, Lcom/android/settings/notification/k$a;->b:I

    .line 3038
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "p"

    .line 3039
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "u"

    .line 3040
    invoke-virtual {v2, p2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3041
    invoke-virtual {p1, v2}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    iget-object p2, p0, Lcom/android/settings/notification/BubblePreferenceController;->j:Landroidx/fragment/app/FragmentManager;

    const-string v1, "dialog"

    .line 105
    invoke-virtual {p1, p2, v1}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v0

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iput-boolean p2, p1, Lcom/android/settings/notification/k$a;->j:Z

    .line 109
    iget-object p1, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object p1, p1, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget v0, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p1, v0, p2}, Lcom/android/settings/notification/k;->c(Ljava/lang/String;IZ)Z

    :cond_3
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_3

    .line 78
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->c:Lcom/android/settingslib/g$a;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 1177
    iget-object v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;->a:Lcom/android/settingslib/i;

    .line 2161
    iget-boolean v0, v0, Lcom/android/settingslib/i;->a:Z

    xor-int/2addr v0, v2

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/BubblePreferenceController;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/BubblePreferenceController;->g:Landroid/content/Context;

    const v3, 0x7f120450

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/notification/BubblePreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-object v4, v4, Lcom/android/settings/notification/k$a;->d:Ljava/lang/CharSequence;

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
