.class final Lcom/coloros/backup/sdk/BackupAgentInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/BackupAgentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/coloros/backup/sdk/BackupAgentInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/BackupAgentInfo;
    .locals 1

    new-instance p0, Lcom/coloros/backup/sdk/BackupAgentInfo;

    invoke-direct {p0}, Lcom/coloros/backup/sdk/BackupAgentInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentVersionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/BackupAgentInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/coloros/backup/sdk/BackupAgentInfo;
    .locals 0

    new-array p0, p1, [Lcom/coloros/backup/sdk/BackupAgentInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/coloros/backup/sdk/BackupAgentInfo$1;->newArray(I)[Lcom/coloros/backup/sdk/BackupAgentInfo;

    move-result-object p0

    return-object p0
.end method
