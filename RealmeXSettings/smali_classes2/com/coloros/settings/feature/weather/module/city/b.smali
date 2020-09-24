.class public final Lcom/coloros/settings/feature/weather/module/city/b;
.super Ljava/lang/Object;
.source "CityAddMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/weather/module/city/b$c;,
        Lcom/coloros/settings/feature/weather/module/city/b$a;,
        Lcom/coloros/settings/feature/weather/module/city/b$b;
    }
.end annotation


# instance fields
.field public a:Lcom/coloros/settings/feature/weather/module/city/c;

.field private b:Lcom/coloros/settings/feature/weather/module/city/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/coloros/settings/feature/weather/module/city/c;

    invoke-direct {v0, p1}, Lcom/coloros/settings/feature/weather/module/city/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/b;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 42
    new-instance p1, Lcom/coloros/settings/feature/weather/module/city/f;

    invoke-direct {p1}, Lcom/coloros/settings/feature/weather/module/city/f;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/b;->b:Lcom/coloros/settings/feature/weather/module/city/f;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const-string v3, "sort>0"

    const/4 v6, 0x0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/coloros/settings/feature/weather/module/city/a;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p0, :cond_1

    if-eqz v6, :cond_0

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "CityAddMediator"

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0

    :goto_2
    if-eqz v6, :cond_3

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_3
    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/feature/weather/module/city/b$c;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/b;->b:Lcom/coloros/settings/feature/weather/module/city/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/weather/module/city/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/feature/weather/module/city/b$c;)V

    return-void
.end method
