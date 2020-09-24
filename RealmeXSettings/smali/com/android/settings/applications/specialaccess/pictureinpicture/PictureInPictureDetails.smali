.class public Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "PictureInPictureDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected q:Landroidx/preference/TwoStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0

    .line 122
    invoke-static {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->b(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1201e9

    return p0

    :cond_0
    const p0, 0x7f1201ea

    return p0
.end method

.method private static b(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    .line 113
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    const/16 v0, 0x43

    .line 114
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(I)Lcolor/support/v7/app/AlertDialog;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()Z
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->b(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->q:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method protected d()V
    .locals 1

    const v0, 0x7f1500ee

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->addPreferencesFromResource(I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x32c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->d()V

    const-string p1, "app_ops_settings_switch"

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->q:Landroidx/preference/TwoStatePreference;

    .line 54
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->q:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f12102a

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setTitle(I)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->q:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->q:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v6, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->i:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/16 p1, 0x32d

    goto :goto_0

    :cond_0
    const/16 p1, 0x32e

    :goto_0
    move v4, p1

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v2

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/app/Activity;)I

    move-result v3

    .line 1138
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->getMetricsCategory()I

    move-result v5

    const/4 v7, 0x0

    .line 1135
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/settings/applications/specialaccess/pictureinpicture/PictureInPictureDetails;->i:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 2103
    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    const/16 p2, 0x43

    .line 2105
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method
