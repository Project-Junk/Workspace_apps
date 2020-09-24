.class public Lcom/android/settings/development/CameraHal3PreferenceController;
.super Lcom/android/settingslib/development/b;
.source "CameraHal3PreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private e:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "vendor.oppo.camera.hal3.enable"

    .line 39
    iput-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->a:Ljava/lang/String;

    const-string p1, "persist.vendor.camera.HAL3.enabled"

    .line 40
    iput-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->b:Ljava/lang/String;

    const/4 p1, 0x1

    .line 41
    iput p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->c:I

    return-void
.end method

.method static synthetic a(Lcom/android/settings/development/CameraHal3PreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->d:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic a(Z)V
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/android/settings/development/CameraHal3PreferenceController;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/development/CameraHal3PreferenceController;)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method private static b(Z)V
    .locals 2

    :try_start_0
    const-string v0, "persist.vendor.camera.HAL3.enabled"

    .line 69
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeCameraHAL3SwitchOptions exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PrefControllerMixin"

    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/development/CameraHal3PreferenceController;)V
    .locals 1

    .line 2106
    iget-object p0, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v0, ""

    .line 2107
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "camera_hal3_control"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final m_()V
    .locals 1

    .line 149
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 150
    invoke-static {v0}, Lcom/android/settings/development/CameraHal3PreferenceController;->b(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->d:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/CameraHal3PreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 127
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 128
    move-object v0, p1

    check-cast v0, Landroidx/preference/SwitchPreference;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "camera_hal3_control"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2076
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    if-nez p1, :cond_0

    .line 2077
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120489

    .line 2078
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120486

    .line 2079
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120487

    new-instance v3, Lcom/android/settings/development/CameraHal3PreferenceController$1;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/development/CameraHal3PreferenceController$1;-><init>(Lcom/android/settings/development/CameraHal3PreferenceController;Z)V

    .line 2080
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120488

    .line 2087
    new-instance v2, Lcom/android/settings/development/CameraHal3PreferenceController$2;

    invoke-direct {v2, p0, p2}, Lcom/android/settings/development/CameraHal3PreferenceController$2;-><init>(Lcom/android/settings/development/CameraHal3PreferenceController;Z)V

    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 2095
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    .line 2096
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 2097
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2098
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, p0}, Lcolor/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/CameraHal3PreferenceController;->e:Lcolor/support/v7/app/AlertDialog;

    if-eqz p1, :cond_1

    .line 2101
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_1
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/development/b;->updateState(Landroidx/preference/Preference;)V

    .line 1111
    invoke-virtual {p0}, Lcom/android/settings/development/CameraHal3PreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "vendor.oppo.camera.hal3.enable"

    const-string v1, "0"

    .line 1117
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1119
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1121
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "updateCameraHAL3Options e = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrefControllerMixin"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
