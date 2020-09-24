.class final Lcom/coloros/settings/utils/k$2;
.super Ljava/lang/Object;
.source "CustomizeRingtoneUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/k;
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

    .line 544
    iput-object p1, p0, Lcom/coloros/settings/utils/k$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/coloros/settings/utils/k$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/k;->a(Landroid/content/Context;)V

    return-void
.end method
