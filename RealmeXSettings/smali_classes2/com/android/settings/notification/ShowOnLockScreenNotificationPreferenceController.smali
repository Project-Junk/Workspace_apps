.class public Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;
.super Lcom/android/settingslib/core/a;
.source "ShowOnLockScreenNotificationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->a:Ljava/lang/String;

    .line 50
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->b:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method private a(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x4

    .line 137
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;II)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 140
    new-instance v1, Lcom/android/settings/RestrictedListPreference$b;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/settings/RestrictedListPreference$b;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settingslib/g$a;)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/android/settings/RestrictedListPreference;->a(Lcom/android/settings/RestrictedListPreference$b;)V

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->b:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()Z
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private c()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lock_screen_show_silent_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 112
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120c68

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120c69

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120c6a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 123
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f120c6a

    if-eq p2, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const v3, 0x7f120c69

    if-ne p2, v3, :cond_1

    move v0, v1

    .line 126
    :cond_1
    iget-object p2, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "lock_screen_show_silent_notifications"

    invoke-static {p2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    iget-object p2, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "lock_screen_show_notifications"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    .line 71
    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->b()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120c69

    .line 76
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-direct {p0, v0, v3, v5}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->a(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 84
    iget-object v3, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120c68

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-direct {p0, v0, v3, v6}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->a(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 91
    iget-object v3, p0, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120c6a

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->b()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/RestrictedListPreference;->setValue(Ljava/lang/String;)V

    .line 105
    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/settings/RestrictedListPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ShowOnLockScreenNotificationPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method
