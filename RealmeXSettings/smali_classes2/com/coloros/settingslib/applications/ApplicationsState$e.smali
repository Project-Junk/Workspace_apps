.class public final Lcom/coloros/settingslib/applications/ApplicationsState$e;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private final a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

.field private final b:Lcom/coloros/settingslib/applications/ApplicationsState$b;


# direct methods
.method public constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState$b;Lcom/coloros/settingslib/applications/ApplicationsState$b;)V
    .locals 0

    .line 2024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2025
    iput-object p1, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 2026
    iput-object p2, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2037
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a()V

    .line 2038
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Landroid/content/Context;)V

    .line 2032
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 1

    .line 2043
    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->a:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$e;->b:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
