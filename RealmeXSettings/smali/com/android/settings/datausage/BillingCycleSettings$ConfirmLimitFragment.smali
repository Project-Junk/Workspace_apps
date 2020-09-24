.class public Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 4

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->e:Lcom/android/settings/datausage/g$a;

    iget-object v0, v0, Lcom/android/settings/datausage/g$a;->g:Lcom/android/settingslib/d;

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings;->a:Landroid/net/NetworkTemplate;

    .line 428
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getResources()Landroid/content/res/Resources;

    .line 432
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    const-wide v2, 0x140000000L

    .line 436
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 438
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "limitBytes"

    .line 439
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 441
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;

    invoke-direct {v0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;-><init>()V

    .line 442
    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    .line 443
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "confirmLimit"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x227

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/BillingCycleSettings;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "limitBytes"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->a(J)V

    .line 471
    invoke-virtual {p1}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "set_data_limit"

    .line 472
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 456
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1206db

    .line 457
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1206da

    .line 458
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 459
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 460
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
