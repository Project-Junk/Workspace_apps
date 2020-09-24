.class public Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "GestureNavigationNotAvailableDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/android/settings/gestures/SystemNavigationGestureSettings;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;

    invoke-direct {v0}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;-><init>()V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "GestureNavigationNotAvailableDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6d3

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/android/settings/gestures/SystemNavigationPreferenceController;->getDefaultHomeAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f120a46

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/gestures/GestureNavigationNotAvailableDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f1b

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
