.class final Lcom/color/compat/os/storage/StorageManagerNative$1;
.super Lcom/color/inner/os/storage/StorageEventListenerWrapper;
.source "StorageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/compat/os/storage/StorageManagerNative;->registerListener(Landroid/content/Context;Lcom/color/compat/os/storage/StorageEventListenerNative;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/color/compat/os/storage/StorageEventListenerNative;


# direct methods
.method constructor <init>(Lcom/color/compat/os/storage/StorageEventListenerNative;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/color/compat/os/storage/StorageManagerNative$1;->val$listener:Lcom/color/compat/os/storage/StorageEventListenerNative;

    invoke-direct {p0}, Lcom/color/inner/os/storage/StorageEventListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/color/compat/os/storage/StorageManagerNative$1;->val$listener:Lcom/color/compat/os/storage/StorageEventListenerNative;

    invoke-virtual {p0, p1, p2, p3}, Lcom/color/compat/os/storage/StorageEventListenerNative;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeStateChanged(Lcom/color/inner/os/storage/VolumeInfoWrapper;II)V
    .locals 1

    .line 105
    iget-object p0, p0, Lcom/color/compat/os/storage/StorageManagerNative$1;->val$listener:Lcom/color/compat/os/storage/StorageEventListenerNative;

    new-instance v0, Lcom/color/compat/os/storage/VolumeInfoNative;

    invoke-direct {v0, p1}, Lcom/color/compat/os/storage/VolumeInfoNative;-><init>(Lcom/color/inner/os/storage/VolumeInfoWrapper;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/color/compat/os/storage/StorageEventListenerNative;->onVolumeStateChanged(Lcom/color/compat/os/storage/VolumeInfoNative;II)V

    return-void
.end method
