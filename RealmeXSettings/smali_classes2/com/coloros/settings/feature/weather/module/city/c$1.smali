.class public final Lcom/coloros/settings/feature/weather/module/city/c$1;
.super Lcom/coloros/a/b$a;
.source "HotCityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/module/city/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/module/city/c;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/weather/module/city/c;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c$1;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    invoke-direct {p0}, Lcom/coloros/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p1, v0

    :goto_0
    if-lez p1, :cond_2

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c$1;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 1028
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/c;->c:Lcom/coloros/settings/feature/weather/module/city/b$a;

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c$1;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 2028
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/c;->c:Lcom/coloros/settings/feature/weather/module/city/b$a;

    const/4 v1, 0x1

    .line 122
    invoke-interface {p1, v1}, Lcom/coloros/settings/feature/weather/module/city/b$a;->onUpdateCompleted(Z)V

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c$1;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 3028
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/c;->a:Landroid/content/Context;

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "data"

    .line 3153
    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3154
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "hot_city_last_update_time"

    .line 3155
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3156
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "OppoUtils"

    const-string v0, "saveHotCityUpdateTime "

    .line 3157
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c$1;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 4028
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/c;->c:Lcom/coloros/settings/feature/weather/module/city/b$a;

    if-eqz p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c$1;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 5028
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/c;->c:Lcom/coloros/settings/feature/weather/module/city/b$a;

    .line 127
    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/weather/module/city/b$a;->onUpdateCompleted(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 131
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HotCityHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/c$1;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    const/4 v0, 0x0

    .line 6144
    iput-object v0, p1, Lcom/coloros/settings/feature/weather/module/city/c;->b:Lcom/coloros/a/b;

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/a/a;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
