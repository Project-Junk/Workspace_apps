.class public Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorTimeoutPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field public static final TAG:Ljava/lang/String; = "ColorTimeoutController"


# instance fields
.field initialNum:I

.field private final mScreenTimeoutEntries:[Ljava/lang/String;

.field private final mScreenTimeoutValues:[Ljava/lang/String;

.field revisedNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "screen_timeout"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->initialNum:I

    .line 41
    iput v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->revisedNum:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mScreenTimeoutEntries:[Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mScreenTimeoutValues:[Ljava/lang/String;

    return-void
.end method

.method private getCurrentTimeoutEntry()Ljava/lang/String;
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    const/4 v0, 0x0

    move v4, v0

    .line 98
    :goto_0
    iget-object v5, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, -0x1

    if-ge v4, v6, :cond_1

    .line 99
    aget-object v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v7

    :goto_1
    const/4 v2, 0x1

    if-ne v7, v4, :cond_2

    .line 105
    invoke-static {}, Lcom/coloros/settings/utils/al;->b()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 107
    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_2
    move v2, v4

    :goto_2
    if-ne v2, v7, :cond_3

    goto :goto_3

    :cond_3
    move v0, v2

    .line 114
    :goto_3
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mScreenTimeoutEntries:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private initTimeoutValueNum(Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;Lcom/android/settingslib/g$a;)V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mScreenTimeoutValues:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->initialNum:I

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget v1, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->initialNum:I

    if-ge v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mScreenTimeoutValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 125
    iget v1, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->revisedNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->revisedNum:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->revisedNum:I

    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Lcom/android/settingslib/g$a;)V

    .line 130
    new-instance v0, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ColorTimeoutPreferenceController$DYWdFewjPR_CKlrvEvNpbK7cDQ0;

    invoke-direct {v0, p0, p2}, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ColorTimeoutPreferenceController$DYWdFewjPR_CKlrvEvNpbK7cDQ0;-><init>(Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;Lcom/android/settingslib/g$a;)V

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_2
    const/4 p2, 0x0

    .line 136
    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Lcom/android/settingslib/g$a;)V

    :cond_3
    return-void
.end method

.method private updateScreenTimeoutPreference(Landroidx/preference/Preference;)V
    .locals 1

    .line 65
    instance-of v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->getCurrentTimeoutEntry()Ljava/lang/String;

    move-result-object v0

    .line 71
    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    .line 86
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTimeoutPreferenceDescription(Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;)V
    .locals 4

    .line 1111
    iget-object v0, p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1207ee

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 147
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->revisedNum:I

    iget v2, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->initialNum:I

    if-ge v0, v2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1200fd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 150
    :goto_0
    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$initTimeoutValueNum$0$ColorTimeoutPreferenceController(Lcom/android/settingslib/g$a;Landroidx/preference/Preference;)Z
    .locals 0

    .line 131
    iget-object p2, p0, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screentimeout/ColorTimeoutPreferenceController;->updateScreenTimeoutPreference(Landroidx/preference/Preference;)V

    return-void
.end method
