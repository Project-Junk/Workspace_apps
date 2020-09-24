.class public Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaryWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings;->b(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$Vph29jWqQStIl4lSJEQvrWeqs1c(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$x8QVYzOR7T7QJKoGOjDFwswC8hE(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->a(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;Ljava/lang/String;Landroidx/fragment/app/Fragment;)Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;
    .locals 2

    .line 202
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "c"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "l"

    .line 204
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 206
    invoke-virtual {p0, p3, p1}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x22d

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "l"

    .line 213
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    .line 215
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/utils/ManagedServiceSettings;

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v3

    iget v3, v3, Lcom/android/settings/utils/ManagedServiceSettings$a;->f:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1}, Lcom/android/settings/utils/ManagedServiceSettings;->a(Lcom/android/settings/utils/ManagedServiceSettings;)Lcom/android/settings/utils/ManagedServiceSettings$a;

    move-result-object v5

    iget v5, v5, Lcom/android/settings/utils/ManagedServiceSettings$a;->g:I

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v6

    invoke-virtual {v3, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    invoke-virtual {v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$x8QVYzOR7T7QJKoGOjDFwswC8hE;

    invoke-direct {v2, v1, p1}, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$x8QVYzOR7T7QJKoGOjDFwswC8hE;-><init>(Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;)V

    const p1, 0x7f12013d

    .line 225
    invoke-virtual {v0, p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$Vph29jWqQStIl4lSJEQvrWeqs1c;->INSTANCE:Lcom/android/settings/utils/-$$Lambda$ManagedServiceSettings$ScaryWarningDialogFragment$Vph29jWqQStIl4lSJEQvrWeqs1c;

    const v1, 0x7f120758

    .line 227
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
