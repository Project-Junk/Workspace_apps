.class final Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;
.super Ljava/lang/Object;
.source "Cursors.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/lib/utils/Cursors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CursorIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mNextPosition:I

.field private final mSize:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mCursor:Landroid/database/Cursor;

    .line 74
    invoke-static {p1}, Lcom/platform/usercenter/common/lib/utils/Cursors;->size(Landroid/database/Cursor;)I

    move-result p1

    iput p1, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mSize:I

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mNextPosition:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized hasNext()Z
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget v0, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mSize:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mNextPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mNextPosition:I

    iget v1, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized next()Landroid/database/Cursor;
    .locals 3

    monitor-enter p0

    .line 85
    :try_start_0
    iget v0, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mNextPosition:I

    iget v1, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mSize:I

    invoke-static {v0, v1}, Lcom/platform/usercenter/common/lib/utils/Preconditions;->checkPositionIndex(II)I

    .line 86
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mNextPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mNextPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 87
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;->next()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cursor may not be removed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
