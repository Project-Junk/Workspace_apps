.class final Lcom/android/settings/network/ApnEditor$a;
.super Ljava/lang/Object;
.source "ApnEditor.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/net/Uri;

.field b:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 2

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$a;->a:Landroid/net/Uri;

    .line 1329
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1330
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_4

    .line 1331
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_1

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 1339
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 1333
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_1

    .line 1336
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method final a(I)Ljava/lang/Integer;
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method final a(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 1363
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ApnEditor$a;->a(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method final b(I)Ljava/lang/String;
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/android/settings/network/ApnEditor$a;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
