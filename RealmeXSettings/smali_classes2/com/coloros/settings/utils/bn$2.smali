.class final Lcom/coloros/settings/utils/bn$2;
.super Ljava/lang/Object;
.source "VerificationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/bn;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/utils/bn;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/bn;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/coloros/settings/utils/bn$2;->a:Lcom/coloros/settings/utils/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$2;->a:Lcom/coloros/settings/utils/bn;

    .line 1032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/utils/bn$2;->a:Lcom/coloros/settings/utils/bn;

    .line 2032
    iget-object p1, p1, Lcom/coloros/settings/utils/bn;->b:Lcom/coloros/settings/utils/bn$a;

    .line 117
    invoke-interface {p1}, Lcom/coloros/settings/utils/bn$a;->b()V

    :cond_0
    return-void
.end method
