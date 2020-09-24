.class final Lcom/coloros/c/a/a/a$1$1;
.super Ljava/lang/Object;
.source "FindPhoneLogoutControl.java"

# interfaces
.implements Lcom/coloros/c/a/a/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/c/a/a/a$1;->handleVerifyResult(Lcom/oppo/usercenter/sdk/UCVerifyResultEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/coloros/c/a/a/a$1;


# direct methods
.method constructor <init>(Lcom/coloros/c/a/a/a$1;Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iput-object p2, p0, Lcom/coloros/c/a/a/a$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object p1, p1, Lcom/coloros/c/a/a/a$1;->e:Lcom/coloros/c/a/a/a;

    iget-object v0, p0, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object v0, v0, Lcom/coloros/c/a/a/a$1;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/c/a/a/a$1$1;->a:Ljava/lang/String;

    new-instance v2, Lcom/coloros/c/a/a/a$1$1$1;

    invoke-direct {v2, p0}, Lcom/coloros/c/a/a/a$1$1$1;-><init>(Lcom/coloros/c/a/a/a$1$1;)V

    invoke-static {p1, v0, v1, v2}, Lcom/coloros/c/a/a/a;->a(Lcom/coloros/c/a/a/a;Landroid/content/Context;Ljava/lang/String;Lcom/coloros/c/a/a/a$b;)V

    return-void

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object p1, p1, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/coloros/c/a/a/a$1$1;->b:Lcom/coloros/c/a/a/a$1;

    iget-object p1, p1, Lcom/coloros/c/a/a/a$1;->d:Lcom/coloros/c/a/a/a$e;

    invoke-interface {p1}, Lcom/coloros/c/a/a/a$e;->a()V

    :cond_1
    return-void
.end method
