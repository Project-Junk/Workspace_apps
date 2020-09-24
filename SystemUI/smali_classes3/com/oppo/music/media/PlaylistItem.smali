.class public Lcom/oppo/music/media/PlaylistItem;
.super Ljava/lang/Object;
.source "PlaylistItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oppo/music/media/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_TYPE_LOCAL:I = 0x0

.field public static final ITEM_TYPE_REMOTE_BAIDU:I = 0x1

.field public static final ITEM_TYPE_REMOTE_XIAMI:I = 0x2

.field public static final ITEM_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PlaylistItem"

.field public static final UNKNOWN_ID:I = -0x1


# instance fields
.field private mItemID:J

.field private mItemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/oppo/music/media/PlaylistItem$1;

    invoke-direct {v0}, Lcom/oppo/music/media/PlaylistItem$1;-><init>()V

    sput-object v0, Lcom/oppo/music/media/PlaylistItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    .line 29
    iput p1, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    .line 30
    iput-wide p2, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dumpInfo()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "{mItemType=%s, mItemID=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 56
    instance-of v0, p1, Lcom/oppo/music/media/PlaylistItem;

    if-eqz v0, :cond_0

    .line 57
    check-cast p1, Lcom/oppo/music/media/PlaylistItem;

    .line 58
    invoke-virtual {p1}, Lcom/oppo/music/media/PlaylistItem;->getType()I

    move-result v0

    iget v1, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/oppo/music/media/PlaylistItem;->getID()J

    move-result-wide v0

    iget-wide p0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getID()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    return-wide v0
.end method

.method public getType()I
    .locals 0

    .line 39
    iget p0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    return p0
.end method

.method public isOnline()Z
    .locals 0

    .line 42
    iget p0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 68
    invoke-virtual {p0}, Lcom/oppo/music/media/PlaylistItem;->dumpInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 78
    iget p2, p0, Lcom/oppo/music/media/PlaylistItem;->mItemType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-wide v0, p0, Lcom/oppo/music/media/PlaylistItem;->mItemID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
