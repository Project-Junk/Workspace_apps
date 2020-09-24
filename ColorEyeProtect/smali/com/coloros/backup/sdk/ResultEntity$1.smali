.class final Lcom/coloros/backup/sdk/ResultEntity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/ResultEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coloros/backup/sdk/ResultEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/ResultEntity;
    .locals 1

    new-instance p0, Lcom/coloros/backup/sdk/ResultEntity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coloros/backup/sdk/ResultEntity;-><init>(Landroid/os/Parcel;Lcom/coloros/backup/sdk/ResultEntity$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/ResultEntity$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/ResultEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/coloros/backup/sdk/ResultEntity;
    .locals 0

    new-array p0, p1, [Lcom/coloros/backup/sdk/ResultEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/ResultEntity$1;->newArray(I)[Lcom/coloros/backup/sdk/ResultEntity;

    move-result-object p0

    return-object p0
.end method
