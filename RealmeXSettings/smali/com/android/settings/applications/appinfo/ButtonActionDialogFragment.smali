.class public Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ButtonActionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$a;
    }
.end annotation


# instance fields
.field a:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;
    .locals 3

    .line 70
    new-instance v0, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;-><init>()V

    .line 71
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "id"

    .line 72
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x22e

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$a;

    .line 111
    iget p2, p0, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->a:I

    invoke-interface {p1, p2}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$a;->a(I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->a:I

    .line 89
    iget p1, p0, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->a:I

    .line 1115
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120818

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120a21

    .line 1129
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120a20

    .line 1130
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f65

    .line 1131
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1132
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1133
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 1119
    :cond_1
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1207e2

    .line 1121
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1201bc

    .line 1123
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1201bb

    .line 1124
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1125
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1126
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    return-object v2

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/app/AlertDialog;

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method
