.class Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "ExpandableRecyclerConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ExpandableRecyclerConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1281
    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata$1;

    invoke-direct {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(IIIJ)Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;
    .locals 1

    .line 1254
    new-instance v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    invoke-direct {v0}, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;-><init>()V

    .line 1255
    iput p0, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    .line 1256
    iput p1, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    .line 1257
    iput p2, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    .line 1258
    iput-wide p3, v0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gId:J

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1267
    iget p0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    iget p1, p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    sub-int/2addr p0, p1

    return p0

    .line 1264
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1225
    check-cast p1, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->compareTo(Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1275
    iget p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    iget p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    iget p2, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    iget-wide v0, p0, Lcom/color/support/widget/ExpandableRecyclerConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
