.class final Lcom/oppo/b/a/a$2;
.super Ljava/lang/Thread;
.source "FontManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/b/a/a;->a(Landroid/content/Context;Ljava/io/InputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/oppo/b/a/a;


# direct methods
.method constructor <init>(Lcom/oppo/b/a/a;Landroid/content/Context;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/oppo/b/a/a$2;->b:Lcom/oppo/b/a/a;

    iput-object p2, p0, Lcom/oppo/b/a/a$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 150
    new-instance v0, Lcom/oppo/b/a/c;

    iget-object v1, p0, Lcom/oppo/b/a/a$2;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oppo/b/a/c;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-static {}, Lcom/oppo/b/a/c;->a()V

    .line 152
    invoke-static {}, Lcom/oppo/b/a/c;->b()V

    .line 153
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
