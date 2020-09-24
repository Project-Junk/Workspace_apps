.class public Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;
.super Lcom/android/settings/development/OemUnlockPreferenceController;
.source "ColorOemUnlockPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;->b:Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/ColorRestrictedSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/android/settings/development/p;Landroid/content/DialogInterface;)V
    .locals 0

    .line 62
    invoke-interface {p0}, Lcom/android/settings/development/p;->g()V

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/development/p;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 57
    invoke-interface {p0}, Lcom/android/settings/development/p;->f()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$2E_ccuhErg-xA_7rMlYPxxDTqvs(Lcom/android/settings/development/p;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;->a(Lcom/android/settings/development/p;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$WWvdYGd6ToKr5WjjqkWAPUKgEuQ(Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$aZdCNqWJqVOVCzwYNsHNXvtHhGg(Lcom/android/settings/development/p;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;->a(Lcom/android/settings/development/p;Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;->a:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v1, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorOemUnlockPreferenceController$2E_ccuhErg-xA_7rMlYPxxDTqvs;

    invoke-direct {v1, v0}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorOemUnlockPreferenceController$2E_ccuhErg-xA_7rMlYPxxDTqvs;-><init>(Lcom/android/settings/development/p;)V

    .line 61
    new-instance v2, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorOemUnlockPreferenceController$aZdCNqWJqVOVCzwYNsHNXvtHhGg;

    invoke-direct {v2, v0}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorOemUnlockPreferenceController$aZdCNqWJqVOVCzwYNsHNXvtHhGg;-><init>(Lcom/android/settings/development/p;)V

    .line 64
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12060f

    .line 65
    invoke-virtual {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f12060e

    .line 66
    invoke-virtual {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f120fcf

    .line 67
    invoke-virtual {v0, v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorOemUnlockPreferenceController$WWvdYGd6ToKr5WjjqkWAPUKgEuQ;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/othersettings/development/-$$Lambda$ColorOemUnlockPreferenceController$WWvdYGd6ToKr5WjjqkWAPUKgEuQ;-><init>(Lcom/coloros/settings/feature/othersettings/development/ColorOemUnlockPreferenceController;)V

    .line 69
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 75
    invoke-static {v0}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    .line 3030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    .line 2034
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;Landroid/content/res/Resources;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "ro.frp.pst"

    .line 1046
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 42
    invoke-super {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
