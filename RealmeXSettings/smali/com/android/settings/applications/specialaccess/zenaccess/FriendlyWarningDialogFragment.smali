.class public Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FriendlyWarningDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$WzKrjQwt7J1mdOC86Yn90qg0HBM(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->a(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$_BTOV0FHCxiA0DgOCXA9x93sDIc(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x22b

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "p"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l"

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f121abd

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f121abc

    .line 60
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v3, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$WzKrjQwt7J1mdOC86Yn90qg0HBM;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$WzKrjQwt7J1mdOC86Yn90qg0HBM;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Ljava/lang/String;)V

    const v0, 0x7f120f1b

    .line 65
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$_BTOV0FHCxiA0DgOCXA9x93sDIc;->INSTANCE:Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$FriendlyWarningDialogFragment$_BTOV0FHCxiA0DgOCXA9x93sDIc;

    const v1, 0x7f120491

    .line 70
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
