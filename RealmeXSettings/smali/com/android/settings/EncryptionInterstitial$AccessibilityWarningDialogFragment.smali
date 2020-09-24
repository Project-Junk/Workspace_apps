.class public Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;
    .locals 3

    .line 231
    new-instance v0, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;-><init>()V

    .line 232
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "extra_password_quality"

    .line 233
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {v0, v1}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x245

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    .line 292
    invoke-static {p1, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V

    .line 293
    invoke-virtual {p1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a()V

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 295
    invoke-static {p1, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->a(Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;Z)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_password_quality"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/high16 v0, 0x10000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x20000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x30000

    if-eq p1, v0, :cond_0

    const p1, 0x7f1208d9

    const v0, 0x7f1208d6

    goto :goto_0

    :cond_0
    const p1, 0x7f1208db

    const v0, 0x7f1208d8

    goto :goto_0

    :cond_1
    const p1, 0x7f1208da

    const v0, 0x7f1208d7

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 261
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    const/4 v3, -0x1

    .line 262
    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v2

    .line 265
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v2, ""

    goto :goto_1

    .line 269
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 270
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 272
    :goto_1
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    invoke-virtual {v3, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v4

    .line 274
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/EncryptionInterstitial$AccessibilityWarningDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 276
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 277
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
