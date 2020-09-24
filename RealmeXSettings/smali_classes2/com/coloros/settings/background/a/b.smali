.class public interface abstract Lcom/coloros/settings/background/a/b;
.super Ljava/lang/Object;
.source "MessageEntryDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM message_entries WHERE message_id = :msgId AND package_name = :pkgName"
    .end annotation
.end method

.method public abstract a(Lcom/coloros/settings/background/a/a;)J
    .annotation build Landroidx/room/Insert;
    .end annotation
.end method

.method public abstract a()Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM message_entries ORDER BY display_order LIMIT 6"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Landroid/database/Cursor;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM message_entries WHERE package_name = :pkgName ORDER BY display_order"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM message_entries WHERE message_id = :msgId AND package_name = :pkgName"
    .end annotation
.end method
