.class public interface abstract Lcom/oppo/weatherservicesdk/BaseCallBack;
.super Ljava/lang/Object;
.source "BaseCallBack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JsonResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFail(Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJsonResult;)V"
        }
    .end annotation
.end method
