.class final Lcom/coloros/settings/romupdate/a$1;
.super Ljava/lang/Thread;
.source "AdEnabledRegionsParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/romupdate/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/coloros/settings/romupdate/a$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/coloros/settings/romupdate/a$1;->a:Landroid/content/Context;

    const-string v1, "realme_ad_enabled_regions_config"

    invoke-static {v0, v1}, Lcom/coloros/settings/romupdate/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/coloros/settings/romupdate/a$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/settings/romupdate/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
