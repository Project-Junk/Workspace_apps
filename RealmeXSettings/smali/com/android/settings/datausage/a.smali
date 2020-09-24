.class public final Lcom/android/settings/datausage/a;
.super Lcom/android/settings/applications/e;
.source "AppStateDataUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/a$a;
    }
.end annotation


# instance fields
.field private final f:Lcom/android/settings/datausage/c;


# direct methods
.method public constructor <init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;Lcom/android/settings/datausage/c;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/e;-><init>(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/e$b;)V

    .line 31
    iput-object p3, p0, Lcom/android/settings/datausage/a;->f:Lcom/android/settings/datausage/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/android/settings/datausage/a;->b:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 40
    new-instance v4, Lcom/android/settings/datausage/a$a;

    iget-object v5, p0, Lcom/android/settings/datausage/a;->f:Lcom/android/settings/datausage/c;

    iget-object v6, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Lcom/android/settings/datausage/c;->a(I)Z

    move-result v5

    iget-object v6, p0, Lcom/android/settings/datausage/a;->f:Lcom/android/settings/datausage/c;

    iget-object v7, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 41
    invoke-virtual {v6, v7}, Lcom/android/settings/datausage/c;->b(I)Z

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/settings/datausage/a$a;-><init>(ZZ)V

    iput-object v4, v3, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;Ljava/lang/String;I)V
    .locals 2

    .line 47
    new-instance p2, Lcom/android/settings/datausage/a$a;

    iget-object v0, p0, Lcom/android/settings/datausage/a;->f:Lcom/android/settings/datausage/c;

    invoke-virtual {v0, p3}, Lcom/android/settings/datausage/c;->a(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/datausage/a;->f:Lcom/android/settings/datausage/c;

    .line 48
    invoke-virtual {v1, p3}, Lcom/android/settings/datausage/c;->b(I)Z

    move-result p3

    invoke-direct {p2, v0, p3}, Lcom/android/settings/datausage/a$a;-><init>(ZZ)V

    iput-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    return-void
.end method
