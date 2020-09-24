.class final Lcom/oppo/c/a$1;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/util/Map;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/oppo/c/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/c/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/c/a$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/oppo/c/a$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/oppo/c/a$1;->e:Ljava/util/Map;

    iput-boolean p6, p0, Lcom/oppo/c/a$1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 169
    iget-object v0, p0, Lcom/oppo/c/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/c/a$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/c/a$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/c/a$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/oppo/c/a$1;->e:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/oppo/c/a$1;->f:Z

    .line 1021
    new-instance v6, Lcom/oppo/c/b/c;

    invoke-static {v4}, Lcom/oppo/c/a/b;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/oppo/c/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1077
    iput-object v1, v6, Lcom/oppo/c/b/c;->a:Ljava/lang/String;

    .line 1023
    invoke-static {v0, v6}, Lcom/oppo/c/c/a;->a(Landroid/content/Context;Lcom/oppo/c/b/j;)V

    return-void
.end method
