.class public Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;
.super Lcom/android/settings/display/DarkUIPreferenceController;
.source "ColorDarkModePreferenceController.java"


# static fields
.field public static final COLOR_DARK_MODE_CHANGE_NIGHT_MODE:Ljava/lang/String; = "ColorDarkMode_change_night_mode"

.field private static final COLOR_DARK_MODE_SWITCH_OPEN_NEVER_HINT:Ljava/lang/String; = "ColorDarkMode_switch_open_never_hint"

.field public static final KEY_DARK_MODE:Ljava/lang/String; = "key_dark_mode"

.field private static final TAG:Ljava/lang/String; = "ColorDarkModePreferenceController"


# instance fields
.field private mDarkModePreference:Lcom/color/support/preference/ColorSwitchWithDividerPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/DarkUIPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isSystemDarkModeOpen()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showDarkModeDialog()Z
    .locals 5

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 128
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "ColorDarkMode_switch_open_never_hint"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    .line 130
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->isSystemDarkModeOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 133
    :cond_3
    new-instance v2, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {v2, v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1217de

    .line 134
    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setTitle(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f1217dd

    .line 135
    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setMessage(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f12069a

    .line 136
    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setPositiveString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f12045e

    .line 137
    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setNegativeString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setShowStatementText(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setChecked(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController$1;-><init>(Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;Landroid/app/Activity;)V

    .line 140
    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setOnSelectedListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->create()Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object v1

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 157
    invoke-virtual {v1}, Lcom/color/support/widget/ColorSecurityAlertDialog;->show()V

    :cond_4
    return v3

    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method protected dcsState(I)V
    .locals 3

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance p1, Lcom/coloros/settings/statistics/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_state_update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/coloros/settings/statistics/a$a;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->setDcsCommon(Lcom/coloros/settings/statistics/a$a;)V

    .line 115
    sget-object p1, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "dcsState: will upload."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->handleCommonUpload()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/display/DarkUIPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mDarkModePreference:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mDarkModePreference:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mDarkModePreference:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    invoke-virtual {p1, p0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mDarkModePreference:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    new-instance v0, Lcom/coloros/settings/feature/display/controller/-$$Lambda$ColorDarkModePreferenceController$VqJek7x-LXl2nl6uBNxb2pkLtUA;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/controller/-$$Lambda$ColorDarkModePreferenceController$VqJek7x-LXl2nl6uBNxb2pkLtUA;-><init>(Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;)V

    .line 1121
    iput-object v0, p1, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->a:Lcom/color/support/preference/ColorSwitchWithDividerPreference$a;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$displayPreference$0$ColorDarkModePreferenceController()V
    .locals 4

    .line 67
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.color.darkmode.settings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.color.eyeprotect"

    const-string v3, "com.color.darkmode.ui.activity.DarkModeSettingActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 100
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->showDarkModeDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "ColorDarkMode_change_night_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    move p1, v0

    .line 105
    :goto_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->dcsState(I)V

    return v0
.end method

.method public updateEnabledStateIfNeeded()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mDarkModePreference:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->isSystemDarkModeOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/display/DarkUIPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->mDarkModePreference:Lcom/color/support/preference/ColorSwitchWithDividerPreference;

    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/coloros/settings/feature/display/controller/ColorDarkModePreferenceController;->isSystemDarkModeOpen()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorSwitchWithDividerPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
