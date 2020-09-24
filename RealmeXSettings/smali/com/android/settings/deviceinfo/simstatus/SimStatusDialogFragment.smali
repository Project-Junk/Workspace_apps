.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SimStatusDialogFragment.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V
    .locals 3

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SimStatusDialog"

    .line 51
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "arg_key_sim_slot"

    .line 53
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "arg_key_dialog_title"

    .line 54
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;-><init>()V

    .line 57
    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/CharSequence;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12077e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    if-eqz p1, :cond_1

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4de

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_key_sim_slot"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "arg_key_dialog_title"

    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->i:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 68
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x104000a

    .line 70
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d015d

    .line 72
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 1418
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->e:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v1}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v1

    const v2, 0x7f0a0272

    if-eqz v1, :cond_0

    .line 1419
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v3, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->e:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v3}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 1421
    :cond_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    .line 1165
    :goto_0
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_8

    .line 1461
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;

    invoke-direct {v1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    .line 1169
    iput-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->i:Landroid/telephony/PhoneStateListener;

    .line 1170
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a()V

    .line 1172
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 2231
    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v3, 0x7f0a0479

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 2484
    iget-object v5, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->g:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    invoke-static {v5, v6}, Lcom/android/settingslib/b;->a(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2232
    sget-object v6, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 2231
    invoke-virtual {v4, v5, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 3261
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.bool.config_showAreaUpdateInfoSettings"

    .line 3262
    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3261
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    .line 3263
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->h:Z

    .line 3265
    iget-boolean v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->h:Z

    if-nez v2, :cond_2

    .line 3266
    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v4, 0x7f0a0383

    invoke-virtual {v2, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    .line 3267
    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v4, 0x7f0a0384

    invoke-virtual {v2, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    .line 1175
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a(Landroid/telephony/ServiceState;)V

    .line 3489
    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v2

    .line 1176
    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a(Landroid/telephony/SignalStrength;)V

    .line 1177
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b()V

    .line 1178
    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b(Landroid/telephony/ServiceState;)V

    .line 4400
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 4401
    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->d:Landroid/telephony/CarrierConfigManager;

    .line 4402
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "show_iccid_in_sim_status_bool"

    .line 4406
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    const v4, 0x7f0a030e

    if-nez v2, :cond_4

    .line 4410
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v2, 0x7f0a030d

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    .line 4411
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v1, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    goto :goto_3

    .line 4413
    :cond_4
    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    .line 4494
    iget-object v5, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 4413
    invoke-virtual {v2, v4, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    .line 5426
    :goto_3
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->a:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 5427
    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->d:Landroid/telephony/CarrierConfigManager;

    .line 5428
    invoke-virtual {v2, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const-string v3, "show_ims_registration_status_bool"

    .line 5430
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :goto_4
    const v2, 0x7f0a0329

    if-eqz v3, :cond_7

    .line 5432
    iget-object v3, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v1

    .line 5433
    iget-object v3, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->f:Landroid/content/res/Resources;

    if-eqz v1, :cond_6

    const v1, 0x7f120b08

    goto :goto_5

    :cond_6
    const v1, 0x7f120b07

    :goto_5
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(ILjava/lang/CharSequence;)V

    goto :goto_6

    .line 5436
    :cond_7
    iget-object v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v3, 0x7f0a0328

    invoke-virtual {v1, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    .line 5437
    iget-object v0, v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->b:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a(I)V

    .line 74
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
