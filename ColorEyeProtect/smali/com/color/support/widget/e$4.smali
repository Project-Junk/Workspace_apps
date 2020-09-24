.class Lcom/color/support/widget/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/e;


# direct methods
.method constructor <init>(Lcom/color/support/widget/e;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/e$4;->a:Lcom/color/support/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/color/support/widget/e$4;->a:Lcom/color/support/widget/e;

    iget-object v0, p0, Lcom/color/support/widget/e$4;->a:Lcom/color/support/widget/e;

    invoke-static {v0}, Lcom/color/support/widget/e;->access$100(Lcom/color/support/widget/e;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/color/support/widget/e;->access$102(Lcom/color/support/widget/e;Z)Z

    iget-object p0, p0, Lcom/color/support/widget/e$4;->a:Lcom/color/support/widget/e;

    invoke-static {p0}, Lcom/color/support/widget/e;->access$200(Lcom/color/support/widget/e;)V

    return-void
.end method
