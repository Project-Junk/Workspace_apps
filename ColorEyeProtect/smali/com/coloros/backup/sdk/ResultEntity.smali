.class public Lcom/coloros/backup/sdk/ResultEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/backup/sdk/ResultEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENTITY_APP_ITEM:I = 0x0

.field public static final ENTITY_PERSONAL_DATA_ITEM:I = 0x0

.field public static final FAIL:I = -0x1

.field public static final NO_CONTENT:I = -0x2

.field public static final SUCCESS:I


# instance fields
.field private mComposerCount:I

.field private mData1:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mResult:I

.field private mTotalCount:I

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/backup/sdk/ResultEntity$1;

    invoke-direct {v0}, Lcom/coloros/backup/sdk/ResultEntity$1;-><init>()V

    sput-object v0, Lcom/coloros/backup/sdk/ResultEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mType:I

    iput p2, p0, Lcom/coloros/backup/sdk/ResultEntity;->mResult:I

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mType:I

    iput p2, p0, Lcom/coloros/backup/sdk/ResultEntity;->mResult:I

    iput p3, p0, Lcom/coloros/backup/sdk/ResultEntity;->mComposerCount:I

    iput p4, p0, Lcom/coloros/backup/sdk/ResultEntity;->mTotalCount:I

    iput-object p5, p0, Lcom/coloros/backup/sdk/ResultEntity;->mData1:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mComposerCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mTotalCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/coloros/backup/sdk/ResultEntity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/backup/sdk/ResultEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mResult:I

    return p0
.end method

.method public getTotalCount()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mTotalCount:I

    return p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mType:I

    return p0
.end method

.method public getmData1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mData1:Ljava/lang/String;

    return-object p0
.end method

.method public setCount(II)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mComposerCount:I

    iput p2, p0, Lcom/coloros/backup/sdk/ResultEntity;->mTotalCount:I

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mResult:I

    return-void
.end method

.method public setmData1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mData1:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResultEntity :  mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mComposerCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mComposerCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTotalCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/backup/sdk/ResultEntity;->mTotalCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mData1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mData1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/coloros/backup/sdk/ResultEntity;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/coloros/backup/sdk/ResultEntity;->mResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/coloros/backup/sdk/ResultEntity;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/coloros/backup/sdk/ResultEntity;->mComposerCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/coloros/backup/sdk/ResultEntity;->mTotalCount:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
