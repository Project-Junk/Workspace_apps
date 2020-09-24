.class final Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$3;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;Ljava/lang/String;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$3;->b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    iput-object p2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 512
    iget-object p1, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$3;->b:Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;

    iget-object p2, p0, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment$3;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;->a(Lcom/coloros/settings/feature/password/ChooseComplexPasswordFragment;Ljava/lang/String;)V

    return-void
.end method
