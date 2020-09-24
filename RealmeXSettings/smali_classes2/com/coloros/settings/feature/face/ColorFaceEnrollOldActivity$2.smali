.class final Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;
.super Ljava/lang/Object;
.source "ColorFaceEnrollOldActivity.java"

# interfaces
.implements Lcom/coloros/settings/feature/face/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 475
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->f(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 477
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z

    :cond_0
    return-void
.end method
