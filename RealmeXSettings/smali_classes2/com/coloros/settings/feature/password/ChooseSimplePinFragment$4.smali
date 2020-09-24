.class final Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;
.super Ljava/lang/Object;
.source "ChooseSimplePinFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 370
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 373
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->f(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 374
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    sget-object p2, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;->b:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$a;)V

    .line 375
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->a(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)V

    .line 376
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment$4;->a:Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;->g(Lcom/coloros/settings/feature/password/ChooseSimplePinFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
