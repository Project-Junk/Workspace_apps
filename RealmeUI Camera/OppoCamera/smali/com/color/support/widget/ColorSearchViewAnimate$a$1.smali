.class Lcom/color/support/widget/ColorSearchViewAnimate$a$1;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSearchViewAnimate$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/ColorSearchViewAnimate$a;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate$a;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$a$1;->a:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 965
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$a$1;->a:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$a;->a:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->b(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    .line 968
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$a$1;->a:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$a;->a:Lcom/color/support/widget/ColorSearchViewAnimate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->a(Z)V

    .line 970
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$a$1;->a:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$a;->a:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->d(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$a$1;->a:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$a;->a:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->d(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$b;->a(I)V

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$a$1;->a:Lcom/color/support/widget/ColorSearchViewAnimate$a;

    iget-object v0, v0, Lcom/color/support/widget/ColorSearchViewAnimate$a;->a:Lcom/color/support/widget/ColorSearchViewAnimate;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->a(Lcom/color/support/widget/ColorSearchViewAnimate;II)V

    return-void
.end method
