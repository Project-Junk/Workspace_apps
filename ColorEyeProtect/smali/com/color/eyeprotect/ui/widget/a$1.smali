.class Lcom/color/eyeprotect/ui/widget/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/eyeprotect/ui/widget/a;->a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/color/eyeprotect/ui/widget/a;


# direct methods
.method constructor <init>(Lcom/color/eyeprotect/ui/widget/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/ui/widget/a$1;->b:Lcom/color/eyeprotect/ui/widget/a;

    iput p2, p0, Lcom/color/eyeprotect/ui/widget/a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/a$1;->b:Lcom/color/eyeprotect/ui/widget/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/color/eyeprotect/ui/widget/a;->a(Lcom/color/eyeprotect/ui/widget/a;Z)Z

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/a$1;->b:Lcom/color/eyeprotect/ui/widget/a;

    iget v1, p0, Lcom/color/eyeprotect/ui/widget/a$1;->a:I

    invoke-static {v0, v1}, Lcom/color/eyeprotect/ui/widget/a;->a(Lcom/color/eyeprotect/ui/widget/a;I)I

    iget-object v0, p0, Lcom/color/eyeprotect/ui/widget/a$1;->b:Lcom/color/eyeprotect/ui/widget/a;

    iget p0, p0, Lcom/color/eyeprotect/ui/widget/a$1;->a:I

    invoke-virtual {v0, p0}, Lcom/color/eyeprotect/ui/widget/a;->d(I)V

    return-void
.end method
