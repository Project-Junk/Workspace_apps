.class public Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;
.super Ljava/lang/Object;
.source "AodDrawableHelper.java"


# static fields
.field private static final CLOCK_NUM_SIZE:I = 0xa

.field private static final HORIZONTAL_ONE_SIZE:I = 0x5

.field private static final HORIZONTAL_TWO_SIZE:I = 0x3

.field private static final VERTICAL_ONE_SIZE:I = 0x5

.field private static sAodDrawableHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultName:Ljava/lang/String;

.field private mHorizontalOneBg:Landroid/util/SparseIntArray;

.field private mHorizontalOneClock:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHorizontalOneColon:Landroid/util/SparseIntArray;

.field private mHorizontalTwoBg:Landroid/util/SparseIntArray;

.field private mHorizontalTwoClock:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHorizontalTwoColon:Landroid/util/SparseIntArray;

.field private mPackageName:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mVerticalOneBg:Landroid/util/SparseIntArray;

.field private mVerticalOneClock:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mPackageName:Ljava/lang/String;

    .line 59
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f11012e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mDefaultName:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mResources:Landroid/content/res/Resources;

    .line 61
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initVerticalOneDrawable()V

    .line 62
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalOne()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;
    .locals 1

    .line 50
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->sAodDrawableHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->sAodDrawableHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    .line 53
    :cond_0
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->sAodDrawableHelper:Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;

    return-object p0
.end method

.method private getResourceId(Ljava/lang/String;I)I
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mResources:Landroid/content/res/Resources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mPackageName:Ljava/lang/String;

    const-string v3, "drawable"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mResources:Landroid/content/res/Resources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mDefaultName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private initHorizontalOne()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalOneBg()V

    .line 122
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalOneClock()V

    .line 123
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalOneColon()V

    return-void
.end method

.method private initHorizontalOneBg()V
    .locals 4

    .line 157
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneBg:Landroid/util/SparseIntArray;

    .line 158
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneBg:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initHorizontalOneClock()V
    .locals 9

    .line 127
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 134
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f110131

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f110133

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f110132

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 137
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f110130

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 138
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f11012f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initHorizontalOneColon()V
    .locals 4

    .line 148
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneColon:Landroid/util/SparseIntArray;

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneColon:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initHorizontalTwo()V
    .locals 0

    .line 187
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalTwoBg()V

    .line 188
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalTwoClock()V

    .line 189
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalTwoColon()V

    return-void
.end method

.method private initHorizontalTwoBg()V
    .locals 4

    .line 217
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoBg:Landroid/util/SparseIntArray;

    .line 218
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoBg:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initHorizontalTwoClock()V
    .locals 7

    .line 193
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoClock:Landroid/util/SparseArray;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 198
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f110134

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 199
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f110136

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 200
    iget-object v5, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f110135

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoClock:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoClock:Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoClock:Landroid/util/SparseArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initHorizontalTwoColon()V
    .locals 4

    .line 208
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoColon:Landroid/util/SparseIntArray;

    .line 209
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoColon:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initVerticalOneBg()V
    .locals 4

    .line 98
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneBg:Landroid/util/SparseIntArray;

    .line 99
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneBg:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initVerticalOneClock()V
    .locals 9

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 84
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f11013a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 85
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f11013c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 86
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f11013b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f110139

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    iget-object v7, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mContext:Landroid/content/Context;

    const v8, 0x7f110138

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->getResourceId(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v6, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private initVerticalOneDrawable()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initVerticalOneBg()V

    .line 68
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initVerticalOneClock()V

    return-void
.end method


# virtual methods
.method public getHorizontalOneBg()Landroid/util/SparseIntArray;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneBg:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalOneBg()V

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneBg:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getHorizontalOneClock()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalOneClock()V

    .line 169
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneClock:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getHorizontalOneColon()Landroid/util/SparseIntArray;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneColon:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalOneColon()V

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalOneColon:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getHorizontalTwoBg()Landroid/util/SparseIntArray;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoBg:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalTwoBg()V

    .line 243
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoBg:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getHorizontalTwoClock()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoClock:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalTwoClock()V

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoClock:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getHorizontalTwoColon()Landroid/util/SparseIntArray;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoColon:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initHorizontalTwoColon()V

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mHorizontalTwoColon:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getVerticalOneBg()Landroid/util/SparseIntArray;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneBg:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initVerticalOneBg()V

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneBg:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public getVerticalOneClock()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->initVerticalOneClock()V

    .line 110
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodDrawableHelper;->mVerticalOneClock:Landroid/util/SparseArray;

    return-object p0
.end method
