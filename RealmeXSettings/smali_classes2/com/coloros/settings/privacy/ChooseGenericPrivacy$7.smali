.class final Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;
.super Ljava/lang/Object;
.source "ChooseGenericPrivacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseGenericPrivacy;Z)V
    .locals 0

    .line 695
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    iput-boolean p2, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 698
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;->a:Z

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    const v1, 0x7f120e05

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseGenericPrivacy$7;->b:Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->finish()V

    :cond_1
    return-void
.end method
