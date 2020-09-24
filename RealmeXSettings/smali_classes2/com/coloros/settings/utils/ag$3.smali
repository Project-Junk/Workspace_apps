.class final Lcom/coloros/settings/utils/ag$3;
.super Ljava/lang/Object;
.source "OppoLockScreenUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;II[BZILjava/lang/String;ZLcom/coloros/settings/feature/password/c;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Landroid/content/Intent;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/coloros/settings/feature/password/c;

.field final synthetic e:I

.field final synthetic f:[B

.field final synthetic g:Z

.field final synthetic h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Landroid/content/Intent;

.field final synthetic k:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/coloros/settings/feature/password/c;I[BZILjava/lang/String;Landroid/content/Intent;Z)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/coloros/settings/utils/ag$3;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/coloros/settings/utils/ag$3;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/coloros/settings/utils/ag$3;->d:Lcom/coloros/settings/feature/password/c;

    iput p4, p0, Lcom/coloros/settings/utils/ag$3;->e:I

    iput-object p5, p0, Lcom/coloros/settings/utils/ag$3;->f:[B

    iput-boolean p6, p0, Lcom/coloros/settings/utils/ag$3;->g:Z

    iput p7, p0, Lcom/coloros/settings/utils/ag$3;->h:I

    iput-object p8, p0, Lcom/coloros/settings/utils/ag$3;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/coloros/settings/utils/ag$3;->j:Landroid/content/Intent;

    iput-boolean p10, p0, Lcom/coloros/settings/utils/ag$3;->k:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 498
    iget-object p1, p0, Lcom/coloros/settings/utils/ag$3;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->m(Landroid/content/Context;)Z

    move-result p1

    .line 499
    invoke-static {}, Lcom/coloros/settings/utils/ag;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/utils/ag$3;->c:Ljava/util/List;

    .line 500
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 499
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const p2, 0x30002

    if-eq p1, p2, :cond_1

    .line 503
    iget-object p1, p0, Lcom/coloros/settings/utils/ag$3;->b:Landroid/app/Activity;

    iget-object p2, p0, Lcom/coloros/settings/utils/ag$3;->d:Lcom/coloros/settings/feature/password/c;

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Lcom/coloros/settings/feature/password/c;)V

    return-void

    .line 507
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/coloros/settings/utils/ag$3;->e:I

    iget-object v2, p0, Lcom/coloros/settings/utils/ag$3;->f:[B

    iget-boolean v3, p0, Lcom/coloros/settings/utils/ag$3;->g:Z

    iget v4, p0, Lcom/coloros/settings/utils/ag$3;->h:I

    iget-object v5, p0, Lcom/coloros/settings/utils/ag$3;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/coloros/settings/utils/ag$3;->j:Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/coloros/settings/utils/ag$3;->k:Z

    .line 506
    invoke-static/range {v0 .. v7}, Lcom/coloros/settings/utils/ag;->a(II[BZILjava/lang/String;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/utils/ag$3;->a:Landroid/content/Intent;

    .line 509
    iget-object p1, p0, Lcom/coloros/settings/utils/ag$3;->b:Landroid/app/Activity;

    iget-object p2, p0, Lcom/coloros/settings/utils/ag$3;->a:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ag;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
