.class Lcom/oppo/camera/ui/menu/a/g$2;
.super Ljava/lang/Object;
.source "FaceBeautyMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/camera/ui/menu/a/g;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/menu/a/g;


# direct methods
.method constructor <init>(Lcom/oppo/camera/ui/menu/a/g;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 303
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/a/g;->c(Lcom/oppo/camera/ui/menu/a/g;)Lcom/oppo/camera/ui/menu/a/e;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    .line 304
    invoke-static {p2}, Lcom/oppo/camera/ui/menu/a/g;->e(Lcom/oppo/camera/ui/menu/a/g;)Lcom/oppo/camera/ui/menu/a/g$a;

    move-result-object p2

    invoke-interface {p2}, Lcom/oppo/camera/ui/menu/a/g$a;->e()[I

    move-result-object p2

    const v0, -0x186a0

    .line 303
    invoke-virtual {p1, v0, p2}, Lcom/oppo/camera/ui/menu/a/e;->a(I[I)V

    .line 305
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/a/g;->e(Lcom/oppo/camera/ui/menu/a/g;)Lcom/oppo/camera/ui/menu/a/g$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/menu/a/g$a;->a()V

    .line 306
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/a/g;->c(Lcom/oppo/camera/ui/menu/a/g;)Lcom/oppo/camera/ui/menu/a/e;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/a/e;->b(Z)V

    .line 307
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/a/g;->f(Lcom/oppo/camera/ui/menu/a/g;)Lcolor/support/v7/app/b;

    move-result-object p1

    invoke-virtual {p1}, Lcolor/support/v7/app/b;->cancel()V

    .line 308
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    invoke-static {p1}, Lcom/oppo/camera/ui/menu/a/g;->g(Lcom/oppo/camera/ui/menu/a/g;)I

    .line 310
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/a/g$2;->a:Lcom/oppo/camera/ui/menu/a/g;

    invoke-static {p1, p2}, Lcom/oppo/camera/ui/menu/a/g;->a(Lcom/oppo/camera/ui/menu/a/g;Z)V

    return-void
.end method
