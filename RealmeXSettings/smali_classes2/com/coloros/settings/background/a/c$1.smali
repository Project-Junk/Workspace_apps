.class final Lcom/coloros/settings/background/a/c$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "MessageEntryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/background/a/c;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/coloros/settings/background/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/background/a/c;


# direct methods
.method constructor <init>(Lcom/coloros/settings/background/a/c;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/coloros/settings/background/a/c$1;->a:Lcom/coloros/settings/background/a/c;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public final synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 4

    .line 24
    check-cast p2, Lcom/coloros/settings/background/a/a;

    .line 1032
    iget v0, p2, Lcom/coloros/settings/background/a/a;->a:I

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 1033
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 1034
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1038
    :goto_0
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->c:[B

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 1039
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 1041
    :cond_1
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->c:[B

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 1043
    :goto_1
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->f:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 1044
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 1046
    :cond_2
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->f:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1048
    :goto_2
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->g:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 1049
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 1051
    :cond_3
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->g:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1053
    :goto_3
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->h:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 1054
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 1056
    :cond_4
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->h:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1058
    :goto_4
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->i:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 1059
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 1061
    :cond_5
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->i:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const/16 v0, 0x8

    .line 1063
    iget v1, p2, Lcom/coloros/settings/background/a/a;->j:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 1064
    iget v1, p2, Lcom/coloros/settings/background/a/a;->k:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 1065
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->l:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 1066
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 1068
    :cond_6
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->l:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1070
    :goto_6
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->m:Ljava/lang/String;

    const/16 v1, 0xb

    if-nez v0, :cond_7

    .line 1071
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 1073
    :cond_7
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->m:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1075
    :goto_7
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->n:Ljava/lang/String;

    const/16 v1, 0xc

    if-nez v0, :cond_8

    .line 1076
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 1078
    :cond_8
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->n:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1080
    :goto_8
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->o:Ljava/lang/String;

    const/16 v1, 0xd

    if-nez v0, :cond_9

    .line 1081
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_9

    .line 1083
    :cond_9
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->o:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_9
    const/16 v0, 0xe

    .line 1085
    iget v1, p2, Lcom/coloros/settings/background/a/a;->p:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 1086
    iget-wide v1, p2, Lcom/coloros/settings/background/a/a;->q:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 1087
    iget-wide v1, p2, Lcom/coloros/settings/background/a/a;->r:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 1088
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->s:Ljava/lang/String;

    const/16 v1, 0x11

    if-nez v0, :cond_a

    .line 1089
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_a

    .line 1091
    :cond_a
    iget-object v0, p2, Lcom/coloros/settings/background/a/a;->s:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1094
    :goto_a
    iget-boolean v0, p2, Lcom/coloros/settings/background/a/a;->t:Z

    const/16 v1, 0x12

    int-to-long v2, v0

    .line 1095
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 1096
    iget p2, p2, Lcom/coloros/settings/background/a/a;->u:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public final createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR ABORT INTO `message_entries`(`_id`,`message_id`,`icon`,`title`,`title_res_name`,`summary`,`summary_res_name`,`count`,`display_order`,`package_name`,`entrance_path`,`target_package_name`,`target_action`,`recommend`,`start_time`,`expire_time`,`group`,`is_newly`,`delete_strategy`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
