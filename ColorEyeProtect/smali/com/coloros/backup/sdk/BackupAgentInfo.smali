.class public Lcom/coloros/backup/sdk/BackupAgentInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/backup/sdk/BackupAgentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public agentCode:I

.field public agentVersionCode:I

.field public className:Ljava/lang/String;

.field public moduleType:I

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/backup/sdk/BackupAgentInfo$1;

    invoke-direct {v0}, Lcom/coloros/backup/sdk/BackupAgentInfo$1;-><init>()V

    sput-object v0, Lcom/coloros/backup/sdk/BackupAgentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentVersionCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentVersionCode:I

    iput p1, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentVersionCode:I

    iput p1, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    iput p2, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public isCmccUse()Z
    .locals 3

    iget v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    div-int/lit16 p0, p0, 0x3e8

    rem-int/lit8 p0, p0, 0xa

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public isPersonalGroup()Z
    .locals 3

    iget v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    div-int/lit8 p0, p0, 0x64

    rem-int/lit8 p0, p0, 0xa

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSystemGroup()Z
    .locals 3

    iget v0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    div-int/lit8 p0, p0, 0x64

    rem-int/lit8 p0, p0, 0xa

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackupAgentInfo :  moduleType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " agentCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " agentVersionCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " className = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->moduleType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->agentVersionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/coloros/backup/sdk/BackupAgentInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
