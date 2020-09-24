.class final Lcom/coloros/settings/background/a/c$2;
.super Landroidx/room/SharedSQLiteStatement;
.source "MessageEntryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/background/a/c;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/background/a/c;


# direct methods
.method constructor <init>(Lcom/coloros/settings/background/a/c;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/coloros/settings/background/a/c$2;->a:Lcom/coloros/settings/background/a/c;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM message_entries WHERE message_id = ? AND package_name = ?"

    return-object v0
.end method
