.class Lcom/color/eyeprotect/ui/widget/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/eyeprotect/ui/widget/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/color/eyeprotect/ui/widget/a;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/ui/widget/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ui/widget/a$2;->b:Lcom/color/eyeprotect/ui/widget/a;

    iput-object p2, p0, Lcom/color/eyeprotect/ui/widget/a$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/a$2;->b:Lcom/color/eyeprotect/ui/widget/a;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/ui/widget/a;->a(Lcom/color/eyeprotect/ui/widget/a;I)I

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/a$2;->b:Lcom/color/eyeprotect/ui/widget/a;

    iget-object p0, p0, Lcom/color/eyeprotect/ui/widget/a$2;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/color/eyeprotect/ui/widget/a;->a(Lcom/color/eyeprotect/ui/widget/a;Landroid/view/View;Z)V

    return-void
.end method
