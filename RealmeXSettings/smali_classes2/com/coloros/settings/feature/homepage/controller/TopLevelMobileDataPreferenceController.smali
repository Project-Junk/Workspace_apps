.class public Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelMobileDataPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final POPUP_GPRS_DIALOG:Ljava/lang/String; = "popup_gprs_dialog"

.field private static final TAG:Ljava/lang/String; = "TopLevelMobileDataPreferenceController"


# instance fields
.field private mConnectCategory:Landroidx/preference/PreferenceCategory;

.field private mGprsBox:Landroid/widget/CheckBox;

.field private mGprsView:Landroid/widget/RelativeLayout;

.field private mGprsWarningDialog:Lcolor/support/v7/app/AlertDialog;

.field private mIsCtcc:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMobileDataObserver:Landroid/database/ContentObserver;

.field private mPrefMobileData:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mobile_data"

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsView:Landroid/widget/RelativeLayout;

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsBox:Landroid/widget/CheckBox;

    .line 241
    new-instance p1, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$3;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$3;-><init>(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->w(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mIsCtcc:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)Landroid/widget/CheckBox;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private isMobileDataOn()Z
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 214
    :goto_0
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/utils/al;->O(Landroid/content/Context;)Z

    move-result v2

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 218
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private showMobileDataSafeWarning()V
    .locals 9

    .line 143
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d021a

    invoke-virtual {v0, v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsView:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsView:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0137

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsBox:Landroid/widget/CheckBox;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsBox:Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsWarningDialog:Lcolor/support/v7/app/AlertDialog;

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0704cf

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v7, v0

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0704d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 155
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1212c3

    .line 156
    invoke-virtual {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f1212c6

    .line 157
    invoke-virtual {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f1212c7

    new-instance v4, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$2;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$2;-><init>(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)V

    .line 158
    invoke-virtual {v0, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    .line 167
    invoke-virtual {v0, v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController$1;-><init>(Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;)V

    .line 168
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsWarningDialog:Lcolor/support/v7/app/AlertDialog;

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsWarningDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 177
    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsWarningDialog:Lcolor/support/v7/app/AlertDialog;

    iget-object v4, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsView:Landroid/widget/RelativeLayout;

    const/4 v6, 0x0

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Lcolor/support/v7/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mGprsWarningDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private startMobileDataActivity()V
    .locals 4

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.coloros.simsettings"

    const-string v3, "com.coloros.simsettings.OppoMobileDataSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->startActivitySafely(Landroid/content/Intent;)V

    return-void
.end method

.method private tuneOnMobileData()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "popup_gprs_dialog"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_0
    return-void

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->showMobileDataSafeWarning()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "mobile_data"

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    const-string v0, "connect_settings_category"

    .line 71
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mConnectCategory:Landroidx/preference/PreferenceCategory;

    .line 72
    iget-boolean p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mIsCtcc:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mConnectCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->startMobileDataActivity()V

    const/4 p1, 0x1

    return p1

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 104
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mIsCtcc:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 113
    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/coloros/settings/utils/al;->O(Landroid/content/Context;)Z

    move-result p2

    .line 115
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    if-eqz p1, :cond_3

    .line 119
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->tuneOnMobileData()V

    goto :goto_0

    .line 121
    :cond_3
    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_4

    .line 123
    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 128
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 94
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mIsCtcc:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->updateMobileDataPreferenceState()V

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    .line 97
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 96
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public updateMobileDataPreferenceState()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->isMobileDataOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 188
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 192
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 196
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_5

    .line 200
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    const v1, 0x7f0807e5

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/af;->b(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mPrefMobileData:Landroidx/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/TopLevelMobileDataPreferenceController;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 205
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/af;->a(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method
