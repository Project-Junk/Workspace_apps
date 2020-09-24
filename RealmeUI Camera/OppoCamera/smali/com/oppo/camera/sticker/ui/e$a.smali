.class public Lcom/oppo/camera/sticker/ui/e$a;
.super Landroidx/recyclerview/widget/RecyclerView$w;
.source "StickerCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/sticker/ui/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public q:Lcom/oppo/camera/ui/RotateImageView;

.field final synthetic r:Lcom/oppo/camera/sticker/ui/e;

.field private s:Lcom/oppo/camera/sticker/ui/g;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/sticker/ui/e;Landroid/view/View;Lcom/oppo/camera/sticker/ui/g;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/oppo/camera/sticker/ui/e$a;->r:Lcom/oppo/camera/sticker/ui/e;

    .line 202
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$w;-><init>(Landroid/view/View;)V

    .line 203
    check-cast p2, Lcom/oppo/camera/ui/RotateImageView;

    iput-object p2, p0, Lcom/oppo/camera/sticker/ui/e$a;->q:Lcom/oppo/camera/ui/RotateImageView;

    .line 204
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/e$a;->q:Lcom/oppo/camera/ui/RotateImageView;

    invoke-virtual {p1, p0}, Lcom/oppo/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iput-object p3, p0, Lcom/oppo/camera/sticker/ui/e$a;->s:Lcom/oppo/camera/sticker/ui/g;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick, clickIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectedIndexInAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/e$a;->r:Lcom/oppo/camera/sticker/ui/e;

    invoke-static {v1}, Lcom/oppo/camera/sticker/ui/e;->a(Lcom/oppo/camera/sticker/ui/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StickerCategoryAdapter"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/e$a;->r:Lcom/oppo/camera/sticker/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/e;->a(Lcom/oppo/camera/sticker/ui/e;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/e$a;->r:Lcom/oppo/camera/sticker/ui/e;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/sticker/ui/e;->e(I)V

    .line 219
    iget-object p1, p0, Lcom/oppo/camera/sticker/ui/e$a;->r:Lcom/oppo/camera/sticker/ui/e;

    invoke-static {p1}, Lcom/oppo/camera/sticker/ui/e;->b(Lcom/oppo/camera/sticker/ui/e;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/e$a;->r:Lcom/oppo/camera/sticker/ui/e;

    invoke-static {v0}, Lcom/oppo/camera/sticker/ui/e;->a(Lcom/oppo/camera/sticker/ui/e;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/sticker/ui/h$a;

    .line 220
    iget-object v0, p0, Lcom/oppo/camera/sticker/ui/e$a;->s:Lcom/oppo/camera/sticker/ui/g;

    iget-object v1, p0, Lcom/oppo/camera/sticker/ui/e$a;->r:Lcom/oppo/camera/sticker/ui/e;

    invoke-static {v1}, Lcom/oppo/camera/sticker/ui/e;->a(Lcom/oppo/camera/sticker/ui/e;)I

    move-result v1

    iget-object p1, p1, Lcom/oppo/camera/sticker/ui/h$a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/oppo/camera/sticker/ui/g;->a(ILjava/lang/String;Z)V

    return-void
.end method
