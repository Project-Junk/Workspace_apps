.class public Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;
.super Landroid/database/AbstractCursor;
.source "NavigationBarColorCursor.java"


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

.field private mDao:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

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
    .locals 5

    .line 37
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const-string v0, "pkg"

    const-string v1, "default_color"

    const-string v2, "is_need_palette"

    const-string v3, "activityName"

    const-string v4, "activityColor"

    .line 38
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mColumnNames:[Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDataList:Ljava/util/List;

    .line 42
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->transDataFromDao()V

    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mColumnNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->transDataFromDao()V

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDataList:Ljava/util/List;

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

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mCurLineData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mCurLineData:Ljava/util/List;

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

    .line 78
    invoke-virtual {p0}, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mCurLineData:Ljava/util/List;

    .line 84
    invoke-super {p0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mCurLineData:Ljava/util/List;

    const/4 p0, 0x0

    return p0
.end method

.method public transDataFromDao()V
    .locals 5

    .line 46
    invoke-static {}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->getInstance()Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDao:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    .line 47
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDao:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    iget-object v1, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->setContext(Landroid/content/Context;)V

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDao:Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;

    invoke-virtual {v0}, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao;->getNavigationBarColorInfoList()Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 52
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mPkg:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mDefColor:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mPalette:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityList:Ljava/util/List;

    const-string v4, ","

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityList:Ljava/util/List;

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityColorList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityColorList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    iget-object v1, v1, Lcom/coloros/systemui/provider/Dao/NavigationBarColorDao$NavigationBarColorInfo;->mActivityColorList:Ljava/util/List;

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_1
    iget-object v1, p0, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;->mDataList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
