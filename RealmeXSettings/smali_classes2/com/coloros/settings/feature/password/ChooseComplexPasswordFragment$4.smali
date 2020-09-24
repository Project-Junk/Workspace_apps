.class final Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$4;
.super Ljava/lang/Object;
.source "ChooseComplexPasswordFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 502
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$4;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 505
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$4;->a:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    return-void
.end method
