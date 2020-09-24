.class public final Lcom/coloros/settings/utils/a/a;
.super Ljava/lang/Object;
.source "DataBaseUtil.java"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;

.field public static final p:Landroid/net/Uri;

.field public static final q:Landroid/net/Uri;

.field public static final r:Landroid/net/Uri;

.field public static final s:Landroid/net/Uri;

.field public static final t:Landroid/net/Uri;

.field public static final u:Landroid/net/Uri;

.field public static final v:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.color.provider.SafeProvider"

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v0, "content://com.coloros.provider.PermissionProvider"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->b:Landroid/net/Uri;

    .line 39
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->c:Landroid/net/Uri;

    .line 40
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "pp_privacy_protect"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->d:Landroid/net/Uri;

    .line 41
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "pp_float_window"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->e:Landroid/net/Uri;

    .line 42
    sget-object v0, Lcom/coloros/settings/utils/a/a;->b:Landroid/net/Uri;

    const-string v1, "pp_permission"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->f:Landroid/net/Uri;

    .line 43
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "pp_auto_start"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->g:Landroid/net/Uri;

    .line 44
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "ssm_status_track"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->h:Landroid/net/Uri;

    .line 45
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "vd_virus"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->i:Landroid/net/Uri;

    .line 46
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "packageinstaller_whitelist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->j:Landroid/net/Uri;

    .line 47
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "pp_suggest_permission"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->k:Landroid/net/Uri;

    .line 48
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "children_mode"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->l:Landroid/net/Uri;

    .line 49
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "opt_auto_start_whitelist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->m:Landroid/net/Uri;

    .line 51
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "cm_clear_wihtlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->n:Landroid/net/Uri;

    .line 52
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "secure_items"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->o:Landroid/net/Uri;

    .line 53
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "app_frozen"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->p:Landroid/net/Uri;

    .line 55
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "app_usage"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->q:Landroid/net/Uri;

    .line 56
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "limit_use_app"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->r:Landroid/net/Uri;

    .line 57
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "map_fence"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->s:Landroid/net/Uri;

    .line 58
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "app_delay"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->t:Landroid/net/Uri;

    .line 59
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "family_guard_settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->u:Landroid/net/Uri;

    .line 60
    sget-object v0, Lcom/coloros/settings/utils/a/a;->a:Landroid/net/Uri;

    const-string v1, "guard_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/a/a;->v:Landroid/net/Uri;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "value"

    const-string v1, "null"

    const/4 v2, 0x0

    .line 873
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/coloros/settings/utils/a/a;->c:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "key= ?"

    const/4 p0, 0x1

    new-array v7, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v7, p0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 878
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 880
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 881
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v1

    goto :goto_2

    :catch_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p0, :cond_1

    .line 885
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object p0, v2

    :cond_1
    if-eqz p0, :cond_2

    .line 898
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    return-object v1

    :catchall_1
    move-object p1, v1

    move-object p0, v2

    goto :goto_2

    :catch_1
    move-object p1, v1

    move-object p0, v2

    :catch_2
    :goto_1
    if-eqz p0, :cond_6

    .line 892
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object p0, v2

    goto :goto_3

    :catchall_2
    :goto_2
    if-eqz p0, :cond_4

    .line 898
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    return-object v1

    :cond_6
    :goto_3
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz p1, :cond_8

    return-object p1

    :cond_8
    return-object v1
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "pp_privacy_protect"

    .line 1009
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "null"

    .line 1010
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1011
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method
