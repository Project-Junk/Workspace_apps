.class public abstract Lcom/android/settings/applications/defaultapps/a;
.super Lcom/android/settingslib/core/a;
.source "DefaultAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field protected final a:Landroid/content/pm/PackageManager;

.field protected final b:Landroid/os/UserManager;

.field protected c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/a;->a:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "user"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/a;->b:Landroid/os/UserManager;

    .line 54
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/defaultapps/a;->c:I

    return-void
.end method

.method private synthetic a(Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/a;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$A33EkybVtL0OAJDtMINeYtgnqFw(Lcom/android/settings/applications/defaultapps/a;Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/defaultapps/a;->a(Landroid/content/Intent;Lcom/android/settings/widget/GearPreference;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/settingslib/applications/b;)Landroid/content/Intent;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a()Lcom/android/settingslib/applications/b;
.end method

.method protected a(Landroid/content/Intent;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Lcom/android/settingslib/applications/b;Landroidx/preference/Preference;)V
    .locals 1

    .line 79
    instance-of v0, p2, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/a;->a(Lcom/android/settingslib/applications/b;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    check-cast p2, Lcom/android/settings/widget/GearPreference;

    new-instance v0, Lcom/android/settings/applications/defaultapps/-$$Lambda$a$A33EkybVtL0OAJDtMINeYtgnqFw;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/defaultapps/-$$Lambda$a$A33EkybVtL0OAJDtMINeYtgnqFw;-><init>(Lcom/android/settings/applications/defaultapps/a;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/GearPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    return-void

    .line 87
    :cond_1
    check-cast p2, Lcom/android/settings/widget/GearPreference;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/GearPreference;->a(Lcom/android/settings/widget/GearPreference$a;)V

    return-void
.end method

.method public final b()Ljava/lang/CharSequence;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/a;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/a;->a()Lcom/android/settingslib/applications/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/android/settingslib/applications/b;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/a;->a()Lcom/android/settingslib/applications/b;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/a;->b()Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    instance-of v2, p1, Lcom/android/settingslib/TwoTargetPreference;

    if-eqz v2, :cond_0

    .line 65
    move-object v2, p1

    check-cast v2, Lcom/android/settingslib/TwoTargetPreference;

    const/4 v3, 0x1

    .line 1082
    iput v3, v2, Lcom/android/settingslib/TwoTargetPreference;->p:I

    .line 67
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 68
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/a;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/a;->a()Lcom/android/settingslib/applications/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1111
    invoke-virtual {v1}, Lcom/android/settingslib/applications/b;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 69
    :cond_1
    invoke-static {p1, v3}, Lcom/android/settings/m;->a(Landroidx/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const-string v1, "DefaultAppPrefControl"

    const-string v2, "No default app"

    .line 71
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1201ce

    .line 72
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 73
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/defaultapps/a;->a(Lcom/android/settingslib/applications/b;Landroidx/preference/Preference;)V

    return-void
.end method
