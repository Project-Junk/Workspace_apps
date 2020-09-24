.class public Lcom/android/settings/notification/VisibilityPreferenceController;
.super Lcom/android/settings/notification/l;
.source "VisibilityPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private j:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/notification/k;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/l;-><init>(Landroid/content/Context;Lcom/android/settings/notification/k;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->j:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private a(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget v1, v1, Lcom/android/settings/notification/k$a;->k:I

    .line 132
    invoke-static {v0, p4, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 135
    new-instance v0, Lcom/android/settings/RestrictedListPreference$b;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/settings/RestrictedListPreference$b;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/g$a;)V

    .line 137
    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->a(Lcom/android/settings/RestrictedListPreference$b;)V

    :cond_0
    return-void
.end method

.method private f()I
    .locals 1

    .line 143
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->h()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, -0x3e8

    :goto_0
    return v0
.end method

.method private g()Z
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->h:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "lock_screen_show_notifications"

    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method private h()Z
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "visibility_override"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 60
    invoke-super {p0}, Lcom/android/settings/notification/l;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->d:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->f:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VisibilityPreferenceController;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1164
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->j:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 1165
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->h:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1167
    iget-object v3, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->j:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_1

    .line 118
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 119
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->f()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/16 p1, -0x3e8

    .line 122
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->a:Landroid/app/NotificationChannel;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->a()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->a:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->d:Lcom/android/settings/notification/k$a;

    if-eqz v0, :cond_3

    .line 71
    check-cast p1, Lcom/android/settings/RestrictedListPreference;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/RestrictedListPreference;->b()V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->g()Z

    move-result v2

    const/16 v3, -0x3e8

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->g:Landroid/content/Context;

    const v4, 0x7f120c61

    .line 78
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xc

    .line 83
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/settings/notification/VisibilityPreferenceController;->a(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->g:Landroid/content/Context;

    const v4, 0x7f120c5f

    .line 91
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    .line 96
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/settings/notification/VisibilityPreferenceController;->a(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 100
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->g:Landroid/content/Context;

    const v4, 0x7f120c5e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/android/settings/notification/VisibilityPreferenceController;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VisibilityPreferenceController;->a:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    :goto_0
    const-string v0, "%s"

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/settings/RestrictedListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
