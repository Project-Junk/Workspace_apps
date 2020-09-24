.class public Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NoticeWakeUpPreferenceController.java"


# static fields
.field private static final KEYGUARD_NOTICE_WAKELOCK_STATE:Ljava/lang/String; = "keyguard_notice_wakelock_state"

.field private static final KEY_NOTICE_WAKE_UP:Ljava/lang/String; = "notice_wake_up"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notice_wake_up"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "keyguard_notice_wakelock_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "notice_wake_up"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyguard_notice_wakelock_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 54
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 55
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120e99

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method
