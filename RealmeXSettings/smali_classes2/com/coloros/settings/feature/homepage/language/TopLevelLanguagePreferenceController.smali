.class public Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelLanguagePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;


# static fields
.field private static final DELAY_TIME:I = 0x1f4


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLanguageLabel:Ljava/lang/String;

.field private mLanguageUpdateObserver:Landroid/database/ContentObserver;

.field private mNotifyDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mNotifyDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mLanguageLabel:Ljava/lang/String;

    .line 176
    new-instance p1, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$2;-><init>(Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mLanguageUpdateObserver:Landroid/database/ContentObserver;

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private getLanguageLabel()Ljava/lang/String;
    .locals 5

    .line 124
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TW"

    .line 128
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "zh"

    if-nez v3, :cond_0

    const-string v3, "HK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121710

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, "CN"

    .line 130
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1214e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v3, "US"

    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121798

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 95
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 97
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;)V

    .line 98
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/custom/b;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 106
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mLanguageLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->getLanguageLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mLanguageLabel:Ljava/lang/String;

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mLanguageLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCALE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 84
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120bda

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 117
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handleClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    const v0, 0x7f0a017e

    .line 142
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070588

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mNotifyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mLanguageUpdateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "language_new_version_flag"

    .line 1039
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mLanguageUpdateObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController$1;-><init>(Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/language/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mNotifyDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f0807d0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mNotifyDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mNotifyDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mNotifyDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 167
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz v1, :cond_4

    .line 169
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/language/TopLevelLanguagePreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_4

    .line 170
    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 171
    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Lcom/coloros/settings/widget/preference/SettingColorJumpPreference$a;)V

    :cond_4
    return-void
.end method
