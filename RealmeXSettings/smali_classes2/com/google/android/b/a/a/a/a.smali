.class public abstract Lcom/google/android/b/a/a/a/a;
.super Landroid/content/ContentProvider;
.source "ContextualCardProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/settings/c/a$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 95
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "getCardList"

    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/b/a/a/a/a;->a()Lcom/android/settings/c/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/android/settings/c/a$b;->toByteArray()[B

    move-result-object p3

    const-string v0, "cardList"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/b/a/a/a/a;->getContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/slice/SliceManager;

    .line 1046
    iget-object p1, p1, Lcom/android/settings/c/a$b;->a:Lcom/google/protobuf/Internal$ProtobufList;

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/c/a$a;

    .line 1671
    iget-object v0, v0, Lcom/android/settings/c/a$a;->a:Ljava/lang/String;

    .line 104
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "com.android.settings"

    .line 103
    invoke-virtual {p3, v1, v0}, Landroid/app/slice/SliceManager;->grantSlicePermission(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Delete operation not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "GetType operation is not supported currently."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Insert operation is not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Query operation is not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 90
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Update operation is not supported currently."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
