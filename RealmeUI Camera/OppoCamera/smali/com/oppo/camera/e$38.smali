.class Lcom/oppo/camera/e$38;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Lcom/oppo/camera/ui/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;)V
    .locals 0

    .line 9948
    iput-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 10505
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10506
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/x;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public B()[I
    .locals 1

    .line 10514
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10515
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aW()[I

    move-result-object v0

    return-object v0

    .line 10517
    :cond_0
    sget-object v0, Lcom/oppo/camera/c;->e:[I

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 10522
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10523
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public D()Z
    .locals 1

    .line 10531
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10532
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aX()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public E()V
    .locals 1

    .line 10547
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10548
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->E()V

    :cond_0
    return-void
.end method

.method public F()Z
    .locals 1

    .line 10553
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->J(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public G()I
    .locals 1

    .line 10558
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bB(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public H()V
    .locals 1

    .line 10563
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->ac(Lcom/oppo/camera/e;)Lcom/oppo/camera/x;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10564
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->af(Lcom/oppo/camera/e;)V

    :cond_0
    return-void
.end method

.method public I()Z
    .locals 1

    .line 10570
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->aY(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 10155
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0, p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eq p2, p3, :cond_0

    .line 10156
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lcom/oppo/camera/ui/e;->l(ZZ)V

    .line 10157
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/e;->i(Z)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 10014
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0, p1}, Lcom/oppo/camera/e;->f(Lcom/oppo/camera/e;I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 10269
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10270
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/preview/h;->a(II)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    .line 10482
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10483
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/oppo/camera/d/i;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/RotateImageView;)V
    .locals 1

    .line 10262
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10263
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/RotateImageView;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 9951
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 9966
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_videoflashmode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 9967
    invoke-static {p1}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 2

    .line 10141
    iget-object p2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p2, p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;Ljava/lang/String;)Z

    move-result p2

    const-string v0, "pref_camera_torch_mode_key"

    .line 10143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bF(Lcom/oppo/camera/e;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10144
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object p1

    const-string v0, "pref_camera_hdr_mode_key"

    const-string v1, "off"

    .line 10145
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10146
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10147
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->d(Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;ZZ)Z
    .locals 4

    .line 10078
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10079
    invoke-static {v0}, Lcom/oppo/camera/e;->U(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10080
    invoke-static {v0}, Lcom/oppo/camera/e;->bD(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10081
    invoke-static {v0}, Lcom/oppo/camera/e;->bE(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10082
    invoke-virtual {v0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10083
    invoke-static {v0}, Lcom/oppo/camera/e;->L(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10084
    invoke-static {v0}, Lcom/oppo/camera/e;->J(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10085
    invoke-virtual {v0}, Lcom/oppo/camera/e;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10086
    invoke-static {v0}, Lcom/oppo/camera/e;->T(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10087
    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->aB()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10088
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10089
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v2, "pref_burst_shot_key"

    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->q(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10090
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/e$38;->r()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10091
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aq()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10092
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->at()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10113
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->a()Z

    move-result v2

    iget-object v3, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10114
    invoke-static {v3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/ui/e;->m()Z

    move-result v3

    .line 10113
    invoke-static {v0, p1, p2, v2, v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Ljava/lang/String;ZZZ)V

    .line 10116
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0, p1}, Lcom/oppo/camera/e;->e(Lcom/oppo/camera/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10117
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0, p1}, Lcom/oppo/camera/e;->f(Lcom/oppo/camera/e;Ljava/lang/String;)V

    :cond_2
    if-nez p3, :cond_3

    .line 10120
    iget-object p3, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oppo/camera/ui/e;->y()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "pref_subsetting_key"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 10121
    iget-object p3, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p3}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oppo/camera/ui/e;->z()V

    :cond_3
    if-eqz p2, :cond_4

    .line 10124
    iget-object p2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oppo/camera/ui/e;->m()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p2, p1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 10125
    iget-object p2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p2

    invoke-virtual {p2, v1, v1}, Lcom/oppo/camera/ui/e;->l(ZZ)V

    .line 10126
    iget-object p2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/oppo/camera/ui/e;->i(Z)V

    .line 10129
    :cond_4
    iget-object p2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p2}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/e;->k(Ljava/lang/String;)V

    return v1

    .line 10093
    :cond_5
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onMenuButtonClick, key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mbPaused: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10094
    invoke-static {p1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !mbDoubleFinger: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10095
    invoke-static {p1}, Lcom/oppo/camera/e;->U(Lcom/oppo/camera/e;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !mbInitialized: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10096
    invoke-static {p1}, Lcom/oppo/camera/e;->bD(Lcom/oppo/camera/e;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !mbFrameAvailable: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10097
    invoke-static {p1}, Lcom/oppo/camera/e;->bE(Lcom/oppo/camera/e;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !isPreviewStarted: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10098
    invoke-virtual {p1}, Lcom/oppo/camera/e;->O()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbSizeChanging: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10099
    invoke-static {p1}, Lcom/oppo/camera/e;->L(Lcom/oppo/camera/e;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", CaptureModeChangeState: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10100
    invoke-static {p1}, Lcom/oppo/camera/e;->J(Lcom/oppo/camera/e;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isAnimationRunning: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10101
    invoke-virtual {p1}, Lcom/oppo/camera/e;->d()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbSwitchingCamera: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10102
    invoke-static {p1}, Lcom/oppo/camera/e;->T(Lcom/oppo/camera/e;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isEffectMenuScrolling: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10103
    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/e;->aB()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", !mModeManager.isAllowSwitch: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10104
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->G()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mbBurstShot: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10105
    invoke-static {p1}, Lcom/oppo/camera/e;->q(Lcom/oppo/camera/e;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isTimerSnapShotRunning: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10106
    invoke-virtual {p0}, Lcom/oppo/camera/e$38;->r()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mModeManager.isVideoRecordStarting: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10107
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->aq()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mModeManager.isVideoRecordStopping: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10108
    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->at()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraManager"

    .line 10093
    invoke-static {p2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    .line 9956
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/f;->a()V

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 10024
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10025
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->e(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 9976
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 1

    .line 9961
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->C()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 10276
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10277
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->f(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 10051
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10052
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10053
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->e(Ljava/lang/String;)V

    .line 10056
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->r()Lcom/oppo/camera/ui/preview/a/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/d/i;->a(Lcom/oppo/camera/ui/preview/a/g;)V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 10

    .line 10375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onModeItemClick, itemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x5

    if-ne v2, p1, :cond_1

    .line 10378
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bH(Lcom/oppo/camera/e;)Lcom/google/lens/sdk/LensApi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10379
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bH(Lcom/oppo/camera/e;)Lcom/google/lens/sdk/LensApi;

    move-result-object p1

    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V

    .line 10382
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bI(Lcom/oppo/camera/e;)V

    .line 10383
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->O(Z)V

    .line 10384
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1, v0, v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;ZZ)V

    return-void

    .line 10389
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/e$38;->t()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "onModeItemClick, is not allowed to switch mode"

    .line 10390
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10392
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->bI(Lcom/oppo/camera/e;)V

    .line 10393
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/e;->O(Z)V

    .line 10394
    iget-object p1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1, v0, v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;ZZ)V

    return-void

    .line 10399
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/preview/h;->f(Z)V

    const-string v1, "pref_zoom_key"

    .line 10401
    invoke-virtual {p0, v1}, Lcom/oppo/camera/e$38;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10402
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 10403
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v1, v2}, Lcom/oppo/camera/e;->x(Z)V

    .line 10406
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1, v0, v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;ZZ)V

    .line 10408
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v2

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/oppo/camera/e$38$1;

    invoke-direct {v9, p0, p1}, Lcom/oppo/camera/e$38$1;-><init>(Lcom/oppo/camera/e$38;I)V

    invoke-virtual/range {v2 .. v9}, Lcom/oppo/camera/ui/e;->a(IJJLandroid/animation/TimeInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 10434
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/e;->j(Z)V

    .line 10436
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {p1}, Lcom/oppo/camera/ui/modepanel/a;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 10062
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10063
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 9981
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->U(Lcom/oppo/camera/e;)Z

    move-result v0

    return v0
.end method

.method public e(I)I
    .locals 1

    .line 10466
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10467
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->o(I)I

    move-result p1

    return p1

    :cond_0
    const p1, -0x186a0

    return p1
.end method

.method public e()V
    .locals 2

    .line 9986
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v1, "pref_zoom_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9987
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9988
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->x(Z)V

    .line 9991
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9992
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->az()V

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 10172
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10173
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->c(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()V
    .locals 2

    .line 9998
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 9999
    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v1, "pref_zoom_key"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10000
    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10001
    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->K()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10002
    invoke-static {v0}, Lcom/oppo/camera/e;->q(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10003
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->al()V

    .line 10004
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->x(Z)V

    .line 10007
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10008
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aA()V

    :cond_1
    return-void
.end method

.method public f(I)V
    .locals 1

    .line 10475
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10476
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->n(I)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    .line 10181
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10182
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()Z
    .locals 1

    .line 10019
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->E()Z

    move-result v0

    return v0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 1

    .line 10190
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10191
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oppo/camera/d/i;->h(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public h()Z
    .locals 1

    .line 10033
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10034
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->A()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 6

    .line 10293
    invoke-virtual {p0}, Lcom/oppo/camera/e$38;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "more"

    .line 10294
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 10298
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const-string v2, "isHeadlineCanTouch, modeName: "

    const-string v3, "CameraManager"

    if-eqz v0, :cond_1

    .line 10299
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->h()Ljava/lang/String;

    move-result-object v0

    .line 10301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", currentModeName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10304
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 10309
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10310
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->an(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$n;->b()Ljava/lang/String;

    move-result-object v0

    .line 10312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", lastModeName: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10314
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public i()I
    .locals 3

    .line 10042
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/i;->l(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public j()Z
    .locals 1

    .line 10069
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10070
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->D()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()V
    .locals 1

    .line 10165
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10166
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->n()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 10199
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->e()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onPreviewTextureCopied"

    .line 10204
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10206
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 10207
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->sendEmptyMessage(I)Z

    return-void
.end method

.method public n()V
    .locals 2

    .line 10212
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->b(Z)V

    return-void
.end method

.method public o()I
    .locals 5

    .line 10219
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10220
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->h(Lcom/oppo/camera/e;)Lcom/oppo/camera/i;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10221
    invoke-static {v1}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_key"

    .line 10220
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    .line 10224
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->V(Lcom/oppo/camera/e;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10225
    invoke-static {v1}, Lcom/oppo/camera/e;->V(Lcom/oppo/camera/e;)I

    move-result v1

    const/16 v4, 0xb4

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    .line 10228
    :goto_2
    iget-object v4, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v4

    invoke-static {v4}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "on"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    move v2, v0

    :cond_4
    :goto_3
    return v2
.end method

.method public p()I
    .locals 1

    .line 10237
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 10242
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10243
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->D(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/preview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 10251
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->ak()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    .line 10256
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->L()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->ar()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10257
    invoke-static {v0}, Lcom/oppo/camera/e;->bG(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 1

    .line 10283
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->F()Z

    move-result v0

    return v0
.end method

.method public u()V
    .locals 4

    .line 10325
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->O()Z

    move-result v0

    const-string v1, "CameraManager"

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bE(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 10332
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->av()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 10336
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/e$38;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onModeTitleTouch, can not touch, timesnap is running"

    .line 10337
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10342
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/e$38;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "onModeTitleTouch, can not touch, video record started"

    .line 10343
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10348
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->au()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->av()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "onModeTitleTouch, can not touch, isVideoEncoding"

    .line 10349
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10354
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night"

    .line 10356
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10357
    invoke-static {v1}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10358
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->j()Ljava/lang/String;

    move-result-object v0

    .line 10361
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/d/i;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10363
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/e;->K(Z)V

    .line 10364
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    iget-object v3, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->H(Lcom/oppo/camera/e;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/oppo/camera/ui/e;->b(ILjava/lang/String;)V

    .line 10365
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/e;->a(I)V

    .line 10367
    iget-object v1, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10368
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/e;->J(Z)V

    .line 10369
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/e;->a(I)V

    :cond_6
    return-void

    .line 10326
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeTitleTouch, return false, state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v2}, Lcom/oppo/camera/e;->bf(Lcom/oppo/camera/e;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mbFrameAvailable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    .line 10327
    invoke-static {v2}, Lcom/oppo/camera/e;->bE(Lcom/oppo/camera/e;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10326
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public v()V
    .locals 1

    .line 10441
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10442
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aU()V

    :cond_0
    return-void
.end method

.method public w()I
    .locals 1

    .line 10448
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10449
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aT()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()I
    .locals 1

    .line 10457
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10458
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aR()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public y()I
    .locals 1

    .line 10489
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10490
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aV()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x28

    return v0
.end method

.method public z()V
    .locals 2

    const-string v0, "CameraManager"

    const-string v1, "onBackFromMoreMode"

    .line 10498
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10500
    iget-object v0, p0, Lcom/oppo/camera/e$38;->a:Lcom/oppo/camera/e;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;ZZ)V

    return-void
.end method
