.class final Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$3;
.super Ljava/lang/Object;
.source "ChooseSimplePinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$3;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$3;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$3;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$3;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->e(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
