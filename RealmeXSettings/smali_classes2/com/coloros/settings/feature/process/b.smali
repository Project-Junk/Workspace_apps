.class public final Lcom/coloros/settings/feature/process/b;
.super Ljava/lang/Object;
.source "RunningApplicationsPresenter.java"


# instance fields
.field a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

.field b:Lcom/coloros/settings/feature/process/a;

.field c:Landroid/app/ActivityManager;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/process/RunningApplicationActivity;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/coloros/settings/feature/process/b;->a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    .line 29
    new-instance p1, Lcom/coloros/settings/feature/process/a;

    iget-object v0, p0, Lcom/coloros/settings/feature/process/b;->a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/coloros/settings/feature/process/a;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/process/b;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/process/b;->b:Lcom/coloros/settings/feature/process/a;

    .line 30
    iget-object p1, p0, Lcom/coloros/settings/feature/process/b;->a:Lcom/coloros/settings/feature/process/RunningApplicationActivity;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/process/RunningApplicationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/process/b;->c:Landroid/app/ActivityManager;

    return-void
.end method
