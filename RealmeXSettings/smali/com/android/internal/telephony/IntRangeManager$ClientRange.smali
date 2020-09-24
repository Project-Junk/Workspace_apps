.class Lcom/android/internal/telephony/IntRangeManager$ClientRange;
.super Ljava/lang/Object;
.source "IntRangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IntRangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientRange"
.end annotation


# instance fields
.field final mClient:Ljava/lang/String;

.field final mEndId:I

.field final mStartId:I

.field final synthetic this$0:Lcom/android/internal/telephony/IntRangeManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IntRangeManager;IILjava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->this$0:Lcom/android/internal/telephony/IntRangeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput p2, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    .line 155
    iput p3, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    .line 156
    iput-object p4, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 161
    instance-of v1, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    if-eqz v1, :cond_0

    .line 162
    check-cast p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;

    .line 163
    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    iget v2, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    iget v2, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    .line 165
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 173
    iget v0, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mStartId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mEndId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/internal/telephony/IntRangeManager$ClientRange;->mClient:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
