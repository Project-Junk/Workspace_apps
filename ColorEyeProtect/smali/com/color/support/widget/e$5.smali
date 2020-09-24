.class Lcom/color/support/widget/e$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/support/widget/ColorNumberPicker$e;


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

    iput-object p1, p0, Lcom/color/support/widget/e$5;->a:Lcom/color/support/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/color/support/widget/ColorNumberPicker;II)V
    .locals 0

    invoke-virtual {p1}, Lcom/color/support/widget/ColorNumberPicker;->requestFocus()Z

    iget-object p1, p0, Lcom/color/support/widget/e$5;->a:Lcom/color/support/widget/e;

    iget-object p2, p0, Lcom/color/support/widget/e$5;->a:Lcom/color/support/widget/e;

    invoke-static {p2}, Lcom/color/support/widget/e;->access$100(Lcom/color/support/widget/e;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/color/support/widget/e;->access$102(Lcom/color/support/widget/e;Z)Z

    iget-object p1, p0, Lcom/color/support/widget/e$5;->a:Lcom/color/support/widget/e;

    invoke-static {p1}, Lcom/color/support/widget/e;->access$200(Lcom/color/support/widget/e;)V

    iget-object p0, p0, Lcom/color/support/widget/e$5;->a:Lcom/color/support/widget/e;

    invoke-static {p0}, Lcom/color/support/widget/e;->access$000(Lcom/color/support/widget/e;)V

    return-void
.end method
