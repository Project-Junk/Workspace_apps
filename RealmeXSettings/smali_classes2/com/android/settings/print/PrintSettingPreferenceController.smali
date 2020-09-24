.class public Lcom/android/settings/print/PrintSettingPreferenceController;
.super Lcom/android/settings/core/a;
.source "PrintSettingPreferenceController.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final KEY_PRINTING_SETTINGS:Ljava/lang/String; = "connected_device_printing"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroidx/preference/Preference;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connected_device_printing"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "print"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method

.method static shouldShowToUser(Landroid/print/PrintJobInfo;)Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/print/PrintSettingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.print"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintJob;

    .line 101
    invoke-virtual {v3}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/print/PrintSettingPreferenceController;->shouldShowToUser(Landroid/print/PrintJobInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :cond_2
    const/4 v0, 0x1

    if-lez v2, :cond_3

    .line 108
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10003e

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 108
    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    .line 112
    invoke-virtual {v2, v0}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 113
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 116
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 117
    iget-object v3, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10003f

    new-array v0, v0, [Ljava/lang/Object;

    .line 118
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    .line 117
    invoke-virtual {v3, v4, v2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 114
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1210be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/PrintSettingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingPreferenceController;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0, p0}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    .line 90
    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    const-string v0, "no_printing"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->b(Ljava/lang/String;)V

    return-void
.end method
