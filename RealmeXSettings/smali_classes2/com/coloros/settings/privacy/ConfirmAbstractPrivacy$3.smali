.class final Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;
.super Ljava/lang/Object;
.source "ConfirmAbstractPrivacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[B

.field final synthetic c:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;Z[B)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->c:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    iput-boolean p2, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->a:Z

    iput-object p3, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 198
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->c:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->c:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->b:[B

    .line 1209
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "confirm_challenge"

    .line 1210
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 1211
    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->setResult(ILandroid/content/Intent;)V

    .line 1212
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->d()V

    .line 1213
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->finish()V

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;->c:Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    return-void
.end method
