.class public Lcom/coloros/settings/adaptor/UserSettingsAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "UserSettingsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/users/UserSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    sput-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method

.method public static getDefaultUserIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 137
    invoke-static {}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isStatusEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 140
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getDefaultUserIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static isStatusEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addUserPreference(Landroidx/preference/PreferenceGroup;Lcom/android/settings/users/UserPreference;)Z
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->addUserPreference(Lcom/android/settings/users/UserSettings;Landroidx/preference/PreferenceGroup;Lcom/android/settings/users/UserPreference;)Z

    move-result p1

    return p1
.end method

.method public disableGuestPreferenceClickListener()Z
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public encircleUserIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 203
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->encircleUserIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getAddingUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 133
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getAddingUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDialogMetricsCategory(II)I
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 126
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getDialogMetricsCategory(II)I

    move-result p1

    return p1
.end method

.method public getMaxRealUsers()I
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 189
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getMaxRealUsers()I

    move-result v0

    return v0
.end method

.method public getRoundDefaultUserIcon(Lcom/android/settings/users/UserPreference;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 172
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 175
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getRoundDefaultUserIcon(Lcom/android/settings/users/UserSettings;Lcom/android/settings/users/UserPreference;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getSettingsHandleForMyUserId(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 66
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getSettingsHandleForMyUserId(Lcom/android/settings/users/UserSettings;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p1

    return-object p1
.end method

.method public getUserSettingsXml(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 52
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getUserSettingsXml(I)I

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreateDialog(Landroid/app/Dialog;ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 111
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->onCreateDialog(Lcom/android/settings/users/UserSettings;Landroid/app/Dialog;ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateShowing(Landroidx/fragment/app/DialogFragment;)V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->onDialogShowing(Lcom/android/settings/users/UserSettings;Landroidx/fragment/app/DialogFragment;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public removeGuestPreference()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->removeGuestPreference(Lcom/android/settings/users/UserSettings;)V

    return-void
.end method

.method public setUpUser(I)Z
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->setUpUser(Lcom/android/settings/users/UserSettings;I)Z

    move-result p1

    return p1
.end method

.method public shouldJumpInfoSettings(Z)Z
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 73
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->shouldJumpInfoSettings(Z)Z

    move-result p1

    return p1
.end method

.method public shouldLaunchDetailSettings(Landroid/content/pm/UserInfo;Z)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 80
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->shouldLaunchDetailSettings(Landroid/content/pm/UserInfo;Z)Z

    move-result p1

    return p1
.end method

.method public shouldShowActionSwitch()Z
    .locals 2

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->shouldShowActionSwitch(Lcom/android/settings/users/UserSettings;)Z

    move-result v0

    return v0
.end method

.method public showAddUserSetDialog(I)Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/users/UserSettings;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->showAddUserSetDialog(Lcom/android/settings/users/UserSettings;I)Z

    move-result p1

    return p1
.end method

.method public showRemoveUserMenu()Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 196
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->showRemoveUserMenu()Z

    move-result v0

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/UserSettingsAdaptor;->sMultiUserFeature:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
