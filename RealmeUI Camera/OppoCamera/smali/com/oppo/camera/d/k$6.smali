.class Lcom/oppo/camera/d/k$6;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Lcom/oppo/camera/sticker/ui/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/d/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/d/k;


# direct methods
.method constructor <init>(Lcom/oppo/camera/d/k;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "StickerMode"

    const-string v1, "afterEnterAnimator"

    .line 189
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oppo/camera/ui/c;->e(ZZ)V

    .line 192
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    const-string v1, "sticker_mode_click_sticker_menu"

    const-string v2, "1"

    .line 193
    invoke-static {v1, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "menuClick"

    const/4 v3, 0x0

    .line 192
    invoke-static {v0, v2, v1, v3}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    const-string v1, "sticker_menu_catergory_fling"

    invoke-static {v0, v1, p1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const-string v0, "StickerMode"

    const-string v1, "beforeEnterAnimator"

    .line 163
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    .line 166
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    .line 167
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 168
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZZ)V

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v2}, Lcom/oppo/camera/ui/c;->f(ZZ)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1, v1}, Lcom/oppo/camera/ui/c;->f(ZZ)V

    .line 176
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/d/b;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 180
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    const-string v0, "key_bubble_sticker"

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/k;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 181
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x3

    invoke-interface {p1, v0, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-static {p1, v1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Lcom/oppo/camera/sticker/data/StickerItem;I)Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0, p1, p2, p3}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Landroid/view/View;Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/oppo/camera/sticker/data/StickerItem;I)Z
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0, p1, p2}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Lcom/oppo/camera/sticker/data/StickerItem;I)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v1}, Lcom/oppo/camera/ui/c;->g(ZZ)V

    .line 200
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->w()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    const-string v1, "sticker_menu_catergory_click"

    invoke-static {v0, v1, p1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 221
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->d(I)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0, v0}, Lcom/oppo/camera/ui/c;->g(ZZ)V

    .line 225
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->w()V

    .line 227
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v0}, Lcom/oppo/camera/d/b;->c(Z)V

    .line 231
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object p1, p1, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0, v0}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-virtual {v0}, Lcom/oppo/camera/d/k;->aB()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-virtual {v0}, Lcom/oppo/camera/d/k;->bq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1, v1}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->c(Z)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Lcom/oppo/camera/sticker/data/StickerItem;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-static {v0}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v1, v1, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->i()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_3

    .line 276
    iget-object v1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v1, v1, Lcom/oppo/camera/d/k;->N:Landroid/app/Activity;

    invoke-static {v1}, Lcom/oppo/camera/ui/preview/a/h;->b(Landroid/content/Context;)Lcom/oppo/camera/ui/preview/a/h;

    move-result-object v1

    .line 277
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/preview/a/h;->a(Ljava/lang/String;)Z

    move-result v2

    .line 281
    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v3, v3, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    .line 283
    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v3, v3, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/a/i;->c()V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v3, v3, Lcom/oppo/camera/d/k;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v3}, Lcom/oppo/camera/ui/preview/a/i;->b()V

    :cond_2
    :goto_0
    xor-int/lit8 v2, v2, 0x1

    .line 289
    invoke-virtual {v1, v0, v2}, Lcom/oppo/camera/ui/preview/a/h;->a(Ljava/lang/String;Z)V

    .line 290
    iget-object v1, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    invoke-static {v1}, Lcom/oppo/camera/d/k;->a(Lcom/oppo/camera/d/k;)Lcom/oppo/camera/sticker/ui/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/sticker/ui/h;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "StickerMode"

    const-string v1, "onMusicButtonClick, non selected stickerItem!"

    .line 292
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public g()Z
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->s()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    .line 303
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->v()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    .line 304
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->u()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v0, v0, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    .line 305
    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->n()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-boolean v0, v0, Lcom/oppo/camera/d/k;->q:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    .line 307
    invoke-virtual {v0}, Lcom/oppo/camera/d/k;->bZ()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    .line 308
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canItemClick, !mCameraInterface.isDoubleFinger: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v3, v3, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->s()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mCameraInterface.getCaptureModeChangeState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v3, v3, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    .line 309
    invoke-interface {v3}, Lcom/oppo/camera/d/b;->v()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mCameraUIInterface.isAnimationRunning: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v3, v3, Lcom/oppo/camera/d/k;->M:Lcom/oppo/camera/ui/c;

    .line 310
    invoke-interface {v3}, Lcom/oppo/camera/ui/c;->n()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isVideoRecordStopped: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    .line 311
    invoke-virtual {v3}, Lcom/oppo/camera/d/k;->bZ()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mbInCapturing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-boolean v3, v3, Lcom/oppo/camera/d/k;->q:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", !mCameraInterface.getSwitchingCameraState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/k$6;->a:Lcom/oppo/camera/d/k;

    iget-object v3, v3, Lcom/oppo/camera/d/k;->L:Lcom/oppo/camera/d/b;

    .line 312
    invoke-interface {v3}, Lcom/oppo/camera/d/b;->u()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StickerMode"

    .line 308
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
