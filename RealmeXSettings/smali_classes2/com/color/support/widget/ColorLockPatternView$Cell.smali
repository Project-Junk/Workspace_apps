.class public final Lcom/color/support/widget/ColorLockPatternView$Cell;
.super Ljava/lang/Object;
.source "ColorLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorLockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cell"
.end annotation


# static fields
.field private static final sCells:[[Lcom/color/support/widget/ColorLockPatternView$Cell;


# instance fields
.field private final column:I

.field private final row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 184
    invoke-static {}, Lcom/color/support/widget/ColorLockPatternView$Cell;->createCells()[[Lcom/color/support/widget/ColorLockPatternView$Cell;

    move-result-object v0

    sput-object v0, Lcom/color/support/widget/ColorLockPatternView$Cell;->sCells:[[Lcom/color/support/widget/ColorLockPatternView$Cell;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1, p2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->checkRange(II)V

    .line 205
    iput p1, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->row:I

    .line 206
    iput p2, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->column:I

    return-void
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorLockPatternView$Cell;)I
    .locals 0

    .line 182
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->row:I

    return p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorLockPatternView$Cell;)I
    .locals 0

    .line 182
    iget p0, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->column:I

    return p0
.end method

.method private static checkRange(II)V
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    return-void

    .line 241
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createCells()[[Lcom/color/support/widget/ColorLockPatternView$Cell;
    .locals 7

    const/4 v0, 0x3

    .line 189
    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, Lcom/color/support/widget/ColorLockPatternView$Cell;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/color/support/widget/ColorLockPatternView$Cell;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_0

    .line 192
    aget-object v5, v1, v3

    new-instance v6, Lcom/color/support/widget/ColorLockPatternView$Cell;

    invoke-direct {v6, v3, v4}, Lcom/color/support/widget/ColorLockPatternView$Cell;-><init>(II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static of(II)Lcom/color/support/widget/ColorLockPatternView$Cell;
    .locals 1

    .line 232
    invoke-static {p0, p1}, Lcom/color/support/widget/ColorLockPatternView$Cell;->checkRange(II)V

    .line 233
    sget-object v0, Lcom/color/support/widget/ColorLockPatternView$Cell;->sCells:[[Lcom/color/support/widget/ColorLockPatternView$Cell;

    aget-object p0, v0, p0

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public final getColumn()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->column:I

    return v0
.end method

.method public final getRow()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->row:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(row="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/color/support/widget/ColorLockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
