.class final Lcom/oppo/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oppo/a/a$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/a/a$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/a/a$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/oppo/a/a$1;->d:Ljava/util/Map;

    iput-boolean p5, p0, Lcom/oppo/a/a$1;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oppo/a/a$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/a/a$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/a/a$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oppo/a/a$1;->d:Ljava/util/Map;

    iget-boolean p0, p0, Lcom/oppo/a/a$1;->e:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/oppo/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
