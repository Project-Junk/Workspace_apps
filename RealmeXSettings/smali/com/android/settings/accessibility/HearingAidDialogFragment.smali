.class public Lcom/android/settings/accessibility/HearingAidDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "HearingAidDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/android/settings/accessibility/HearingAidDialogFragment;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/settings/accessibility/HearingAidDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/accessibility/HearingAidDialogFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/accessibility/HearingAidDialogFragment;)V
    .locals 1

    .line 1061
    new-instance v0, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    .line 1062
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 v0, 0x2

    .line 1063
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e8

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 39
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120067

    .line 40
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120068

    .line 41
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accessibility/HearingAidDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HearingAidDialogFragment$2;-><init>(Lcom/android/settings/accessibility/HearingAidDialogFragment;)V

    const v1, 0x7f120065

    .line 42
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/accessibility/HearingAidDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/HearingAidDialogFragment$1;-><init>(Lcom/android/settings/accessibility/HearingAidDialogFragment;)V

    const/high16 v1, 0x1040000

    .line 48
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
