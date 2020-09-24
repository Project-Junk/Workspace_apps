.class final Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmComplexPasswordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Lcom/android/settings/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/b/a;->c()V

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 202
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setFocusable(Z)V

    .line 203
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    iget-object v0, v0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorEditText;->setFocusableInTouchMode(Z)V

    .line 204
    iget-object v0, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->b(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)V

    .line 205
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment$1;->a:Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;->c(Lcom/coloros/settings/feature/password/ConfirmComplexPasswordFragment;)Z

    return-void
.end method
