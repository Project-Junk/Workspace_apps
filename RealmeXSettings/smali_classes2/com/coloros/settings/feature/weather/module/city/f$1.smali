.class final Lcom/coloros/settings/feature/weather/module/city/f$1;
.super Lcom/coloros/a/b$a;
.source "SearchCityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/weather/module/city/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/module/city/f;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/module/city/f;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/f$1;->a:Lcom/coloros/settings/feature/weather/module/city/f;

    invoke-direct {p0}, Lcom/coloros/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
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

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/a/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_3

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/a/a;

    .line 84
    new-instance v2, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-direct {v2, v0}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;-><init>(Lcom/coloros/a/a;)V

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/module/city/f$1;->a:Lcom/coloros/settings/feature/weather/module/city/f;

    .line 1027
    iget-object v0, v0, Lcom/coloros/settings/feature/weather/module/city/f;->b:Ljava/lang/String;

    .line 85
    invoke-virtual {v2, v0}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setLocale(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/f$1;->a:Lcom/coloros/settings/feature/weather/module/city/f;

    .line 2027
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/f;->a:Lcom/coloros/settings/feature/weather/module/city/b$c;

    if-eqz p1, :cond_2

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/f$1;->a:Lcom/coloros/settings/feature/weather/module/city/f;

    .line 3027
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/f;->a:Lcom/coloros/settings/feature/weather/module/city/b$c;

    .line 90
    invoke-interface {p1, v1}, Lcom/coloros/settings/feature/weather/module/city/b$c;->onSearchCompleted(Ljava/util/List;)V

    :cond_2
    return-void

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/f$1;->a:Lcom/coloros/settings/feature/weather/module/city/f;

    .line 4027
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/f;->a:Lcom/coloros/settings/feature/weather/module/city/b$c;

    if-eqz p1, :cond_4

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/module/city/f$1;->a:Lcom/coloros/settings/feature/weather/module/city/f;

    .line 5027
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/f;->a:Lcom/coloros/settings/feature/weather/module/city/b$c;

    const/4 v0, 0x0

    .line 94
    invoke-interface {p1, v0}, Lcom/coloros/settings/feature/weather/module/city/b$c;->onSearchCompleted(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 98
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchCityHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
