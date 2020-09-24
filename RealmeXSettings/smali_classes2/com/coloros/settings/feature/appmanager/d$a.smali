.class final Lcom/coloros/settings/feature/appmanager/d$a;
.super Ljava/lang/Object;
.source "ColorApplicationsState.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/appmanager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field b:Lcom/coloros/settingslib/applications/ApplicationsState$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    invoke-direct {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$a;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/d$a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/d$a;->a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result p1

    return p1
.end method
