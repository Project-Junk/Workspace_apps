.class public Lcom/android/settings/print/PrintJobMessagePreferenceController;
.super Lcom/android/settings/print/PrintJobPreferenceControllerBase;
.source "PrintJobMessagePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/print/PrintJobPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected updateUi()V
    .locals 3

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobMessagePreferenceController;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 45
    iget-object v1, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 38
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/print/PrintJobMessagePreferenceController;->mFragment:Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void
.end method