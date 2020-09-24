.class public abstract Lcom/heytap/cloud/sdk/base/CloudWeakHandler;
.super Lcom/heytap/cloud/sdk/base/WeakHandler;
.source "CloudWeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ">",
        "Lcom/heytap/cloud/sdk/base/WeakHandler;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lcom/heytap/cloud/sdk/base/WeakHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/heytap/cloud/sdk/base/CloudWeakHandler;->handleMessages(Landroid/os/Message;)V

    return-void
.end method

.method protected abstract handleMessages(Landroid/os/Message;)V
.end method
