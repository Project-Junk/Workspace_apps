.class Lcom/color/support/widget/c$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/c$a;
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

    iput-object p1, p0, Lcom/color/support/widget/c$a$1;->a:Lcom/color/support/widget/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/c$a$1;->a:Lcom/color/support/widget/c$a;

    invoke-static {p1}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$a;)Lcom/color/support/widget/c;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/c;->a(Lcom/color/support/widget/c;)Lcolor/support/v7/app/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/c$a$1;->a:Lcom/color/support/widget/c$a;

    invoke-static {p1}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$a;)Lcom/color/support/widget/c;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/c;->a(Lcom/color/support/widget/c;)Lcolor/support/v7/app/b;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/support/widget/c$a$1;->a:Lcom/color/support/widget/c$a;

    invoke-static {p1}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$a;)Lcom/color/support/widget/c;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/c;->b(Lcom/color/support/widget/c;)Lcom/color/support/widget/c$c;

    move-result-object p1

    const/4 p2, -0x2

    iget-object p0, p0, Lcom/color/support/widget/c$a$1;->a:Lcom/color/support/widget/c$a;

    invoke-static {p0}, Lcom/color/support/widget/c$a;->b(Lcom/color/support/widget/c$a;)Z

    move-result p0

    invoke-interface {p1, p2, p0}, Lcom/color/support/widget/c$c;->onSelected(IZ)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
