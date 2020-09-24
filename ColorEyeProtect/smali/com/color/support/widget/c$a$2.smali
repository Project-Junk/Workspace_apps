.class Lcom/color/support/widget/c$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/support/widget/a$a;


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

    iput-object p1, p0, Lcom/color/support/widget/c$a$2;->a:Lcom/color/support/widget/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/color/support/widget/c$a$2;->a:Lcom/color/support/widget/c$a;

    invoke-static {v0}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$a;)Lcom/color/support/widget/c;

    move-result-object v0

    invoke-static {v0}, Lcom/color/support/widget/c;->f(Lcom/color/support/widget/c;)Lcom/color/support/widget/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/color/support/widget/c$a$2;->a:Lcom/color/support/widget/c$a;

    invoke-static {p0}, Lcom/color/support/widget/c$a;->a(Lcom/color/support/widget/c$a;)Lcom/color/support/widget/c;

    move-result-object p0

    invoke-static {p0}, Lcom/color/support/widget/c;->f(Lcom/color/support/widget/c;)Lcom/color/support/widget/c$b;

    move-result-object p0

    invoke-interface {p0}, Lcom/color/support/widget/c$b;->a()V

    :cond_0
    return-void
.end method
