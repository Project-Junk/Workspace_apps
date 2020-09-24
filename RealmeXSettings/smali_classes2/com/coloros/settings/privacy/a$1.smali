.class final Lcom/coloros/settings/privacy/a$1;
.super Ljava/lang/Object;
.source "ConfirmBiometricInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/privacy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/privacy/a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/privacy/a;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/coloros/settings/privacy/a$1;->a:Lcom/coloros/settings/privacy/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/coloros/settings/privacy/a$1;->a:Lcom/coloros/settings/privacy/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/privacy/a;->c(I)V

    return-void
.end method
