.class public Lcom/platform/usercenter/common/lib/utils/Cursors;
.super Ljava/lang/Object;
.source "Cursors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/common/lib/utils/Cursors$CursorIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static getFloat(Landroid/database/Cursor;Ljava/lang/String;)F
    .locals 0

    .line 51
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 0

    .line 43
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static getLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    .line 47
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNullOrEmpty(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 26
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static newCursorIterable(Landroid/database/Cursor;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/lang/Iterable<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/platform/usercenter/common/lib/utils/Cursors$1;

    invoke-direct {v0, p0}, Lcom/platform/usercenter/common/lib/utils/Cursors$1;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method public static size(Landroid/database/Cursor;)I
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/platform/usercenter/common/lib/utils/Cursors;->isNullOrEmpty(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 39
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    return p0
.end method
