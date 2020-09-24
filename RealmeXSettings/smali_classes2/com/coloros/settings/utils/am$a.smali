.class final Lcom/coloros/settings/utils/am$a;
.super Ljava/lang/Thread;
.source "OppoStaticDcsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 293
    iput-object p1, p0, Lcom/coloros/settings/utils/am$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/coloros/settings/utils/am$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/am;->b(Landroid/content/Context;)V

    return-void
.end method
