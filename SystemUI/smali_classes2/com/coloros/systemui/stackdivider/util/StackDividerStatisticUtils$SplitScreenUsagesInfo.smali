.class public Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;
.super Ljava/lang/Object;
.source "StackDividerStatisticUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitScreenUsagesInfo"
.end annotation


# instance fields
.field private mBottomAppUsagesInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomUsagePkgName:Ljava/lang/String;

.field private mBottomUsageStartTime:J

.field private mSplitWindowStartTime:J

.field private mSplitWindowTotalDuration:J

.field private mUpAppUsagePkgName:Ljava/lang/String;

.field private mUpAppUsageStartTime:J

.field private mUpAppUsagesInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomAppUsagesInfoMap:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 178
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowTotalDuration:J

    .line 179
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowStartTime:J

    .line 180
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsageStartTime:J

    .line 181
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsageStartTime:J

    const-string v0, ""

    .line 182
    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagePkgName:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsagePkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsagePkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowTotalDuration:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->clear()V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/util/Map;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$800(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)J
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowStartTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;)Ljava/lang/String;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagePkgName:Ljava/lang/String;

    return-object p0
.end method

.method private clear()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 266
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomAppUsagesInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    .line 267
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowTotalDuration:J

    .line 268
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowStartTime:J

    .line 269
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsageStartTime:J

    .line 270
    iput-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsageStartTime:J

    const-string v0, ""

    .line 271
    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagePkgName:Ljava/lang/String;

    .line 272
    iput-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsagePkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBottomAppUsagesInfo()Ljava/lang/String;
    .locals 6

    .line 213
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomAppUsagesInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "##"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public getUpAppUsagesInfo()Ljava/lang/String;
    .locals 6

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "##"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x0

    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public setBottomAppUsagesInfo(J)V
    .locals 6

    .line 230
    iget-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsageStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomAppUsagesInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsagePkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomAppUsagesInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsagePkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p1

    iget-wide p1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsageStartTime:J

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iput-wide v2, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsageStartTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public setBottomAppUsagesStartTimeAndPkgName(Ljava/lang/String;J)V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomAppUsagesInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomAppUsagesInfoMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    iput-wide p2, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsageStartTime:J

    .line 261
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mBottomUsagePkgName:Ljava/lang/String;

    return-void
.end method

.method public setSplitWindowStartTime(J)V
    .locals 0

    .line 245
    iput-wide p1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowStartTime:J

    return-void
.end method

.method public setSplitWindowTotalDuration(J)V
    .locals 4

    .line 238
    iget-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-long/2addr p1, v0

    .line 241
    iput-wide p1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mSplitWindowTotalDuration:J

    return-void
.end method

.method public setUpAppUsageStartTimeAndPkgName(Ljava/lang/String;J)V
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    iput-wide p2, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsageStartTime:J

    .line 253
    iput-object p1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagePkgName:Ljava/lang/String;

    return-void
.end method

.method public setUpAppUsagesInfo(J)V
    .locals 6

    .line 204
    iget-wide v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsageStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagePkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagesInfoMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsagePkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p1

    iget-wide p1, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsageStartTime:J

    sub-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iput-wide v2, p0, Lcom/coloros/systemui/stackdivider/util/StackDividerStatisticUtils$SplitScreenUsagesInfo;->mUpAppUsageStartTime:J

    :cond_1
    :goto_0
    return-void
.end method
