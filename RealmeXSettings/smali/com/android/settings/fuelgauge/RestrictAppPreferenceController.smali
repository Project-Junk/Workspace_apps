.class public Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;
.super Lcom/android/settings/core/a;
.source "RestrictAppPreferenceController.java"


# static fields
.field static final KEY_RESTRICT_APP:Ljava/lang/String; = "restricted_app"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAppInfos:Ljava/util/List;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/c;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mPreferenceFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "restricted_app"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "appops"

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 51
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mPreferenceFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object p1, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mPreferenceFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppInfos:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->a(Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/f;->a(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppInfos:Ljava/util/List;

    .line 70
    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mAppInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 72
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 73
    iget-object v3, p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100040

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    .line 74
    invoke-virtual {v3, v4, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
