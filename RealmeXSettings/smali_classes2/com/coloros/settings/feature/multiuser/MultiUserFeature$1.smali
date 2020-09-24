.class final Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;
.super Ljava/lang/Object;
.source "MultiUserFeature.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->showAddUserDialog(Lcom/android/settings/users/UserSettings;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/FragmentActivity;

.field final synthetic b:Lcolor/support/v7/app/AlertDialog;

.field final synthetic c:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Landroidx/fragment/app/FragmentActivity;Lcolor/support/v7/app/AlertDialog;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->c:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->a:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->b:Lcolor/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->c:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->access$002(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Ljava/lang/String;)Ljava/lang/String;

    .line 321
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->c:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->access$000(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 323
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->c:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->access$000(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->c:Lcom/coloros/settings/feature/multiuser/MultiUserFeature;

    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->a:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f12183c

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->access$100(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 327
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->a:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->b:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;->b:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
