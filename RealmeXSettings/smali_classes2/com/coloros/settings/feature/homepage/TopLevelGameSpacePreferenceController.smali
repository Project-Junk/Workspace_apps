.class public Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelGameSpacePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final ACTION_GAME_SPACE:Ljava/lang/String; = "oppo.intent.action.RECOVER_GAME_SPACEUI"

.field public static final ACTION_GAME_SPACE_UI:Ljava/lang/String; = "oppo.intent.action.GAMESPACE_SETTINGS"

.field public static final ACTIVITY_GAME_SPACE:Ljava/lang/String; = "com.coloros.gamespace.activity.RecoverGameSpaceUIActivity"

.field public static final ACTIVITY_GAME_SPACE_UI:Ljava/lang/String; = "com.coloros.gamespaceui.activity.GameSpaceSettingActivity"

.field public static final GAME_SPACE:Ljava/lang/String; = "game_space"

.field private static final NEW_GAME_SPACE_VERSION_CODE:I = 0x927c0

.field public static final PACKAGE_NAME_GAME_SPACE:Ljava/lang/String; = "com.coloros.gamespace"

.field public static final PACKAGE_NAME_GAME_SPACE_UI:Ljava/lang/String; = "com.coloros.gamespaceui"

.field private static final TAG:Ljava/lang/String; = "TopLevelGameSpacePreferenceController"


# instance fields
.field private mColorSimpleJumpPreference:Lcom/coloros/settings/widget/preference/ColorSimpleJumpPreference;

.field private mGameSpaceNewVersion:Ljava/lang/Boolean;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mGameSpaceNewVersion:Ljava/lang/Boolean;

    return-void
.end method

.method private getGameSpaceVersionCode()I
    .locals 4

    const-string v0, "TopLevelGameSpacePreferenceController"

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.coloros.gamespace"

    const/16 v3, 0x4000

    .line 105
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 110
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGameSpaceVersionCode, versionCode = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isGameSpaceUiInstalled()Z
    .locals 1

    const-string v0, "com.coloros.gamespaceui"

    .line 71
    invoke-static {v0}, Lcom/coloros/settings/utils/ba;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateGameSpacePreferenceState()V
    .locals 2

    .line 88
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.coloros.gamespace"

    .line 89
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mColorSimpleJumpPreference:Lcom/coloros/settings/widget/preference/ColorSimpleJumpPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorSimpleJumpPreference;->setVisible(Z)V

    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mColorSimpleJumpPreference:Lcom/coloros/settings/widget/preference/ColorSimpleJumpPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorSimpleJumpPreference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 83
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "game_space"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorSimpleJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->mColorSimpleJumpPreference:Lcom/coloros/settings/widget/preference/ColorSimpleJumpPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->isGameSpaceUiInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "oppo.intent.action.GAMESPACE_SETTINGS"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.gamespaceui"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "oppo.intent.action.RECOVER_GAME_SPACEUI"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coloros.gamespace"

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 98
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/TopLevelGameSpacePreferenceController;->updateGameSpacePreferenceState()V

    return-void
.end method
