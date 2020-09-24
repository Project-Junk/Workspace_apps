.class public final Lcom/oppo/c/a/c$a;
.super Ljava/lang/Object;
.source "PageVisitAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/c/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/c/a/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(Lcom/oppo/c/a/c;Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/oppo/c/a/c$a;->a:Lcom/oppo/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/oppo/c/a/c$a;->b:Landroid/content/Context;

    .line 192
    iput-object p3, p0, Lcom/oppo/c/a/c$a;->c:Ljava/lang/String;

    .line 193
    iput-wide p4, p0, Lcom/oppo/c/a/c$a;->d:J

    .line 194
    iput p6, p0, Lcom/oppo/c/a/c$a;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v1, p0

    .line 199
    iget v0, v1, Lcom/oppo/c/a/c$a;->e:I

    const-string v2, "current.activity"

    const-wide/16 v3, 0x3e8

    const-string v5, "activity.end.time"

    const-string v6, "NearMeStatistics"

    const-wide/16 v7, -0x1

    if-eqz v0, :cond_6

    const/4 v9, 0x1

    if-eq v0, v9, :cond_0

    goto/16 :goto_4

    .line 201
    :cond_0
    iget-object v9, v1, Lcom/oppo/c/a/c$a;->b:Landroid/content/Context;

    iget-object v0, v1, Lcom/oppo/c/a/c$a;->c:Ljava/lang/String;

    iget-wide v10, v1, Lcom/oppo/c/a/c$a;->d:J

    .line 1094
    invoke-static {v9}, Lcom/oppo/c/d/a;->d(Landroid/content/Context;)J

    move-result-wide v12

    .line 1198
    invoke-static {v9}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v15, ""

    if-eqz v14, :cond_1

    .line 1200
    invoke-interface {v14, v2, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v15

    :goto_0
    sub-long v16, v10, v12

    .line 1096
    div-long v3, v16, v3

    long-to-int v3, v3

    .line 1098
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ltz v3, :cond_4

    cmp-long v2, v7, v12

    if-eqz v2, :cond_4

    .line 1103
    :try_start_0
    invoke-static {v9}, Lcom/oppo/c/d/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    invoke-static {v9}, Lcom/oppo/c/d/a;->e(Landroid/content/Context;)I

    move-result v4

    .line 1108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1109
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v8, 0xa

    if-lt v2, v8, :cond_3

    .line 1113
    invoke-static {v9}, Lcom/oppo/c/a/c;->b(Landroid/content/Context;)V

    .line 1114
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    goto :goto_1

    .line 1118
    :cond_2
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 1121
    :cond_3
    :goto_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1122
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1123
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/2addr v4, v3

    .line 1125
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1127
    invoke-static {v9, v4}, Lcom/oppo/c/d/a;->a(Landroid/content/Context;I)V

    .line 1129
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    invoke-static {v9, v0}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1133
    invoke-static {v6, v0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1134
    invoke-static {v9, v15}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1135
    invoke-static {v9, v0}, Lcom/oppo/c/d/a;->a(Landroid/content/Context;I)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1131
    invoke-static {v6, v0}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2182
    :cond_4
    :goto_2
    invoke-static {v9}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2184
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2185
    invoke-interface {v0, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2186
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_5
    return-void

    .line 205
    :cond_6
    iget-object v0, v1, Lcom/oppo/c/a/c$a;->b:Landroid/content/Context;

    iget-object v9, v1, Lcom/oppo/c/a/c$a;->c:Ljava/lang/String;

    iget-wide v10, v1, Lcom/oppo/c/a/c$a;->d:J

    .line 4168
    invoke-static {v0}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 4170
    invoke-interface {v12, v5, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    goto :goto_3

    :cond_7
    move-wide v12, v7

    .line 3147
    :goto_3
    invoke-static {v0}, Lcom/oppo/c/d/a;->d(Landroid/content/Context;)J

    move-result-wide v14

    .line 4391
    invoke-static {v0}, Lcom/oppo/c/d/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const/16 v7, 0x1e

    if-eqz v5, :cond_8

    const-string v8, "session.timeout"

    .line 4393
    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_8
    int-to-long v7, v7

    mul-long/2addr v7, v3

    sub-long v3, v10, v14

    cmp-long v3, v3, v7

    if-ltz v3, :cond_b

    const-wide/16 v3, -0x1

    cmp-long v3, v3, v12

    if-eqz v3, :cond_9

    cmp-long v3, v12, v10

    if-gez v3, :cond_9

    sub-long v3, v10, v12

    cmp-long v3, v3, v7

    if-ltz v3, :cond_b

    :cond_9
    const-string v3, "\u8c03\u7528AppStart"

    .line 5022
    invoke-static {v6, v3}, Lcom/oppo/c/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5023
    invoke-static {}, Lcom/oppo/c/e/d;->a()Ljava/lang/String;

    move-result-object v3

    .line 5024
    new-instance v4, Lcom/oppo/c/b/b;

    invoke-direct {v4, v3}, Lcom/oppo/c/b/b;-><init>(Ljava/lang/String;)V

    .line 5025
    invoke-static {v0, v4}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Lcom/oppo/c/b/j;)V

    .line 3158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5320
    invoke-static {v0}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 5322
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pagevisit.start.time"

    .line 5323
    invoke-interface {v5, v6, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5324
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3172
    :cond_a
    invoke-static {v0}, Lcom/oppo/c/a/c;->b(Landroid/content/Context;)V

    .line 6152
    :cond_b
    invoke-static {v0}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 6154
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "activity.start.time"

    .line 6155
    invoke-interface {v3, v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6156
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6212
    :cond_c
    invoke-static {v0}, Lcom/oppo/c/d/a;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 6214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6215
    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_d
    :goto_4
    return-void
.end method
