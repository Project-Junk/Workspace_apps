.class public interface abstract Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask$UpdateDownloadInfo;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nearme/platform/opensdk/pay/download/task/DownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateDownloadInfo"
.end annotation


# virtual methods
.method public abstract downloadFail()V
.end method

.method public abstract downloadSuccess(Ljava/lang/String;)V
.end method

.method public abstract updateDownloadProgress(JJJ)V
.end method
