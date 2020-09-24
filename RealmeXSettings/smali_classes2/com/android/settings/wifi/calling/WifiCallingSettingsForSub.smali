.class public Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$a;


# instance fields
.field private a:Lcom/android/settings/widget/SwitchBar;

.field private b:Landroid/widget/Switch;

.field private c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

.field private d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

.field private e:Landroidx/preference/Preference;

.field private f:Landroid/widget/TextView;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:Lcom/android/ims/e;

.field private m:Landroid/telephony/TelephonyManager;

.field private final n:Landroid/telephony/PhoneStateListener;

.field private final o:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private final p:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private q:Landroid/content/IntentFilter;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->g:Z

    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->h:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->i:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->j:Z

    const/4 v0, -0x1

    .line 100
    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    .line 104
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->n:Landroid/telephony/PhoneStateListener;

    .line 154
    new-instance v0, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSettingsForSub$Nh0fophFNFRM_ACrbb0rfo9n0zM;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/-$$Lambda$WifiCallingSettingsForSub$Nh0fophFNFRM_ACrbb0rfo9n0zM;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->o:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 164
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->p:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 216
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->r:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(I)I
    .locals 2

    const-string v0, "com.android.internal.R.string.wifi_calling_off_summary"

    .line 580
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 581
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v1}, Lcom/android/ims/e;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 593
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unexpected WFC mode value: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "WifiCallingForSub"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "com.android.internal.R.string.wfc_mode_wifi_preferred_summary"

    .line 590
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const-string p1, "com.android.internal.R.string.wfc_mode_cellular_preferred_summary"

    .line 587
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    const-string p1, "com.android.internal.R.string.wfc_mode_wifi_only_summary"

    .line 584
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/e;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->finish()V

    return-void

    :cond_0
    const-string v0, "carrier_config"

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 316
    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "editable_wfc_mode_bool"

    .line 318
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->h:Z

    const-string v3, "editable_wfc_roaming_mode_bool"

    .line 320
    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->i:Z

    const-string v3, "use_wfc_home_network_mode_in_roaming_network_bool"

    .line 322
    invoke-virtual {v0, v3, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->j:Z

    const-string v3, "carrier_wfc_supports_wifi_only_bool"

    .line 325
    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v3, 0x7f030109

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntries(I)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v3, 0x7f03010d

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntryValues(I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->b()V

    .line 335
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const v4, 0x7f030108

    invoke-virtual {v0, v4}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntries(I)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEntryValues(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->b()V

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    .line 346
    invoke-virtual {v0}, Lcom/android/ims/e;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 347
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->b:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 348
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v3, v1}, Lcom/android/ims/e;->c(Z)I

    move-result v1

    .line 349
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v3, v2}, Lcom/android/ims/e;->c(Z)I

    move-result v2

    .line 350
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setValue(Ljava/lang/String;)V

    .line 351
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setValue(Ljava/lang/String;)V

    .line 352
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(ZI)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "alertTitle"

    .line 202
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "alertMessage"

    .line 203
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 205
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {v2, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1080027

    .line 208
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 209
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v2}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Intent;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateWfcMode("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiCallingForSub"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v0, p1}, Lcom/android/ims/e;->b(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/e;->c(Z)I

    move-result v0

    .line 473
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/ims/e;->c(Z)I

    .line 474
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(ZI)V

    if-eqz p1, :cond_0

    .line 476
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    return-void

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setSummary(I)V

    .line 518
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->h:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEnabled(Z)V

    .line 520
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->i:Z

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setEnabled(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    .line 523
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->b()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz p1, :cond_6

    .line 525
    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->h:Z

    if-eqz p1, :cond_3

    .line 526
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    .line 529
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 531
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->i:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->j:Z

    if-nez p1, :cond_4

    .line 532
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 535
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :goto_4
    if-eqz v0, :cond_5

    .line 538
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->e:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 540
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->e:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 543
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 544
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 545
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->e:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 2

    .line 156
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->b()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "EXTRA_LAUNCH_CARRIER_APP"

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return v0
.end method

.method private b()Landroid/content/Intent;
    .locals 3

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 448
    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v2, "wfc_emergency_address_carrier_app_string"

    .line 451
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 455
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 459
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 460
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 461
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v1
.end method

.method static synthetic b(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->m:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    return p0
.end method

.method static synthetic e(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a()V

    return-void
.end method

.method public static synthetic lambda$Nh0fophFNFRM_ACrbb0rfo9n0zM(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4ce

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->f:Landroid/widget/TextView;

    .line 182
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->setEmptyView(Landroid/view/View;)V

    .line 1601
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0x7f12193c

    .line 185
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f12193b

    .line 184
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a06b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a:Lcom/android/settings/widget/SwitchBar;

    .line 189
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->a()V

    .line 190
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->b:Landroid/widget/Switch;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 484
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 488
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "WFC activity request = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " result = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 510
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unexpected request: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-ne p2, p3, :cond_3

    .line 499
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->b()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    const-string p3, "EXTRA_LAUNCH_CARRIER_APP"

    .line 501
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 505
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Z)V

    return-void

    :cond_2
    if-ne p2, p3, :cond_3

    .line 493
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 252
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f150141

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->addPreferencesFromResource(I)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subId"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 261
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    .line 2247
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p1

    .line 265
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    const-string p1, "phone"

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->m:Landroid/telephony/TelephonyManager;

    const-string p1, "wifi_calling_mode"

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 270
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "wifi_calling_roaming_mode"

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    .line 273
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "emergency_address_key"

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->e:Landroidx/preference/Preference;

    .line 276
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->e:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->o:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 278
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->q:Landroid/content/IntentFilter;

    .line 279
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->q:Landroid/content/IntentFilter;

    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d039e

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04fd

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 296
    invoke-static {p2, v0, v1}, Lcom/android/settings/m;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 297
    invoke-super {p0, p1, v1, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 298
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 195
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->b()V

    return-void
.end method

.method public onPause()V
    .locals 4

    .line 389
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 393
    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 394
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->g:Z

    .line 396
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->m:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->n:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 398
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->p:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 406
    invoke-virtual {v1}, Landroid/telephony/ims/ProvisioningManager$Callback;->getBinder()Landroid/telephony/ims/aidl/IImsConfigCallback;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->removeConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "WifiCallingForSub"

    const-string v1, "onPause: Unable to remove callback for provisioning changes"

    .line 408
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 552
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPreferenceChange mButtonWfcMode "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setValue(Ljava/lang/String;)V

    .line 554
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 555
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/ims/e;->c(Z)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 557
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {p2, p1, v0}, Lcom/android/ims/e;->a(IZ)V

    .line 558
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->c:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setSummary(I)V

    .line 559
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p2, v0, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    .line 561
    iget-boolean p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->j:Z

    if-eqz p2, :cond_1

    .line 562
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {p2, p1, v1}, Lcom/android/ims/e;->a(IZ)V

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->d:Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;

    if-ne p1, v0, :cond_1

    .line 567
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/calling/ListWithEntrySummaryPreference;->setValue(Ljava/lang/String;)V

    .line 568
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 569
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {p2, v1}, Lcom/android/ims/e;->c(Z)I

    move-result p2

    if-eq p1, p2, :cond_1

    .line 571
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {p2, p1, v1}, Lcom/android/ims/e;->a(IZ)V

    .line 573
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p2, v0, v2, p1}, Lcom/android/settingslib/core/instrumentation/d;->b(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 357
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 361
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a()V

    .line 363
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v1}, Lcom/android/ims/e;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->m:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->n:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 366
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    const/4 v1, 0x1

    .line 368
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->g:Z

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->r:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->q:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "alertShow"

    .line 374
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Landroid/content/Intent;)V

    .line 380
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->l:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->p:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsConfig;->addConfigCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "WifiCallingForSub"

    const-string v1, "onResume: Unable to register callback for provisioning changes."

    .line 382
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 284
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    const-string v1, "subId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSwitchChanged("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiCallingForSub"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 421
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->a(Z)V

    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 427
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 428
    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->k:I

    const-string v1, "EXTRA_SUB_ID"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    new-instance v0, Lcom/android/settings/core/f;

    invoke-direct {v0, p1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/wifi/calling/WifiCallingDisclaimerFragment;

    .line 430
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 431
    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 p2, 0x0

    const v0, 0x7f121942

    .line 3063
    invoke-virtual {p1, p2, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 p2, 0x2

    .line 434
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method
