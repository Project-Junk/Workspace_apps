.class public Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;
.super Lcom/android/settings/core/a;
.source "MoreSpecialAccessPreferenceController.java"


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_SPECIAL_APP_ACCESSES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v1, 0x10000

    .line 41
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 43
    :goto_0
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    return-void

    .line 45
    :cond_1
    iput-object v0, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 56
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/MoreSpecialAccessPreferenceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
