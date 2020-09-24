.class final Lcom/coloros/backup/sdk/TargetDirInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/TargetDirInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coloros/backup/sdk/TargetDirInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 1

    new-instance p0, Lcom/coloros/backup/sdk/TargetDirInfo;

    invoke-direct {p0}, Lcom/coloros/backup/sdk/TargetDirInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/TargetDirInfo;->folder:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/backup/sdk/TargetDirInfo;->mParams:Ljava/util/List;

    iget-object v0, p0, Lcom/coloros/backup/sdk/TargetDirInfo;->mParams:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/TargetDirInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/coloros/backup/sdk/TargetDirInfo;
    .locals 0

    new-array p0, p1, [Lcom/coloros/backup/sdk/TargetDirInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/TargetDirInfo$1;->newArray(I)[Lcom/coloros/backup/sdk/TargetDirInfo;

    move-result-object p0

    return-object p0
.end method
