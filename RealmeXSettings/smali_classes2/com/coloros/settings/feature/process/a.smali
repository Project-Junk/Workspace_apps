.class public final Lcom/coloros/settings/feature/process/a;
.super Ljava/lang/Object;
.source "RunningApplicationsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/process/a$a;
    }
.end annotation


# instance fields
.field a:Lcom/coloros/settings/feature/process/b;

.field b:Landroid/content/Context;

.field private c:Lcom/coloros/settings/feature/process/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/process/b;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/coloros/settings/feature/process/a;->a:Lcom/coloros/settings/feature/process/b;

    .line 57
    iput-object p1, p0, Lcom/coloros/settings/feature/process/a;->b:Landroid/content/Context;

    .line 58
    new-instance p1, Lcom/coloros/settings/feature/process/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/process/a$a;-><init>(Lcom/coloros/settings/feature/process/a;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/process/a;->c:Lcom/coloros/settings/feature/process/a$a;

    return-void
.end method

.method static synthetic a(I)Z
    .locals 1

    const/16 v0, 0x3e7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(II)Z
    .locals 0

    .line 2195
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 62
    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lcom/coloros/settings/feature/process/a;->c:Lcom/coloros/settings/feature/process/a$a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/process/a$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/coloros/settings/feature/process/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/process/a$a;-><init>(Lcom/coloros/settings/feature/process/a;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/process/a;->c:Lcom/coloros/settings/feature/process/a$a;

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/process/a;->c:Lcom/coloros/settings/feature/process/a$a;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/process/a$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
