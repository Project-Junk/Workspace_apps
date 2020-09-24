.class final Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;
.super Ljava/lang/Object;
.source "ChooseComplexPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 297
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->b(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 299
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$2;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
