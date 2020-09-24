.class public Lcom/android/settings/notification/BadgingNotificationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BadgingNotificationPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;
    }
.end annotation


# static fields
.field static final OFF:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ON:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BadgeNotifPrefContr"


# instance fields
.field private mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "notification_badging"

    .line 59
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    new-instance v0, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;-><init>(Lcom/android/settings/notification/BadgingNotificationPreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_notificationBadging"

    .line 82
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "notification_badging"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification_badging"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/BadgingNotificationPreferenceController$a;->a(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/notification/BadgingNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_badging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
