.class public final Lcom/coloros/settings/background/a/a;
.super Ljava/lang/Object;
.source "MessageEntry.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "message_entries"
.end annotation


# instance fields
.field public a:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "_id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
        autoGenerate = true
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "message_id"
    .end annotation
.end field

.field public c:[B
    .annotation build Landroidx/room/ColumnInfo;
        name = "icon"
        typeAffinity = 0x5
    .end annotation
.end field

.field public d:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field public e:Landroid/content/Intent;
    .annotation build Landroidx/room/Ignore;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "title"
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "title_res_name"
    .end annotation
.end field

.field public h:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "summary"
    .end annotation
.end field

.field public i:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "summary_res_name"
    .end annotation
.end field

.field public j:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "count"
    .end annotation
.end field

.field public k:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "display_order"
    .end annotation
.end field

.field public l:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "package_name"
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "entrance_path"
    .end annotation
.end field

.field public n:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "target_package_name"
    .end annotation
.end field

.field public o:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "target_action"
    .end annotation
.end field

.field public p:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "recommend"
    .end annotation
.end field

.field public q:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "start_time"
    .end annotation
.end field

.field public r:J
    .annotation build Landroidx/room/ColumnInfo;
        name = "expire_time"
    .end annotation
.end field

.field public s:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "group"
    .end annotation
.end field

.field public t:Z
    .annotation build Landroidx/room/ColumnInfo;
        name = "is_newly"
    .end annotation
.end field

.field public u:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "delete_strategy"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
