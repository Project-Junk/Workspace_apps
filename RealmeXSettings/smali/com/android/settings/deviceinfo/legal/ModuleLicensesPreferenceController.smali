.class public Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;
.super Lcom/android/settings/core/a;
.source "ModuleLicensesPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$displayPreference$0(Landroid/content/pm/ModuleInfo;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$displayPreference$1(Landroidx/preference/PreferenceGroup;Landroid/content/pm/ModuleInfo;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;

    .line 55
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;-><init>(Landroid/content/Context;Landroid/content/pm/ModuleInfo;)V

    .line 54
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    .line 50
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$pL1-6SYxY49RqinLaZMvrs6bc0c;->INSTANCE:Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$pL1-6SYxY49RqinLaZMvrs6bc0c;

    .line 51
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$w7w_sPbPSDjsJT4DO8L9NvJUpS0;

    invoke-direct {v1, p1}, Lcom/android/settings/deviceinfo/legal/-$$Lambda$ModuleLicensesPreferenceController$w7w_sPbPSDjsJT4DO8L9NvJUpS0;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 53
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
