.class public Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;
.super Landroid/database/AbstractCursor;
.source "GestureExclusionCursor.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ","


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurLineData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDao:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const-string v0, "pkg"

    const-string v1, "activity"

    .line 39
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mColumnNames:[Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mContext:Landroid/content/Context;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDataList:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->transDataFromDao()V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mColumnNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->transDataFromDao()V

    .line 68
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getDouble(I)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getFloat(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getInt(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLong(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getShort(I)S
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mCurLineData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mCurLineData:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onMove(II)Z
    .locals 1

    if-ltz p2, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mCurLineData:Ljava/util/List;

    .line 79
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mCurLineData:Ljava/util/List;

    const/4 p0, 0x0

    return p0
.end method

.method public transDataFromDao()V
    .locals 4

    .line 47
    invoke-static {}, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->getInstance()Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDao:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    .line 48
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDao:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    iget-object v1, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->setContest(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDao:Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;

    invoke-virtual {v0}, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao;->getGestureExclusionInfoList()Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->mActivityDisableList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->mActivityDisableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 56
    iget-object v1, v1, Lcom/coloros/systemui/provider/Dao/GestureExclusionDao$GestureExclusionInfo;->mActivityDisableList:Ljava/util/List;

    const-string v3, ","

    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
