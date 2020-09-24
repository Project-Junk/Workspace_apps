.class Lcom/color/support/widget/c$a$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/support/widget/c$a;->a()Lcom/color/support/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/color/support/widget/c$a;


# direct methods
.method constructor <init>(Lcom/color/support/widget/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/color/support/widget/c$a$5;->a:Lcom/color/support/widget/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/color/support/widget/c$a$5;->a:Lcom/color/support/widget/c$a;

    invoke-static {p1}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$a;)Lcom/color/support/widget/c;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/c;->b(Lcom/color/support/widget/c;)Lcom/color/support/widget/c$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/c$a$5;->a:Lcom/color/support/widget/c$a;

    invoke-static {p1}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$a;)Lcom/color/support/widget/c;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/c;->b(Lcom/color/support/widget/c;)Lcom/color/support/widget/c$c;

    move-result-object p1

    iget-object p0, p0, Lcom/color/support/widget/c$a$5;->a:Lcom/color/support/widget/c$a;

    invoke-static {p0}, Lcom/color/support/widget/c$a;->b(Lcom/color/support/widget/c$a;)Z

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/color/support/widget/c$c;->onSelected(IZ)V

    :cond_0
    return-void
.end method
