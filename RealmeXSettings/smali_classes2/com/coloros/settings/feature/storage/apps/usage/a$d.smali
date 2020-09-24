.class public final Lcom/coloros/settings/feature/storage/apps/usage/a$d;
.super Ljava/lang/Object;
.source "AppStorageUsageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/usage/a;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/a;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/a;B)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/a$d;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 154
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/a/d;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "AppStorageUsageManager"

    if-eqz v0, :cond_0

    const-string v2, "data != null"

    .line 157
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Reset failed! Roll back data version."

    .line 165
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->b(Landroid/content/Context;)V

    return-void

    .line 161
    :catch_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a/d;->b(Landroid/content/Context;)V

    .line 162
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->c(Lcom/coloros/settings/feature/storage/apps/usage/a;)V

    return-void

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->d(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    goto/16 :goto_4

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;I)I

    .line 177
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v2, v3, :cond_3

    .line 180
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 181
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "\'"

    .line 182
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, -0x1

    if-eq v2, v7, :cond_2

    const-string v7, "\',"

    .line 185
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v7, "\' "

    .line 187
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :goto_2
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-virtual {v7, v5}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Landroid/content/pm/PackageInfo;)Lcom/coloros/settings/feature/storage/apps/usage/b;

    move-result-object v5

    .line 191
    iget-object v7, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v7}, Lcom/coloros/settings/feature/storage/apps/usage/a;->e(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    :cond_3
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->f(Lcom/coloros/settings/feature/storage/apps/usage/a;)V

    .line 196
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a()V

    .line 197
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(ILjava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->b()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 200
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 201
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 203
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->g(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/a$e;

    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, v5}, Lcom/coloros/settings/feature/storage/apps/usage/a$e;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 206
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 207
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->e(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/storage/apps/usage/b;

    .line 209
    :try_start_1
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v4}, Lcom/coloros/settings/feature/storage/apps/usage/a;->h(Lcom/coloros/settings/feature/storage/apps/usage/a;)Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    .line 212
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 213
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v4}, Lcom/coloros/settings/feature/storage/apps/usage/a;->b(Lcom/coloros/settings/feature/storage/apps/usage/a;)Lcom/coloros/settings/feature/storage/apps/usage/a/a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/coloros/settings/feature/storage/apps/usage/a/a;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/coloros/settings/feature/storage/apps/usage/b;->c:[Ljava/lang/String;

    .line 215
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v2}, Lcom/coloros/settings/feature/storage/apps/usage/a;->g(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcom/coloros/settings/feature/storage/apps/usage/a$c;

    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$d;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-direct {v4, v5, v3}, Lcom/coloros/settings/feature/storage/apps/usage/a$c;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/b;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error occur, e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "notification getAppIconBitmap ERROR!"

    .line 222
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method
