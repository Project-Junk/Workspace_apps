.class final Lcom/coloros/settings/utils/v$2;
.super Ljava/lang/Object;
.source "Iris5Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/v;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/coloros/settings/utils/v$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/settings/utils/v$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/utils/v$2;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/utils/v$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
