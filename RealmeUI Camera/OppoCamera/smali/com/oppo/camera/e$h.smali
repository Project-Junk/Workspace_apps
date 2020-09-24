.class public Lcom/oppo/camera/e$h;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/preview/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:Z

.field private c:Z

.field private d:Landroid/util/Size;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/oppo/camera/e;)V
    .locals 1

    .line 8108
    iput-object p1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 8109
    iput-boolean p1, p0, Lcom/oppo/camera/e$h;->b:Z

    .line 8110
    iput-boolean p1, p0, Lcom/oppo/camera/e$h;->c:Z

    const/4 v0, 0x0

    .line 8111
    iput-object v0, p0, Lcom/oppo/camera/e$h;->d:Landroid/util/Size;

    .line 8112
    iput p1, p0, Lcom/oppo/camera/e$h;->e:I

    .line 8113
    iput p1, p0, Lcom/oppo/camera/e$h;->f:I

    return-void
.end method

.method private e()Z
    .locals 3

    .line 8118
    iget v0, p0, Lcom/oppo/camera/e$h;->e:I

    invoke-static {v0}, Lcom/oppo/camera/o/d;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8120
    :cond_0
    iget v0, p0, Lcom/oppo/camera/e$h;->e:I

    invoke-static {v0}, Lcom/oppo/camera/o/d;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8121
    invoke-static {}, Lcom/oppo/camera/o/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/e$h;->e:I

    iget v2, p0, Lcom/oppo/camera/e$h;->f:I

    .line 8122
    invoke-static {v0, v2}, Lcom/oppo/camera/o/d;->c(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/e$h;->f:I

    .line 8123
    invoke-static {v0}, Lcom/oppo/camera/o/d;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 8202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch camera mode, onAnimationEnd, mbCancle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e$h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8204
    iget-boolean v0, p0, Lcom/oppo/camera/e$h;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 8208
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 8209
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aW(Lcom/oppo/camera/e;)Lcom/oppo/camera/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/q;->b(Z)V

    .line 8212
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/e$h;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8213
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    iget-object v2, p0, Lcom/oppo/camera/e$h;->d:Landroid/util/Size;

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 8214
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget v2, p0, Lcom/oppo/camera/e$h;->e:I

    iget v3, p0, Lcom/oppo/camera/e$h;->f:I

    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/ui/e;->d(II)V

    .line 8217
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->f(Z)V

    .line 8218
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->k(Z)V

    .line 8220
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->c(I)V

    .line 8222
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8223
    iput-boolean v2, p0, Lcom/oppo/camera/e$h;->b:Z

    return-void

    .line 8227
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aW()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aQ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8228
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8229
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->g(Z)V

    goto :goto_0

    .line 8231
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 8232
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->g(Z)V

    .line 8235
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->i(Z)V

    .line 8236
    iput-boolean v2, p0, Lcom/oppo/camera/e$h;->b:Z

    .line 8238
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8239
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/e$h;->b()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/d/i;->a(IZ)V

    return-void
.end method

.method public a(Landroid/util/Size;)V
    .locals 4

    const-string p1, "CameraManager"

    const-string v0, "switch camera mode, onAnimationStart"

    .line 8132
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 8134
    iput-boolean p1, p0, Lcom/oppo/camera/e$h;->b:Z

    const/4 v0, 0x0

    .line 8135
    iput-boolean v0, p0, Lcom/oppo/camera/e$h;->c:Z

    .line 8137
    iget-object v1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    .line 8138
    invoke-static {v2}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/entry/b;->r()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_mode_key"

    .line 8137
    invoke-virtual {v1, v3, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8139
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oppo/camera/d/i;->a(Ljava/lang/String;)Lcom/oppo/camera/d/a;

    move-result-object v1

    const-string v2, "pref_filter_process_key"

    .line 8141
    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8142
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 8145
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/ui/e;->w()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8146
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2, v0, p1, v0}, Lcom/oppo/camera/ui/e;->b(ZZZ)V

    :cond_2
    const-string v2, "func_face_beauty_process"

    .line 8149
    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 8150
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v2, p1, p1, v0, v0}, Lcom/oppo/camera/ui/e;->a(ZZZZ)V

    :cond_3
    const-string v2, "pref_zoom_key"

    .line 8153
    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "pref_expand_popbar_key"

    .line 8154
    invoke-virtual {v1, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 8156
    :cond_4
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/x;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 8157
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-virtual {v2}, Lcom/oppo/camera/e;->am()V

    goto :goto_2

    .line 8155
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 8160
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/oppo/camera/d/i;->a(IZ)V

    .line 8161
    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Lcom/oppo/camera/ui/e;->c(Ljava/lang/String;Z)V

    .line 8162
    iget-object v1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v1, p1, v0, p1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;ZZZ)V

    return-void
.end method

.method public a(Landroid/util/Size;Landroid/util/Size;)V
    .locals 4

    .line 8167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch camera mode, onAnimationMiddle, mbCancle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e$h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fromSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 8168
    invoke-virtual {p1}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 8169
    invoke-virtual {p2}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    .line 8167
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8171
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oppo/camera/d/i;->d()Lcom/oppo/camera/ui/control/c;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    .line 8172
    invoke-static {v3}, Lcom/oppo/camera/e;->aY(Lcom/oppo/camera/e;)Z

    move-result v3

    .line 8171
    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;Lcom/oppo/camera/ui/control/c;Z)V

    .line 8173
    iput-object p2, p0, Lcom/oppo/camera/e$h;->d:Landroid/util/Size;

    if-eqz p2, :cond_2

    .line 8176
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/e$h;->f:I

    :cond_2
    if-eqz p1, :cond_3

    .line 8180
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/oppo/camera/o/d;->b(II)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/e$h;->e:I

    .line 8183
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/e$h;->e()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 8184
    iget-object p1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/e;->a(Landroid/util/Size;Z)V

    .line 8185
    iget-object p1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget p2, p0, Lcom/oppo/camera/e$h;->e:I

    iget v1, p0, Lcom/oppo/camera/e$h;->f:I

    invoke-virtual {p1, p2, v1}, Lcom/oppo/camera/ui/e;->d(II)V

    .line 8188
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string p2, "pref_zoom_key"

    invoke-virtual {p1, p2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    .line 8189
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    const-string p2, "pref_expand_popbar_key"

    invoke-virtual {p1, p2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 8190
    iget-object p1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1}, Lcom/oppo/camera/e;->al()V

    .line 8191
    iget-object p1, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/e;->x(Z)V

    :cond_5
    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 3

    const-string v0, "CameraManager"

    const-string v1, "switch camera mode, cancleAnimation"

    .line 8243
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8245
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->k(Z)V

    .line 8246
    iget-object v0, p0, Lcom/oppo/camera/e$h;->a:Lcom/oppo/camera/e;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/oppo/camera/e;->c(I)V

    const/4 v0, 0x1

    .line 8247
    iput-boolean v0, p0, Lcom/oppo/camera/e$h;->c:Z

    .line 8248
    iput-boolean v1, p0, Lcom/oppo/camera/e$h;->b:Z

    return-void
.end method

.method public d()Z
    .locals 2

    .line 8252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch camera mode, isAnimationRunning, mbRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e$h;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8254
    iget-boolean v0, p0, Lcom/oppo/camera/e$h;->b:Z

    return v0
.end method
