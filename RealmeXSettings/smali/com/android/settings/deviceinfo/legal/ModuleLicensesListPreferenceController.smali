.class public Lcom/android/settings/deviceinfo/legal/ModuleLicensesListPreferenceController;
.super Lcom/android/settings/core/a;
.source "ModuleLicensesListPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensesListPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settings/deviceinfo/legal/ModuleLicensesPreferenceController$a;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    return v0
.end method
