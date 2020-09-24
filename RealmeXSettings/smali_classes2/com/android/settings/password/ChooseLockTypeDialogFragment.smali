.class public Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ChooseLockTypeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;,
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;

.field private b:Lcom/android/settings/password/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;
    .locals 2

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "userId"

    .line 61
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    new-instance p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;-><init>()V

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method static synthetic a(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1097
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3de

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 112
    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 116
    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;

    if-eqz v0, :cond_1

    .line 117
    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->a:Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;

    invoke-virtual {v0, p2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/password/f;

    invoke-interface {p1, p2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$a;->a(Lcom/android/settings/password/f;)V

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 105
    new-instance v0, Lcom/android/settings/password/a;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/password/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->b:Lcom/android/settings/password/a;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->b:Lcom/android/settings/password/a;

    .line 130
    invoke-virtual {v1}, Lcom/android/settings/password/a;->a()Ljava/util/List;

    move-result-object v1

    .line 133
    new-instance v2, Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->b:Lcom/android/settings/password/a;

    invoke-direct {v2, p1, v1, v3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/a;)V

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->a:Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;

    .line 134
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->a:Lcom/android/settings/password/ChooseLockTypeDialogFragment$b;

    invoke-virtual {v0, p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f121463

    .line 135
    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
