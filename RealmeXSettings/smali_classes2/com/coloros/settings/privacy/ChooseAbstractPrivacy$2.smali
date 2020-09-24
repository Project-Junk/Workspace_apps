.class final Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$2;
.super Ljava/lang/Object;
.source "ChooseAbstractPrivacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$2;->a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$2;->a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    iget-object v0, v0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$2;->a:Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;

    iget-object v1, v0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;Lcom/coloros/settings/privacy/a/g$d;)Lcom/coloros/settings/privacy/a/g$d;

    :cond_0
    return-void
.end method
