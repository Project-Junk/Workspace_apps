.class final Lcom/coloros/settings/utils/v$1;
.super Ljava/lang/Object;
.source "Iris5Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/utils/v;->a(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/coloros/settings/utils/v$1;->a:Landroid/content/Context;

    iput p2, p0, Lcom/coloros/settings/utils/v$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/utils/v$1;->a:Landroid/content/Context;

    iget v1, p0, Lcom/coloros/settings/utils/v$1;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f120f8d

    goto :goto_0

    :cond_0
    const v1, 0x7f120f91

    :goto_0
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;I)V

    return-void
.end method
